#include "conf.h"
#include "hash.h"
#include <arpa/inet.h>
#include <fcntl.h>
#include <ifaddrs.h>
#include <net/if.h>
#include <netdb.h>
#include <netinet/in.h>
#include <netinet6/in6.h>
#include <stdarg.h>
#include <stdbool.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/socket.h>
#include <sys/types.h>
#include <unistd.h>
#include <pthread.h>

/* Corben Roszak
 * CSCI 367
 */

/* Constants */
#define STR1(x)   #x
#define STR(x)    STR1(x)
#define DEVICE    "device"
#define PORT      "port"
#define BROADCAST "broadcast"
#define PID       "pidfile"
#define ANYIF     "0.0.0.0"
#define ANYIF6    "::1"
#define ANYPORT   "0"
#define PEERPORT   "10105"
#define MACSZ      6
#define IP6SZ      16

/* Note: this time is in seconds
 */
#define REFRESHINT 120


/* Note: short will need to be reversed using htohs(buffer.type)
 *       to preserve endianess
 */
typedef struct EthernetFrame {
    unsigned char    destMac[MACSZ];
    unsigned char    srcMac[MACSZ];
    unsigned short   type;
    unsigned char    payload[1500];
} frame_t;

typedef struct ConnectionKey{
    uint16_t localPort;
    uint16_t remotePort;
    uint16_t remoteAddr[8];
}cKey_t;

typedef struct Packet6{
    uint32_t  vers   : 4;
    uint32_t  class  : 8;
    uint32_t  flow   : 20;

    uint32_t  plen   : 16;
    uint32_t  nxtHdr : 8;
    uint32_t  hop    : 8;

    unsigned char sourceAddr[IP6SZ];
    unsigned char destAddr[IP6SZ];

    uint32_t headers[];

}packet_t;

typedef struct TCPSegment{
    uint16_t srcPort;
    uint16_t destPort;
    uint32_t seqNum;
    uint32_t ackNum;

    uint16_t       : 4;
    uint16_t hdrsz : 4;
    uint16_t FIN   : 1;
    uint16_t SYN   : 1;
    uint16_t RST   : 1;
    uint16_t PSH   : 1;
    uint16_t ACK   : 1;
    uint16_t URG   : 1;
    uint16_t       : 2;

    uint16_t window;
    uint16_t checkSum;
    uint16_t urgent;
    uint32_t *options;

}seg_t;

struct threadVar {
    unsigned char  baddie[IP6SZ];
    hashtable     *conf;
};

/* Globals  */
static char *conffile       = STR(SYSCONFDIR) "/wfw.cfg";
static bool printusage      = false;
static bool foreground      = false;
static unsigned short IPV6  = 0x86dd;
/* Note: This is my personal machine's IPv6 address
 */
unsigned char localDiscoveredIp[16] = {0};

/* Prototypes */

/* Parse Options
 * argc, argv   The command line
 * returns      true iff the command line is successfully parsed
 *
 * This function sets the otherwise immutable global variables (above).
 */
static
bool parseOptions(int argc, char *argv[]);

/* Usage
 * cmd   The name by which this program was invoked
 * file  The steam to which the usage statement is printed
 *
 * This function prints the simple usage statement.  This is typically invoked
 * if the user provides -h on the command line or the options don't parse.
 */
static
void usage(char *cmd, FILE *file);

/* Ensure Tap
 * path     The full path to the tap device.
 * returns  If this function returns, it is the file descriptor for the tap
 *          device.
 *
 * This function tires to open the specified device for reading and writing.  If
 * that open fails, this function will report the error to stderr and exit the
 * program.
 */
static
int ensureTap(char *path);

/* Ensure Socket
 * localaddress   The IPv4 address to bind this socket to.
 * port           The port number to bind this socket to.
 *
 * This function creates a bound socket.  Notice that both the local address and
 * the port number are strings.
 */
static
int ensureSocket(char *localaddr, char *port);

/* Create TCP socket Server (IPv6)
 * localaddress   The IPv6 address to bind this socket to.
 * port           The port number to bind this socket to.
 *
 * This function creates a bound socket and calls listen to make a server
 * socket.
 */
static
int createTCPSocketServer6(char *localaddr, char *port);

/* Create TCP socket Server (IPv4)
 * localaddress   The IPv4 address to bind this socket to.
 * port           The port number to bind this socket to.
 *
 * This function creates a bound socket and calls listen to make a server
 * socket.
 */
static
int createTCPSocketServer(char *localaddr, char *port);

/* Make Socket Address
 * address, port  The string representation of an IPv4 socket address.
 *
 * This is a convince routine to convert an address-port pair to an IPv4 socket
 * address.
 */
static
struct sockaddr_in makeSockAddr(char *address, char *port);

/* Make Socket Address for inet6
 * address, port  The string representation of an IPv6 socket address.
 *
 * This is a convince routine to convert an address-port pair to an IPv6 socket
 * address.
 */
static
struct sockaddr_in6 makeSockAddrinet6(char *address, char *port);

/* mkFdSet
 * set    The fd_set to populate
 * ...    A list of file descriptors terminated with a zero.
 *
 * This function will clear the fd_set then populate it with the specified file
 * descriptors.
 */
static
int mkFdSet(fd_set *set, ...);

/* Deamonize
 *
 * Make this process a background, daemon process.
 */
static
void daemonize(hashtable conf);

/* Bridge
 * tap     The local tap device
 * in      The network socket that receives broadcast packets.
 * out     The network socket on with to send broadcast packets.
 * bcaddr  The broadcast address for the virtual ethernet link.
 *
 * This is the main loop for wfw.  Data from the tap is broadcast on the
 * socket.  Data broadcast on the socket is written to the tap.
 */
static
void bridge(int tap, int bc, int uc, int htDumpSock, int peerIn, struct sockaddr_in bcaddr, hashtable conf);

/* Send bad Actor
 * badActor  IP address of blacklisted party
 * conf      hashtable made from conf file
 *
 * Note: sends bad actor to peers designated in conf file, over  IPv4
 */
static
void sendBadActor(unsigned char badActor[IP6SZ], hashtable *conf);

/* Send Bad Actor Async
 * badActor  IP address of blacklisted party
 * conf      hashtable made from conf file
 *
 * This function spawns a thread to send new blacklisted IPs to peers
 */
void sendBadActorAsync(unsigned char badActor[IP6SZ], hashtable conf);

/* Receive bad actor
 * sock       socket to receive from
 * blacklist  blacklist of bad actors
 * conf       hashtable made from conf file
 *
 */
static
void recvBadActor(int sock, hashtable blacklist, hashtable conf);

/* Hash Dump
 * Dumps both the mac address table and bad actor table
 *
 * Port: 10151
 */
static
void hashDump(int tcpSock, hashtable knownAddrs, hashtable blacklist);

/* SendIt
 * Does the work for sending a UDP packet out to the network.
 *
 */
static
void sendIt(int tap, int uc, struct sockaddr_in bcaddr,
        hashtable *knownAddrs, hashtable *allowedConnections, hashtable *blacklist);

/* RecvItUnicast
 * Does the work of receiving a UDP packet from the socket
 */
static
void recvIt(int sock, int tap,
        hashtable *knownAddrs, hashtable *allowedConnections, hashtable *conf, hashtable *blacklist);



/**  Comparison functions  */
/* These functions compare two values of varying sizes
 */

/* Mac Cmp
 * Compares 6 bytes
 */
static
int macCmp(void* left, void* right);

/* Connect Key Comp
 * Compares sizeof cKey_t struct
 */
static
int connectKeyComp(void *key, void *other);

/* Ip Comp
 * Compares 16 bytes
 */
static
int ipComp(void *key, void *other);

/** Helper functions */

/* Key Value Free
 * Frees memory for both key and value
 */
static
void kvFree(void* key, void* value);

/* IsBroadcastAddr
 * fromAddr  src mac address of received packet
 *
 * Checks if the argument is a brodcast mac
 */
static
bool isBroadcastAddr(unsigned char fromAddr[MACSZ]);

/* Keep Searching
 * code  next header code
 */
static
bool keepSearching(int code);

/* Find Next Header
 * payload  ipv6 packet
 *
 * Keeps searching until the last header is found.
 */
static
uint32_t findNextHeader(packet_t *payload);

/* Get Header Offset
 * payload  ipv6 packet
 *
 * Returns the offset from the start of the payload to the last header
 */
static
int getHeaderOffset(packet_t *payload);

/* Is Seg Type
 * buffer  ethernet frame
 * type    hint for what the expected segment type is
 *
 * Checks if the last header is the type expected by 'type' argument
 */
static
bool isSegType(frame_t buffer, int type);

/* Get Segment
 * buffer  ethernet frame
 *
 * Gets a tcp segment from an Ethernet frame buffer
 */
static
seg_t getSegment(frame_t buffer);

/* Should Send
 * buffer     ethernet frame
 * blacklist  hashtable of blacklisted IP addresses
 *
 * Check that frame is not being sent to a blacklisted IP
 */
static
bool shouldSend(frame_t buffer, hashtable *blacklist);

/* Refresh Peers Blacklist
 * blacklist  hashtable of blacklisted IP addresses
 * conf       hashtable made from conf file
 *
 * Send all Peers a random bad actor from the blacklist
 */
static
void refreshPeersBlacklist(hashtable blacklist, hashtable conf);

/* Log Mac Address
 * buffer      ethernet frame
 * knownAddrs  hashtable of known mac addresses
 * from        socket assosiated with incoming connection
 *
 * Log the mac address of an incoming frame
 */
static
void logMacAddr(frame_t buffer, hashtable *knownAddrs, struct sockaddr_in from);

/* Log Packet
 * buffer              ethernet frame
 * allowedConnections  hashtable of allowed tcp connections
 *
 * Handle logging an outbound tcp packet
 */
static
void logPacket(frame_t buffer, hashtable *allowedConnections);

/* Accept Packet
 * buffer              ethernet frame
 * allowedConnections  hashtable of allowed tcp connections
 * conf                hashtable made from conf file
 * blacklist           hashtable of blacklisted IPs
 *
 * Check if TCP packet should be accepted
 */
static
bool acceptPacket(frame_t buffer, hashtable *allowedConnections, hashtable *conf, hashtable *blacklist);

/* Connect To the specified host and service
 *
 */

/* Try to connect
 * ai       An addrinfo structure.
 * returns  -1 or a socket connected to the sockaddr within ai.
 *
 * This function will create a new socket and try to connect to the socketaddr
 * contained within the provided addrinfo structure.
 *
 * Note: will only connect via TCP Stream && IPv6
 */
static
int tryConnect(struct addrinfo* ai);

static
int connectTo(const char* name, const char* svc);

/* Set Local IP
 * buffer  ethernet frame
 *
 * Sets IP of source machine
 */
static
void setLocalIp(frame_t buffer);

/* Main
 *
 * Mostly, main parses the command line, the conf file, creates the necessary
 * structures and then calls bridge.  Bridge is where the real work is done.
 */
int main(int argc, char *argv[]) {
    int result = EXIT_SUCCESS;

    if (!parseOptions(argc, argv)) {
        usage(argv[0], stderr);
        result = EXIT_FAILURE;
    } else if (printusage) {
        usage(argv[0], stdout);
    } else {
        hashtable conf = readconf(conffile);
        int tap = ensureTap(htstrfind(conf, DEVICE));
        int uc = ensureSocket(ANYIF, ANYPORT);
        int bc = ensureSocket(htstrfind(conf, BROADCAST),
                              htstrfind(conf, PORT));

        int htDumpSock = createTCPSocketServer6(ANYIF6,
                                    "10151");

        int peerIn = createTCPSocketServer(ANYIF, PEERPORT);

        struct sockaddr_in
                bcaddr = makeSockAddr(htstrfind(conf, BROADCAST),
                                      htstrfind(conf, PORT));

        if (!foreground) {
            daemonize(conf);
        }

        bridge(tap, bc, uc, htDumpSock, peerIn, bcaddr, conf);

        close(bc);
        close(uc);
        close(tap);
        close(peerIn);
        close(htDumpSock);
        htfree(conf);
    }

    return result;
}

/* Parse Options
 *
 * see man 3 getopt
 */
static
bool parseOptions(int argc, char *argv[]) {
    static const char *OPTS = "hc:f";

    bool parsed = true;

    char c = getopt(argc, argv, OPTS);
    while (c != -1) {
        switch (c) {
            case 'c':
                conffile = optarg;
                break;
            case 'h':
                printusage = true;
                break;
            case 'f':
                foreground = true;
                break;

            case '?':
                parsed = false;
                break;
        }

        c = parsed ? getopt(argc, argv, OPTS) : -1;
    }

    if (parsed) {
        argc -= optind;
        argv += optind;
    }

    return parsed;
}

/* Print Usage Statement
 *
 */

static
void usage(char *cmd, FILE *file) {
    fprintf(file, "Usage: %s -c file.cfg [-h]\n", cmd);
}

/* Ensure Tap device is open.
 *
 */
static
int ensureTap(char *path) {
    int fd = open(path, O_RDWR | O_NOSIGPIPE);
    if (-1 == fd) {
        perror("open");
        fprintf(stderr, "Failed to open device %s\n", path);
        exit(EXIT_FAILURE);
    }
    return fd;
}

/* Ensure socket
 *
 * Note the use of atoi, htons, and inet_pton.
 */
static
int ensureSocket(char *localaddr, char *port) {
    int sock = socket(PF_INET, SOCK_DGRAM, 0);
    if (-1 == sock) {
        perror("socket");
        exit(EXIT_FAILURE);
    }

    int bcast = 1;
    if (-1 == setsockopt(sock, SOL_SOCKET, SO_BROADCAST,
                         &bcast, sizeof(bcast))) {
        perror("setsockopt(broadcast)");
        exit(EXIT_FAILURE);
    }

    struct sockaddr_in addr = makeSockAddr(localaddr, port);
    if (0 != bind(sock, (struct sockaddr *) &addr, sizeof(addr))) {
        perror("bind");
        char buf[80];
        fprintf(stderr,
                "failed to bind to %s\n",
                inet_ntop(AF_INET, &(addr.sin_addr), buf, 80));
        exit(EXIT_FAILURE);
    }

    return sock;
}

static
struct sockaddr_in6 makeSockAddrinet6(char *address, char *port) {
    struct sockaddr_in6 addr;
    bzero(&addr, sizeof(addr));
    addr.sin6_family = AF_INET6;
    addr.sin6_port = htons(atoi(port));
    inet_pton(AF_INET6, address, &(addr.sin6_addr));

    return addr;
}

static
int createTCPSocketServer6(char *localAddr, char *port){
    int sock = socket(AF_INET6, SOCK_STREAM, 0);
    if (-1 == sock){
        perror("socket");
        exit(EXIT_FAILURE);
    }

    struct sockaddr_in6 addr = makeSockAddrinet6(localAddr, port);
    if (0 != bind(sock, (struct sockaddr *) &addr, sizeof(addr))) {
        perror("bind");
        char buf[80];
        fprintf(stderr,
                "failed to bind to %s\n",
                inet_ntop(AF_INET6, &(addr.sin6_addr), buf, 80));
        exit(EXIT_FAILURE);
    }

    if (-1 == listen(sock, 1)){
        perror("listen");
    }
    return sock;
}

static
int createTCPSocketServer(char *localAddr, char *port){
    int sock = socket(AF_INET, SOCK_STREAM, 0);
    if (-1 == sock){
        perror("socket");
        exit(EXIT_FAILURE);
    }

    struct sockaddr_in addr = makeSockAddr(localAddr, port);
    if (0 != bind(sock, (struct sockaddr *) &addr, sizeof(addr))) {
        perror("bind");
        exit(EXIT_FAILURE);
    }

    if (-1 == listen(sock, 1)){
        perror("listen");
    }
    return sock;
}

/* Make Sock Addr
 *
 * Note the use of inet_pton and htons.
 */
static
struct sockaddr_in makeSockAddr(char *address, char *port) {
    struct sockaddr_in addr;
    bzero(&addr, sizeof(addr));
    addr.sin_len = sizeof(addr);
    addr.sin_family = AF_INET;
    addr.sin_port = htons(atoi(port));
    inet_pton(AF_INET, address, &(addr.sin_addr));

    return addr;
}

/* mkFdSet
 *
 * Note the use of va_list, va_arg, and va_end.
 */
static
int mkFdSet(fd_set *set, ...) {
    int max = 0;

    FD_ZERO(set);

    va_list ap;
    va_start(ap, set);
    int s = va_arg(ap,
    int);
    while (s != 0) {
        if (s > max)
            max = s;
        FD_SET(s, set);
        s = va_arg(ap,
        int);
    }
    va_end(ap);

    return max;
}

static
void daemonize(hashtable conf){
    daemon(0,0);
    if (hthasstrkey(conf, PID)) {
        FILE *pidfile = fopen(htstrfind(conf, PID), "w");
        if (pidfile != NULL) {
            fprintf(pidfile, "%d\n", getpid());
            fclose(pidfile);
        }
    }
}


/* Bridge
 *
 * Note the use of select
 * Tap device used to intercept packets from the network?
 * 'uc' can be used to send/receive packetsß
 * 'bc' should only receive broadcast packets
 * TCP socket listener to dump hash table
 */
static
void bridge(int tap, int bc, int uc, int htDumpSock, int peerIn, struct sockaddr_in bcaddr, hashtable conf) {
    struct timespec startTime;
    struct timespec endTime;
    clock_gettime(CLOCK_MONOTONIC, &startTime);

    hashtable knownAddrs          = htnew(32, macCmp, kvFree);
    hashtable allowedConnections  = htnew(32, (keycomp) connectKeyComp, kvFree);
    hashtable blacklist           = htnew(32, (keycomp) ipComp, kvFree);

    fd_set rdset;
    int maxfd = mkFdSet(&rdset, tap, bc, uc, htDumpSock, peerIn, 0);

    while (0 <= select(1 + maxfd, &rdset, NULL, NULL, NULL)) {
        if (FD_ISSET(tap, &rdset)) {
            sendIt(tap, uc, bcaddr, &knownAddrs, &allowedConnections, &blacklist);
        }
        else if (FD_ISSET(uc, &rdset) || FD_ISSET(bc, &rdset)) {
            int s = FD_ISSET(uc, &rdset) ? uc : bc;
            recvIt(s, tap, &knownAddrs, &allowedConnections, &conf, &blacklist);
        }
        else if (FD_ISSET(peerIn, &rdset)){
            recvBadActor(peerIn, blacklist, conf);
        }
        else if (FD_ISSET(htDumpSock, &rdset)){
            hashDump(htDumpSock, knownAddrs, blacklist);
        }
        maxfd = mkFdSet(&rdset, tap, bc, uc, htDumpSock, peerIn, 0);

        clock_gettime(CLOCK_MONOTONIC, &endTime);
        if (endTime.tv_sec - startTime.tv_sec > REFRESHINT ){
            clock_gettime(CLOCK_MONOTONIC, &startTime);
            refreshPeersBlacklist(blacklist, conf);
        }

    }

    htfree(knownAddrs);
    htfree(allowedConnections);
    htfree(blacklist);
}

static
void sendBadActor(unsigned char badActor[IP6SZ], hashtable *conf) {
    char *peers       = htstrfind(*conf, "PEERS");
    char *peerList    = strdup(peers);
    const char dil[2] = ",";
    char *currentPeer = strtok(peerList, dil);

    while (currentPeer != NULL){
        int currentPeerSocket = connectTo(currentPeer, PEERPORT);

        if (currentPeerSocket != -1){
            write(currentPeerSocket, badActor, IP6SZ);
            shutdown(currentPeerSocket, SHUT_RDWR);
            close(currentPeerSocket);
        }

        currentPeer = strtok(NULL, dil);
    }
}

void* threadFunc(void *threadArg){
    struct threadVar *var = threadArg;
    sendBadActor(var->baddie, var->conf);
    pthread_exit(NULL);
}

void sendBadActorAsync(unsigned char badActor[IP6SZ], hashtable conf){
    pthread_t mailMan;
    struct threadVar var;
    memcpy(&var.baddie, badActor, 16);
    var.conf = &conf;

    pthread_create(&mailMan, NULL, threadFunc, &var);
}

static
void recvBadActor(int sock, hashtable blacklist, hashtable conf){
    unsigned char        buffer[16] = {0};
    struct sockaddr_in   client;
    socklen_t len      = sizeof(struct sockaddr_in);
    int peer = accept(sock, (struct sockaddr *) &client, &len);

    read(peer, buffer, 16);
    shutdown(peer, SHUT_RDWR);
    close(peer);

    if (!hthaskey(blacklist, buffer, IP6SZ)
        && memcmp(buffer, localDiscoveredIp, 16) != 0){
        unsigned char* badActor = malloc(IP6SZ);
        memcpy(badActor, buffer, IP6SZ);
        htinsert(blacklist, badActor, IP6SZ, NULL);
    }
}

static
void hashDump(int tcpSock, hashtable knownAddrs, hashtable blacklist){
    struct sockaddr_in6 client;
    socklen_t len = sizeof(client);
    int c = accept(tcpSock, (struct sockaddr *) &client, &len);
    htPrintBlk(c, blacklist);
    printf("\n\n");
    htPrintMac(c, knownAddrs);
    shutdown(c, SHUT_RD);
    close(c);
}

static
void sendIt(int tap, int uc, struct sockaddr_in bcaddr,
            hashtable *knownAddrs, hashtable *allowedConnections, hashtable *blacklist) {
    frame_t buffer;
    ssize_t rdct = read(tap, &buffer, sizeof(frame_t));
    if (rdct < 0) {
        perror("read");
    } else {
        setLocalIp(buffer);
        if (shouldSend(buffer, blacklist)) {
            struct sockaddr_in *outSocket = &bcaddr;
            if (hthaskey(*knownAddrs, (&buffer)->destMac, MACSZ)){
                outSocket = htfind(*knownAddrs, (&buffer)->destMac, MACSZ);
            }

            logPacket(buffer, allowedConnections);

            if (-1 == sendto(uc, &buffer, rdct, 0,
                             (struct sockaddr *) outSocket,
                             sizeof(*outSocket))) {
                perror("sendto");
            }
        }
    }
}

/* Note: if the srcMac is already in the hashtable it is updated with the most recent socket
 *
 * Packets are also filtered so only packets meant for this machine or broadcast and accepted.
 */
static
void recvIt(int sock, int tap,
            hashtable *knownAddrs, hashtable *allowedConnections, hashtable *conf, hashtable *blacklist) {
    frame_t buffer;
    struct sockaddr_in from;
    socklen_t flen = sizeof(struct sockaddr_in);
    ssize_t rdct = recvfrom(sock, &buffer, sizeof(frame_t), 0,
                            (struct sockaddr *) &from, &flen);
    if (rdct < 0) {
        perror("recvfrom");
    }
    if (acceptPacket(buffer, allowedConnections, conf, blacklist)) {
        logMacAddr(buffer, knownAddrs, from);
        if (-1 == write(tap, &buffer, rdct)) {
            perror("write");
        }
    }
}

/**  Comparison Functions  */
static
int macCmp(void* left, void* right){
    return memcmp(left, right, MACSZ);
}

static
int connectKeyComp(void *key, void *other){
    return memcmp(key, other, sizeof(cKey_t));
}

static
int ipComp(void *key, void *other){
    return memcmp(key, other, IP6SZ);
}

/**  Helper Functions  */

static
void kvFree(void* key, void* value) {
    free(key);
    free(value);
}

static
bool isBroadcastAddr(unsigned char fromAddr[MACSZ]){
    bool retVal = false;
    uint8_t br[] = {0xff, 0xff, 0xff, 0xff, 0xff, 0xff};
    if (memcmp(&fromAddr, br, MACSZ) == 0) {
        retVal = true;
    }

    if (fromAddr[0] == 0x33 && fromAddr[1] == 0x33) {
        retVal = true;
    }

    return retVal;
}

static
bool keepSearching(int code){
    bool retVal = true;
    switch (code) {
        case 6:
            retVal = false;
            break;
        case 17:
            retVal = false;
            break;
        case 58:
            retVal = false;
            break;
        case 59:
            retVal = false;
            break;
        default:
            retVal = true;
            break;
    }
    return retVal;
}

static
uint32_t findNextHeader(packet_t *payload){
    uint32_t header = payload->nxtHdr;
    if (keepSearching(payload->nxtHdr)) {
        uint8_t *headerPtr = (uint8_t *) &payload->headers;
        uint8_t code  = *headerPtr;
        uint8_t hdLen = (header + 4);

        while (keepSearching(code)){
            int offset;
            if (code == 44){
                offset = 8;
            } else {
                offset = (hdLen * 8) + 8;
            }
            headerPtr += offset;
            code = *headerPtr;
        }
        header = *headerPtr;
    }
    return header;
}

static
int getHeaderOffset(packet_t *payload){
    uint32_t *header;
    int totOffset = 0;
    if (keepSearching(payload->nxtHdr)) {
        header = payload->headers;
        uint8_t code  = *header;
        uint8_t hdLen = *(header + 4);

        while (keepSearching(code)){
            int offset;
            if (code == 44){
                offset = 8;
            } else {
                offset = (hdLen * 8) + 8;
            }
            header += offset;
            totOffset += offset;
            code = *header;
        }
    }
    return totOffset;

}

static
bool isSegType(frame_t buffer, int type){
    bool retVal;
    packet_t *payload = (packet_t *) (&buffer)->payload;
    uint32_t header = findNextHeader(payload);
    if (header == type) {
        retVal = true;
    }
    return retVal;
}

static
seg_t getSegment(frame_t buffer){
    packet_t *payload = (packet_t *) (&buffer)->payload;
    int offset = getHeaderOffset(payload);
    int *topOfSeg = (int *) (payload->headers + offset);
    seg_t seg;
    memcpy(&seg, (seg_t *) topOfSeg, sizeof(seg_t));
    return seg;
}

static
bool shouldSend(frame_t buffer, hashtable *blacklist){
    packet_t *packet = (packet_t *) (&buffer)->payload;
    return !hthaskey(*blacklist, packet->destAddr, IP6SZ);
}

static
void refreshPeersBlacklist(hashtable blacklist, hashtable conf){
    unsigned char baddie[16];
    bool send = htGetRandom(blacklist, baddie);
    if (send){
        sendBadActorAsync(baddie, conf);
    }
}

static
void logMacAddr(frame_t buffer, hashtable *knownAddrs, struct sockaddr_in from){
    if (!isBroadcastAddr((&buffer)->srcMac)) {
        if (!hthaskey(*knownAddrs, (&buffer)->srcMac, MACSZ)) {
            char *keyVal = malloc(MACSZ);
            memcpy(keyVal, (&buffer)->srcMac, MACSZ);
            struct sockaddr_in *fromSocket = malloc(sizeof(struct sockaddr_in));
            memcpy(fromSocket, &from, sizeof(struct sockaddr_in));
            htinsert(*knownAddrs, keyVal, MACSZ, fromSocket);
        } else {
            struct sockaddr_in *socket = htfind(*knownAddrs, (&buffer)->srcMac, MACSZ);
            memcpy(socket, &from, sizeof(struct sockaddr_in));
        }
    }
}

static
void logPacket(frame_t buffer, hashtable *allowedConnections){
    unsigned short type = htons((&buffer)->type);
    if (memcmp(&type, &IPV6,2) == 0 && isSegType(buffer, 6)){
        packet_t *payload = (packet_t *) (&buffer)->payload;
        seg_t seg = getSegment(buffer);
        if (seg.SYN != 0) {
            cKey_t *connectCookie = malloc(sizeof(cKey_t));
            memcpy(&connectCookie->remoteAddr, payload->destAddr, IP6SZ);
            memcpy(&connectCookie->localPort, &(seg.srcPort), sizeof(uint16_t));
            memcpy(&connectCookie->remotePort, &(seg.destPort), sizeof(uint16_t));
            htinsert(*allowedConnections, connectCookie, sizeof(cKey_t), NULL);
        }
    }
}

static
bool acceptPacket(frame_t buffer, hashtable *allowedConnections, hashtable *conf, hashtable *blacklist){
    bool accept = false;
    unsigned short type = htons((&buffer)->type);
    packet_t *packet = (packet_t *) (&buffer)->payload;
    if (!hthaskey(*blacklist, packet->sourceAddr, IP6SZ)) {
        if (isSegType(buffer, 6) && (memcmp(&type, &IPV6, 2) == 0)) {
            seg_t seg = getSegment(buffer);
            cKey_t cookie;
            memcpy(&cookie.localPort, &seg.destPort, sizeof(uint16_t));
            memcpy(&cookie.remotePort, &seg.srcPort, sizeof(uint16_t));
            memcpy(&cookie.remoteAddr, packet->sourceAddr, IP6SZ);
            if (hthaskey(*allowedConnections, &cookie, sizeof(cKey_t))) {
                accept = true;
            } else if (memcmp(packet->sourceAddr, localDiscoveredIp, 16) != 0){
                unsigned char *badActor = malloc(IP6SZ);
                memcpy(badActor, packet->sourceAddr, IP6SZ);
                htinsert(*blacklist, badActor, IP6SZ, NULL);
                sendBadActorAsync(packet->sourceAddr, *conf);
            }
        } else {
            accept = true;
        }
    }
    return accept;
}

/* Connect To the specified host and service
 *
 */

/* Try to connect
 * ai       An addrinfo structure.
 * returns  -1 or a socket connected to the sockaddr within ai.
 *
 * This function will create a new socket and try to connect to the socketaddr
 * contained within the provided addrinfo structure.
 *
 * Note: will only connect via TCP Stream && IPv6
 */
static
int tryConnect(struct addrinfo* ai) {
    int s = socket(ai->ai_family, ai->ai_socktype, 0);
    if(s != -1 && 0 != connect(s, ai->ai_addr, ai->ai_addrlen)) {
        close(s);
        s = -1;
    }
    return s;
}

static
int connectTo(const char* name, const char* svc) {
    int s = -1;
    struct addrinfo hint;
    bzero(&hint, sizeof(struct addrinfo));
    hint.ai_socktype = SOCK_STREAM;
    hint.ai_family = AF_INET;

    struct addrinfo* info = NULL;

    if (0    == getaddrinfo(name, svc, &hint, &info) &&
        NULL != info ) {

        struct addrinfo* p = info;

        s = tryConnect(p);
        while (s == -1 && p->ai_next != NULL) {
            p = p->ai_next;
            s = tryConnect(p);
        }
    }

    freeaddrinfo(info);
    return s;
}


static
void setLocalIp(frame_t buffer){
    unsigned short type = htons((&buffer)->type);
    packet_t *packet = (packet_t *) (&buffer)->payload;
    if (localDiscoveredIp[0] == 0 &&  memcmp(&type, &IPV6, 2) == 0){
        memcpy(localDiscoveredIp, packet->sourceAddr, 16);
    }
}