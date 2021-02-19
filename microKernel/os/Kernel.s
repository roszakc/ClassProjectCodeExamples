! Name of package being compiled: Kernel
! 
! Symbols from runtime.s
	.import	_putString
	.import	_heapInitialize
	.import	_heapAlloc
	.import	_heapFree
	.import	_IsKindOf
	.import	_RestoreCatchStack
	.import	_PerformThrow
	.import	_runtimeErrorOverflow
	.import	_runtimeErrorZeroDivide
	.import	_runtimeErrorNullPointer
	.import	_runtimeErrorUninitializedObject
	.import	_runtimeErrorWrongObject
	.import	_runtimeErrorWrongObject2
	.import	_runtimeErrorWrongObject3
	.import	_runtimeErrorBadObjectSize
	.import	_runtimeErrorDifferentArraySizes
	.import	_runtimeErrorWrongArraySize
	.import	_runtimeErrorUninitializedArray
	.import	_runtimeErrorBadArrayIndex
	.import	_runtimeErrorNullPointerDuringCall
	.import	_runtimeErrorArrayCountNotPositive
	.import	_runtimeErrorRestoreCatchStackError
	.text
! ErrorDecls
	.import	_Error_P_System_UncaughtThrowError
	.align
! Functions imported from other packages
	.import	_P_Syscall_entSize
	.import	print
	.import	printInt
	.import	printHex
	.import	printChar
	.import	printBool
	.import	_P_System_MemoryEqual
	.import	_P_System_StrEqual
	.import	_P_System_StrCopy
	.import	_P_System_StrCmp
	.import	_P_System_StrChr
	.import	_P_System_Min
	.import	_P_System_Max
	.import	_P_System_printIntVar
	.import	_P_System_printHexVar
	.import	_P_System_printBoolVar
	.import	_P_System_printCharVar
	.import	_P_System_printPtr
	.import	_P_System_nl
	.import	_P_System_PrintMemory
	.import	Cleari
	.import	Seti
	.import	Wait
	.import	RuntimeExit
	.import	getCatchStack
	.import	MemoryZero
	.import	MemoryCopy
	.import	_P_System_KPLSystemInitialize
	.import	_P_System_KPLMemoryAlloc
	.import	_P_System_KPLMemoryFree
	.import	_P_System_KPLUncaughtThrow
	.import	_P_System_KPLIsKindOf
	.import	_P_System_KPLSystemError
	.import	_P_BitMap_TestBitMap
! Externally visible functions in this package
	.export	_P_Kernel_TimerInterruptHandler
	.export	_P_Kernel_DiskInterruptHandler
	.export	_P_Kernel_SerialInterruptHandler
	.export	_P_Kernel_IllegalInstructionHandler
	.export	_P_Kernel_ArithmeticExceptionHandler
	.export	_P_Kernel_AddressExceptionHandler
	.export	_P_Kernel_PageInvalidExceptionHandler
	.export	_P_Kernel_PageReadonlyExceptionHandler
	.export	_P_Kernel_PrivilegedInstructionHandler
	.export	_P_Kernel_AlignmentExceptionHandler
	.export	_P_Kernel_SyscallTrapHandler
	.export	_P_Kernel_SerialHandlerFunction
	.export	_P_Kernel_Handle_Sys_Fork
	.export	_P_Kernel_Handle_Sys_Yield
	.export	_P_Kernel_Handle_Sys_Exec
	.export	_P_Kernel_Handle_Sys_Join
	.export	_P_Kernel_Handle_Sys_Exit
	.export	_P_Kernel_Handle_Sys_Open
	.export	_P_Kernel_Handle_Sys_Read
	.export	_P_Kernel_Handle_Sys_Write
	.export	_P_Kernel_Handle_Sys_Seek
	.export	_P_Kernel_Handle_Sys_Close
	.export	_P_Kernel_Handle_Sys_Stat
	.export	_P_Kernel_Handle_Sys_ChMode
	.export	_P_Kernel_Handle_Sys_ReadDir
	.export	_P_Kernel_Handle_Sys_Shutdown
	.export	_P_Kernel_InitializeScheduler
	.export	_P_Kernel_Run
	.export	_P_Kernel_PrintReadyList
	.export	_P_Kernel_ThreadStartMain
	.export	_P_Kernel_ThreadFinish
	.export	_P_Kernel_FatalError_ThreadVersion
	.export	_P_Kernel_SetInterruptsTo
	.export	_P_Kernel_ProcessFinish
	.export	_P_Kernel_InitFirstProcess
	.export	_P_Kernel_StartUserProcess
	.import	Switch
	.import	ThreadStartUp
	.import	GetOldUserPCFromSystemStack
	.import	LoadPageTableRegs
	.import	SaveUserRegs
	.import	RestoreUserRegs
	.import	BecomeUserThread
! The following class and its methods are from other packages
	.import	_P_System_Object
! The following class and its methods are from other packages
	.import	_P_BitMap_BitMap
! The following class and its methods are from other packages
	.import	_P_List_List
! The following class and its methods are from other packages
	.import	_P_List_Listable
! The following class and its methods are from this package
	.export	_P_Kernel_Semaphore
	.export	_Method_P_Kernel_Semaphore_1
	.export	_Method_P_Kernel_Semaphore_2
	.export	_Method_P_Kernel_Semaphore_3
! The following class and its methods are from this package
	.export	_P_Kernel_Mutex
	.export	_Method_P_Kernel_Mutex_1
	.export	_Method_P_Kernel_Mutex_2
	.export	_Method_P_Kernel_Mutex_3
	.export	_Method_P_Kernel_Mutex_4
! The following class and its methods are from this package
	.export	_P_Kernel_Condition
	.export	_Method_P_Kernel_Condition_1
	.export	_Method_P_Kernel_Condition_2
	.export	_Method_P_Kernel_Condition_3
	.export	_Method_P_Kernel_Condition_4
! The following class and its methods are from this package
	.export	_P_Kernel_Thread
	.export	_Method_P_Kernel_Thread_1
	.export	_Method_P_Kernel_Thread_2
	.export	_Method_P_Kernel_Thread_3
	.export	_Method_P_Kernel_Thread_4
	.export	_Method_P_Kernel_Thread_5
	.export	_Method_P_Kernel_Thread_6
! The following class and its methods are from this package
	.export	_P_Kernel_ThreadManager
	.export	_Method_P_Kernel_ThreadManager_1
	.export	_Method_P_Kernel_ThreadManager_2
	.export	_Method_P_Kernel_ThreadManager_3
	.export	_Method_P_Kernel_ThreadManager_4
! The following class and its methods are from this package
	.export	_P_Kernel_ProcessControlBlock
	.export	_Method_P_Kernel_ProcessControlBlock_1
	.export	_Method_P_Kernel_ProcessControlBlock_2
	.export	_Method_P_Kernel_ProcessControlBlock_3
! The following class and its methods are from this package
	.export	_P_Kernel_ProcessManager
	.export	_Method_P_Kernel_ProcessManager_1
	.export	_Method_P_Kernel_ProcessManager_2
	.export	_Method_P_Kernel_ProcessManager_3
	.export	_Method_P_Kernel_ProcessManager_4
	.export	_Method_P_Kernel_ProcessManager_5
	.export	_Method_P_Kernel_ProcessManager_6
	.export	_Method_P_Kernel_ProcessManager_7
	.export	_Method_P_Kernel_ProcessManager_8
! The following class and its methods are from this package
	.export	_P_Kernel_FrameManager
	.export	_Method_P_Kernel_FrameManager_1
	.export	_Method_P_Kernel_FrameManager_2
	.export	_Method_P_Kernel_FrameManager_3
	.export	_Method_P_Kernel_FrameManager_4
	.export	_Method_P_Kernel_FrameManager_5
	.export	_Method_P_Kernel_FrameManager_6
! The following class and its methods are from this package
	.export	_P_Kernel_AddrSpace
	.export	_Method_P_Kernel_AddrSpace_1
	.export	_Method_P_Kernel_AddrSpace_2
	.export	_Method_P_Kernel_AddrSpace_3
	.export	_Method_P_Kernel_AddrSpace_4
	.export	_Method_P_Kernel_AddrSpace_5
	.export	_Method_P_Kernel_AddrSpace_6
	.export	_Method_P_Kernel_AddrSpace_7
	.export	_Method_P_Kernel_AddrSpace_8
	.export	_Method_P_Kernel_AddrSpace_9
	.export	_Method_P_Kernel_AddrSpace_10
	.export	_Method_P_Kernel_AddrSpace_11
	.export	_Method_P_Kernel_AddrSpace_12
	.export	_Method_P_Kernel_AddrSpace_13
	.export	_Method_P_Kernel_AddrSpace_14
	.export	_Method_P_Kernel_AddrSpace_15
	.export	_Method_P_Kernel_AddrSpace_16
	.export	_Method_P_Kernel_AddrSpace_17
	.export	_Method_P_Kernel_AddrSpace_18
	.export	_Method_P_Kernel_AddrSpace_19
	.export	_Method_P_Kernel_AddrSpace_20
	.export	_Method_P_Kernel_AddrSpace_21
! The following class and its methods are from this package
	.export	_P_Kernel_DiskDriver
	.export	_Method_P_Kernel_DiskDriver_1
	.export	_Method_P_Kernel_DiskDriver_2
	.export	_Method_P_Kernel_DiskDriver_3
	.export	_Method_P_Kernel_DiskDriver_4
	.export	_Method_P_Kernel_DiskDriver_5
! The following class and its methods are from this package
	.export	_P_Kernel_FileManager
	.export	_Method_P_Kernel_FileManager_1
	.export	_Method_P_Kernel_FileManager_2
	.export	_Method_P_Kernel_FileManager_3
	.export	_Method_P_Kernel_FileManager_4
	.export	_Method_P_Kernel_FileManager_5
	.export	_Method_P_Kernel_FileManager_6
	.export	_Method_P_Kernel_FileManager_7
	.export	_Method_P_Kernel_FileManager_8
	.export	_Method_P_Kernel_FileManager_9
	.export	_Method_P_Kernel_FileManager_10
	.export	_Method_P_Kernel_FileManager_11
	.export	_Method_P_Kernel_FileManager_12
! The following class and its methods are from this package
	.export	_P_Kernel_ToyFs
	.export	_Method_P_Kernel_ToyFs_1
	.export	_Method_P_Kernel_ToyFs_2
	.export	_Method_P_Kernel_ToyFs_3
	.export	_Method_P_Kernel_ToyFs_4
	.export	_Method_P_Kernel_ToyFs_5
	.export	_Method_P_Kernel_ToyFs_6
	.export	_Method_P_Kernel_ToyFs_7
	.export	_Method_P_Kernel_ToyFs_8
	.export	_Method_P_Kernel_ToyFs_9
	.export	_Method_P_Kernel_ToyFs_10
	.export	_Method_P_Kernel_ToyFs_11
	.export	_Method_P_Kernel_ToyFs_12
	.export	_Method_P_Kernel_ToyFs_13
	.export	_Method_P_Kernel_ToyFs_14
	.export	_Method_P_Kernel_ToyFs_15
	.export	_Method_P_Kernel_ToyFs_16
! The following class and its methods are from this package
	.export	_P_Kernel_InodeData
	.export	_Method_P_Kernel_InodeData_1
	.export	_Method_P_Kernel_InodeData_2
	.export	_Method_P_Kernel_InodeData_3
	.export	_Method_P_Kernel_InodeData_4
	.export	_Method_P_Kernel_InodeData_5
	.export	_Method_P_Kernel_InodeData_6
	.export	_Method_P_Kernel_InodeData_7
	.export	_Method_P_Kernel_InodeData_8
	.export	_Method_P_Kernel_InodeData_9
	.export	_Method_P_Kernel_InodeData_10
! The following class and its methods are from this package
	.export	_P_Kernel_FileControlBlock
	.export	_Method_P_Kernel_FileControlBlock_1
	.export	_Method_P_Kernel_FileControlBlock_2
	.export	_Method_P_Kernel_FileControlBlock_3
	.export	_Method_P_Kernel_FileControlBlock_4
	.export	_Method_P_Kernel_FileControlBlock_5
	.export	_Method_P_Kernel_FileControlBlock_6
! The following class and its methods are from this package
	.export	_P_Kernel_OpenFile
	.export	_Method_P_Kernel_OpenFile_1
	.export	_Method_P_Kernel_OpenFile_2
	.export	_Method_P_Kernel_OpenFile_3
	.export	_Method_P_Kernel_OpenFile_4
	.export	_Method_P_Kernel_OpenFile_5
	.export	_Method_P_Kernel_OpenFile_6
	.export	_Method_P_Kernel_OpenFile_7
	.export	_Method_P_Kernel_OpenFile_8
	.export	_Method_P_Kernel_OpenFile_9
	.export	_Method_P_Kernel_OpenFile_10
! The following class and its methods are from this package
	.export	_P_Kernel_SerialDriver
	.export	_Method_P_Kernel_SerialDriver_1
	.export	_Method_P_Kernel_SerialDriver_2
	.export	_Method_P_Kernel_SerialDriver_3
	.export	_Method_P_Kernel_SerialDriver_4
	.export	_Method_P_Kernel_SerialDriver_5
	.export	_Method_P_Kernel_SerialDriver_6
! The following class and its methods are from this package
	.export	_P_Kernel_Pipe
	.export	_Method_P_Kernel_Pipe_1
	.export	_Method_P_Kernel_Pipe_2
	.export	_Method_P_Kernel_Pipe_3
	.export	_Method_P_Kernel_Pipe_4
	.export	_Method_P_Kernel_Pipe_5
	.export	_Method_P_Kernel_Pipe_6
! The following interfaces are from other packages
! The following interfaces are from this package
! Globals imported from other packages
	.import	_P_System_FatalError
! Global variables in this package
	.data
	.export	_P_Kernel_readyList
	.export	_P_Kernel_currentThread
	.export	_P_Kernel_mainThread
	.export	_P_Kernel_idleThread
	.export	_P_Kernel_threadsToBeDestroyed
	.export	_P_Kernel_currentInterruptStatus
	.export	_P_Kernel_processManager
	.export	_P_Kernel_threadManager
	.export	_P_Kernel_frameManager
	.export	_P_Kernel_diskDriver
	.export	_P_Kernel_fileManager
	.export	_P_Kernel_fileSystem
	.export	_P_Kernel_serialDriver
_P_Kernel_readyList:
	.skip	12
_P_Kernel_currentThread:
	.skip	4
_P_Kernel_mainThread:
	.skip	4164
_P_Kernel_idleThread:
	.skip	4164
_P_Kernel_threadsToBeDestroyed:
	.skip	12
_P_Kernel_currentInterruptStatus:
	.skip	4
_P_Kernel_processManager:
	.skip	5840
_P_Kernel_threadManager:
	.skip	83340
_P_Kernel_frameManager:
	.skip	72
_P_Kernel_diskDriver:
	.skip	68
_P_Kernel_fileManager:
	.skip	8080
_P_Kernel_fileSystem:
	.skip	80
_P_Kernel_serialDriver:
	.skip	4312
	.align
! String constants
_StringConst_227:
	.word	14			! length
	.ascii	"\' was ignored\n"
	.align
_StringConst_226:
	.word	43			! length
	.ascii	"\nSerial input buffer overrrun - character \'"
	.align
_StringConst_225:
	.word	31			! length
	.ascii	"Initializing Serial Driver... \n"
	.align
_StringConst_224:
	.word	17			! length
	.ascii	"RemoveEntry Bug!\n"
	.align
_StringConst_223:
	.word	2			! length
	.ascii	".."
	.align
_StringConst_222:
	.word	1			! length
	.ascii	"."
	.align
_StringConst_221:
	.word	36			! length
	.ascii	"RemoveEntry on a non-Directory file."
	.align
_StringConst_220:
	.word	40			! length
	.ascii	"OpenFile.AddEntry incorrectly set addPos"
	.align
_StringConst_219:
	.word	21			! length
	.ascii	"AddEntry: found name "
	.align
_StringConst_218:
	.word	33			! length
	.ascii	"AddEntry on a non-Directory file."
	.align
_StringConst_217:
	.word	37			! length
	.ascii	"GetNextEntry on a non-Directory file."
	.align
_StringConst_216:
	.word	31			! length
	.ascii	"Lookup on a non-Directory file."
	.align
_StringConst_215:
	.word	60			! length
	.ascii	"LoadExecutable: Invalid file format - missing separator (3)\n"
	.align
_StringConst_214:
	.word	50			! length
	.ascii	"LoadExecutable: Problems reading from file (text)\n"
	.align
_StringConst_213:
	.word	50			! length
	.ascii	"LoadExecutable: Problems reading from file (text)\n"
	.align
_StringConst_212:
	.word	40			! length
	.ascii	"LoadExecutable: MAX_PAGES_PER_VIRT_SPACE"
	.align
_StringConst_211:
	.word	53			! length
	.ascii	"LoadExecutable: Number of pages in this address space"
	.align
_StringConst_210:
	.word	61			! length
	.ascii	"LoadExecutable: This virtual address space exceeds the limit\n"
	.align
_StringConst_209:
	.word	49			! length
	.ascii	"LoadExecutable: bssStart != dataStart + dataSize\n"
	.align
_StringConst_208:
	.word	65			! length
	.ascii	"LoadExecutable: The bss segment size not a multiple of page size\n"
	.align
_StringConst_207:
	.word	50			! length
	.ascii	"LoadExecutable: dataStart != textStart + textSize\n"
	.align
_StringConst_206:
	.word	66			! length
	.ascii	"LoadExecutable: The data segment size not a multiple of page size\n"
	.align
_StringConst_205:
	.word	50			! length
	.ascii	" match the \'loadAddr\' info supplied to the linker\n"
	.align
_StringConst_204:
	.word	45			! length
	.ascii	"LoadExecutable: The environment size does not"
	.align
_StringConst_203:
	.word	66			! length
	.ascii	"LoadExecutable: The text segment size not a multiple of page size\n"
	.align
_StringConst_202:
	.word	33			! length
	.ascii	"LoadExecutable: Bad magic number\n"
	.align
_StringConst_201:
	.word	55			! length
	.ascii	"LoadExecutable: This virtual address space is not empty"
	.align
_StringConst_200:
	.word	32			! length
	.ascii	"Within ReadInt: ReadBytes failed"
	.align
_StringConst_199:
	.word	5			! length
	.ascii	"null\n"
	.align
_StringConst_198:
	.word	6			! length
	.ascii	", fcb="
	.align
_StringConst_197:
	.word	12			! length
	.ascii	" numOfUsers="
	.align
_StringConst_196:
	.word	28			! length
	.ascii	"    OPEN FILE:   currentPos="
	.align
_StringConst_195:
	.word	44			! length
	.ascii	"FCB.Flush ... no disk segment to flush to..."
	.align
_StringConst_194:
	.word	67			! length
	.ascii	"FileManager.Flush: buffer is dirty but relativeSectorInBuffer =  -1"
	.align
_StringConst_193:
	.word	7			! length
	.ascii	"Inode: "
	.align
_StringConst_192:
	.word	26			! length
	.ascii	",  relativeSectorInBuffer="
	.align
_StringConst_191:
	.word	13			! length
	.ascii	",  bufferPtr="
	.align
_StringConst_190:
	.word	17			! length
	.ascii	",  numberOfUsers="
	.align
_StringConst_189:
	.word	13			! length
	.ascii	"inode.number="
	.align
_StringConst_188:
	.word	30			! length
	.ascii	"SaveIndirect with no indirect!"
	.align
_StringConst_187:
	.word	38			! length
	.ascii	"GetIndirect: no indirect block to get."
	.align
_StringConst_186:
	.word	32			! length
	.ascii	"Double Indirect not implemented."
	.align
_StringConst_185:
	.word	2			! length
	.ascii	"] "
	.align
_StringConst_184:
	.word	1			! length
	.ascii	"["
	.align
_StringConst_183:
	.word	6			! length
	.ascii	" dirty"
	.align
_StringConst_182:
	.word	2			! length
	.ascii	"] "
	.align
_StringConst_181:
	.word	1			! length
	.ascii	","
	.align
_StringConst_180:
	.word	3			! length
	.ascii	") ["
	.align
_StringConst_179:
	.word	2			! length
	.ascii	" ("
	.align
_StringConst_178:
	.word	1			! length
	.ascii	" "
	.align
_StringConst_177:
	.word	2			! length
	.ascii	"- "
	.align
_StringConst_176:
	.word	2			! length
	.ascii	"x "
	.align
_StringConst_175:
	.word	1			! length
	.ascii	"-"
	.align
_StringConst_174:
	.word	1			! length
	.ascii	"w"
	.align
_StringConst_173:
	.word	1			! length
	.ascii	"-"
	.align
_StringConst_172:
	.word	1			! length
	.ascii	"r"
	.align
_StringConst_171:
	.word	1			! length
	.ascii	"-"
	.align
_StringConst_170:
	.word	1			! length
	.ascii	"d"
	.align
_StringConst_169:
	.word	1			! length
	.ascii	" "
	.align
_StringConst_168:
	.word	4			! length
	.ascii	"IN: "
	.align
_StringConst_167:
	.word	31			! length
	.ascii	"ToyFs . Remove Not Implemented."
	.align
_StringConst_166:
	.word	32			! length
	.ascii	"ToyFs . MakeDir Not Implemented."
	.align
_StringConst_165:
	.word	37			! length
	.ascii	"NameToInodeNum on non-Directory file."
	.align
_StringConst_164:
	.word	1			! length
	.ascii	"/"
	.align
_StringConst_163:
	.word	1			! length
	.ascii	"/"
	.align
_StringConst_162:
	.word	52			! length
	.ascii	"Magic number in sector 0 of ToyFs file system is bad"
	.align
_StringConst_161:
	.word	48			! length
	.ascii	"FileManager.SynchWrite: file not properly opened"
	.align
_StringConst_160:
	.word	47			! length
	.ascii	"FileManager.SynchRead: file not properly opened"
	.align
_StringConst_159:
	.word	72			! length
	.ascii	"In FileManager.Open: a free FCB appears not to have been closed properly"
	.align
_StringConst_158:
	.word	1			! length
	.ascii	"/"
	.align
_StringConst_157:
	.word	36			! length
	.ascii	"Here is the FREE list of OpenFiles:\n"
	.align
_StringConst_156:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_155:
	.word	5			! length
	.ascii	":  0x"
	.align
_StringConst_154:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_153:
	.word	30			! length
	.ascii	"Here is the OpenFile table...\n"
	.align
_StringConst_152:
	.word	47			! length
	.ascii	"Here is the FREE list of FileControlBlocks:\n   "
	.align
_StringConst_151:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_150:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_149:
	.word	38			! length
	.ascii	"Here is the FileControlBlock table...\n"
	.align
_StringConst_148:
	.word	29			! length
	.ascii	"Initializing File Manager...\n"
	.align
_StringConst_147:
	.word	40			! length
	.ascii	"SynchWriteSector: Unexpected status code"
	.align
_StringConst_146:
	.word	52			! length
	.ascii	"Disk I/O error in SynchWriteSector: Bad command word"
	.align
_StringConst_145:
	.word	95			! length
	.ascii	"Disk I/O error in SynchWriteSector: Bad sectorAddr or sectorCount specifies non-existant sector"
	.align
_StringConst_144:
	.word	76			! length
	.ascii	"Disk I/O error in SynchWriteSector: Attempt to access invalid memory address"
	.align
_StringConst_143:
	.word	99			! length
	.ascii	"Disk I/O error in SynchWriteSector: Memory addr is not page-aligned or sector count is not positive"
	.align
_StringConst_142:
	.word	39			! length
	.ascii	"SynchReadSector: Unexpected status code"
	.align
_StringConst_141:
	.word	51			! length
	.ascii	"Disk I/O error in SynchReadSector: Bad command word"
	.align
_StringConst_140:
	.word	94			! length
	.ascii	"Disk I/O error in SynchReadSector: Bad sectorAddr or sectorCount specifies non-existant sector"
	.align
_StringConst_139:
	.word	75			! length
	.ascii	"Disk I/O error in SynchReadSector: Attempt to access invalid memory address"
	.align
_StringConst_138:
	.word	98			! length
	.ascii	"Disk I/O error in SynchReadSector: Memory addr is not page-aligned or sector count is not positive"
	.align
_StringConst_137:
	.word	28			! length
	.ascii	"Initializing Disk Driver...\n"
	.align
_StringConst_136:
	.word	38			! length
	.ascii	"  Virtual page is not marked VALID!!!\n"
	.align
_StringConst_135:
	.word	38			! length
	.ascii	"  Virtual page number is too large!!!\n"
	.align
_StringConst_134:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_133:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_132:
	.word	6			! length
	.ascii	"      "
	.align
_StringConst_131:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_130:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_129:
	.word	9			! length
	.ascii	"         "
	.align
_StringConst_128:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_127:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_126:
	.word	6			! length
	.ascii	"      "
	.align
_StringConst_125:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_124:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_123:
	.word	5			! length
	.ascii	"     "
	.align
_StringConst_122:
	.word	10			! length
	.ascii	"          "
	.align
_StringConst_121:
	.word	4			! length
	.ascii	"    "
	.align
_StringConst_120:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_119:
	.word	5			! length
	.ascii	"     "
	.align
_StringConst_118:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_117:
	.word	5			! length
	.ascii	"     "
	.align
_StringConst_116:
	.word	109			! length
	.ascii	"     ==========   ==========     ==========  ==========  ==============  =====  ==========  =========  =====\n"
	.align
_StringConst_115:
	.word	109			! length
	.ascii	"        addr        entry          Logical    Physical   Undefined Bits  Dirty  Referenced  Writeable  Valid\n"
	.align
_StringConst_114:
	.word	35			! length
	.ascii	"  Here are the frames in use: \n    "
	.align
_StringConst_113:
	.word	18			! length
	.ascii	"  numberFreeFrames"
	.align
_StringConst_112:
	.word	15			! length
	.ascii	"FRAME MANAGER:\n"
	.align
_StringConst_111:
	.word	89			! length
	.ascii	"Kernel code size appears to have grown too large and is overflowing into the frame region"
	.align
_StringConst_110:
	.word	30			! length
	.ascii	"Initializing Frame Manager...\n"
	.align
_StringConst_109:
	.word	12			! length
	.ascii	"Never called"
	.align
_StringConst_108:
	.word	50			! length
	.ascii	"Here is the FREE list of ProcessControlBlocks:\n   "
	.align
_StringConst_107:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_106:
	.word	29			! length
	.ascii	"Here is the process table...\n"
	.align
_StringConst_105:
	.word	50			! length
	.ascii	"Here is the FREE list of ProcessControlBlocks:\n   "
	.align
_StringConst_104:
	.word	1			! length
	.ascii	":"
	.align
_StringConst_103:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_102:
	.word	29			! length
	.ascii	"Here is the process table...\n"
	.align
_StringConst_101:
	.word	32			! length
	.ascii	"Initializing Process Manager...\n"
	.align
_StringConst_100:
	.word	13			! length
	.ascii	", exitStatus="
	.align
_StringConst_99:
	.word	13			! length
	.ascii	", parentsPid="
	.align
_StringConst_98:
	.word	33			! length
	.ascii	"Bad status in ProcessControlBlock"
	.align
_StringConst_97:
	.word	4			! length
	.ascii	"FREE"
	.align
_StringConst_96:
	.word	6			! length
	.ascii	"ZOMBIE"
	.align
_StringConst_95:
	.word	6			! length
	.ascii	"ACTIVE"
	.align
_StringConst_94:
	.word	9			! length
	.ascii	", status="
	.align
_StringConst_93:
	.word	8			! length
	.ascii	")   pid="
	.align
_StringConst_92:
	.word	30			! length
	.ascii	"  ProcessControlBlock   (addr="
	.align
_StringConst_91:
	.word	14			! length
	.ascii	" Working Dir: "
	.align
_StringConst_90:
	.word	5			! length
	.ascii	"null\n"
	.align
_StringConst_89:
	.word	22			! length
	.ascii	"    File Descriptors:\n"
	.align
_StringConst_88:
	.word	15			! length
	.ascii	"    myThread = "
	.align
_StringConst_87:
	.word	37			! length
	.ascii	"Here is the FREE list of Threads:\n   "
	.align
_StringConst_86:
	.word	1			! length
	.ascii	":"
	.align
_StringConst_85:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_84:
	.word	28			! length
	.ascii	"Here is the thread table...\n"
	.align
_StringConst_83:
	.word	6			! length
	.ascii	"thread"
	.align
_StringConst_82:
	.word	31			! length
	.ascii	"Initializing Thread Manager...\n"
	.align
_StringConst_81:
	.word	1			! length
	.ascii	"\n"
	.align
_StringConst_80:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_79:
	.word	2			! length
	.ascii	": "
	.align
_StringConst_78:
	.word	7			! length
	.ascii	"      r"
	.align
_StringConst_77:
	.word	20			! length
	.ascii	"    user registers:\n"
	.align
_StringConst_76:
	.word	20			! length
	.ascii	"    is user thread: "
	.align
_StringConst_75:
	.word	20			! length
	.ascii	"Bad status in Thread"
	.align
_StringConst_74:
	.word	20			! length
	.ascii	"    status = UNUSED\n"
	.align
_StringConst_73:
	.word	21			! length
	.ascii	"    status = BLOCKED\n"
	.align
_StringConst_72:
	.word	21			! length
	.ascii	"    status = RUNNING\n"
	.align
_StringConst_71:
	.word	19			! length
	.ascii	"    status = READY\n"
	.align
_StringConst_70:
	.word	26			! length
	.ascii	"    status = JUST_CREATED\n"
	.align
_StringConst_69:
	.word	23			! length
	.ascii	"    stack starting addr"
	.align
_StringConst_68:
	.word	12			! length
	.ascii	"    stackTop"
	.align
_StringConst_67:
	.word	1			! length
	.ascii	"\n"
	.align
_StringConst_66:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_65:
	.word	2			! length
	.ascii	": "
	.align
_StringConst_64:
	.word	7			! length
	.ascii	"      r"
	.align
_StringConst_63:
	.word	19			! length
	.ascii	"    machine state:\n"
	.align
_StringConst_62:
	.word	2			! length
	.ascii	")\n"
	.align
_StringConst_61:
	.word	29			! length
	.ascii	"\"    (addr of Thread object: "
	.align
_StringConst_60:
	.word	10			! length
	.ascii	"  Thread \""
	.align
_StringConst_59:
	.word	32			! length
	.ascii	"System stack underflow detected!"
	.align
_StringConst_58:
	.word	31			! length
	.ascii	"System stack overflow detected!"
	.align
_StringConst_57:
	.word	48			! length
	.ascii	"Ready list should always contain the idle thread"
	.align
_StringConst_56:
	.word	31			! length
	.ascii	"In Sleep, self != currentThread"
	.align
_StringConst_55:
	.word	44			! length
	.ascii	"In Sleep, currentInterruptStatus != DISABLED"
	.align
_StringConst_54:
	.word	51			! length
	.ascii	"Status of current thread should be READY or RUNNING"
	.align
_StringConst_53:
	.word	31			! length
	.ascii	"In Yield, self != currentThread"
	.align
_StringConst_52:
	.word	54			! length
	.ascii	"Attempt to broadcast a condition when lock is not held"
	.align
_StringConst_51:
	.word	52			! length
	.ascii	"Attempt to signal a condition when mutex is not held"
	.align
_StringConst_50:
	.word	51			! length
	.ascii	"Attempt to wait on condition when mutex is not held"
	.align
_StringConst_49:
	.word	52			! length
	.ascii	"Attempt to unlock a mutex by a thread not holding it"
	.align
_StringConst_48:
	.word	54			! length
	.ascii	"Attempt to lock a mutex by a thread already holding it"
	.align
_StringConst_47:
	.word	51			! length
	.ascii	"Semaphore count underflowed during \'Down\' operation"
	.align
_StringConst_46:
	.word	48			! length
	.ascii	"Semaphore count overflowed during \'Up\' operation"
	.align
_StringConst_45:
	.word	39			! length
	.ascii	"Semaphore created with initialCount < 0"
	.align
_StringConst_44:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_43:
	.word	4			! length
	.ascii	"  0x"
	.align
_StringConst_42:
	.word	11			! length
	.ascii	"/dev/serial"
	.align
_StringConst_41:
	.word	12			! length
	.ascii	"ChildProcess"
	.align
_StringConst_40:
	.word	47			! length
	.ascii	"Syscall \'Shutdown\' was invoked by a user thread"
	.align
_StringConst_39:
	.word	37			! length
	.ascii	"Unknown syscall code from user thread"
	.align
_StringConst_38:
	.word	15			! length
	.ascii	"Syscall code = "
	.align
_StringConst_37:
	.word	42			! length
	.ascii	"  ERROR: currentThread.myProcess is null\n\n"
	.align
_StringConst_36:
	.word	14			! length
	.ascii	"  **********\n\n"
	.align
_StringConst_35:
	.word	13			! length
	.ascii	"\n**********  "
	.align
_StringConst_34:
	.word	62			! length
	.ascii	"An AlignmentException exception has occured while in user mode"
	.align
_StringConst_33:
	.word	64			! length
	.ascii	"A PrivilegedInstruction exception has occured while in user mode"
	.align
_StringConst_32:
	.word	64			! length
	.ascii	"A PageReadonlyException exception has occured while in user mode"
	.align
_StringConst_31:
	.word	63			! length
	.ascii	"A PageInvalidException exception has occured while in user mode"
	.align
_StringConst_30:
	.word	60			! length
	.ascii	"An AddressException exception has occured while in user mode"
	.align
_StringConst_29:
	.word	63			! length
	.ascii	"An ArithmeticException exception has occured while in user mode"
	.align
_StringConst_28:
	.word	62			! length
	.ascii	"An IllegalInstruction exception has occured while in user mode"
	.align
_StringConst_27:
	.word	41			! length
	.ascii	"OpenFile.LoadExecutable: StartUserProcess"
	.align
_StringConst_26:
	.word	34			! length
	.ascii	"fileManager.Open: StartUserProcess"
	.align
_StringConst_25:
	.word	26			! length
	.ascii	"Loading inital program...\n"
	.align
_StringConst_24:
	.word	11			! length
	.ascii	"userProgram"
	.align
_StringConst_23:
	.word	1			! length
	.ascii	")"
	.align
_StringConst_22:
	.word	28			! length
	.ascii	"    (addr of Thread object: "
	.align
_StringConst_21:
	.word	20			! length
	.ascii	"Bad status in Thread"
	.align
_StringConst_20:
	.word	6			! length
	.ascii	"UNUSED"
	.align
_StringConst_19:
	.word	7			! length
	.ascii	"BLOCKED"
	.align
_StringConst_18:
	.word	7			! length
	.ascii	"RUNNING"
	.align
_StringConst_17:
	.word	5			! length
	.ascii	"READY"
	.align
_StringConst_16:
	.word	12			! length
	.ascii	"JUST_CREATED"
	.align
_StringConst_15:
	.word	12			! length
	.ascii	"\"    status="
	.align
_StringConst_14:
	.word	10			! length
	.ascii	"  Thread \""
	.align
_StringConst_13:
	.word	5			! length
	.ascii	"NULL\n"
	.align
_StringConst_12:
	.word	92			! length
	.ascii	"(To find out where execution was when the problem arose, type \'st\' at the emulator prompt.)\n"
	.align
_StringConst_11:
	.word	19			! length
	.ascii	"\" -- TERMINATING!\n\n"
	.align
_StringConst_10:
	.word	3			! length
	.ascii	": \""
	.align
_StringConst_9:
	.word	4			! length
	.ascii	" in "
	.align
_StringConst_8:
	.word	12			! length
	.ascii	"\nFATAL ERROR"
	.align
_StringConst_7:
	.word	32			! length
	.ascii	"This thread will never run again"
	.align
_StringConst_6:
	.word	32			! length
	.ascii	"ThreadFinish should never return"
	.align
_StringConst_5:
	.word	24			! length
	.ascii	"Here is the ready list:\n"
	.align
_StringConst_4:
	.word	11			! length
	.ascii	"idle-thread"
	.align
_StringConst_3:
	.word	11			! length
	.ascii	"main-thread"
	.align
_StringConst_2:
	.word	33			! length
	.ascii	"Initializing Thread Scheduler...\n"
	.align
_StringConst_1:
	.word	12			! length
	.ascii	"TestProgram5"
	.align
	.text
! 
! Source Filename and Package Name
! 
_sourceFileName:
	.ascii	"Kernel.k\0"
_packageName:
	.ascii	"Kernel\0"
	.align
!
! CheckVersion
!
!     This routine is passed:
!       r2 = ptr to the name of the 'using' package
!       r3 = the expected hashVal for 'used' package (myPackage)
!     It prints an error message if the expected hashVal is not correct
!     It then checks all the packages that 'myPackage' uses.
!
!     This routine returns:
!       r1:  0=No problems, 1=Problems
!
!     Registers modified: r1-r4
!
_CheckVersion_P_Kernel_:
	.export	_CheckVersion_P_Kernel_
	set	0xb190a829,r4		! myHashVal = -1315919831
	cmp	r3,r4
	be	_Label_248
	set	_CVMess1,r1
	call	_putString
	mov	r2,r1			! print using package
	call	_putString
	set	_CVMess2,r1
	call	_putString
	set	_packageName,r1		! print myPackage
	call	_putString
	set	_CVMess3,r1
	call	_putString
	set	_packageName,r1		! print myPackage
	call	_putString
	set	_CVMess4,r1
	call	_putString
	mov	r2,r1			! print using package
	call	_putString
	set	_CVMess5,r1
	call	_putString
	set	_packageName,r1		! print myPackage
	call	_putString
	set	_CVMess6,r1
	call	_putString
	mov	1,r1
	ret	
_Label_248:
	mov	0,r1
! Make sure _P_Syscall_ has hash value 0x432b40fa (decimal 1126908154)
	set	_packageName,r2
	set	0x432b40fa,r3
	call	_CheckVersion_P_Syscall_
	.import	_CheckVersion_P_Syscall_
	cmp	r1,0
	bne	_Label_249
! Make sure _P_System_ has hash value 0xba42d652 (decimal -1170024878)
	set	_packageName,r2
	set	0xba42d652,r3
	call	_CheckVersion_P_System_
	.import	_CheckVersion_P_System_
	cmp	r1,0
	bne	_Label_249
! Make sure _P_BitMap_ has hash value 0x93947b8f (decimal -1818985585)
	set	_packageName,r2
	set	0x93947b8f,r3
	call	_CheckVersion_P_BitMap_
	.import	_CheckVersion_P_BitMap_
	cmp	r1,0
	bne	_Label_249
! Make sure _P_List_ has hash value 0xafebcabb (decimal -1343501637)
	set	_packageName,r2
	set	0xafebcabb,r3
	call	_CheckVersion_P_List_
	.import	_CheckVersion_P_List_
	cmp	r1,0
	bne	_Label_249
_Label_249:
	ret
_CVMess1:	.ascii	"\nVERSION CONSISTENCY ERROR: Package '\0"
_CVMess2:	.ascii	"' uses package '\0"
_CVMess3:	.ascii	"'.  Whenever a header file is modified, all packages that use that package (directly or indirectly) must be recompiled.  The header file for '\0"
_CVMess4:	.ascii	"' has been changed since '\0"
_CVMess5:	.ascii	"' was compiled last.  Please recompile all packages that depend on '\0"
_CVMess6:	.ascii	"'.\n\n\0"
	.align
! 
! ===============  FUNCTION InitializeScheduler  ===============
! 
_P_Kernel_InitializeScheduler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_InitializeScheduler,r1
	push	r1
	mov	16,r1
_Label_7743:
	push	r0
	sub	r1,1,r1
	bne	_Label_7743
	mov	10,r13		! source line 10
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   Call the function
	mov	17,r13		! source line 17
	mov	"\0\0CE",r10
	call	Cleari
! CALL STATEMENT...
!   _temp_250 = _StringConst_2
	set	_StringConst_2,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_250  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	18,r13		! source line 18
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	19,r13		! source line 19
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _P_Kernel_readyList = zeros  (sizeInBytes=12)
	set	_P_Kernel_readyList,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   _P_Kernel_readyList = _P_List_List
	set	_P_List_List,r1
	set	_P_Kernel_readyList,r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	20,r13		! source line 20
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _P_Kernel_threadsToBeDestroyed = zeros  (sizeInBytes=12)
	set	_P_Kernel_threadsToBeDestroyed,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   _P_Kernel_threadsToBeDestroyed = _P_List_List
	set	_P_List_List,r1
	set	_P_Kernel_threadsToBeDestroyed,r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	21,r13		! source line 21
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _P_Kernel_mainThread = zeros  (sizeInBytes=4164)
	set	_P_Kernel_mainThread,r4
	mov	1041,r3
_Label_7744:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_7744
!   _P_Kernel_mainThread = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	set	_P_Kernel_mainThread,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	22,r13		! source line 22
	mov	"\0\0SE",r10
!   _temp_254 = _StringConst_3
	set	_StringConst_3,r1
	store	r1,[r14+-44]
!   _temp_255 = &_P_Kernel_mainThread
	set	_P_Kernel_mainThread,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=_temp_254  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	23,r13		! source line 23
	mov	"\0\0AS",r10
!   _temp_256 = &_P_Kernel_mainThread
	set	_P_Kernel_mainThread,r1
	store	r1,[r14+-36]
!   _temp_257 = _temp_256 + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_257 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-32],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	24,r13		! source line 24
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _P_Kernel_idleThread = zeros  (sizeInBytes=4164)
	set	_P_Kernel_idleThread,r4
	mov	1041,r3
_Label_7745:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_7745
!   _P_Kernel_idleThread = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	set	_P_Kernel_idleThread,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	25,r13		! source line 25
	mov	"\0\0SE",r10
!   _temp_259 = _StringConst_4
	set	_StringConst_4,r1
	store	r1,[r14+-24]
!   _temp_260 = &_P_Kernel_idleThread
	set	_P_Kernel_idleThread,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=_temp_259  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	26,r13		! source line 26
	mov	"\0\0SE",r10
!   _temp_261 = _function_247_IdleFunction
	set	_function_247_IdleFunction,r1
	store	r1,[r14+-16]
!   _temp_262 = &_P_Kernel_idleThread
	set	_P_Kernel_idleThread,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_261  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+8]
!   Send message Fork
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	27,r13		! source line 27
	mov	"\0\0AS",r10
!   _P_Kernel_currentThread = &_P_Kernel_mainThread
	set	_P_Kernel_mainThread,r1
	set	_P_Kernel_currentThread,r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	28,r13		! source line 28
	mov	"\0\0AS",r10
!   _P_System_FatalError = _P_Kernel_FatalError_ThreadVersion
	set	_P_Kernel_FatalError_ThreadVersion,r1
	set	_P_System_FatalError,r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	29,r13		! source line 29
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 1		(4 bytes)
	mov	1,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   Call the function
	mov	30,r13		! source line 30
	mov	"\0\0CE",r10
	call	Seti
! RETURN STATEMENT...
	mov	30,r13		! source line 30
	mov	"\0\0RE",r10
	add	r15,68,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_InitializeScheduler:
	.word	_sourceFileName
	.word	_Label_263
	.word	0		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_264
	.word	-12
	.word	4
	.word	_Label_265
	.word	-16
	.word	4
	.word	_Label_266
	.word	-20
	.word	4
	.word	_Label_267
	.word	-24
	.word	4
	.word	_Label_268
	.word	-28
	.word	4
	.word	_Label_269
	.word	-32
	.word	4
	.word	_Label_270
	.word	-36
	.word	4
	.word	_Label_271
	.word	-40
	.word	4
	.word	_Label_272
	.word	-44
	.word	4
	.word	_Label_273
	.word	-48
	.word	4
	.word	_Label_274
	.word	-52
	.word	4
	.word	_Label_275
	.word	-56
	.word	4
	.word	_Label_276
	.word	-60
	.word	4
	.word	0
_Label_263:
	.ascii	"InitializeScheduler\0"
	.align
_Label_264:
	.byte	'?'
	.ascii	"_temp_262\0"
	.align
_Label_265:
	.byte	'?'
	.ascii	"_temp_261\0"
	.align
_Label_266:
	.byte	'?'
	.ascii	"_temp_260\0"
	.align
_Label_267:
	.byte	'?'
	.ascii	"_temp_259\0"
	.align
_Label_268:
	.byte	'?'
	.ascii	"_temp_258\0"
	.align
_Label_269:
	.byte	'?'
	.ascii	"_temp_257\0"
	.align
_Label_270:
	.byte	'?'
	.ascii	"_temp_256\0"
	.align
_Label_271:
	.byte	'?'
	.ascii	"_temp_255\0"
	.align
_Label_272:
	.byte	'?'
	.ascii	"_temp_254\0"
	.align
_Label_273:
	.byte	'?'
	.ascii	"_temp_253\0"
	.align
_Label_274:
	.byte	'?'
	.ascii	"_temp_252\0"
	.align
_Label_275:
	.byte	'?'
	.ascii	"_temp_251\0"
	.align
_Label_276:
	.byte	'?'
	.ascii	"_temp_250\0"
	.align
! 
! ===============  FUNCTION IdleFunction  ===============
! 
_function_247_IdleFunction:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_247_IdleFunction,r1
	push	r1
	mov	3,r1
_Label_7746:
	push	r0
	sub	r1,1,r1
	bne	_Label_7746
	mov	35,r13		! source line 35
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! WHILE STATEMENT...
	mov	45,r13		! source line 45
	mov	"\0\0WH",r10
_Label_277:
!	_Label_278	jmp	_Label_278
_Label_278:
	mov	45,r13		! source line 45
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	46,r13		! source line 46
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	46,r13		! source line 46
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-16]
! IF STATEMENT...
	mov	47,r13		! source line 47
	mov	"\0\0IF",r10
	mov	47,r13		! source line 47
	mov	"\0\0SE",r10
!   _temp_282 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Send message IsEmpty
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   if result==true then goto _Label_280 else goto _Label_281
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_281
	jmp	_Label_280
_Label_280:
! THEN...
	mov	48,r13		! source line 48
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   Call the function
	mov	48,r13		! source line 48
	mov	"\0\0CE",r10
	call	Wait
	jmp	_Label_283
_Label_281:
! ELSE...
	mov	50,r13		! source line 50
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	50,r13		! source line 50
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Yield
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! END IF...
_Label_283:
! END WHILE...
	jmp	_Label_277
_Label_279:
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_247_IdleFunction:
	.word	_sourceFileName
	.word	_Label_284
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_285
	.word	8
	.word	4
	.word	_Label_286
	.word	-12
	.word	4
	.word	_Label_287
	.word	-16
	.word	4
	.word	0
_Label_284:
	.ascii	"IdleFunction\0"
	.align
_Label_285:
	.byte	'I'
	.ascii	"arg\0"
	.align
_Label_286:
	.byte	'?'
	.ascii	"_temp_282\0"
	.align
_Label_287:
	.byte	'I'
	.ascii	"junk\0"
	.align
! 
! ===============  FUNCTION Run  ===============
! 
_P_Kernel_Run:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Run,r1
	push	r1
	mov	20,r1
_Label_7747:
	push	r0
	sub	r1,1,r1
	bne	_Label_7747
	mov	57,r13		! source line 57
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	70,r13		! source line 70
	mov	"\0\0AS",r10
!   prevThread = _P_Kernel_currentThread		(4 bytes)
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	store	r1,[r14+-76]
! SEND STATEMENT...
	mov	71,r13		! source line 71
	mov	"\0\0SE",r10
!   if intIsZero (prevThread) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message CheckOverflow
	load	[r14+-76],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! IF STATEMENT...
	mov	73,r13		! source line 73
	mov	"\0\0IF",r10
!   if intIsZero (prevThread) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_290 = prevThread + 4092
	load	[r14+-76],r1
	add	r1,4092,r1
	store	r1,[r14+-72]
!   if boolIsZero (_temp_290 ) then goto _Label_289		(int)
	load	[r14+-72],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_289
!	_Label_288	jmp	_Label_288
_Label_288:
! THEN...
	mov	74,r13		! source line 74
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   if intIsZero (prevThread) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_292 = prevThread + 4096
	load	[r14+-76],r1
	add	r1,4096,r1
	store	r1,[r14+-64]
!   Move address of _temp_292 [0 ] into _temp_293
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-64],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-60]
!   _temp_291 = _temp_293		(4 bytes)
	load	[r14+-60],r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_291  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	74,r13		! source line 74
	mov	"\0\0CE",r10
	call	SaveUserRegs
! END IF...
_Label_289:
! ASSIGNMENT STATEMENT...
	mov	76,r13		! source line 76
	mov	"\0\0AS",r10
!   _P_Kernel_currentThread = nextThread		(4 bytes)
	load	[r14+8],r1
	set	_P_Kernel_currentThread,r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	77,r13		! source line 77
	mov	"\0\0AS",r10
!   if intIsZero (nextThread) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_294 = nextThread + 76
	load	[r14+8],r1
	add	r1,76,r1
	store	r1,[r14+-56]
!   Data Move: *_temp_294 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-56],r2
	store	r1,[r2]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=prevThread  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=nextThread  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+4]
!   Call the function
	mov	83,r13		! source line 83
	mov	"\0\0CE",r10
	call	Switch
! WHILE STATEMENT...
	mov	87,r13		! source line 87
	mov	"\0\0WH",r10
_Label_295:
	mov	87,r13		! source line 87
	mov	"\0\0SE",r10
!   _temp_299 = &_P_Kernel_threadsToBeDestroyed
	set	_P_Kernel_threadsToBeDestroyed,r1
	store	r1,[r14+-52]
!   Send message IsEmpty
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_298  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_298 then goto _Label_297 else goto _Label_296
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_296
	jmp	_Label_297
_Label_296:
	mov	87,r13		! source line 87
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	88,r13		! source line 88
	mov	"\0\0AS",r10
	mov	88,r13		! source line 88
	mov	"\0\0SE",r10
!   _temp_300 = &_P_Kernel_threadsToBeDestroyed
	set	_P_Kernel_threadsToBeDestroyed,r1
	store	r1,[r14+-48]
!   Send message Remove
	load	[r14+-48],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=th  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-80]
! SEND STATEMENT...
	mov	89,r13		! source line 89
	mov	"\0\0SE",r10
!   _temp_301 = &_P_Kernel_threadManager
	set	_P_Kernel_threadManager,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=12  value=th  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+4]
!   Send message FreeThread
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! END WHILE...
	jmp	_Label_295
_Label_297:
! IF STATEMENT...
	mov	92,r13		! source line 92
	mov	"\0\0IF",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_304 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-40]
!   if boolIsZero (_temp_304 ) then goto _Label_303		(int)
	load	[r14+-40],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_303
!	_Label_302	jmp	_Label_302
_Label_302:
! THEN...
	mov	93,r13		! source line 93
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_306 = _P_Kernel_currentThread + 4096
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4096,r1
	store	r1,[r14+-32]
!   Move address of _temp_306 [0 ] into _temp_307
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-32],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   _temp_305 = _temp_307		(4 bytes)
	load	[r14+-28],r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_305  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	93,r13		! source line 93
	mov	"\0\0CE",r10
	call	RestoreUserRegs
! SEND STATEMENT...
	mov	94,r13		! source line 94
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_309 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-20]
!   Data Move: _temp_308 = *_temp_309  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_308) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_310 = _temp_308 + 32
	load	[r14+-24],r1
	add	r1,32,r1
	store	r1,[r14+-16]
!   Send message SetToThisPageTable
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,72,r2
	call	r2
! END IF...
_Label_303:
! RETURN STATEMENT...
	mov	92,r13		! source line 92
	mov	"\0\0RE",r10
	add	r15,84,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Run:
	.word	_sourceFileName
	.word	_Label_311
	.word	4		! total size of parameters
	.word	80		! frame size = 80
	.word	_Label_312
	.word	8
	.word	4
	.word	_Label_313
	.word	-16
	.word	4
	.word	_Label_314
	.word	-20
	.word	4
	.word	_Label_315
	.word	-24
	.word	4
	.word	_Label_316
	.word	-28
	.word	4
	.word	_Label_317
	.word	-32
	.word	4
	.word	_Label_318
	.word	-36
	.word	4
	.word	_Label_319
	.word	-40
	.word	4
	.word	_Label_320
	.word	-44
	.word	4
	.word	_Label_321
	.word	-48
	.word	4
	.word	_Label_322
	.word	-52
	.word	4
	.word	_Label_323
	.word	-9
	.word	1
	.word	_Label_324
	.word	-56
	.word	4
	.word	_Label_325
	.word	-60
	.word	4
	.word	_Label_326
	.word	-64
	.word	4
	.word	_Label_327
	.word	-68
	.word	4
	.word	_Label_328
	.word	-72
	.word	4
	.word	_Label_329
	.word	-76
	.word	4
	.word	_Label_330
	.word	-80
	.word	4
	.word	0
_Label_311:
	.ascii	"Run\0"
	.align
_Label_312:
	.byte	'P'
	.ascii	"nextThread\0"
	.align
_Label_313:
	.byte	'?'
	.ascii	"_temp_310\0"
	.align
_Label_314:
	.byte	'?'
	.ascii	"_temp_309\0"
	.align
_Label_315:
	.byte	'?'
	.ascii	"_temp_308\0"
	.align
_Label_316:
	.byte	'?'
	.ascii	"_temp_307\0"
	.align
_Label_317:
	.byte	'?'
	.ascii	"_temp_306\0"
	.align
_Label_318:
	.byte	'?'
	.ascii	"_temp_305\0"
	.align
_Label_319:
	.byte	'?'
	.ascii	"_temp_304\0"
	.align
_Label_320:
	.byte	'?'
	.ascii	"_temp_301\0"
	.align
_Label_321:
	.byte	'?'
	.ascii	"_temp_300\0"
	.align
_Label_322:
	.byte	'?'
	.ascii	"_temp_299\0"
	.align
_Label_323:
	.byte	'C'
	.ascii	"_temp_298\0"
	.align
_Label_324:
	.byte	'?'
	.ascii	"_temp_294\0"
	.align
_Label_325:
	.byte	'?'
	.ascii	"_temp_293\0"
	.align
_Label_326:
	.byte	'?'
	.ascii	"_temp_292\0"
	.align
_Label_327:
	.byte	'?'
	.ascii	"_temp_291\0"
	.align
_Label_328:
	.byte	'?'
	.ascii	"_temp_290\0"
	.align
_Label_329:
	.byte	'P'
	.ascii	"prevThread\0"
	.align
_Label_330:
	.byte	'P'
	.ascii	"th\0"
	.align
! 
! ===============  FUNCTION PrintReadyList  ===============
! 
_P_Kernel_PrintReadyList:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_PrintReadyList,r1
	push	r1
	mov	6,r1
_Label_7748:
	push	r0
	sub	r1,1,r1
	bne	_Label_7748
	mov	100,r13		! source line 100
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	107,r13		! source line 107
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	107,r13		! source line 107
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! CALL STATEMENT...
!   _temp_331 = _StringConst_5
	set	_StringConst_5,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_331  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	108,r13		! source line 108
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	109,r13		! source line 109
	mov	"\0\0SE",r10
!   _temp_332 = _function_246_ThreadPrintShort
	set	_function_246_ThreadPrintShort,r1
	store	r1,[r14+-16]
!   _temp_333 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_332  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Send message ApplyToEach
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	110,r13		! source line 110
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	110,r13		! source line 110
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! RETURN STATEMENT...
	mov	110,r13		! source line 110
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_PrintReadyList:
	.word	_sourceFileName
	.word	_Label_334
	.word	0		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_335
	.word	-12
	.word	4
	.word	_Label_336
	.word	-16
	.word	4
	.word	_Label_337
	.word	-20
	.word	4
	.word	_Label_338
	.word	-24
	.word	4
	.word	0
_Label_334:
	.ascii	"PrintReadyList\0"
	.align
_Label_335:
	.byte	'?'
	.ascii	"_temp_333\0"
	.align
_Label_336:
	.byte	'?'
	.ascii	"_temp_332\0"
	.align
_Label_337:
	.byte	'?'
	.ascii	"_temp_331\0"
	.align
_Label_338:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  FUNCTION ThreadStartMain  ===============
! 
_P_Kernel_ThreadStartMain:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_ThreadStartMain,r1
	push	r1
	mov	7,r1
_Label_7749:
	push	r0
	sub	r1,1,r1
	bne	_Label_7749
	mov	115,r13		! source line 115
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	127,r13		! source line 127
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+0]
!   Call the function
	mov	127,r13		! source line 127
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! ASSIGNMENT STATEMENT...
	mov	128,r13		! source line 128
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_339 = _P_Kernel_currentThread + 80
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,80,r1
	store	r1,[r14+-24]
!   Data Move: mainFun = *_temp_339  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-32]
! CALL STATEMENT...
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_341 = _P_Kernel_currentThread + 84
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,84,r1
	store	r1,[r14+-16]
!   Data Move: _temp_340 = *_temp_341  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_340  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable mainFun
	mov	129,r13		! source line 129
	mov	"\0\0CF",r10
	load	[r14+-32],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CALL STATEMENT...
!   Call the function
	mov	130,r13		! source line 130
	mov	"\0\0CA",r10
	call	_P_Kernel_ThreadFinish
! CALL STATEMENT...
!   _temp_342 = _StringConst_6
	set	_StringConst_6,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_342  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	131,r13		! source line 131
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! RETURN STATEMENT...
	mov	131,r13		! source line 131
	mov	"\0\0RE",r10
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_ThreadStartMain:
	.word	_sourceFileName
	.word	_Label_343
	.word	0		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_344
	.word	-12
	.word	4
	.word	_Label_345
	.word	-16
	.word	4
	.word	_Label_346
	.word	-20
	.word	4
	.word	_Label_347
	.word	-24
	.word	4
	.word	_Label_348
	.word	-28
	.word	4
	.word	_Label_349
	.word	-32
	.word	4
	.word	0
_Label_343:
	.ascii	"ThreadStartMain\0"
	.align
_Label_344:
	.byte	'?'
	.ascii	"_temp_342\0"
	.align
_Label_345:
	.byte	'?'
	.ascii	"_temp_341\0"
	.align
_Label_346:
	.byte	'?'
	.ascii	"_temp_340\0"
	.align
_Label_347:
	.byte	'?'
	.ascii	"_temp_339\0"
	.align
_Label_348:
	.byte	'I'
	.ascii	"junk\0"
	.align
_Label_349:
	.byte	'P'
	.ascii	"mainFun\0"
	.align
! 
! ===============  FUNCTION ThreadFinish  ===============
! 
_P_Kernel_ThreadFinish:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_ThreadFinish,r1
	push	r1
	mov	5,r1
_Label_7750:
	push	r0
	sub	r1,1,r1
	bne	_Label_7750
	mov	136,r13		! source line 136
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	147,r13		! source line 147
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	147,r13		! source line 147
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
! SEND STATEMENT...
	mov	151,r13		! source line 151
	mov	"\0\0SE",r10
!   _temp_350 = &_P_Kernel_threadsToBeDestroyed
	set	_P_Kernel_threadsToBeDestroyed,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_P_Kernel_currentThread  sizeInBytes=4
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	152,r13		! source line 152
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Sleep
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! CALL STATEMENT...
!   _temp_351 = _StringConst_7
	set	_StringConst_7,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_351  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	154,r13		! source line 154
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! RETURN STATEMENT...
	mov	154,r13		! source line 154
	mov	"\0\0RE",r10
	add	r15,24,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_ThreadFinish:
	.word	_sourceFileName
	.word	_Label_352
	.word	0		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_353
	.word	-12
	.word	4
	.word	_Label_354
	.word	-16
	.word	4
	.word	_Label_355
	.word	-20
	.word	4
	.word	0
_Label_352:
	.ascii	"ThreadFinish\0"
	.align
_Label_353:
	.byte	'?'
	.ascii	"_temp_351\0"
	.align
_Label_354:
	.byte	'?'
	.ascii	"_temp_350\0"
	.align
_Label_355:
	.byte	'I'
	.ascii	"junk\0"
	.align
! 
! ===============  FUNCTION FatalError_ThreadVersion  ===============
! 
_P_Kernel_FatalError_ThreadVersion:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_FatalError_ThreadVersion,r1
	push	r1
	mov	9,r1
_Label_7751:
	push	r0
	sub	r1,1,r1
	bne	_Label_7751
	mov	159,r13		! source line 159
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	167,r13		! source line 167
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	167,r13		! source line 167
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
! CALL STATEMENT...
!   _temp_356 = _StringConst_8
	set	_StringConst_8,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_356  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	168,r13		! source line 168
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	169,r13		! source line 169
	mov	"\0\0IF",r10
!   if _P_Kernel_currentThread == 0 then goto _Label_358		(int)
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_358
!	_Label_357	jmp	_Label_357
_Label_357:
! THEN...
	mov	170,r13		! source line 170
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_359 = _StringConst_9
	set	_StringConst_9,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_359  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	170,r13		! source line 170
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_361 = _P_Kernel_currentThread + 72
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,72,r1
	store	r1,[r14+-24]
!   Data Move: _temp_360 = *_temp_361  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_360  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	171,r13		! source line 171
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_358:
! CALL STATEMENT...
!   _temp_362 = _StringConst_10
	set	_StringConst_10,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_362  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	173,r13		! source line 173
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=errorMessage  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	174,r13		! source line 174
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_363 = _StringConst_11
	set	_StringConst_11,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_363  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	175,r13		! source line 175
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_364 = _StringConst_12
	set	_StringConst_12,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_364  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	176,r13		! source line 176
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	177,r13		! source line 177
	mov	"\0\0CE",r10
	call	RuntimeExit
! RETURN STATEMENT...
	mov	177,r13		! source line 177
	mov	"\0\0RE",r10
	add	r15,40,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_FatalError_ThreadVersion:
	.word	_sourceFileName
	.word	_Label_365
	.word	4		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_366
	.word	8
	.word	4
	.word	_Label_367
	.word	-12
	.word	4
	.word	_Label_368
	.word	-16
	.word	4
	.word	_Label_369
	.word	-20
	.word	4
	.word	_Label_370
	.word	-24
	.word	4
	.word	_Label_371
	.word	-28
	.word	4
	.word	_Label_372
	.word	-32
	.word	4
	.word	_Label_373
	.word	-36
	.word	4
	.word	_Label_374
	.word	-40
	.word	4
	.word	0
_Label_365:
	.ascii	"FatalError_ThreadVersion\0"
	.align
_Label_366:
	.byte	'P'
	.ascii	"errorMessage\0"
	.align
_Label_367:
	.byte	'?'
	.ascii	"_temp_364\0"
	.align
_Label_368:
	.byte	'?'
	.ascii	"_temp_363\0"
	.align
_Label_369:
	.byte	'?'
	.ascii	"_temp_362\0"
	.align
_Label_370:
	.byte	'?'
	.ascii	"_temp_361\0"
	.align
_Label_371:
	.byte	'?'
	.ascii	"_temp_360\0"
	.align
_Label_372:
	.byte	'?'
	.ascii	"_temp_359\0"
	.align
_Label_373:
	.byte	'?'
	.ascii	"_temp_356\0"
	.align
_Label_374:
	.byte	'I'
	.ascii	"junk\0"
	.align
! 
! ===============  FUNCTION SetInterruptsTo  ===============
! 
_P_Kernel_SetInterruptsTo:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_SetInterruptsTo,r1
	push	r1
	mov	1,r1
_Label_7752:
	push	r0
	sub	r1,1,r1
	bne	_Label_7752
	mov	182,r13		! source line 182
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   Call the function
	mov	195,r13		! source line 195
	mov	"\0\0CE",r10
	call	Cleari
! ASSIGNMENT STATEMENT...
	mov	196,r13		! source line 196
	mov	"\0\0AS",r10
!   oldStat = _P_Kernel_currentInterruptStatus		(4 bytes)
	set	_P_Kernel_currentInterruptStatus,r1
	load	[r1],r1
	store	r1,[r14+-12]
! IF STATEMENT...
	mov	197,r13		! source line 197
	mov	"\0\0IF",r10
!   if newStatus != 1 then goto _Label_376		(int)
	load	[r14+8],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_376
!	_Label_375	jmp	_Label_375
_Label_375:
! THEN...
	mov	198,r13		! source line 198
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	198,r13		! source line 198
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 1		(4 bytes)
	mov	1,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   Call the function
	mov	199,r13		! source line 199
	mov	"\0\0CE",r10
	call	Seti
	jmp	_Label_377
_Label_376:
! ELSE...
	mov	201,r13		! source line 201
	mov	"\0\0EL",r10
! ASSIGNMENT STATEMENT...
	mov	201,r13		! source line 201
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   Call the function
	mov	202,r13		! source line 202
	mov	"\0\0CE",r10
	call	Cleari
! END IF...
_Label_377:
! RETURN STATEMENT...
	mov	204,r13		! source line 204
	mov	"\0\0RE",r10
!   ReturnResult: oldStat  (sizeInBytes=4)
	load	[r14+-12],r1
	store	r1,[r14+8]
	add	r15,8,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_SetInterruptsTo:
	.word	_sourceFileName
	.word	_Label_378
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_379
	.word	8
	.word	4
	.word	_Label_380
	.word	-12
	.word	4
	.word	0
_Label_378:
	.ascii	"SetInterruptsTo\0"
	.align
_Label_379:
	.byte	'I'
	.ascii	"newStatus\0"
	.align
_Label_380:
	.byte	'I'
	.ascii	"oldStat\0"
	.align
! 
! ===============  FUNCTION ThreadPrintShort  ===============
! 
_function_246_ThreadPrintShort:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_246_ThreadPrintShort,r1
	push	r1
	mov	19,r1
_Label_7753:
	push	r0
	sub	r1,1,r1
	bne	_Label_7753
	mov	643,r13		! source line 643
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! oldStatus
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	650,r13		! source line 650
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-80]
! IF STATEMENT...
	mov	651,r13		! source line 651
	mov	"\0\0IF",r10
!   if t == 0 then goto _Label_384		(int)
	load	[r14+8],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_384
!   _temp_383 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_385
_Label_384:
!   _temp_383 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_385:
!   if _temp_383 then goto _Label_382 else goto _Label_381
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_381
	jmp	_Label_382
_Label_381:
! THEN...
	mov	652,r13		! source line 652
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_386 = _StringConst_13
	set	_StringConst_13,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_386  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	652,r13		! source line 652
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	653,r13		! source line 653
	mov	"\0\0RE",r10
	add	r15,80,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_382:
! CALL STATEMENT...
!   _temp_387 = _StringConst_14
	set	_StringConst_14,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_387  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   Call the function
	mov	655,r13		! source line 655
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_389 = t + 72
	load	[r14+8],r1
	add	r1,72,r1
	store	r1,[r14+-64]
!   Data Move: _temp_388 = *_temp_389  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_388  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	656,r13		! source line 656
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_390 = _StringConst_15
	set	_StringConst_15,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_390  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	657,r13		! source line 657
	mov	"\0\0CE",r10
	call	print
! SWITCH STATEMENT (using series of tests)...
	mov	658,r13		! source line 658
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_399 = t + 76
	load	[r14+8],r1
	add	r1,76,r1
	store	r1,[r14+-52]
!   Data Move: _temp_398 = *_temp_399  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   Branch to the right case label
	load	[r14+-56],r1
	cmp	r1,1
	be	_Label_393
	cmp	r1,2
	be	_Label_394
	cmp	r1,3
	be	_Label_395
	cmp	r1,4
	be	_Label_396
	cmp	r1,5
	be	_Label_397
	jmp	_Label_391
! CASE 1...
_Label_393:
! CALL STATEMENT...
!   _temp_400 = _StringConst_16
	set	_StringConst_16,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_400  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	660,r13		! source line 660
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	661,r13		! source line 661
	mov	"\0\0BR",r10
	jmp	_Label_392
! CASE 2...
_Label_394:
! CALL STATEMENT...
!   _temp_401 = _StringConst_17
	set	_StringConst_17,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_401  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	663,r13		! source line 663
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	664,r13		! source line 664
	mov	"\0\0BR",r10
	jmp	_Label_392
! CASE 3...
_Label_395:
! CALL STATEMENT...
!   _temp_402 = _StringConst_18
	set	_StringConst_18,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_402  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	666,r13		! source line 666
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	667,r13		! source line 667
	mov	"\0\0BR",r10
	jmp	_Label_392
! CASE 4...
_Label_396:
! CALL STATEMENT...
!   _temp_403 = _StringConst_19
	set	_StringConst_19,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_403  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	669,r13		! source line 669
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	670,r13		! source line 670
	mov	"\0\0BR",r10
	jmp	_Label_392
! CASE 5...
_Label_397:
! CALL STATEMENT...
!   _temp_404 = _StringConst_20
	set	_StringConst_20,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_404  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	672,r13		! source line 672
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	673,r13		! source line 673
	mov	"\0\0BR",r10
	jmp	_Label_392
! DEFAULT CASE...
_Label_391:
! CALL STATEMENT...
!   _temp_405 = _StringConst_21
	set	_StringConst_21,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_405  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	675,r13		! source line 675
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_392:
! CALL STATEMENT...
!   _temp_406 = _StringConst_22
	set	_StringConst_22,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_406  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	677,r13		! source line 677
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_407 = t		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_407  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	678,r13		! source line 678
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_408 = _StringConst_23
	set	_StringConst_23,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_408  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	679,r13		! source line 679
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	680,r13		! source line 680
	mov	"\0\0CA",r10
	call	_P_System_nl
! ASSIGNMENT STATEMENT...
	mov	682,r13		! source line 682
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	682,r13		! source line 682
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-80]
! RETURN STATEMENT...
	mov	682,r13		! source line 682
	mov	"\0\0RE",r10
	add	r15,80,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_246_ThreadPrintShort:
	.word	_sourceFileName
	.word	_Label_409
	.word	4		! total size of parameters
	.word	76		! frame size = 76
	.word	_Label_410
	.word	8
	.word	4
	.word	_Label_411
	.word	-16
	.word	4
	.word	_Label_412
	.word	-20
	.word	4
	.word	_Label_413
	.word	-24
	.word	4
	.word	_Label_414
	.word	-28
	.word	4
	.word	_Label_415
	.word	-32
	.word	4
	.word	_Label_416
	.word	-36
	.word	4
	.word	_Label_417
	.word	-40
	.word	4
	.word	_Label_418
	.word	-44
	.word	4
	.word	_Label_419
	.word	-48
	.word	4
	.word	_Label_420
	.word	-52
	.word	4
	.word	_Label_421
	.word	-56
	.word	4
	.word	_Label_422
	.word	-60
	.word	4
	.word	_Label_423
	.word	-64
	.word	4
	.word	_Label_424
	.word	-68
	.word	4
	.word	_Label_425
	.word	-72
	.word	4
	.word	_Label_426
	.word	-76
	.word	4
	.word	_Label_427
	.word	-9
	.word	1
	.word	_Label_428
	.word	-80
	.word	4
	.word	0
_Label_409:
	.ascii	"ThreadPrintShort\0"
	.align
_Label_410:
	.byte	'P'
	.ascii	"t\0"
	.align
_Label_411:
	.byte	'?'
	.ascii	"_temp_408\0"
	.align
_Label_412:
	.byte	'?'
	.ascii	"_temp_407\0"
	.align
_Label_413:
	.byte	'?'
	.ascii	"_temp_406\0"
	.align
_Label_414:
	.byte	'?'
	.ascii	"_temp_405\0"
	.align
_Label_415:
	.byte	'?'
	.ascii	"_temp_404\0"
	.align
_Label_416:
	.byte	'?'
	.ascii	"_temp_403\0"
	.align
_Label_417:
	.byte	'?'
	.ascii	"_temp_402\0"
	.align
_Label_418:
	.byte	'?'
	.ascii	"_temp_401\0"
	.align
_Label_419:
	.byte	'?'
	.ascii	"_temp_400\0"
	.align
_Label_420:
	.byte	'?'
	.ascii	"_temp_399\0"
	.align
_Label_421:
	.byte	'?'
	.ascii	"_temp_398\0"
	.align
_Label_422:
	.byte	'?'
	.ascii	"_temp_390\0"
	.align
_Label_423:
	.byte	'?'
	.ascii	"_temp_389\0"
	.align
_Label_424:
	.byte	'?'
	.ascii	"_temp_388\0"
	.align
_Label_425:
	.byte	'?'
	.ascii	"_temp_387\0"
	.align
_Label_426:
	.byte	'?'
	.ascii	"_temp_386\0"
	.align
_Label_427:
	.byte	'C'
	.ascii	"_temp_383\0"
	.align
_Label_428:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  FUNCTION PrintObjectAddr  ===============
! 
_function_245_PrintObjectAddr:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_245_PrintObjectAddr,r1
	push	r1
	mov	2,r1
_Label_7754:
	push	r0
	sub	r1,1,r1
	bne	_Label_7754
	mov	1024,r13		! source line 1024
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_429 = p		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_429  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1028,r13		! source line 1028
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=32  sizeInBytes=1
	mov	32,r1
	storeb	r1,[r15+0]
!   Call the function
	mov	1029,r13		! source line 1029
	mov	"\0\0CE",r10
	call	printChar
! RETURN STATEMENT...
	mov	1029,r13		! source line 1029
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_245_PrintObjectAddr:
	.word	_sourceFileName
	.word	_Label_430
	.word	4		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_431
	.word	8
	.word	4
	.word	_Label_432
	.word	-12
	.word	4
	.word	0
_Label_430:
	.ascii	"PrintObjectAddr\0"
	.align
_Label_431:
	.byte	'P'
	.ascii	"p\0"
	.align
_Label_432:
	.byte	'?'
	.ascii	"_temp_429\0"
	.align
! 
! ===============  FUNCTION ProcessFinish  ===============
! 
_P_Kernel_ProcessFinish:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_ProcessFinish,r1
	push	r1
	mov	25,r1
_Label_7755:
	push	r0
	sub	r1,1,r1
	bne	_Label_7755
	mov	1034,r13		! source line 1034
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1042,r13		! source line 1042
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_433 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-88]
!   Data Move: oldPcb = *_temp_433  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-100]
! ASSIGNMENT STATEMENT...
	mov	1043,r13		! source line 1043
	mov	"\0\0AS",r10
!   if intIsZero (oldPcb) then goto _runtimeErrorNullPointer
	load	[r14+-100],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_434 = oldPcb + 28
	load	[r14+-100],r1
	add	r1,28,r1
	store	r1,[r14+-84]
!   Data Move: *_temp_434 = exitStatus  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r14+-84],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1044,r13		! source line 1044
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	1044,r13		! source line 1044
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=garbage  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-92]
! ASSIGNMENT STATEMENT...
	mov	1045,r13		! source line 1045
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_435 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-80]
!   Data Move: *_temp_435 = 0  (sizeInBytes=1)
	mov	0,r1
	load	[r14+-80],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1046,r13		! source line 1046
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_437 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-72]
!   Data Move: _temp_436 = *_temp_437  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r1],r1
	store	r1,[r14+-76]
!   if intIsZero (_temp_436) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_438 = _temp_436 + 24
	load	[r14+-76],r1
	add	r1,24,r1
	store	r1,[r14+-68]
!   Data Move: *_temp_438 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-68],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1047,r13		! source line 1047
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_439 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-64]
!   Data Move: *_temp_439 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-64],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1048,r13		! source line 1048
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+0]
!   Call the function
	mov	1048,r13		! source line 1048
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=garbage  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-92]
! FOR STATEMENT...
	mov	1049,r13		! source line 1049
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_444 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-60]
!   Calculate and save the FOR-LOOP ending value
!   _temp_445 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-56]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_444  (sizeInBytes=4)
	load	[r14+-60],r1
	store	r1,[r14+-96]
_Label_440:
!   Perform the FOR-LOOP termination test
!   if i > _temp_445 then goto _Label_443		
	load	[r14+-96],r1
	load	[r14+-56],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_443
_Label_441:
	mov	1049,r13		! source line 1049
	mov	"\0\0FB",r10
! IF STATEMENT...
	mov	1050,r13		! source line 1050
	mov	"\0\0IF",r10
!   if intIsZero (oldPcb) then goto _runtimeErrorNullPointer
	load	[r14+-100],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_449 = oldPcb + 244
	load	[r14+-100],r1
	add	r1,244,r1
	store	r1,[r14+-48]
!   Move address of _temp_449 [i ] into _temp_450
!     make sure index expr is >= 0
	load	[r14+-96],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-48],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-44]
!   Data Move: _temp_448 = *_temp_450  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r1],r1
	store	r1,[r14+-52]
!   if intIsZero (_temp_448) then goto _Label_447
	load	[r14+-52],r1
	cmp	r1,r0
	be	_Label_447
!	_Label_446	jmp	_Label_446
_Label_446:
! THEN...
	mov	1051,r13		! source line 1051
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	1051,r13		! source line 1051
	mov	"\0\0SE",r10
!   if intIsZero (oldPcb) then goto _runtimeErrorNullPointer
	load	[r14+-100],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_452 = oldPcb + 244
	load	[r14+-100],r1
	add	r1,244,r1
	store	r1,[r14+-36]
!   Move address of _temp_452 [i ] into _temp_453
!     make sure index expr is >= 0
	load	[r14+-96],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-36],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-32]
!   Data Move: _temp_451 = *_temp_453  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   _temp_454 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=_temp_451  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+4]
!   Send message Close
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,40,r2
	call	r2
! END IF...
_Label_447:
!   Increment the FOR-LOOP index variable and jump back
_Label_442:
!   i = i + 1
	load	[r14+-96],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-96]
	jmp	_Label_440
! END FOR
_Label_443:
! SEND STATEMENT...
	mov	1054,r13		! source line 1054
	mov	"\0\0SE",r10
!   if intIsZero (oldPcb) then goto _runtimeErrorNullPointer
	load	[r14+-100],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_456 = oldPcb + 32
	load	[r14+-100],r1
	add	r1,32,r1
	store	r1,[r14+-20]
!   _temp_455 = _temp_456		(4 bytes)
	load	[r14+-20],r1
	store	r1,[r14+-24]
!   _temp_457 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_455  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+4]
!   Send message ReturnAllFrames
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,24,r2
	call	r2
! SEND STATEMENT...
	mov	1055,r13		! source line 1055
	mov	"\0\0SE",r10
!   _temp_458 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=oldPcb  sizeInBytes=4
	load	[r14+-100],r1
	store	r1,[r15+4]
!   Send message TurnIntoZombie
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,28,r2
	call	r2
! CALL STATEMENT...
!   Call the function
	mov	1056,r13		! source line 1056
	mov	"\0\0CA",r10
	call	_P_Kernel_ThreadFinish
! RETURN STATEMENT...
	mov	1056,r13		! source line 1056
	mov	"\0\0RE",r10
	add	r15,104,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_ProcessFinish:
	.word	_sourceFileName
	.word	_Label_459
	.word	4		! total size of parameters
	.word	100		! frame size = 100
	.word	_Label_460
	.word	8
	.word	4
	.word	_Label_461
	.word	-12
	.word	4
	.word	_Label_462
	.word	-16
	.word	4
	.word	_Label_463
	.word	-20
	.word	4
	.word	_Label_464
	.word	-24
	.word	4
	.word	_Label_465
	.word	-28
	.word	4
	.word	_Label_466
	.word	-32
	.word	4
	.word	_Label_467
	.word	-36
	.word	4
	.word	_Label_468
	.word	-40
	.word	4
	.word	_Label_469
	.word	-44
	.word	4
	.word	_Label_470
	.word	-48
	.word	4
	.word	_Label_471
	.word	-52
	.word	4
	.word	_Label_472
	.word	-56
	.word	4
	.word	_Label_473
	.word	-60
	.word	4
	.word	_Label_474
	.word	-64
	.word	4
	.word	_Label_475
	.word	-68
	.word	4
	.word	_Label_476
	.word	-72
	.word	4
	.word	_Label_477
	.word	-76
	.word	4
	.word	_Label_478
	.word	-80
	.word	4
	.word	_Label_479
	.word	-84
	.word	4
	.word	_Label_480
	.word	-88
	.word	4
	.word	_Label_481
	.word	-92
	.word	4
	.word	_Label_482
	.word	-96
	.word	4
	.word	_Label_483
	.word	-100
	.word	4
	.word	0
_Label_459:
	.ascii	"ProcessFinish\0"
	.align
_Label_460:
	.byte	'I'
	.ascii	"exitStatus\0"
	.align
_Label_461:
	.byte	'?'
	.ascii	"_temp_458\0"
	.align
_Label_462:
	.byte	'?'
	.ascii	"_temp_457\0"
	.align
_Label_463:
	.byte	'?'
	.ascii	"_temp_456\0"
	.align
_Label_464:
	.byte	'?'
	.ascii	"_temp_455\0"
	.align
_Label_465:
	.byte	'?'
	.ascii	"_temp_454\0"
	.align
_Label_466:
	.byte	'?'
	.ascii	"_temp_453\0"
	.align
_Label_467:
	.byte	'?'
	.ascii	"_temp_452\0"
	.align
_Label_468:
	.byte	'?'
	.ascii	"_temp_451\0"
	.align
_Label_469:
	.byte	'?'
	.ascii	"_temp_450\0"
	.align
_Label_470:
	.byte	'?'
	.ascii	"_temp_449\0"
	.align
_Label_471:
	.byte	'?'
	.ascii	"_temp_448\0"
	.align
_Label_472:
	.byte	'?'
	.ascii	"_temp_445\0"
	.align
_Label_473:
	.byte	'?'
	.ascii	"_temp_444\0"
	.align
_Label_474:
	.byte	'?'
	.ascii	"_temp_439\0"
	.align
_Label_475:
	.byte	'?'
	.ascii	"_temp_438\0"
	.align
_Label_476:
	.byte	'?'
	.ascii	"_temp_437\0"
	.align
_Label_477:
	.byte	'?'
	.ascii	"_temp_436\0"
	.align
_Label_478:
	.byte	'?'
	.ascii	"_temp_435\0"
	.align
_Label_479:
	.byte	'?'
	.ascii	"_temp_434\0"
	.align
_Label_480:
	.byte	'?'
	.ascii	"_temp_433\0"
	.align
_Label_481:
	.byte	'I'
	.ascii	"garbage\0"
	.align
_Label_482:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_483:
	.byte	'P'
	.ascii	"oldPcb\0"
	.align
! 
! ===============  FUNCTION InitFirstProcess  ===============
! 
_P_Kernel_InitFirstProcess:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_InitFirstProcess,r1
	push	r1
	mov	7,r1
_Label_7756:
	push	r0
	sub	r1,1,r1
	bne	_Label_7756
	mov	1061,r13		! source line 1061
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1066,r13		! source line 1066
	mov	"\0\0AS",r10
	mov	1066,r13		! source line 1066
	mov	"\0\0SE",r10
!   _temp_484 = &_P_Kernel_threadManager
	set	_P_Kernel_threadManager,r1
	store	r1,[r14+-20]
!   Send message GetANewThread
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=th  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! SEND STATEMENT...
	mov	1067,r13		! source line 1067
	mov	"\0\0SE",r10
!   _temp_485 = _StringConst_24
	set	_StringConst_24,r1
	store	r1,[r14+-16]
!   if intIsZero (th) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_485  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	1068,r13		! source line 1068
	mov	"\0\0SE",r10
!   _temp_486 = _P_Kernel_StartUserProcess
	set	_P_Kernel_StartUserProcess,r1
	store	r1,[r14+-12]
!   if intIsZero (th) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_486  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+8]
!   Send message Fork
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! RETURN STATEMENT...
	mov	1068,r13		! source line 1068
	mov	"\0\0RE",r10
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_InitFirstProcess:
	.word	_sourceFileName
	.word	_Label_487
	.word	0		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_488
	.word	-12
	.word	4
	.word	_Label_489
	.word	-16
	.word	4
	.word	_Label_490
	.word	-20
	.word	4
	.word	_Label_491
	.word	-24
	.word	4
	.word	0
_Label_487:
	.ascii	"InitFirstProcess\0"
	.align
_Label_488:
	.byte	'?'
	.ascii	"_temp_486\0"
	.align
_Label_489:
	.byte	'?'
	.ascii	"_temp_485\0"
	.align
_Label_490:
	.byte	'?'
	.ascii	"_temp_484\0"
	.align
_Label_491:
	.byte	'P'
	.ascii	"th\0"
	.align
! 
! ===============  FUNCTION StartUserProcess  ===============
! 
_P_Kernel_StartUserProcess:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_StartUserProcess,r1
	push	r1
	mov	37,r1
_Label_7757:
	push	r0
	sub	r1,1,r1
	bne	_Label_7757
	mov	1076,r13		! source line 1076
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_492 = _StringConst_25
	set	_StringConst_25,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=_temp_492  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Call the function
	mov	1087,r13		! source line 1087
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	1090,r13		! source line 1090
	mov	"\0\0AS",r10
	mov	1090,r13		! source line 1090
	mov	"\0\0SE",r10
!   _temp_493 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-104]
!   Send message GetANewProcess
	load	[r14+-104],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=pcb  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-112]
! ASSIGNMENT STATEMENT...
	mov	1091,r13		! source line 1091
	mov	"\0\0AS",r10
!   if intIsZero (pcb) then goto _runtimeErrorNullPointer
	load	[r14+-112],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_494 = pcb + 24
	load	[r14+-112],r1
	add	r1,24,r1
	store	r1,[r14+-100]
!   Data Move: *_temp_494 = _P_Kernel_currentThread  (sizeInBytes=4)
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r14+-100],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1092,r13		! source line 1092
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_495 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-96]
!   Data Move: *_temp_495 = pcb  (sizeInBytes=4)
	load	[r14+-112],r1
	load	[r14+-96],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1093,r13		! source line 1093
	mov	"\0\0AS",r10
!   if intIsZero (pcb) then goto _runtimeErrorNullPointer
	load	[r14+-112],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_496 = pcb + 240
	load	[r14+-112],r1
	add	r1,240,r1
	store	r1,[r14+-92]
	mov	1093,r13		! source line 1093
	mov	"\0\0SE",r10
!   _temp_499 = &_P_Kernel_fileSystem
	set	_P_Kernel_fileSystem,r1
	store	r1,[r14+-80]
!   _temp_500 = _temp_499 + 4
	load	[r14+-80],r1
	add	r1,4,r1
	store	r1,[r14+-76]
!   Data Move: _temp_498 = *_temp_500  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-84]
!   if intIsZero (_temp_498) then goto _runtimeErrorNullPointer
	load	[r14+-84],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message NewReference
	load	[r14+-84],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_497  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-88]
!   Data Move: *_temp_496 = _temp_497  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r14+-92],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1095,r13		! source line 1095
	mov	"\0\0AS",r10
	mov	1095,r13		! source line 1095
	mov	"\0\0SE",r10
!   _temp_501 = _StringConst_1
	set	_StringConst_1,r1
	store	r1,[r14+-72]
!   if intIsZero (pcb) then goto _runtimeErrorNullPointer
	load	[r14+-112],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_503 = pcb + 240
	load	[r14+-112],r1
	add	r1,240,r1
	store	r1,[r14+-64]
!   Data Move: _temp_502 = *_temp_503  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   _temp_504 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=12  value=_temp_501  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_502  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+12]
!   Prepare Argument: offset=24  value=4  sizeInBytes=4
	mov	4,r1
	store	r1,[r15+16]
!   Send message Open
	load	[r14+-60],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,36,r2
	call	r2
!   Retrieve Result: targetName=file  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-116]
! IF STATEMENT...
	mov	1096,r13		! source line 1096
	mov	"\0\0IF",r10
!   if intIsZero (file) then goto _Label_505
	load	[r14+-116],r1
	cmp	r1,r0
	be	_Label_505
	jmp	_Label_506
_Label_505:
! THEN...
	mov	1097,r13		! source line 1097
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_507 = _StringConst_26
	set	_StringConst_26,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_507  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1097,r13		! source line 1097
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_506:
! ASSIGNMENT STATEMENT...
	mov	1099,r13		! source line 1099
	mov	"\0\0AS",r10
	mov	1099,r13		! source line 1099
	mov	"\0\0SE",r10
!   if intIsZero (pcb) then goto _runtimeErrorNullPointer
	load	[r14+-112],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_509 = pcb + 32
	load	[r14+-112],r1
	add	r1,32,r1
	store	r1,[r14+-48]
!   _temp_508 = _temp_509		(4 bytes)
	load	[r14+-48],r1
	store	r1,[r14+-52]
!   if intIsZero (file) then goto _runtimeErrorNullPointer
	load	[r14+-116],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_508  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+4]
!   Send message LoadExecutable
	load	[r14+-116],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,24,r2
	call	r2
!   Retrieve Result: targetName=initPC  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-120]
! IF STATEMENT...
	mov	1100,r13		! source line 1100
	mov	"\0\0IF",r10
!   if initPC != -1 then goto _Label_511		(int)
	load	[r14+-120],r1
	mov	-1,r2
	cmp	r1,r2
	bne	_Label_511
!	_Label_510	jmp	_Label_510
_Label_510:
! THEN...
	mov	1101,r13		! source line 1101
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_512 = _StringConst_27
	set	_StringConst_27,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_512  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1101,r13		! source line 1101
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_511:
! SEND STATEMENT...
	mov	1103,r13		! source line 1103
	mov	"\0\0SE",r10
!   _temp_513 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=file  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+4]
!   Send message Close
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,40,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1106,r13		! source line 1106
	mov	"\0\0AS",r10
!   if intIsZero (pcb) then goto _runtimeErrorNullPointer
	load	[r14+-112],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_515 = pcb + 32
	load	[r14+-112],r1
	add	r1,32,r1
	store	r1,[r14+-32]
!   _temp_516 = _temp_515 + 4
	load	[r14+-32],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Data Move: _temp_514 = *_temp_516  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   initUserStackTop = _temp_514 * 8192		(int)
	load	[r14+-36],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-124]
! ASSIGNMENT STATEMENT...
	mov	1107,r13		! source line 1107
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_517 = _P_Kernel_currentThread + 88
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,88,r1
	store	r1,[r14+-24]
!   Move address of _temp_517 [999 ] into _temp_518
!     make sure index expr is >= 0
	mov	999,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-24],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-20]
!   initSystemStackTop = _temp_518		(4 bytes)
	load	[r14+-20],r1
	store	r1,[r14+-128]
! ASSIGNMENT STATEMENT...
	mov	1110,r13		! source line 1110
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	1110,r13		! source line 1110
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=garbage  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-132]
! SEND STATEMENT...
	mov	1111,r13		! source line 1111
	mov	"\0\0SE",r10
!   if intIsZero (pcb) then goto _runtimeErrorNullPointer
	load	[r14+-112],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_519 = pcb + 32
	load	[r14+-112],r1
	add	r1,32,r1
	store	r1,[r14+-16]
!   Send message SetToThisPageTable
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,72,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1112,r13		! source line 1112
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_520 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-12]
!   Data Move: *_temp_520 = 1  (sizeInBytes=1)
	mov	1,r1
	load	[r14+-12],r2
	storeb	r1,[r2]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=initUserStackTop  sizeInBytes=4
	load	[r14+-124],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=initPC  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=initSystemStackTop  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=argPtr  sizeInBytes=4
	load	[r14+-136],r1
	store	r1,[r15+12]
!   Call the function
	mov	1113,r13		! source line 1113
	mov	"\0\0CE",r10
	call	BecomeUserThread
! RETURN STATEMENT...
	mov	1113,r13		! source line 1113
	mov	"\0\0RE",r10
	add	r15,152,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_StartUserProcess:
	.word	_sourceFileName
	.word	_Label_521
	.word	4		! total size of parameters
	.word	148		! frame size = 148
	.word	_Label_522
	.word	8
	.word	4
	.word	_Label_523
	.word	-12
	.word	4
	.word	_Label_524
	.word	-16
	.word	4
	.word	_Label_525
	.word	-20
	.word	4
	.word	_Label_526
	.word	-24
	.word	4
	.word	_Label_527
	.word	-28
	.word	4
	.word	_Label_528
	.word	-32
	.word	4
	.word	_Label_529
	.word	-36
	.word	4
	.word	_Label_530
	.word	-40
	.word	4
	.word	_Label_531
	.word	-44
	.word	4
	.word	_Label_532
	.word	-48
	.word	4
	.word	_Label_533
	.word	-52
	.word	4
	.word	_Label_534
	.word	-56
	.word	4
	.word	_Label_535
	.word	-60
	.word	4
	.word	_Label_536
	.word	-64
	.word	4
	.word	_Label_537
	.word	-68
	.word	4
	.word	_Label_538
	.word	-72
	.word	4
	.word	_Label_539
	.word	-76
	.word	4
	.word	_Label_540
	.word	-80
	.word	4
	.word	_Label_541
	.word	-84
	.word	4
	.word	_Label_542
	.word	-88
	.word	4
	.word	_Label_543
	.word	-92
	.word	4
	.word	_Label_544
	.word	-96
	.word	4
	.word	_Label_545
	.word	-100
	.word	4
	.word	_Label_546
	.word	-104
	.word	4
	.word	_Label_547
	.word	-108
	.word	4
	.word	_Label_548
	.word	-112
	.word	4
	.word	_Label_549
	.word	-116
	.word	4
	.word	_Label_550
	.word	-120
	.word	4
	.word	_Label_551
	.word	-124
	.word	4
	.word	_Label_552
	.word	-128
	.word	4
	.word	_Label_553
	.word	-132
	.word	4
	.word	_Label_554
	.word	-136
	.word	4
	.word	0
_Label_521:
	.ascii	"StartUserProcess\0"
	.align
_Label_522:
	.byte	'I'
	.ascii	"arg\0"
	.align
_Label_523:
	.byte	'?'
	.ascii	"_temp_520\0"
	.align
_Label_524:
	.byte	'?'
	.ascii	"_temp_519\0"
	.align
_Label_525:
	.byte	'?'
	.ascii	"_temp_518\0"
	.align
_Label_526:
	.byte	'?'
	.ascii	"_temp_517\0"
	.align
_Label_527:
	.byte	'?'
	.ascii	"_temp_516\0"
	.align
_Label_528:
	.byte	'?'
	.ascii	"_temp_515\0"
	.align
_Label_529:
	.byte	'?'
	.ascii	"_temp_514\0"
	.align
_Label_530:
	.byte	'?'
	.ascii	"_temp_513\0"
	.align
_Label_531:
	.byte	'?'
	.ascii	"_temp_512\0"
	.align
_Label_532:
	.byte	'?'
	.ascii	"_temp_509\0"
	.align
_Label_533:
	.byte	'?'
	.ascii	"_temp_508\0"
	.align
_Label_534:
	.byte	'?'
	.ascii	"_temp_507\0"
	.align
_Label_535:
	.byte	'?'
	.ascii	"_temp_504\0"
	.align
_Label_536:
	.byte	'?'
	.ascii	"_temp_503\0"
	.align
_Label_537:
	.byte	'?'
	.ascii	"_temp_502\0"
	.align
_Label_538:
	.byte	'?'
	.ascii	"_temp_501\0"
	.align
_Label_539:
	.byte	'?'
	.ascii	"_temp_500\0"
	.align
_Label_540:
	.byte	'?'
	.ascii	"_temp_499\0"
	.align
_Label_541:
	.byte	'?'
	.ascii	"_temp_498\0"
	.align
_Label_542:
	.byte	'?'
	.ascii	"_temp_497\0"
	.align
_Label_543:
	.byte	'?'
	.ascii	"_temp_496\0"
	.align
_Label_544:
	.byte	'?'
	.ascii	"_temp_495\0"
	.align
_Label_545:
	.byte	'?'
	.ascii	"_temp_494\0"
	.align
_Label_546:
	.byte	'?'
	.ascii	"_temp_493\0"
	.align
_Label_547:
	.byte	'?'
	.ascii	"_temp_492\0"
	.align
_Label_548:
	.byte	'P'
	.ascii	"pcb\0"
	.align
_Label_549:
	.byte	'P'
	.ascii	"file\0"
	.align
_Label_550:
	.byte	'I'
	.ascii	"initPC\0"
	.align
_Label_551:
	.byte	'I'
	.ascii	"initUserStackTop\0"
	.align
_Label_552:
	.byte	'I'
	.ascii	"initSystemStackTop\0"
	.align
_Label_553:
	.byte	'I'
	.ascii	"garbage\0"
	.align
_Label_554:
	.byte	'I'
	.ascii	"argPtr\0"
	.align
! 
! ===============  FUNCTION TimerInterruptHandler  ===============
! 
_P_Kernel_TimerInterruptHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_TimerInterruptHandler,r1
	push	r1
	mov	1,r1
_Label_7758:
	push	r0
	sub	r1,1,r1
	bne	_Label_7758
	mov	1619,r13		! source line 1619
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1629,r13		! source line 1629
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1631,r13		! source line 1631
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Yield
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1632,r13		! source line 1632
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 1		(4 bytes)
	mov	1,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1632,r13		! source line 1632
	mov	"\0\0RE",r10
	add	r15,8,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_TimerInterruptHandler:
	.word	_sourceFileName
	.word	_Label_555
	.word	0		! total size of parameters
	.word	4		! frame size = 4
	.word	0
_Label_555:
	.ascii	"TimerInterruptHandler\0"
	.align
! 
! ===============  FUNCTION DiskInterruptHandler  ===============
! 
_P_Kernel_DiskInterruptHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_DiskInterruptHandler,r1
	push	r1
	mov	7,r1
_Label_7759:
	push	r0
	sub	r1,1,r1
	bne	_Label_7759
	mov	1637,r13		! source line 1637
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1646,r13		! source line 1646
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! IF STATEMENT...
	mov	1648,r13		! source line 1648
	mov	"\0\0IF",r10
!   _temp_559 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-28]
!   _temp_560 = _temp_559 + 24
	load	[r14+-28],r1
	add	r1,24,r1
	store	r1,[r14+-24]
!   Data Move: _temp_558 = *_temp_560  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   if _temp_558 == 0 then goto _Label_557		(int)
	load	[r14+-32],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_557
!	_Label_556	jmp	_Label_556
_Label_556:
! THEN...
	mov	1649,r13		! source line 1649
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	1649,r13		! source line 1649
	mov	"\0\0SE",r10
!   _temp_562 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-16]
!   _temp_563 = _temp_562 + 24
	load	[r14+-16],r1
	add	r1,24,r1
	store	r1,[r14+-12]
!   Data Move: _temp_561 = *_temp_563  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_561) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Up
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! END IF...
_Label_557:
! RETURN STATEMENT...
	mov	1648,r13		! source line 1648
	mov	"\0\0RE",r10
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_DiskInterruptHandler:
	.word	_sourceFileName
	.word	_Label_564
	.word	0		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_565
	.word	-12
	.word	4
	.word	_Label_566
	.word	-16
	.word	4
	.word	_Label_567
	.word	-20
	.word	4
	.word	_Label_568
	.word	-24
	.word	4
	.word	_Label_569
	.word	-28
	.word	4
	.word	_Label_570
	.word	-32
	.word	4
	.word	0
_Label_564:
	.ascii	"DiskInterruptHandler\0"
	.align
_Label_565:
	.byte	'?'
	.ascii	"_temp_563\0"
	.align
_Label_566:
	.byte	'?'
	.ascii	"_temp_562\0"
	.align
_Label_567:
	.byte	'?'
	.ascii	"_temp_561\0"
	.align
_Label_568:
	.byte	'?'
	.ascii	"_temp_560\0"
	.align
_Label_569:
	.byte	'?'
	.ascii	"_temp_559\0"
	.align
_Label_570:
	.byte	'?'
	.ascii	"_temp_558\0"
	.align
! 
! ===============  FUNCTION SerialInterruptHandler  ===============
! 
_P_Kernel_SerialInterruptHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_SerialInterruptHandler,r1
	push	r1
	mov	5,r1
_Label_7760:
	push	r0
	sub	r1,1,r1
	bne	_Label_7760
	mov	1656,r13		! source line 1656
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1665,r13		! source line 1665
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! IF STATEMENT...
	mov	1666,r13		! source line 1666
	mov	"\0\0IF",r10
!   _temp_573 = &_P_Kernel_serialDriver
	set	_P_Kernel_serialDriver,r1
	store	r1,[r14+-24]
!   _temp_574 = _temp_573 + 4
	load	[r14+-24],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   if boolIsZero (_temp_574 ) then goto _Label_572		(int)
	load	[r14+-20],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_572
!	_Label_571	jmp	_Label_571
_Label_571:
! THEN...
	mov	1667,r13		! source line 1667
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	1667,r13		! source line 1667
	mov	"\0\0SE",r10
!   _temp_575 = &_P_Kernel_serialDriver
	set	_P_Kernel_serialDriver,r1
	store	r1,[r14+-16]
!   _temp_576 = _temp_575 + 128
	load	[r14+-16],r1
	add	r1,128,r1
	store	r1,[r14+-12]
!   Send message Up
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! END IF...
_Label_572:
! RETURN STATEMENT...
	mov	1666,r13		! source line 1666
	mov	"\0\0RE",r10
	add	r15,24,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_SerialInterruptHandler:
	.word	_sourceFileName
	.word	_Label_577
	.word	0		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_578
	.word	-12
	.word	4
	.word	_Label_579
	.word	-16
	.word	4
	.word	_Label_580
	.word	-20
	.word	4
	.word	_Label_581
	.word	-24
	.word	4
	.word	0
_Label_577:
	.ascii	"SerialInterruptHandler\0"
	.align
_Label_578:
	.byte	'?'
	.ascii	"_temp_576\0"
	.align
_Label_579:
	.byte	'?'
	.ascii	"_temp_575\0"
	.align
_Label_580:
	.byte	'?'
	.ascii	"_temp_574\0"
	.align
_Label_581:
	.byte	'?'
	.ascii	"_temp_573\0"
	.align
! 
! ===============  FUNCTION IllegalInstructionHandler  ===============
! 
_P_Kernel_IllegalInstructionHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_IllegalInstructionHandler,r1
	push	r1
	mov	2,r1
_Label_7761:
	push	r0
	sub	r1,1,r1
	bne	_Label_7761
	mov	1672,r13		! source line 1672
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1678,r13		! source line 1678
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_582 = _StringConst_28
	set	_StringConst_28,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_582  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1679,r13		! source line 1679
	mov	"\0\0CA",r10
	call	_function_244_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1679,r13		! source line 1679
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_IllegalInstructionHandler:
	.word	_sourceFileName
	.word	_Label_583
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_584
	.word	-12
	.word	4
	.word	0
_Label_583:
	.ascii	"IllegalInstructionHandler\0"
	.align
_Label_584:
	.byte	'?'
	.ascii	"_temp_582\0"
	.align
! 
! ===============  FUNCTION ArithmeticExceptionHandler  ===============
! 
_P_Kernel_ArithmeticExceptionHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_ArithmeticExceptionHandler,r1
	push	r1
	mov	2,r1
_Label_7762:
	push	r0
	sub	r1,1,r1
	bne	_Label_7762
	mov	1684,r13		! source line 1684
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1690,r13		! source line 1690
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_585 = _StringConst_29
	set	_StringConst_29,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_585  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1691,r13		! source line 1691
	mov	"\0\0CA",r10
	call	_function_244_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1691,r13		! source line 1691
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_ArithmeticExceptionHandler:
	.word	_sourceFileName
	.word	_Label_586
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_587
	.word	-12
	.word	4
	.word	0
_Label_586:
	.ascii	"ArithmeticExceptionHandler\0"
	.align
_Label_587:
	.byte	'?'
	.ascii	"_temp_585\0"
	.align
! 
! ===============  FUNCTION AddressExceptionHandler  ===============
! 
_P_Kernel_AddressExceptionHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_AddressExceptionHandler,r1
	push	r1
	mov	2,r1
_Label_7763:
	push	r0
	sub	r1,1,r1
	bne	_Label_7763
	mov	1696,r13		! source line 1696
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1702,r13		! source line 1702
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_588 = _StringConst_30
	set	_StringConst_30,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_588  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1703,r13		! source line 1703
	mov	"\0\0CA",r10
	call	_function_244_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1703,r13		! source line 1703
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_AddressExceptionHandler:
	.word	_sourceFileName
	.word	_Label_589
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_590
	.word	-12
	.word	4
	.word	0
_Label_589:
	.ascii	"AddressExceptionHandler\0"
	.align
_Label_590:
	.byte	'?'
	.ascii	"_temp_588\0"
	.align
! 
! ===============  FUNCTION PageInvalidExceptionHandler  ===============
! 
_P_Kernel_PageInvalidExceptionHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_PageInvalidExceptionHandler,r1
	push	r1
	mov	2,r1
_Label_7764:
	push	r0
	sub	r1,1,r1
	bne	_Label_7764
	mov	1708,r13		! source line 1708
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1714,r13		! source line 1714
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_591 = _StringConst_31
	set	_StringConst_31,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_591  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1715,r13		! source line 1715
	mov	"\0\0CA",r10
	call	_function_244_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1715,r13		! source line 1715
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_PageInvalidExceptionHandler:
	.word	_sourceFileName
	.word	_Label_592
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_593
	.word	-12
	.word	4
	.word	0
_Label_592:
	.ascii	"PageInvalidExceptionHandler\0"
	.align
_Label_593:
	.byte	'?'
	.ascii	"_temp_591\0"
	.align
! 
! ===============  FUNCTION PageReadonlyExceptionHandler  ===============
! 
_P_Kernel_PageReadonlyExceptionHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_PageReadonlyExceptionHandler,r1
	push	r1
	mov	2,r1
_Label_7765:
	push	r0
	sub	r1,1,r1
	bne	_Label_7765
	mov	1720,r13		! source line 1720
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1726,r13		! source line 1726
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_594 = _StringConst_32
	set	_StringConst_32,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_594  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1727,r13		! source line 1727
	mov	"\0\0CA",r10
	call	_function_244_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1727,r13		! source line 1727
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_PageReadonlyExceptionHandler:
	.word	_sourceFileName
	.word	_Label_595
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_596
	.word	-12
	.word	4
	.word	0
_Label_595:
	.ascii	"PageReadonlyExceptionHandler\0"
	.align
_Label_596:
	.byte	'?'
	.ascii	"_temp_594\0"
	.align
! 
! ===============  FUNCTION PrivilegedInstructionHandler  ===============
! 
_P_Kernel_PrivilegedInstructionHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_PrivilegedInstructionHandler,r1
	push	r1
	mov	2,r1
_Label_7766:
	push	r0
	sub	r1,1,r1
	bne	_Label_7766
	mov	1732,r13		! source line 1732
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1738,r13		! source line 1738
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_597 = _StringConst_33
	set	_StringConst_33,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_597  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1739,r13		! source line 1739
	mov	"\0\0CA",r10
	call	_function_244_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1739,r13		! source line 1739
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_PrivilegedInstructionHandler:
	.word	_sourceFileName
	.word	_Label_598
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_599
	.word	-12
	.word	4
	.word	0
_Label_598:
	.ascii	"PrivilegedInstructionHandler\0"
	.align
_Label_599:
	.byte	'?'
	.ascii	"_temp_597\0"
	.align
! 
! ===============  FUNCTION AlignmentExceptionHandler  ===============
! 
_P_Kernel_AlignmentExceptionHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_AlignmentExceptionHandler,r1
	push	r1
	mov	2,r1
_Label_7767:
	push	r0
	sub	r1,1,r1
	bne	_Label_7767
	mov	1744,r13		! source line 1744
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1750,r13		! source line 1750
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_600 = _StringConst_34
	set	_StringConst_34,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_600  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1751,r13		! source line 1751
	mov	"\0\0CA",r10
	call	_function_244_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1751,r13		! source line 1751
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_AlignmentExceptionHandler:
	.word	_sourceFileName
	.word	_Label_601
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_602
	.word	-12
	.word	4
	.word	0
_Label_601:
	.ascii	"AlignmentExceptionHandler\0"
	.align
_Label_602:
	.byte	'?'
	.ascii	"_temp_600\0"
	.align
! 
! ===============  FUNCTION ErrorInUserProcess  ===============
! 
_function_244_ErrorInUserProcess:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_244_ErrorInUserProcess,r1
	push	r1
	mov	11,r1
_Label_7768:
	push	r0
	sub	r1,1,r1
	bne	_Label_7768
	mov	1756,r13		! source line 1756
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_603 = _StringConst_35
	set	_StringConst_35,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_603  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	1761,r13		! source line 1761
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=errorMessage  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	1762,r13		! source line 1762
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_604 = _StringConst_36
	set	_StringConst_36,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_604  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	1763,r13		! source line 1763
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1766,r13		! source line 1766
	mov	"\0\0IF",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_608 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-36]
!   Data Move: _temp_607 = *_temp_608  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if _temp_607 == 0 then goto _Label_606		(int)
	load	[r14+-40],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_606
!	_Label_605	jmp	_Label_605
_Label_605:
! THEN...
	mov	1767,r13		! source line 1767
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	1767,r13		! source line 1767
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_610 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-28]
!   Data Move: _temp_609 = *_temp_610  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   if intIsZero (_temp_609) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_611 = _temp_609 + 236
	load	[r14+-32],r1
	add	r1,236,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_611 = 11  (sizeInBytes=4)
	mov	11,r1
	load	[r14+-24],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1768,r13		! source line 1768
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_613 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-16]
!   Data Move: _temp_612 = *_temp_613  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_612) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Print
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
	jmp	_Label_614
_Label_606:
! ELSE...
	mov	1770,r13		! source line 1770
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_615 = _StringConst_37
	set	_StringConst_37,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_615  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1770,r13		! source line 1770
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_614:
! SEND STATEMENT...
	mov	1772,r13		! source line 1772
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Print
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,24,r2
	call	r2
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=-1  sizeInBytes=4
	mov	-1,r1
	store	r1,[r15+0]
!   Call the function
	mov	1778,r13		! source line 1778
	mov	"\0\0CA",r10
	call	_P_Kernel_ProcessFinish
! RETURN STATEMENT...
	mov	1778,r13		! source line 1778
	mov	"\0\0RE",r10
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_244_ErrorInUserProcess:
	.word	_sourceFileName
	.word	_Label_616
	.word	4		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_617
	.word	8
	.word	4
	.word	_Label_618
	.word	-12
	.word	4
	.word	_Label_619
	.word	-16
	.word	4
	.word	_Label_620
	.word	-20
	.word	4
	.word	_Label_621
	.word	-24
	.word	4
	.word	_Label_622
	.word	-28
	.word	4
	.word	_Label_623
	.word	-32
	.word	4
	.word	_Label_624
	.word	-36
	.word	4
	.word	_Label_625
	.word	-40
	.word	4
	.word	_Label_626
	.word	-44
	.word	4
	.word	_Label_627
	.word	-48
	.word	4
	.word	0
_Label_616:
	.ascii	"ErrorInUserProcess\0"
	.align
_Label_617:
	.byte	'P'
	.ascii	"errorMessage\0"
	.align
_Label_618:
	.byte	'?'
	.ascii	"_temp_615\0"
	.align
_Label_619:
	.byte	'?'
	.ascii	"_temp_613\0"
	.align
_Label_620:
	.byte	'?'
	.ascii	"_temp_612\0"
	.align
_Label_621:
	.byte	'?'
	.ascii	"_temp_611\0"
	.align
_Label_622:
	.byte	'?'
	.ascii	"_temp_610\0"
	.align
_Label_623:
	.byte	'?'
	.ascii	"_temp_609\0"
	.align
_Label_624:
	.byte	'?'
	.ascii	"_temp_608\0"
	.align
_Label_625:
	.byte	'?'
	.ascii	"_temp_607\0"
	.align
_Label_626:
	.byte	'?'
	.ascii	"_temp_604\0"
	.align
_Label_627:
	.byte	'?'
	.ascii	"_temp_603\0"
	.align
! 
! ===============  FUNCTION SyscallTrapHandler  ===============
! 
_P_Kernel_SyscallTrapHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_SyscallTrapHandler,r1
	push	r1
	mov	39,r1
_Label_7769:
	push	r0
	sub	r1,1,r1
	bne	_Label_7769
	mov	1783,r13		! source line 1783
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1790,r13		! source line 1790
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! IF STATEMENT...
	mov	1804,r13		! source line 1804
	mov	"\0\0IF",r10
!   if syscallCodeNum != 2 then goto _Label_629		(int)
	load	[r14+8],r1
	mov	2,r2
	cmp	r1,r2
	bne	_Label_629
!	_Label_628	jmp	_Label_628
_Label_628:
! THEN...
	mov	1805,r13		! source line 1805
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1805,r13		! source line 1805
	mov	"\0\0RE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_632 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-144]
!   Data Move: _temp_631 = *_temp_632  (sizeInBytes=4)
	load	[r14+-144],r1
	load	[r1],r1
	store	r1,[r14+-148]
!   if intIsZero (_temp_631) then goto _runtimeErrorNullPointer
	load	[r14+-148],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_633 = _temp_631 + 236
	load	[r14+-148],r1
	add	r1,236,r1
	store	r1,[r14+-140]
!   Data Move: _temp_630 = *_temp_633  (sizeInBytes=4)
	load	[r14+-140],r1
	load	[r1],r1
	store	r1,[r14+-152]
!   ReturnResult: _temp_630  (sizeInBytes=4)
	load	[r14+-152],r1
	store	r1,[r14+8]
	add	r15,160,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_629:
! ASSIGNMENT STATEMENT...
	mov	1807,r13		! source line 1807
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_635 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-132]
!   Data Move: _temp_634 = *_temp_635  (sizeInBytes=4)
	load	[r14+-132],r1
	load	[r1],r1
	store	r1,[r14+-136]
!   if intIsZero (_temp_634) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_636 = _temp_634 + 236
	load	[r14+-136],r1
	add	r1,236,r1
	store	r1,[r14+-128]
!   Data Move: *_temp_636 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-128],r2
	store	r1,[r2]
! SWITCH STATEMENT (using an indirect jump table)...
	mov	1808,r13		! source line 1808
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
	load	[r14+8],r1
!   If syscallCodeNum is not within 16-bits goto default code
	srl	r1,15,r2
	cmp	r2,0
	be	_Label_7770
	set	0x1ffff,r3
	cmp	r2,r3
	bne	_Label_637
_Label_7770:
!   If syscallCodeNum is < 1 (==smallestCaseValue) goto default code
	cmp	r1,1
	bl	_Label_637
!   If syscallCodeNum is > 26 (==greatestCaseValue) goto default code
	cmp	r1,26
	bg	_Label_637
!   r1 = (r1-lowValue) * 4 + jumpTableAddr
	sub	r1,1,r1
	sll	r1,2,r1
	set	_Label_664,r2
	add	r1,r2,r1
!   Jump indirect through the jump table
	jmp	r1
!   Jump table
_Label_664:
	jmp	_Label_643	! 1:	
	jmp	_Label_637	! 2:	missing - goto default code
	jmp	_Label_649	! 3:	
	jmp	_Label_640	! 4:	
	jmp	_Label_650	! 5:	
	jmp	_Label_651	! 6:	
	jmp	_Label_639	! 7:	
	jmp	_Label_642	! 8:	
	jmp	_Label_641	! 9:	
	jmp	_Label_644	! 10:	
	jmp	_Label_645	! 11:	
	jmp	_Label_646	! 12:	
	jmp	_Label_647	! 13:	
	jmp	_Label_648	! 14:	
	jmp	_Label_652	! 15:	
	jmp	_Label_653	! 16:	
	jmp	_Label_660	! 17:	
	jmp	_Label_663	! 18:	
	jmp	_Label_661	! 19:	
	jmp	_Label_662	! 20:	
	jmp	_Label_657	! 21:	
	jmp	_Label_654	! 22:	
	jmp	_Label_655	! 23:	
	jmp	_Label_656	! 24:	
	jmp	_Label_659	! 25:	
	jmp	_Label_658	! 26:	
! CASE 7...
_Label_639:
! RETURN STATEMENT...
	mov	1810,r13		! source line 1810
	mov	"\0\0RE",r10
!   Call the function
	mov	1810,r13		! source line 1810
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Fork
!   Retrieve Result: targetName=_temp_665  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-124]
!   ReturnResult: _temp_665  (sizeInBytes=4)
	load	[r14+-124],r1
	store	r1,[r14+8]
	add	r15,160,r15
	pop	r13
	pop	r14
	ret
! CASE 4...
_Label_640:
! CALL STATEMENT...
!   Call the function
	mov	1812,r13		! source line 1812
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Yield
! RETURN STATEMENT...
	mov	1813,r13		! source line 1813
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,160,r15
	pop	r13
	pop	r14
	ret
! CASE 9...
_Label_641:
! RETURN STATEMENT...
	mov	1815,r13		! source line 1815
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=arg2  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+4]
!   Call the function
	mov	1815,r13		! source line 1815
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Exec
!   Retrieve Result: targetName=_temp_666  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-120]
!   ReturnResult: _temp_666  (sizeInBytes=4)
	load	[r14+-120],r1
	store	r1,[r14+8]
	add	r15,160,r15
	pop	r13
	pop	r14
	ret
! CASE 8...
_Label_642:
! RETURN STATEMENT...
	mov	1818,r13		! source line 1818
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1818,r13		! source line 1818
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Join
!   Retrieve Result: targetName=_temp_667  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-116]
!   ReturnResult: _temp_667  (sizeInBytes=4)
	load	[r14+-116],r1
	store	r1,[r14+8]
	add	r15,160,r15
	pop	r13
	pop	r14
	ret
! CASE 1...
_Label_643:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1820,r13		! source line 1820
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Exit
! RETURN STATEMENT...
	mov	1821,r13		! source line 1821
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,160,r15
	pop	r13
	pop	r14
	ret
! CASE 10...
_Label_644:
! RETURN STATEMENT...
	mov	1823,r13		! source line 1823
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=arg2  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=arg3  sizeInBytes=4
	load	[r14+20],r1
	store	r1,[r15+8]
!   Call the function
	mov	1823,r13		! source line 1823
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Open
!   Retrieve Result: targetName=_temp_668  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-112]
!   ReturnResult: _temp_668  (sizeInBytes=4)
	load	[r14+-112],r1
	store	r1,[r14+8]
	add	r15,160,r15
	pop	r13
	pop	r14
	ret
! CASE 11...
_Label_645:
! RETURN STATEMENT...
	mov	1825,r13		! source line 1825
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=arg2  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=arg3  sizeInBytes=4
	load	[r14+20],r1
	store	r1,[r15+8]
!   Call the function
	mov	1825,r13		! source line 1825
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Read
!   Retrieve Result: targetName=_temp_669  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-108]
!   ReturnResult: _temp_669  (sizeInBytes=4)
	load	[r14+-108],r1
	store	r1,[r14+8]
	add	r15,160,r15
	pop	r13
	pop	r14
	ret
! CASE 12...
_Label_646:
! RETURN STATEMENT...
	mov	1827,r13		! source line 1827
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=arg2  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=arg3  sizeInBytes=4
	load	[r14+20],r1
	store	r1,[r15+8]
!   Call the function
	mov	1827,r13		! source line 1827
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Write
!   Retrieve Result: targetName=_temp_670  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-104]
!   ReturnResult: _temp_670  (sizeInBytes=4)
	load	[r14+-104],r1
	store	r1,[r14+8]
	add	r15,160,r15
	pop	r13
	pop	r14
	ret
! CASE 13...
_Label_647:
! RETURN STATEMENT...
	mov	1829,r13		! source line 1829
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=arg2  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+4]
!   Call the function
	mov	1829,r13		! source line 1829
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Seek
!   Retrieve Result: targetName=_temp_671  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-100]
!   ReturnResult: _temp_671  (sizeInBytes=4)
	load	[r14+-100],r1
	store	r1,[r14+8]
	add	r15,160,r15
	pop	r13
	pop	r14
	ret
! CASE 14...
_Label_648:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1831,r13		! source line 1831
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Close
! RETURN STATEMENT...
	mov	1832,r13		! source line 1832
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,160,r15
	pop	r13
	pop	r14
	ret
! CASE 3...
_Label_649:
! CALL STATEMENT...
!   Call the function
	mov	1834,r13		! source line 1834
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Shutdown
! RETURN STATEMENT...
	mov	1835,r13		! source line 1835
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,160,r15
	pop	r13
	pop	r14
	ret
! CASE 5...
_Label_650:
! RETURN STATEMENT...
	mov	1837,r13		! source line 1837
	mov	"\0\0RE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_674 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-88]
!   Data Move: _temp_673 = *_temp_674  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_673) then goto _runtimeErrorNullPointer
	load	[r14+-92],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_675 = _temp_673 + 12
	load	[r14+-92],r1
	add	r1,12,r1
	store	r1,[r14+-84]
!   Data Move: _temp_672 = *_temp_675  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r1],r1
	store	r1,[r14+-96]
!   ReturnResult: _temp_672  (sizeInBytes=4)
	load	[r14+-96],r1
	store	r1,[r14+8]
	add	r15,160,r15
	pop	r13
	pop	r14
	ret
! CASE 6...
_Label_651:
! RETURN STATEMENT...
	mov	1839,r13		! source line 1839
	mov	"\0\0RE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_678 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-72]
!   Data Move: _temp_677 = *_temp_678  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r1],r1
	store	r1,[r14+-76]
!   if intIsZero (_temp_677) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_679 = _temp_677 + 16
	load	[r14+-76],r1
	add	r1,16,r1
	store	r1,[r14+-68]
!   Data Move: _temp_676 = *_temp_679  (sizeInBytes=4)
	load	[r14+-68],r1
	load	[r1],r1
	store	r1,[r14+-80]
!   ReturnResult: _temp_676  (sizeInBytes=4)
	load	[r14+-80],r1
	store	r1,[r14+8]
	add	r15,160,r15
	pop	r13
	pop	r14
	ret
! CASE 15...
_Label_652:
! RETURN STATEMENT...
	mov	1841,r13		! source line 1841
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=arg2  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+4]
!   Call the function
	mov	1841,r13		! source line 1841
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Stat
!   Retrieve Result: targetName=_temp_680  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-64]
!   ReturnResult: _temp_680  (sizeInBytes=4)
	load	[r14+-64],r1
	store	r1,[r14+8]
	add	r15,160,r15
	pop	r13
	pop	r14
	ret
! CASE 16...
_Label_653:
! RETURN STATEMENT...
	mov	1844,r13		! source line 1844
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=arg2  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+4]
!   Call the function
	mov	1844,r13		! source line 1844
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_ChMode
!   Retrieve Result: targetName=_temp_681  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-60]
!   ReturnResult: _temp_681  (sizeInBytes=4)
	load	[r14+-60],r1
	store	r1,[r14+8]
	add	r15,160,r15
	pop	r13
	pop	r14
	ret
! CASE 22...
_Label_654:
! RETURN STATEMENT...
	mov	1846,r13		! source line 1846
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1846,r13		! source line 1846
	mov	"\0\0CA",r10
	call	_function_231_Handle_Sys_OpenDir
!   Retrieve Result: targetName=_temp_682  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-56]
!   ReturnResult: _temp_682  (sizeInBytes=4)
	load	[r14+-56],r1
	store	r1,[r14+8]
	add	r15,160,r15
	pop	r13
	pop	r14
	ret
! CASE 23...
_Label_655:
! RETURN STATEMENT...
	mov	1848,r13		! source line 1848
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=arg2  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+4]
!   Call the function
	mov	1848,r13		! source line 1848
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_ReadDir
!   Retrieve Result: targetName=_temp_683  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-52]
!   ReturnResult: _temp_683  (sizeInBytes=4)
	load	[r14+-52],r1
	store	r1,[r14+8]
	add	r15,160,r15
	pop	r13
	pop	r14
	ret
! CASE 24...
_Label_656:
! RETURN STATEMENT...
	mov	1850,r13		! source line 1850
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1850,r13		! source line 1850
	mov	"\0\0CA",r10
	call	_function_243_Handle_Sys_GetDiskInfo
!   Retrieve Result: targetName=_temp_684  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-48]
!   ReturnResult: _temp_684  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+8]
	add	r15,160,r15
	pop	r13
	pop	r14
	ret
! CASE 21...
_Label_657:
! RETURN STATEMENT...
	mov	1852,r13		! source line 1852
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1852,r13		! source line 1852
	mov	"\0\0CA",r10
	call	_function_242_Handle_Sys_ChDir
!   Retrieve Result: targetName=_temp_685  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-44]
!   ReturnResult: _temp_685  (sizeInBytes=4)
	load	[r14+-44],r1
	store	r1,[r14+8]
	add	r15,160,r15
	pop	r13
	pop	r14
	ret
! CASE 26...
_Label_658:
! RETURN STATEMENT...
	mov	1854,r13		! source line 1854
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1854,r13		! source line 1854
	mov	"\0\0CA",r10
	call	_function_237_Handle_Sys_Dup
!   Retrieve Result: targetName=_temp_686  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
!   ReturnResult: _temp_686  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+8]
	add	r15,160,r15
	pop	r13
	pop	r14
	ret
! CASE 25...
_Label_659:
! RETURN STATEMENT...
	mov	1856,r13		! source line 1856
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1856,r13		! source line 1856
	mov	"\0\0CA",r10
	call	_function_236_Handle_Sys_Pipe
!   Retrieve Result: targetName=_temp_687  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
!   ReturnResult: _temp_687  (sizeInBytes=4)
	load	[r14+-36],r1
	store	r1,[r14+8]
	add	r15,160,r15
	pop	r13
	pop	r14
	ret
! CASE 17...
_Label_660:
! RETURN STATEMENT...
	mov	1858,r13		! source line 1858
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=arg2  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+4]
!   Call the function
	mov	1858,r13		! source line 1858
	mov	"\0\0CA",r10
	call	_function_239_Handle_Sys_Link
!   Retrieve Result: targetName=_temp_688  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
!   ReturnResult: _temp_688  (sizeInBytes=4)
	load	[r14+-32],r1
	store	r1,[r14+8]
	add	r15,160,r15
	pop	r13
	pop	r14
	ret
! CASE 19...
_Label_661:
! RETURN STATEMENT...
	mov	1860,r13		! source line 1860
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1860,r13		! source line 1860
	mov	"\0\0CA",r10
	call	_function_241_Handle_Sys_MkDir
!   Retrieve Result: targetName=_temp_689  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
!   ReturnResult: _temp_689  (sizeInBytes=4)
	load	[r14+-28],r1
	store	r1,[r14+8]
	add	r15,160,r15
	pop	r13
	pop	r14
	ret
! CASE 20...
_Label_662:
! RETURN STATEMENT...
	mov	1862,r13		! source line 1862
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1862,r13		! source line 1862
	mov	"\0\0CA",r10
	call	_function_240_Handle_Sys_RmDir
!   Retrieve Result: targetName=_temp_690  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_690  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+8]
	add	r15,160,r15
	pop	r13
	pop	r14
	ret
! CASE 18...
_Label_663:
! RETURN STATEMENT...
	mov	1864,r13		! source line 1864
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1864,r13		! source line 1864
	mov	"\0\0CA",r10
	call	_function_238_Handle_Sys_Unlink
!   Retrieve Result: targetName=_temp_691  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   ReturnResult: _temp_691  (sizeInBytes=4)
	load	[r14+-20],r1
	store	r1,[r14+8]
	add	r15,160,r15
	pop	r13
	pop	r14
	ret
! DEFAULT CASE...
_Label_637:
! CALL STATEMENT...
!   _temp_692 = _StringConst_38
	set	_StringConst_38,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_692  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1866,r13		! source line 1866
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=syscallCodeNum  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	1867,r13		! source line 1867
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	1868,r13		! source line 1868
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_693 = _StringConst_39
	set	_StringConst_39,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_693  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1869,r13		! source line 1869
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_638:
! RETURN STATEMENT...
	mov	1871,r13		! source line 1871
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,160,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_SyscallTrapHandler:
	.word	_sourceFileName
	.word	_Label_694
	.word	20		! total size of parameters
	.word	156		! frame size = 156
	.word	_Label_695
	.word	8
	.word	4
	.word	_Label_696
	.word	12
	.word	4
	.word	_Label_697
	.word	16
	.word	4
	.word	_Label_698
	.word	20
	.word	4
	.word	_Label_699
	.word	24
	.word	4
	.word	_Label_700
	.word	-12
	.word	4
	.word	_Label_701
	.word	-16
	.word	4
	.word	_Label_702
	.word	-20
	.word	4
	.word	_Label_703
	.word	-24
	.word	4
	.word	_Label_704
	.word	-28
	.word	4
	.word	_Label_705
	.word	-32
	.word	4
	.word	_Label_706
	.word	-36
	.word	4
	.word	_Label_707
	.word	-40
	.word	4
	.word	_Label_708
	.word	-44
	.word	4
	.word	_Label_709
	.word	-48
	.word	4
	.word	_Label_710
	.word	-52
	.word	4
	.word	_Label_711
	.word	-56
	.word	4
	.word	_Label_712
	.word	-60
	.word	4
	.word	_Label_713
	.word	-64
	.word	4
	.word	_Label_714
	.word	-68
	.word	4
	.word	_Label_715
	.word	-72
	.word	4
	.word	_Label_716
	.word	-76
	.word	4
	.word	_Label_717
	.word	-80
	.word	4
	.word	_Label_718
	.word	-84
	.word	4
	.word	_Label_719
	.word	-88
	.word	4
	.word	_Label_720
	.word	-92
	.word	4
	.word	_Label_721
	.word	-96
	.word	4
	.word	_Label_722
	.word	-100
	.word	4
	.word	_Label_723
	.word	-104
	.word	4
	.word	_Label_724
	.word	-108
	.word	4
	.word	_Label_725
	.word	-112
	.word	4
	.word	_Label_726
	.word	-116
	.word	4
	.word	_Label_727
	.word	-120
	.word	4
	.word	_Label_728
	.word	-124
	.word	4
	.word	_Label_729
	.word	-128
	.word	4
	.word	_Label_730
	.word	-132
	.word	4
	.word	_Label_731
	.word	-136
	.word	4
	.word	_Label_732
	.word	-140
	.word	4
	.word	_Label_733
	.word	-144
	.word	4
	.word	_Label_734
	.word	-148
	.word	4
	.word	_Label_735
	.word	-152
	.word	4
	.word	0
_Label_694:
	.ascii	"SyscallTrapHandler\0"
	.align
_Label_695:
	.byte	'I'
	.ascii	"syscallCodeNum\0"
	.align
_Label_696:
	.byte	'I'
	.ascii	"arg1\0"
	.align
_Label_697:
	.byte	'I'
	.ascii	"arg2\0"
	.align
_Label_698:
	.byte	'I'
	.ascii	"arg3\0"
	.align
_Label_699:
	.byte	'I'
	.ascii	"arg4\0"
	.align
_Label_700:
	.byte	'?'
	.ascii	"_temp_693\0"
	.align
_Label_701:
	.byte	'?'
	.ascii	"_temp_692\0"
	.align
_Label_702:
	.byte	'?'
	.ascii	"_temp_691\0"
	.align
_Label_703:
	.byte	'?'
	.ascii	"_temp_690\0"
	.align
_Label_704:
	.byte	'?'
	.ascii	"_temp_689\0"
	.align
_Label_705:
	.byte	'?'
	.ascii	"_temp_688\0"
	.align
_Label_706:
	.byte	'?'
	.ascii	"_temp_687\0"
	.align
_Label_707:
	.byte	'?'
	.ascii	"_temp_686\0"
	.align
_Label_708:
	.byte	'?'
	.ascii	"_temp_685\0"
	.align
_Label_709:
	.byte	'?'
	.ascii	"_temp_684\0"
	.align
_Label_710:
	.byte	'?'
	.ascii	"_temp_683\0"
	.align
_Label_711:
	.byte	'?'
	.ascii	"_temp_682\0"
	.align
_Label_712:
	.byte	'?'
	.ascii	"_temp_681\0"
	.align
_Label_713:
	.byte	'?'
	.ascii	"_temp_680\0"
	.align
_Label_714:
	.byte	'?'
	.ascii	"_temp_679\0"
	.align
_Label_715:
	.byte	'?'
	.ascii	"_temp_678\0"
	.align
_Label_716:
	.byte	'?'
	.ascii	"_temp_677\0"
	.align
_Label_717:
	.byte	'?'
	.ascii	"_temp_676\0"
	.align
_Label_718:
	.byte	'?'
	.ascii	"_temp_675\0"
	.align
_Label_719:
	.byte	'?'
	.ascii	"_temp_674\0"
	.align
_Label_720:
	.byte	'?'
	.ascii	"_temp_673\0"
	.align
_Label_721:
	.byte	'?'
	.ascii	"_temp_672\0"
	.align
_Label_722:
	.byte	'?'
	.ascii	"_temp_671\0"
	.align
_Label_723:
	.byte	'?'
	.ascii	"_temp_670\0"
	.align
_Label_724:
	.byte	'?'
	.ascii	"_temp_669\0"
	.align
_Label_725:
	.byte	'?'
	.ascii	"_temp_668\0"
	.align
_Label_726:
	.byte	'?'
	.ascii	"_temp_667\0"
	.align
_Label_727:
	.byte	'?'
	.ascii	"_temp_666\0"
	.align
_Label_728:
	.byte	'?'
	.ascii	"_temp_665\0"
	.align
_Label_729:
	.byte	'?'
	.ascii	"_temp_636\0"
	.align
_Label_730:
	.byte	'?'
	.ascii	"_temp_635\0"
	.align
_Label_731:
	.byte	'?'
	.ascii	"_temp_634\0"
	.align
_Label_732:
	.byte	'?'
	.ascii	"_temp_633\0"
	.align
_Label_733:
	.byte	'?'
	.ascii	"_temp_632\0"
	.align
_Label_734:
	.byte	'?'
	.ascii	"_temp_631\0"
	.align
_Label_735:
	.byte	'?'
	.ascii	"_temp_630\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_GetDiskInfo  ===============
! 
_function_243_Handle_Sys_GetDiskInfo:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_243_Handle_Sys_GetDiskInfo,r1
	push	r1
	mov	16,r1
_Label_7771:
	push	r0
	sub	r1,1,r1
	bne	_Label_7771
	mov	1876,r13		! source line 1876
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1877,r13		! source line 1877
	mov	"\0\0IF",r10
!   _temp_739 = buffPtr		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-64]
!   if _temp_739 >= 0 then goto _Label_738		(int)
	load	[r14+-64],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_738
	jmp	_Label_736
_Label_738:
!   _temp_741 = buffPtr		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-56]
!   _temp_740 = _temp_741 + 20		(int)
	load	[r14+-56],r1
	mov	20,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-60]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_745 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-40]
!   Data Move: _temp_744 = *_temp_745  (sizeInBytes=4)
	load	[r14+-40],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   if intIsZero (_temp_744) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_746 = _temp_744 + 32
	load	[r14+-44],r1
	add	r1,32,r1
	store	r1,[r14+-36]
!   _temp_747 = _temp_746 + 4
	load	[r14+-36],r1
	add	r1,4,r1
	store	r1,[r14+-32]
!   Data Move: _temp_743 = *_temp_747  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-48]
!   _temp_742 = _temp_743 * 8192		(int)
	load	[r14+-48],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-52]
!   if _temp_740 <= _temp_742 then goto _Label_737		(int)
	load	[r14+-60],r1
	load	[r14+-52],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_737
!	_Label_736	jmp	_Label_736
_Label_736:
! THEN...
	mov	1879,r13		! source line 1879
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	1879,r13		! source line 1879
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_749 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-24]
!   Data Move: _temp_748 = *_temp_749  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_748) then goto _runtimeErrorNullPointer
	load	[r14+-28],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_750 = _temp_748 + 236
	load	[r14+-28],r1
	add	r1,236,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_750 = 6  (sizeInBytes=4)
	mov	6,r1
	load	[r14+-20],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1880,r13		! source line 1880
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,68,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_737:
! RETURN STATEMENT...
	mov	1883,r13		! source line 1883
	mov	"\0\0RE",r10
	mov	1883,r13		! source line 1883
	mov	"\0\0SE",r10
!   _temp_752 = &_P_Kernel_fileSystem
	set	_P_Kernel_fileSystem,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=buffPtr  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+4]
!   Send message GetDiskInfo
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,64,r2
	call	r2
!   Retrieve Result: targetName=_temp_751  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-16]
!   ReturnResult: _temp_751  (sizeInBytes=4)
	load	[r14+-16],r1
	store	r1,[r14+8]
	add	r15,68,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_243_Handle_Sys_GetDiskInfo:
	.word	_sourceFileName
	.word	_Label_753
	.word	4		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_754
	.word	8
	.word	4
	.word	_Label_755
	.word	-12
	.word	4
	.word	_Label_756
	.word	-16
	.word	4
	.word	_Label_757
	.word	-20
	.word	4
	.word	_Label_758
	.word	-24
	.word	4
	.word	_Label_759
	.word	-28
	.word	4
	.word	_Label_760
	.word	-32
	.word	4
	.word	_Label_761
	.word	-36
	.word	4
	.word	_Label_762
	.word	-40
	.word	4
	.word	_Label_763
	.word	-44
	.word	4
	.word	_Label_764
	.word	-48
	.word	4
	.word	_Label_765
	.word	-52
	.word	4
	.word	_Label_766
	.word	-56
	.word	4
	.word	_Label_767
	.word	-60
	.word	4
	.word	_Label_768
	.word	-64
	.word	4
	.word	0
_Label_753:
	.ascii	"Handle_Sys_GetDiskInfo\0"
	.align
_Label_754:
	.byte	'P'
	.ascii	"buffPtr\0"
	.align
_Label_755:
	.byte	'?'
	.ascii	"_temp_752\0"
	.align
_Label_756:
	.byte	'?'
	.ascii	"_temp_751\0"
	.align
_Label_757:
	.byte	'?'
	.ascii	"_temp_750\0"
	.align
_Label_758:
	.byte	'?'
	.ascii	"_temp_749\0"
	.align
_Label_759:
	.byte	'?'
	.ascii	"_temp_748\0"
	.align
_Label_760:
	.byte	'?'
	.ascii	"_temp_747\0"
	.align
_Label_761:
	.byte	'?'
	.ascii	"_temp_746\0"
	.align
_Label_762:
	.byte	'?'
	.ascii	"_temp_745\0"
	.align
_Label_763:
	.byte	'?'
	.ascii	"_temp_744\0"
	.align
_Label_764:
	.byte	'?'
	.ascii	"_temp_743\0"
	.align
_Label_765:
	.byte	'?'
	.ascii	"_temp_742\0"
	.align
_Label_766:
	.byte	'?'
	.ascii	"_temp_741\0"
	.align
_Label_767:
	.byte	'?'
	.ascii	"_temp_740\0"
	.align
_Label_768:
	.byte	'?'
	.ascii	"_temp_739\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Exit  ===============
! 
_P_Kernel_Handle_Sys_Exit:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Exit,r1
	push	r1
	mov	1,r1
_Label_7772:
	push	r0
	sub	r1,1,r1
	bne	_Label_7772
	mov	1889,r13		! source line 1889
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=returnStatus  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	1890,r13		! source line 1890
	mov	"\0\0CA",r10
	call	_P_Kernel_ProcessFinish
! RETURN STATEMENT...
	mov	1890,r13		! source line 1890
	mov	"\0\0RE",r10
	add	r15,8,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Exit:
	.word	_sourceFileName
	.word	_Label_769
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_770
	.word	8
	.word	4
	.word	0
_Label_769:
	.ascii	"Handle_Sys_Exit\0"
	.align
_Label_770:
	.byte	'I'
	.ascii	"returnStatus\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Shutdown  ===============
! 
_P_Kernel_Handle_Sys_Shutdown:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Shutdown,r1
	push	r1
	mov	2,r1
_Label_7773:
	push	r0
	sub	r1,1,r1
	bne	_Label_7773
	mov	1895,r13		! source line 1895
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_771 = _StringConst_40
	set	_StringConst_40,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_771  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1896,r13		! source line 1896
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! RETURN STATEMENT...
	mov	1896,r13		! source line 1896
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Shutdown:
	.word	_sourceFileName
	.word	_Label_772
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_773
	.word	-12
	.word	4
	.word	0
_Label_772:
	.ascii	"Handle_Sys_Shutdown\0"
	.align
_Label_773:
	.byte	'?'
	.ascii	"_temp_771\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Yield  ===============
! 
_P_Kernel_Handle_Sys_Yield:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Yield,r1
	push	r1
	mov	1,r1
_Label_7774:
	push	r0
	sub	r1,1,r1
	bne	_Label_7774
	mov	1901,r13		! source line 1901
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1902,r13		! source line 1902
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Yield
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	1902,r13		! source line 1902
	mov	"\0\0RE",r10
	add	r15,8,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Yield:
	.word	_sourceFileName
	.word	_Label_774
	.word	0		! total size of parameters
	.word	4		! frame size = 4
	.word	0
_Label_774:
	.ascii	"Handle_Sys_Yield\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_ChDir  ===============
! 
_function_242_Handle_Sys_ChDir:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_242_Handle_Sys_ChDir,r1
	push	r1
	mov	173,r1
_Label_7775:
	push	r0
	sub	r1,1,r1
	bne	_Label_7775
	mov	1907,r13		! source line 1907
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! nameBuf
!   NEW ARRAY Constructor...
!   _temp_776 = &_temp_775
	add	r14,-412,r1
	store	r1,[r14+-152]
!   _temp_776 = _temp_776 + 4
	load	[r14+-152],r1
	add	r1,4,r1
	store	r1,[r14+-152]
!   Next value...
	mov	255,r1
	store	r1,[r14+-148]
_Label_778:
!   Data Move: *_temp_776 = 0  (sizeInBytes=1)
	mov	0,r1
	load	[r14+-152],r2
	storeb	r1,[r2]
!   _temp_776 = _temp_776 + 1
	load	[r14+-152],r1
	add	r1,1,r1
	store	r1,[r14+-152]
!   _temp_777 = _temp_777 + -1
	load	[r14+-148],r1
	add	r1,-1,r1
	store	r1,[r14+-148]
!   if intNotZero (_temp_777) then goto _Label_778
	load	[r14+-148],r1
	cmp	r1,r0
	bne	_Label_778
!   Initialize the array size...
	mov	255,r1
	store	r1,[r14+-412]
!   _temp_779 = &_temp_775
	add	r14,-412,r1
	store	r1,[r14+-144]
!   make sure array has size 255
	load	[r14+-144],r1
	load	[r1],r1
	set	255, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: nameBuf = *_temp_779  (sizeInBytes=260)
	load	[r14+-144],r5
	add	r14,-676,r4
	mov	65,r3
_Label_7776:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_7776
! ASSIGNMENT STATEMENT...
	mov	1912,r13		! source line 1912
	mov	"\0\0AS",r10
!   _temp_780 = dirName		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-140]
!   Prepare Argument: offset=8  value=_temp_780  sizeInBytes=4
	load	[r14+-140],r1
	store	r1,[r15+0]
!   Call the function
	mov	1912,r13		! source line 1912
	mov	"\0\0CA",r10
	call	_function_234_ValidatePtr
!   Retrieve Result: targetName=garbage  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-416]
! IF STATEMENT...
	mov	1913,r13		! source line 1913
	mov	"\0\0IF",r10
!   if garbage >= 0 then goto _Label_782		(int)
	load	[r14+-416],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_782
!	_Label_781	jmp	_Label_781
_Label_781:
! THEN...
	mov	1914,r13		! source line 1914
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	1914,r13		! source line 1914
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_784 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-132]
!   Data Move: _temp_783 = *_temp_784  (sizeInBytes=4)
	load	[r14+-132],r1
	load	[r1],r1
	store	r1,[r14+-136]
!   if intIsZero (_temp_783) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_785 = _temp_783 + 236
	load	[r14+-136],r1
	add	r1,236,r1
	store	r1,[r14+-128]
!   Data Move: *_temp_785 = 6  (sizeInBytes=4)
	mov	6,r1
	load	[r14+-128],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1915,r13		! source line 1915
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,696,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_782:
! ASSIGNMENT STATEMENT...
	mov	1918,r13		! source line 1918
	mov	"\0\0AS",r10
	mov	1918,r13		! source line 1918
	mov	"\0\0SE",r10
!   _temp_786 = &nameBuf
	add	r14,-676,r1
	store	r1,[r14+-124]
!   _temp_787 = dirName		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-120]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_789 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-112]
!   Data Move: _temp_788 = *_temp_789  (sizeInBytes=4)
	load	[r14+-112],r1
	load	[r1],r1
	store	r1,[r14+-116]
!   if intIsZero (_temp_788) then goto _runtimeErrorNullPointer
	load	[r14+-116],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_790 = _temp_788 + 32
	load	[r14+-116],r1
	add	r1,32,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=12  value=_temp_786  sizeInBytes=4
	load	[r14+-124],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_787  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=255  sizeInBytes=4
	mov	255,r1
	store	r1,[r15+12]
!   Send message GetStringFromVirtual
	load	[r14+-108],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,84,r2
	call	r2
!   Retrieve Result: targetName=garbage  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-416]
! IF STATEMENT...
	mov	1919,r13		! source line 1919
	mov	"\0\0IF",r10
!   if garbage >= 0 then goto _Label_792		(int)
	load	[r14+-416],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_792
!	_Label_791	jmp	_Label_791
_Label_791:
! THEN...
	mov	1920,r13		! source line 1920
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	1920,r13		! source line 1920
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_794 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-100]
!   Data Move: _temp_793 = *_temp_794  (sizeInBytes=4)
	load	[r14+-100],r1
	load	[r1],r1
	store	r1,[r14+-104]
!   if intIsZero (_temp_793) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_795 = _temp_793 + 236
	load	[r14+-104],r1
	add	r1,236,r1
	store	r1,[r14+-96]
!   Data Move: *_temp_795 = 8  (sizeInBytes=4)
	mov	8,r1
	load	[r14+-96],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1921,r13		! source line 1921
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,696,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_792:
! ASSIGNMENT STATEMENT...
	mov	1924,r13		! source line 1924
	mov	"\0\0AS",r10
	mov	1924,r13		! source line 1924
	mov	"\0\0SE",r10
!   _temp_796 = &nameBuf
	add	r14,-676,r1
	store	r1,[r14+-92]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_799 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-80]
!   Data Move: _temp_798 = *_temp_799  (sizeInBytes=4)
	load	[r14+-80],r1
	load	[r1],r1
	store	r1,[r14+-84]
!   if intIsZero (_temp_798) then goto _runtimeErrorNullPointer
	load	[r14+-84],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_800 = _temp_798 + 240
	load	[r14+-84],r1
	add	r1,240,r1
	store	r1,[r14+-76]
!   Data Move: _temp_797 = *_temp_800  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-88]
!   _temp_801 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=12  value=_temp_796  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_797  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+12]
!   Prepare Argument: offset=24  value=4  sizeInBytes=4
	mov	4,r1
	store	r1,[r15+16]
!   Send message Open
	load	[r14+-72],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,36,r2
	call	r2
!   Retrieve Result: targetName=newDir  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-680]
! IF STATEMENT...
	mov	1925,r13		! source line 1925
	mov	"\0\0IF",r10
!   if intIsZero (newDir) then goto _runtimeErrorNullPointer
	load	[r14+-680],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_805 = newDir + 12
	load	[r14+-680],r1
	add	r1,12,r1
	store	r1,[r14+-64]
!   Data Move: _temp_804 = *_temp_805  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   if _temp_804 != 4 then goto _Label_803		(int)
	load	[r14+-68],r1
	mov	4,r2
	cmp	r1,r2
	bne	_Label_803
!	_Label_802	jmp	_Label_802
_Label_802:
! THEN...
	mov	1926,r13		! source line 1926
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	1926,r13		! source line 1926
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_808 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-52]
!   Data Move: _temp_807 = *_temp_808  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   if intIsZero (_temp_807) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_809 = _temp_807 + 240
	load	[r14+-56],r1
	add	r1,240,r1
	store	r1,[r14+-48]
!   Data Move: _temp_806 = *_temp_809  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r1],r1
	store	r1,[r14+-60]
!   _temp_810 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=12  value=_temp_806  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+4]
!   Send message Close
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,40,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1927,r13		! source line 1927
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_812 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-36]
!   Data Move: _temp_811 = *_temp_812  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if intIsZero (_temp_811) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_813 = _temp_811 + 240
	load	[r14+-40],r1
	add	r1,240,r1
	store	r1,[r14+-32]
	mov	1927,r13		! source line 1927
	mov	"\0\0SE",r10
!   if intIsZero (newDir) then goto _runtimeErrorNullPointer
	load	[r14+-680],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message NewReference
	load	[r14+-680],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_814  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
!   Data Move: *_temp_813 = _temp_814  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r14+-32],r2
	store	r1,[r2]
	jmp	_Label_815
_Label_803:
! ELSE...
	mov	1929,r13		! source line 1929
	mov	"\0\0EL",r10
! ASSIGNMENT STATEMENT...
	mov	1929,r13		! source line 1929
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_817 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-20]
!   Data Move: _temp_816 = *_temp_817  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_816) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_818 = _temp_816 + 236
	load	[r14+-24],r1
	add	r1,236,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_818 = 5  (sizeInBytes=4)
	mov	5,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1930,r13		! source line 1930
	mov	"\0\0SE",r10
!   _temp_819 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=newDir  sizeInBytes=4
	load	[r14+-680],r1
	store	r1,[r15+4]
!   Send message Close
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,40,r2
	call	r2
! RETURN STATEMENT...
	mov	1931,r13		! source line 1931
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,696,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_815:
! RETURN STATEMENT...
	mov	1934,r13		! source line 1934
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,696,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_242_Handle_Sys_ChDir:
	.word	_sourceFileName
	.word	_Label_820
	.word	4		! total size of parameters
	.word	692		! frame size = 692
	.word	_Label_821
	.word	8
	.word	4
	.word	_Label_822
	.word	-12
	.word	4
	.word	_Label_823
	.word	-16
	.word	4
	.word	_Label_824
	.word	-20
	.word	4
	.word	_Label_825
	.word	-24
	.word	4
	.word	_Label_826
	.word	-28
	.word	4
	.word	_Label_827
	.word	-32
	.word	4
	.word	_Label_828
	.word	-36
	.word	4
	.word	_Label_829
	.word	-40
	.word	4
	.word	_Label_830
	.word	-44
	.word	4
	.word	_Label_831
	.word	-48
	.word	4
	.word	_Label_832
	.word	-52
	.word	4
	.word	_Label_833
	.word	-56
	.word	4
	.word	_Label_834
	.word	-60
	.word	4
	.word	_Label_835
	.word	-64
	.word	4
	.word	_Label_836
	.word	-68
	.word	4
	.word	_Label_837
	.word	-72
	.word	4
	.word	_Label_838
	.word	-76
	.word	4
	.word	_Label_839
	.word	-80
	.word	4
	.word	_Label_840
	.word	-84
	.word	4
	.word	_Label_841
	.word	-88
	.word	4
	.word	_Label_842
	.word	-92
	.word	4
	.word	_Label_843
	.word	-96
	.word	4
	.word	_Label_844
	.word	-100
	.word	4
	.word	_Label_845
	.word	-104
	.word	4
	.word	_Label_846
	.word	-108
	.word	4
	.word	_Label_847
	.word	-112
	.word	4
	.word	_Label_848
	.word	-116
	.word	4
	.word	_Label_849
	.word	-120
	.word	4
	.word	_Label_850
	.word	-124
	.word	4
	.word	_Label_851
	.word	-128
	.word	4
	.word	_Label_852
	.word	-132
	.word	4
	.word	_Label_853
	.word	-136
	.word	4
	.word	_Label_854
	.word	-140
	.word	4
	.word	_Label_855
	.word	-144
	.word	4
	.word	_Label_856
	.word	-148
	.word	4
	.word	_Label_857
	.word	-152
	.word	4
	.word	_Label_858
	.word	-412
	.word	260
	.word	_Label_859
	.word	-416
	.word	4
	.word	_Label_860
	.word	-676
	.word	260
	.word	_Label_861
	.word	-680
	.word	4
	.word	0
_Label_820:
	.ascii	"Handle_Sys_ChDir\0"
	.align
_Label_821:
	.byte	'P'
	.ascii	"dirName\0"
	.align
_Label_822:
	.byte	'?'
	.ascii	"_temp_819\0"
	.align
_Label_823:
	.byte	'?'
	.ascii	"_temp_818\0"
	.align
_Label_824:
	.byte	'?'
	.ascii	"_temp_817\0"
	.align
_Label_825:
	.byte	'?'
	.ascii	"_temp_816\0"
	.align
_Label_826:
	.byte	'?'
	.ascii	"_temp_814\0"
	.align
_Label_827:
	.byte	'?'
	.ascii	"_temp_813\0"
	.align
_Label_828:
	.byte	'?'
	.ascii	"_temp_812\0"
	.align
_Label_829:
	.byte	'?'
	.ascii	"_temp_811\0"
	.align
_Label_830:
	.byte	'?'
	.ascii	"_temp_810\0"
	.align
_Label_831:
	.byte	'?'
	.ascii	"_temp_809\0"
	.align
_Label_832:
	.byte	'?'
	.ascii	"_temp_808\0"
	.align
_Label_833:
	.byte	'?'
	.ascii	"_temp_807\0"
	.align
_Label_834:
	.byte	'?'
	.ascii	"_temp_806\0"
	.align
_Label_835:
	.byte	'?'
	.ascii	"_temp_805\0"
	.align
_Label_836:
	.byte	'?'
	.ascii	"_temp_804\0"
	.align
_Label_837:
	.byte	'?'
	.ascii	"_temp_801\0"
	.align
_Label_838:
	.byte	'?'
	.ascii	"_temp_800\0"
	.align
_Label_839:
	.byte	'?'
	.ascii	"_temp_799\0"
	.align
_Label_840:
	.byte	'?'
	.ascii	"_temp_798\0"
	.align
_Label_841:
	.byte	'?'
	.ascii	"_temp_797\0"
	.align
_Label_842:
	.byte	'?'
	.ascii	"_temp_796\0"
	.align
_Label_843:
	.byte	'?'
	.ascii	"_temp_795\0"
	.align
_Label_844:
	.byte	'?'
	.ascii	"_temp_794\0"
	.align
_Label_845:
	.byte	'?'
	.ascii	"_temp_793\0"
	.align
_Label_846:
	.byte	'?'
	.ascii	"_temp_790\0"
	.align
_Label_847:
	.byte	'?'
	.ascii	"_temp_789\0"
	.align
_Label_848:
	.byte	'?'
	.ascii	"_temp_788\0"
	.align
_Label_849:
	.byte	'?'
	.ascii	"_temp_787\0"
	.align
_Label_850:
	.byte	'?'
	.ascii	"_temp_786\0"
	.align
_Label_851:
	.byte	'?'
	.ascii	"_temp_785\0"
	.align
_Label_852:
	.byte	'?'
	.ascii	"_temp_784\0"
	.align
_Label_853:
	.byte	'?'
	.ascii	"_temp_783\0"
	.align
_Label_854:
	.byte	'?'
	.ascii	"_temp_780\0"
	.align
_Label_855:
	.byte	'?'
	.ascii	"_temp_779\0"
	.align
_Label_856:
	.byte	'?'
	.ascii	"_temp_777\0"
	.align
_Label_857:
	.byte	'?'
	.ascii	"_temp_776\0"
	.align
_Label_858:
	.byte	'?'
	.ascii	"_temp_775\0"
	.align
_Label_859:
	.byte	'I'
	.ascii	"garbage\0"
	.align
_Label_860:
	.byte	'A'
	.ascii	"nameBuf\0"
	.align
_Label_861:
	.byte	'P'
	.ascii	"newDir\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_MkDir  ===============
! 
_function_241_Handle_Sys_MkDir:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_241_Handle_Sys_MkDir,r1
	push	r1
	mov	1939,r13		! source line 1939
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1942,r13		! source line 1942
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_241_Handle_Sys_MkDir:
	.word	_sourceFileName
	.word	_Label_862
	.word	4		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_863
	.word	8
	.word	4
	.word	0
_Label_862:
	.ascii	"Handle_Sys_MkDir\0"
	.align
_Label_863:
	.byte	'P'
	.ascii	"dirname\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_RmDir  ===============
! 
_function_240_Handle_Sys_RmDir:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_240_Handle_Sys_RmDir,r1
	push	r1
	mov	1947,r13		! source line 1947
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1950,r13		! source line 1950
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_240_Handle_Sys_RmDir:
	.word	_sourceFileName
	.word	_Label_864
	.word	4		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_865
	.word	8
	.word	4
	.word	0
_Label_864:
	.ascii	"Handle_Sys_RmDir\0"
	.align
_Label_865:
	.byte	'P'
	.ascii	"dirname\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Link  ===============
! 
_function_239_Handle_Sys_Link:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_239_Handle_Sys_Link,r1
	push	r1
	mov	233,r1
_Label_7777:
	push	r0
	sub	r1,1,r1
	bne	_Label_7777
	mov	1955,r13		! source line 1955
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! locOldName
!   NEW ARRAY Constructor...
!   _temp_867 = &_temp_866
	add	r14,-400,r1
	store	r1,[r14+-140]
!   _temp_867 = _temp_867 + 4
	load	[r14+-140],r1
	add	r1,4,r1
	store	r1,[r14+-140]
!   Next value...
	mov	255,r1
	store	r1,[r14+-136]
_Label_869:
!   Data Move: *_temp_867 = 0  (sizeInBytes=1)
	mov	0,r1
	load	[r14+-140],r2
	storeb	r1,[r2]
!   _temp_867 = _temp_867 + 1
	load	[r14+-140],r1
	add	r1,1,r1
	store	r1,[r14+-140]
!   _temp_868 = _temp_868 + -1
	load	[r14+-136],r1
	add	r1,-1,r1
	store	r1,[r14+-136]
!   if intNotZero (_temp_868) then goto _Label_869
	load	[r14+-136],r1
	cmp	r1,r0
	bne	_Label_869
!   Initialize the array size...
	mov	255,r1
	store	r1,[r14+-400]
!   _temp_870 = &_temp_866
	add	r14,-400,r1
	store	r1,[r14+-132]
!   make sure array has size 255
	load	[r14+-132],r1
	load	[r1],r1
	set	255, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: locOldName = *_temp_870  (sizeInBytes=260)
	load	[r14+-132],r5
	add	r14,-660,r4
	mov	65,r3
_Label_7778:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_7778
! locNewName
!   _temp_871 = &locOldName
	add	r14,-660,r1
	store	r1,[r14+-128]
!   make sure array has size 255
	load	[r14+-128],r1
	load	[r1],r1
	set	255, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: locNewName = *_temp_871  (sizeInBytes=260)
	load	[r14+-128],r5
	add	r14,-920,r4
	mov	65,r3
_Label_7779:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_7779
! ASSIGNMENT STATEMENT...
	mov	1959,r13		! source line 1959
	mov	"\0\0AS",r10
	mov	1959,r13		! source line 1959
	mov	"\0\0SE",r10
!   _temp_872 = &locOldName
	add	r14,-660,r1
	store	r1,[r14+-124]
!   _temp_873 = oldName		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-120]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_875 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-112]
!   Data Move: _temp_874 = *_temp_875  (sizeInBytes=4)
	load	[r14+-112],r1
	load	[r1],r1
	store	r1,[r14+-116]
!   if intIsZero (_temp_874) then goto _runtimeErrorNullPointer
	load	[r14+-116],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_876 = _temp_874 + 32
	load	[r14+-116],r1
	add	r1,32,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=12  value=_temp_872  sizeInBytes=4
	load	[r14+-124],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_873  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=255  sizeInBytes=4
	mov	255,r1
	store	r1,[r15+12]
!   Send message GetStringFromVirtual
	load	[r14+-108],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,84,r2
	call	r2
!   Retrieve Result: targetName=garbage  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-924]
! ASSIGNMENT STATEMENT...
	mov	1960,r13		! source line 1960
	mov	"\0\0AS",r10
	mov	1960,r13		! source line 1960
	mov	"\0\0SE",r10
!   _temp_877 = &locNewName
	add	r14,-920,r1
	store	r1,[r14+-104]
!   _temp_878 = newName		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-100]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_880 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-92]
!   Data Move: _temp_879 = *_temp_880  (sizeInBytes=4)
	load	[r14+-92],r1
	load	[r1],r1
	store	r1,[r14+-96]
!   if intIsZero (_temp_879) then goto _runtimeErrorNullPointer
	load	[r14+-96],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_881 = _temp_879 + 32
	load	[r14+-96],r1
	add	r1,32,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=12  value=_temp_877  sizeInBytes=4
	load	[r14+-104],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_878  sizeInBytes=4
	load	[r14+-100],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=255  sizeInBytes=4
	mov	255,r1
	store	r1,[r15+12]
!   Send message GetStringFromVirtual
	load	[r14+-88],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,84,r2
	call	r2
!   Retrieve Result: targetName=garbage  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-924]
! IF STATEMENT...
	mov	1961,r13		! source line 1961
	mov	"\0\0IF",r10
!   if garbage >= 0 then goto _Label_883		(int)
	load	[r14+-924],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_883
!	_Label_882	jmp	_Label_882
_Label_882:
! THEN...
	mov	1962,r13		! source line 1962
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	1962,r13		! source line 1962
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_885 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-80]
!   Data Move: _temp_884 = *_temp_885  (sizeInBytes=4)
	load	[r14+-80],r1
	load	[r1],r1
	store	r1,[r14+-84]
!   if intIsZero (_temp_884) then goto _runtimeErrorNullPointer
	load	[r14+-84],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_886 = _temp_884 + 236
	load	[r14+-84],r1
	add	r1,236,r1
	store	r1,[r14+-76]
!   Data Move: *_temp_886 = 8  (sizeInBytes=4)
	mov	8,r1
	load	[r14+-76],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1963,r13		! source line 1963
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,936,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_883:
! IF STATEMENT...
	mov	1966,r13		! source line 1966
	mov	"\0\0IF",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_894 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-52]
!   Data Move: _temp_893 = *_temp_894  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   if intIsZero (_temp_893) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_895 = _temp_893 + 240
	load	[r14+-56],r1
	add	r1,240,r1
	store	r1,[r14+-48]
!   Data Move: _temp_892 = *_temp_895  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r1],r1
	store	r1,[r14+-60]
!   if intIsZero (_temp_892) then goto _runtimeErrorNullPointer
	load	[r14+-60],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_896 = _temp_892 + 20
	load	[r14+-60],r1
	add	r1,20,r1
	store	r1,[r14+-44]
!   Data Move: _temp_891 = *_temp_896  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r1],r1
	store	r1,[r14+-64]
!   if intIsZero (_temp_891) then goto _runtimeErrorNullPointer
	load	[r14+-64],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_897 = _temp_891 + 12
	load	[r14+-64],r1
	add	r1,12,r1
	store	r1,[r14+-40]
!   _temp_898 = _temp_897 + 12
	load	[r14+-40],r1
	add	r1,12,r1
	store	r1,[r14+-36]
!   Data Move: _temp_890 = *_temp_898  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   _temp_889 = _temp_890 AND 2		(int)
	load	[r14+-68],r1
	mov	2,r2
	and	r1,r2,r1
	store	r1,[r14+-72]
!   if _temp_889 == 2 then goto _Label_888		(int)
	load	[r14+-72],r1
	mov	2,r2
	cmp	r1,r2
	be	_Label_888
!	_Label_887	jmp	_Label_887
_Label_887:
! THEN...
	mov	1967,r13		! source line 1967
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	1967,r13		! source line 1967
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_900 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-28]
!   Data Move: _temp_899 = *_temp_900  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   if intIsZero (_temp_899) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_901 = _temp_899 + 236
	load	[r14+-32],r1
	add	r1,236,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_901 = 9  (sizeInBytes=4)
	mov	9,r1
	load	[r14+-24],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1968,r13		! source line 1968
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,936,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_888:
! ASSIGNMENT STATEMENT...
	mov	1971,r13		! source line 1971
	mov	"\0\0AS",r10
	mov	1971,r13		! source line 1971
	mov	"\0\0SE",r10
!   _temp_902 = &locOldName
	add	r14,-660,r1
	store	r1,[r14+-20]
!   _temp_903 = &locNewName
	add	r14,-920,r1
	store	r1,[r14+-16]
!   _temp_904 = &_P_Kernel_fileSystem
	set	_P_Kernel_fileSystem,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_902  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_903  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+8]
!   Send message Link
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,56,r2
	call	r2
!   Retrieve Result: targetName=garbage  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-924]
! RETURN STATEMENT...
	mov	1973,r13		! source line 1973
	mov	"\0\0RE",r10
!   ReturnResult: garbage  (sizeInBytes=4)
	load	[r14+-924],r1
	store	r1,[r14+8]
	add	r15,936,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_239_Handle_Sys_Link:
	.word	_sourceFileName
	.word	_Label_905
	.word	8		! total size of parameters
	.word	932		! frame size = 932
	.word	_Label_906
	.word	8
	.word	4
	.word	_Label_907
	.word	12
	.word	4
	.word	_Label_908
	.word	-12
	.word	4
	.word	_Label_909
	.word	-16
	.word	4
	.word	_Label_910
	.word	-20
	.word	4
	.word	_Label_911
	.word	-24
	.word	4
	.word	_Label_912
	.word	-28
	.word	4
	.word	_Label_913
	.word	-32
	.word	4
	.word	_Label_914
	.word	-36
	.word	4
	.word	_Label_915
	.word	-40
	.word	4
	.word	_Label_916
	.word	-44
	.word	4
	.word	_Label_917
	.word	-48
	.word	4
	.word	_Label_918
	.word	-52
	.word	4
	.word	_Label_919
	.word	-56
	.word	4
	.word	_Label_920
	.word	-60
	.word	4
	.word	_Label_921
	.word	-64
	.word	4
	.word	_Label_922
	.word	-68
	.word	4
	.word	_Label_923
	.word	-72
	.word	4
	.word	_Label_924
	.word	-76
	.word	4
	.word	_Label_925
	.word	-80
	.word	4
	.word	_Label_926
	.word	-84
	.word	4
	.word	_Label_927
	.word	-88
	.word	4
	.word	_Label_928
	.word	-92
	.word	4
	.word	_Label_929
	.word	-96
	.word	4
	.word	_Label_930
	.word	-100
	.word	4
	.word	_Label_931
	.word	-104
	.word	4
	.word	_Label_932
	.word	-108
	.word	4
	.word	_Label_933
	.word	-112
	.word	4
	.word	_Label_934
	.word	-116
	.word	4
	.word	_Label_935
	.word	-120
	.word	4
	.word	_Label_936
	.word	-124
	.word	4
	.word	_Label_937
	.word	-128
	.word	4
	.word	_Label_938
	.word	-132
	.word	4
	.word	_Label_939
	.word	-136
	.word	4
	.word	_Label_940
	.word	-140
	.word	4
	.word	_Label_941
	.word	-400
	.word	260
	.word	_Label_942
	.word	-660
	.word	260
	.word	_Label_943
	.word	-920
	.word	260
	.word	_Label_944
	.word	-924
	.word	4
	.word	0
_Label_905:
	.ascii	"Handle_Sys_Link\0"
	.align
_Label_906:
	.byte	'P'
	.ascii	"oldName\0"
	.align
_Label_907:
	.byte	'P'
	.ascii	"newName\0"
	.align
_Label_908:
	.byte	'?'
	.ascii	"_temp_904\0"
	.align
_Label_909:
	.byte	'?'
	.ascii	"_temp_903\0"
	.align
_Label_910:
	.byte	'?'
	.ascii	"_temp_902\0"
	.align
_Label_911:
	.byte	'?'
	.ascii	"_temp_901\0"
	.align
_Label_912:
	.byte	'?'
	.ascii	"_temp_900\0"
	.align
_Label_913:
	.byte	'?'
	.ascii	"_temp_899\0"
	.align
_Label_914:
	.byte	'?'
	.ascii	"_temp_898\0"
	.align
_Label_915:
	.byte	'?'
	.ascii	"_temp_897\0"
	.align
_Label_916:
	.byte	'?'
	.ascii	"_temp_896\0"
	.align
_Label_917:
	.byte	'?'
	.ascii	"_temp_895\0"
	.align
_Label_918:
	.byte	'?'
	.ascii	"_temp_894\0"
	.align
_Label_919:
	.byte	'?'
	.ascii	"_temp_893\0"
	.align
_Label_920:
	.byte	'?'
	.ascii	"_temp_892\0"
	.align
_Label_921:
	.byte	'?'
	.ascii	"_temp_891\0"
	.align
_Label_922:
	.byte	'?'
	.ascii	"_temp_890\0"
	.align
_Label_923:
	.byte	'?'
	.ascii	"_temp_889\0"
	.align
_Label_924:
	.byte	'?'
	.ascii	"_temp_886\0"
	.align
_Label_925:
	.byte	'?'
	.ascii	"_temp_885\0"
	.align
_Label_926:
	.byte	'?'
	.ascii	"_temp_884\0"
	.align
_Label_927:
	.byte	'?'
	.ascii	"_temp_881\0"
	.align
_Label_928:
	.byte	'?'
	.ascii	"_temp_880\0"
	.align
_Label_929:
	.byte	'?'
	.ascii	"_temp_879\0"
	.align
_Label_930:
	.byte	'?'
	.ascii	"_temp_878\0"
	.align
_Label_931:
	.byte	'?'
	.ascii	"_temp_877\0"
	.align
_Label_932:
	.byte	'?'
	.ascii	"_temp_876\0"
	.align
_Label_933:
	.byte	'?'
	.ascii	"_temp_875\0"
	.align
_Label_934:
	.byte	'?'
	.ascii	"_temp_874\0"
	.align
_Label_935:
	.byte	'?'
	.ascii	"_temp_873\0"
	.align
_Label_936:
	.byte	'?'
	.ascii	"_temp_872\0"
	.align
_Label_937:
	.byte	'?'
	.ascii	"_temp_871\0"
	.align
_Label_938:
	.byte	'?'
	.ascii	"_temp_870\0"
	.align
_Label_939:
	.byte	'?'
	.ascii	"_temp_868\0"
	.align
_Label_940:
	.byte	'?'
	.ascii	"_temp_867\0"
	.align
_Label_941:
	.byte	'?'
	.ascii	"_temp_866\0"
	.align
_Label_942:
	.byte	'A'
	.ascii	"locOldName\0"
	.align
_Label_943:
	.byte	'A'
	.ascii	"locNewName\0"
	.align
_Label_944:
	.byte	'I'
	.ascii	"garbage\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Unlink  ===============
! 
_function_238_Handle_Sys_Unlink:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_238_Handle_Sys_Unlink,r1
	push	r1
	mov	148,r1
_Label_7780:
	push	r0
	sub	r1,1,r1
	bne	_Label_7780
	mov	1978,r13		! source line 1978
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! nameBuf
!   NEW ARRAY Constructor...
!   _temp_946 = &_temp_945
	add	r14,-320,r1
	store	r1,[r14+-60]
!   _temp_946 = _temp_946 + 4
	load	[r14+-60],r1
	add	r1,4,r1
	store	r1,[r14+-60]
!   Next value...
	mov	255,r1
	store	r1,[r14+-56]
_Label_948:
!   Data Move: *_temp_946 = 0  (sizeInBytes=1)
	mov	0,r1
	load	[r14+-60],r2
	storeb	r1,[r2]
!   _temp_946 = _temp_946 + 1
	load	[r14+-60],r1
	add	r1,1,r1
	store	r1,[r14+-60]
!   _temp_947 = _temp_947 + -1
	load	[r14+-56],r1
	add	r1,-1,r1
	store	r1,[r14+-56]
!   if intNotZero (_temp_947) then goto _Label_948
	load	[r14+-56],r1
	cmp	r1,r0
	bne	_Label_948
!   Initialize the array size...
	mov	255,r1
	store	r1,[r14+-320]
!   _temp_949 = &_temp_945
	add	r14,-320,r1
	store	r1,[r14+-52]
!   make sure array has size 255
	load	[r14+-52],r1
	load	[r1],r1
	set	255, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: nameBuf = *_temp_949  (sizeInBytes=260)
	load	[r14+-52],r5
	add	r14,-580,r4
	mov	65,r3
_Label_7781:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_7781
! ASSIGNMENT STATEMENT...
	mov	1982,r13		! source line 1982
	mov	"\0\0AS",r10
	mov	1982,r13		! source line 1982
	mov	"\0\0SE",r10
!   _temp_950 = &nameBuf
	add	r14,-580,r1
	store	r1,[r14+-48]
!   _temp_951 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-44]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_953 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-36]
!   Data Move: _temp_952 = *_temp_953  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if intIsZero (_temp_952) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_954 = _temp_952 + 32
	load	[r14+-40],r1
	add	r1,32,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_950  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_951  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=255  sizeInBytes=4
	mov	255,r1
	store	r1,[r15+12]
!   Send message GetStringFromVirtual
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,84,r2
	call	r2
!   Retrieve Result: targetName=garbage  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-584]
! IF STATEMENT...
	mov	1983,r13		! source line 1983
	mov	"\0\0IF",r10
!   if garbage >= 0 then goto _Label_956		(int)
	load	[r14+-584],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_956
!	_Label_955	jmp	_Label_955
_Label_955:
! THEN...
	mov	1984,r13		! source line 1984
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	1984,r13		! source line 1984
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_958 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-24]
!   Data Move: _temp_957 = *_temp_958  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_957) then goto _runtimeErrorNullPointer
	load	[r14+-28],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_959 = _temp_957 + 236
	load	[r14+-28],r1
	add	r1,236,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_959 = 8  (sizeInBytes=4)
	mov	8,r1
	load	[r14+-20],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1985,r13		! source line 1985
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,596,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_956:
! ASSIGNMENT STATEMENT...
	mov	1988,r13		! source line 1988
	mov	"\0\0AS",r10
	mov	1988,r13		! source line 1988
	mov	"\0\0SE",r10
!   _temp_960 = &nameBuf
	add	r14,-580,r1
	store	r1,[r14+-16]
!   _temp_961 = &_P_Kernel_fileSystem
	set	_P_Kernel_fileSystem,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_960  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Send message Unlink
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,60,r2
	call	r2
!   Retrieve Result: targetName=garbage  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-584]
! RETURN STATEMENT...
	mov	1990,r13		! source line 1990
	mov	"\0\0RE",r10
!   ReturnResult: garbage  (sizeInBytes=4)
	load	[r14+-584],r1
	store	r1,[r14+8]
	add	r15,596,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_238_Handle_Sys_Unlink:
	.word	_sourceFileName
	.word	_Label_962
	.word	4		! total size of parameters
	.word	592		! frame size = 592
	.word	_Label_963
	.word	8
	.word	4
	.word	_Label_964
	.word	-12
	.word	4
	.word	_Label_965
	.word	-16
	.word	4
	.word	_Label_966
	.word	-20
	.word	4
	.word	_Label_967
	.word	-24
	.word	4
	.word	_Label_968
	.word	-28
	.word	4
	.word	_Label_969
	.word	-32
	.word	4
	.word	_Label_970
	.word	-36
	.word	4
	.word	_Label_971
	.word	-40
	.word	4
	.word	_Label_972
	.word	-44
	.word	4
	.word	_Label_973
	.word	-48
	.word	4
	.word	_Label_974
	.word	-52
	.word	4
	.word	_Label_975
	.word	-56
	.word	4
	.word	_Label_976
	.word	-60
	.word	4
	.word	_Label_977
	.word	-320
	.word	260
	.word	_Label_978
	.word	-580
	.word	260
	.word	_Label_979
	.word	-584
	.word	4
	.word	0
_Label_962:
	.ascii	"Handle_Sys_Unlink\0"
	.align
_Label_963:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_964:
	.byte	'?'
	.ascii	"_temp_961\0"
	.align
_Label_965:
	.byte	'?'
	.ascii	"_temp_960\0"
	.align
_Label_966:
	.byte	'?'
	.ascii	"_temp_959\0"
	.align
_Label_967:
	.byte	'?'
	.ascii	"_temp_958\0"
	.align
_Label_968:
	.byte	'?'
	.ascii	"_temp_957\0"
	.align
_Label_969:
	.byte	'?'
	.ascii	"_temp_954\0"
	.align
_Label_970:
	.byte	'?'
	.ascii	"_temp_953\0"
	.align
_Label_971:
	.byte	'?'
	.ascii	"_temp_952\0"
	.align
_Label_972:
	.byte	'?'
	.ascii	"_temp_951\0"
	.align
_Label_973:
	.byte	'?'
	.ascii	"_temp_950\0"
	.align
_Label_974:
	.byte	'?'
	.ascii	"_temp_949\0"
	.align
_Label_975:
	.byte	'?'
	.ascii	"_temp_947\0"
	.align
_Label_976:
	.byte	'?'
	.ascii	"_temp_946\0"
	.align
_Label_977:
	.byte	'?'
	.ascii	"_temp_945\0"
	.align
_Label_978:
	.byte	'A'
	.ascii	"nameBuf\0"
	.align
_Label_979:
	.byte	'I'
	.ascii	"garbage\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Dup  ===============
! 
_function_237_Handle_Sys_Dup:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_237_Handle_Sys_Dup,r1
	push	r1
	mov	21,r1
_Label_7782:
	push	r0
	sub	r1,1,r1
	bne	_Label_7782
	mov	1995,r13		! source line 1995
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1997,r13		! source line 1997
	mov	"\0\0IF",r10
!   Prepare Argument: offset=8  value=fileDesc  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	1997,r13		! source line 1997
	mov	"\0\0CA",r10
	call	_function_232_ValidateFd
!   Retrieve Result: targetName=_temp_982  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-84]
!   if _temp_982 >= 0 then goto _Label_981		(int)
	load	[r14+-84],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_981
!	_Label_980	jmp	_Label_980
_Label_980:
! THEN...
	mov	1998,r13		! source line 1998
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1998,r13		! source line 1998
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,88,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_981:
! WHILE STATEMENT...
	mov	2001,r13		! source line 2001
	mov	"\0\0WH",r10
_Label_983:
!   if freeFd >= 10 then goto _Label_985		(int)
	load	[r14+-88],r1
	mov	10,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_985
!	_Label_986	jmp	_Label_986
_Label_986:
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_989 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-72]
!   Data Move: _temp_988 = *_temp_989  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r1],r1
	store	r1,[r14+-76]
!   if intIsZero (_temp_988) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_990 = _temp_988 + 244
	load	[r14+-76],r1
	add	r1,244,r1
	store	r1,[r14+-68]
!   Move address of _temp_990 [freeFd ] into _temp_991
!     make sure index expr is >= 0
	load	[r14+-88],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-68],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-64]
!   Data Move: _temp_987 = *_temp_991  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-80]
!   if intIsZero (_temp_987) then goto _Label_985
	load	[r14+-80],r1
	cmp	r1,r0
	be	_Label_985
!	_Label_984	jmp	_Label_984
_Label_984:
	mov	2001,r13		! source line 2001
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	2002,r13		! source line 2002
	mov	"\0\0AS",r10
!   freeFd = freeFd + 1		(int)
	load	[r14+-88],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-88]
! END WHILE...
	jmp	_Label_983
_Label_985:
! IF STATEMENT...
	mov	2005,r13		! source line 2005
	mov	"\0\0IF",r10
!   if freeFd != 10 then goto _Label_993		(int)
	load	[r14+-88],r1
	mov	10,r2
	cmp	r1,r2
	bne	_Label_993
!	_Label_992	jmp	_Label_992
_Label_992:
! THEN...
	mov	2006,r13		! source line 2006
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2006,r13		! source line 2006
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_995 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-56]
!   Data Move: _temp_994 = *_temp_995  (sizeInBytes=4)
	load	[r14+-56],r1
	load	[r1],r1
	store	r1,[r14+-60]
!   if intIsZero (_temp_994) then goto _runtimeErrorNullPointer
	load	[r14+-60],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_996 = _temp_994 + 236
	load	[r14+-60],r1
	add	r1,236,r1
	store	r1,[r14+-52]
!   Data Move: *_temp_996 = 4  (sizeInBytes=4)
	mov	4,r1
	load	[r14+-52],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	2007,r13		! source line 2007
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,88,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_993:
! ASSIGNMENT STATEMENT...
	mov	2010,r13		! source line 2010
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_998 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-44]
!   Data Move: _temp_997 = *_temp_998  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r1],r1
	store	r1,[r14+-48]
!   if intIsZero (_temp_997) then goto _runtimeErrorNullPointer
	load	[r14+-48],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_999 = _temp_997 + 244
	load	[r14+-48],r1
	add	r1,244,r1
	store	r1,[r14+-40]
!   Move address of _temp_999 [freeFd ] into _temp_1000
!     make sure index expr is >= 0
	load	[r14+-88],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-40],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-36]
	mov	2010,r13		! source line 2010
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1004 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-20]
!   Data Move: _temp_1003 = *_temp_1004  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_1003) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1005 = _temp_1003 + 244
	load	[r14+-24],r1
	add	r1,244,r1
	store	r1,[r14+-16]
!   Move address of _temp_1005 [fileDesc ] into _temp_1006
!     make sure index expr is >= 0
	load	[r14+8],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_1002 = *_temp_1006  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_1002) then goto _runtimeErrorNullPointer
	load	[r14+-28],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message NewReference
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_1001  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
!   Data Move: *_temp_1000 = _temp_1001  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r14+-36],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	2012,r13		! source line 2012
	mov	"\0\0RE",r10
!   ReturnResult: freeFd  (sizeInBytes=4)
	load	[r14+-88],r1
	store	r1,[r14+8]
	add	r15,88,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_237_Handle_Sys_Dup:
	.word	_sourceFileName
	.word	_Label_1007
	.word	4		! total size of parameters
	.word	84		! frame size = 84
	.word	_Label_1008
	.word	8
	.word	4
	.word	_Label_1009
	.word	-12
	.word	4
	.word	_Label_1010
	.word	-16
	.word	4
	.word	_Label_1011
	.word	-20
	.word	4
	.word	_Label_1012
	.word	-24
	.word	4
	.word	_Label_1013
	.word	-28
	.word	4
	.word	_Label_1014
	.word	-32
	.word	4
	.word	_Label_1015
	.word	-36
	.word	4
	.word	_Label_1016
	.word	-40
	.word	4
	.word	_Label_1017
	.word	-44
	.word	4
	.word	_Label_1018
	.word	-48
	.word	4
	.word	_Label_1019
	.word	-52
	.word	4
	.word	_Label_1020
	.word	-56
	.word	4
	.word	_Label_1021
	.word	-60
	.word	4
	.word	_Label_1022
	.word	-64
	.word	4
	.word	_Label_1023
	.word	-68
	.word	4
	.word	_Label_1024
	.word	-72
	.word	4
	.word	_Label_1025
	.word	-76
	.word	4
	.word	_Label_1026
	.word	-80
	.word	4
	.word	_Label_1027
	.word	-84
	.word	4
	.word	_Label_1028
	.word	-88
	.word	4
	.word	0
_Label_1007:
	.ascii	"Handle_Sys_Dup\0"
	.align
_Label_1008:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_1009:
	.byte	'?'
	.ascii	"_temp_1006\0"
	.align
_Label_1010:
	.byte	'?'
	.ascii	"_temp_1005\0"
	.align
_Label_1011:
	.byte	'?'
	.ascii	"_temp_1004\0"
	.align
_Label_1012:
	.byte	'?'
	.ascii	"_temp_1003\0"
	.align
_Label_1013:
	.byte	'?'
	.ascii	"_temp_1002\0"
	.align
_Label_1014:
	.byte	'?'
	.ascii	"_temp_1001\0"
	.align
_Label_1015:
	.byte	'?'
	.ascii	"_temp_1000\0"
	.align
_Label_1016:
	.byte	'?'
	.ascii	"_temp_999\0"
	.align
_Label_1017:
	.byte	'?'
	.ascii	"_temp_998\0"
	.align
_Label_1018:
	.byte	'?'
	.ascii	"_temp_997\0"
	.align
_Label_1019:
	.byte	'?'
	.ascii	"_temp_996\0"
	.align
_Label_1020:
	.byte	'?'
	.ascii	"_temp_995\0"
	.align
_Label_1021:
	.byte	'?'
	.ascii	"_temp_994\0"
	.align
_Label_1022:
	.byte	'?'
	.ascii	"_temp_991\0"
	.align
_Label_1023:
	.byte	'?'
	.ascii	"_temp_990\0"
	.align
_Label_1024:
	.byte	'?'
	.ascii	"_temp_989\0"
	.align
_Label_1025:
	.byte	'?'
	.ascii	"_temp_988\0"
	.align
_Label_1026:
	.byte	'?'
	.ascii	"_temp_987\0"
	.align
_Label_1027:
	.byte	'?'
	.ascii	"_temp_982\0"
	.align
_Label_1028:
	.byte	'I'
	.ascii	"freeFd\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Pipe  ===============
! 
_function_236_Handle_Sys_Pipe:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_236_Handle_Sys_Pipe,r1
	push	r1
	mov	64,r1
_Label_7783:
	push	r0
	sub	r1,1,r1
	bne	_Label_7783
	mov	2017,r13		! source line 2017
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ret
!   ret = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-236]
! rFd
!   rFd = ret		(4 bytes)
	load	[r14+-236],r1
	store	r1,[r14+-240]
! wFd
!   wFd = rFd		(4 bytes)
	load	[r14+-240],r1
	store	r1,[r14+-244]
! len
!   len = 2		(4 bytes)
	mov	2,r1
	store	r1,[r14+-248]
! ASSIGNMENT STATEMENT...
	mov	2023,r13		! source line 2023
	mov	"\0\0AS",r10
	mov	2023,r13		! source line 2023
	mov	"\0\0SE",r10
!   _temp_1029 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-220]
!   Send message GetAPipe
	load	[r14+-220],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,24,r2
	call	r2
!   Retrieve Result: targetName=newPipe  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-232]
! IF STATEMENT...
	mov	2024,r13		! source line 2024
	mov	"\0\0IF",r10
	mov	2024,r13		! source line 2024
	mov	"\0\0SE",r10
!   if intIsZero (newPipe) then goto _runtimeErrorNullPointer
	load	[r14+-232],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Open
	load	[r14+-232],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_1032  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_1032 then goto _Label_1031 else goto _Label_1030
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1030
	jmp	_Label_1031
_Label_1030:
! THEN...
	mov	2025,r13		! source line 2025
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2025,r13		! source line 2025
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,260,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1031:
! WHILE STATEMENT...
	mov	2028,r13		! source line 2028
	mov	"\0\0WH",r10
_Label_1033:
!   if rFd >= 10 then goto _Label_1035		(int)
	load	[r14+-240],r1
	mov	10,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1035
!	_Label_1036	jmp	_Label_1036
_Label_1036:
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1039 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-208]
!   Data Move: _temp_1038 = *_temp_1039  (sizeInBytes=4)
	load	[r14+-208],r1
	load	[r1],r1
	store	r1,[r14+-212]
!   if intIsZero (_temp_1038) then goto _runtimeErrorNullPointer
	load	[r14+-212],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1040 = _temp_1038 + 244
	load	[r14+-212],r1
	add	r1,244,r1
	store	r1,[r14+-204]
!   Move address of _temp_1040 [rFd ] into _temp_1041
!     make sure index expr is >= 0
	load	[r14+-240],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-204],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-200]
!   Data Move: _temp_1037 = *_temp_1041  (sizeInBytes=4)
	load	[r14+-200],r1
	load	[r1],r1
	store	r1,[r14+-216]
!   if intIsZero (_temp_1037) then goto _Label_1035
	load	[r14+-216],r1
	cmp	r1,r0
	be	_Label_1035
!	_Label_1034	jmp	_Label_1034
_Label_1034:
	mov	2028,r13		! source line 2028
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	2029,r13		! source line 2029
	mov	"\0\0AS",r10
!   rFd = rFd + 1		(int)
	load	[r14+-240],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-240]
! END WHILE...
	jmp	_Label_1033
_Label_1035:
! IF STATEMENT...
	mov	2032,r13		! source line 2032
	mov	"\0\0IF",r10
!   if rFd != 10 then goto _Label_1043		(int)
	load	[r14+-240],r1
	mov	10,r2
	cmp	r1,r2
	bne	_Label_1043
!	_Label_1042	jmp	_Label_1042
_Label_1042:
! THEN...
	mov	2033,r13		! source line 2033
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2033,r13		! source line 2033
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1045 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-192]
!   Data Move: _temp_1044 = *_temp_1045  (sizeInBytes=4)
	load	[r14+-192],r1
	load	[r1],r1
	store	r1,[r14+-196]
!   if intIsZero (_temp_1044) then goto _runtimeErrorNullPointer
	load	[r14+-196],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1046 = _temp_1044 + 236
	load	[r14+-196],r1
	add	r1,236,r1
	store	r1,[r14+-188]
!   Data Move: *_temp_1046 = 4  (sizeInBytes=4)
	mov	4,r1
	load	[r14+-188],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	2034,r13		! source line 2034
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,260,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1043:
! ASSIGNMENT STATEMENT...
	mov	2037,r13		! source line 2037
	mov	"\0\0AS",r10
	mov	2037,r13		! source line 2037
	mov	"\0\0SE",r10
!   _temp_1047 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-184]
!   Prepare Argument: offset=12  value=1  sizeInBytes=1
	mov	1,r1
	storeb	r1,[r15+4]
!   Send message GetAnOpenFile
	load	[r14+-184],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
!   Retrieve Result: targetName=rPipe  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-224]
! ASSIGNMENT STATEMENT...
	mov	2038,r13		! source line 2038
	mov	"\0\0AS",r10
!   if intIsZero (rPipe) then goto _runtimeErrorNullPointer
	load	[r14+-224],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1048 = rPipe + 12
	load	[r14+-224],r1
	add	r1,12,r1
	store	r1,[r14+-180]
!   Data Move: *_temp_1048 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-180],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2039,r13		! source line 2039
	mov	"\0\0AS",r10
!   if intIsZero (rPipe) then goto _runtimeErrorNullPointer
	load	[r14+-224],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1049 = rPipe + 32
	load	[r14+-224],r1
	add	r1,32,r1
	store	r1,[r14+-176]
!   Data Move: *_temp_1049 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-176],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2040,r13		! source line 2040
	mov	"\0\0AS",r10
!   if intIsZero (rPipe) then goto _runtimeErrorNullPointer
	load	[r14+-224],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1050 = rPipe + 36
	load	[r14+-224],r1
	add	r1,36,r1
	store	r1,[r14+-172]
!   Data Move: *_temp_1050 = newPipe  (sizeInBytes=4)
	load	[r14+-232],r1
	load	[r14+-172],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2042,r13		! source line 2042
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1052 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-164]
!   Data Move: _temp_1051 = *_temp_1052  (sizeInBytes=4)
	load	[r14+-164],r1
	load	[r1],r1
	store	r1,[r14+-168]
!   if intIsZero (_temp_1051) then goto _runtimeErrorNullPointer
	load	[r14+-168],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1053 = _temp_1051 + 244
	load	[r14+-168],r1
	add	r1,244,r1
	store	r1,[r14+-160]
!   Move address of _temp_1053 [rFd ] into _temp_1054
!     make sure index expr is >= 0
	load	[r14+-240],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-160],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-156]
	mov	2042,r13		! source line 2042
	mov	"\0\0SE",r10
!   if intIsZero (rPipe) then goto _runtimeErrorNullPointer
	load	[r14+-224],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message NewReference
	load	[r14+-224],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_1055  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-152]
!   Data Move: *_temp_1054 = _temp_1055  (sizeInBytes=4)
	load	[r14+-152],r1
	load	[r14+-156],r2
	store	r1,[r2]
! WHILE STATEMENT...
	mov	2044,r13		! source line 2044
	mov	"\0\0WH",r10
_Label_1056:
!   if wFd >= 10 then goto _Label_1058		(int)
	load	[r14+-244],r1
	mov	10,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1058
!	_Label_1059	jmp	_Label_1059
_Label_1059:
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1062 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-140]
!   Data Move: _temp_1061 = *_temp_1062  (sizeInBytes=4)
	load	[r14+-140],r1
	load	[r1],r1
	store	r1,[r14+-144]
!   if intIsZero (_temp_1061) then goto _runtimeErrorNullPointer
	load	[r14+-144],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1063 = _temp_1061 + 244
	load	[r14+-144],r1
	add	r1,244,r1
	store	r1,[r14+-136]
!   Move address of _temp_1063 [wFd ] into _temp_1064
!     make sure index expr is >= 0
	load	[r14+-244],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-136],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-132]
!   Data Move: _temp_1060 = *_temp_1064  (sizeInBytes=4)
	load	[r14+-132],r1
	load	[r1],r1
	store	r1,[r14+-148]
!   if intIsZero (_temp_1060) then goto _Label_1058
	load	[r14+-148],r1
	cmp	r1,r0
	be	_Label_1058
!	_Label_1057	jmp	_Label_1057
_Label_1057:
	mov	2044,r13		! source line 2044
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	2045,r13		! source line 2045
	mov	"\0\0AS",r10
!   wFd = wFd + 1		(int)
	load	[r14+-244],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-244]
! END WHILE...
	jmp	_Label_1056
_Label_1058:
! IF STATEMENT...
	mov	2048,r13		! source line 2048
	mov	"\0\0IF",r10
!   if wFd != 10 then goto _Label_1066		(int)
	load	[r14+-244],r1
	mov	10,r2
	cmp	r1,r2
	bne	_Label_1066
!	_Label_1065	jmp	_Label_1065
_Label_1065:
! THEN...
	mov	2049,r13		! source line 2049
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2049,r13		! source line 2049
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1068 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-124]
!   Data Move: _temp_1067 = *_temp_1068  (sizeInBytes=4)
	load	[r14+-124],r1
	load	[r1],r1
	store	r1,[r14+-128]
!   if intIsZero (_temp_1067) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1069 = _temp_1067 + 236
	load	[r14+-128],r1
	add	r1,236,r1
	store	r1,[r14+-120]
!   Data Move: *_temp_1069 = 4  (sizeInBytes=4)
	mov	4,r1
	load	[r14+-120],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	2050,r13		! source line 2050
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,260,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1066:
! ASSIGNMENT STATEMENT...
	mov	2053,r13		! source line 2053
	mov	"\0\0AS",r10
	mov	2053,r13		! source line 2053
	mov	"\0\0SE",r10
!   _temp_1070 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-116]
!   Prepare Argument: offset=12  value=1  sizeInBytes=1
	mov	1,r1
	storeb	r1,[r15+4]
!   Send message GetAnOpenFile
	load	[r14+-116],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
!   Retrieve Result: targetName=wPipe  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-228]
! ASSIGNMENT STATEMENT...
	mov	2054,r13		! source line 2054
	mov	"\0\0AS",r10
!   if intIsZero (wPipe) then goto _runtimeErrorNullPointer
	load	[r14+-228],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1071 = wPipe + 12
	load	[r14+-228],r1
	add	r1,12,r1
	store	r1,[r14+-112]
!   Data Move: *_temp_1071 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-112],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2055,r13		! source line 2055
	mov	"\0\0AS",r10
!   if intIsZero (wPipe) then goto _runtimeErrorNullPointer
	load	[r14+-228],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1072 = wPipe + 32
	load	[r14+-228],r1
	add	r1,32,r1
	store	r1,[r14+-108]
!   Data Move: *_temp_1072 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-108],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2056,r13		! source line 2056
	mov	"\0\0AS",r10
!   if intIsZero (wPipe) then goto _runtimeErrorNullPointer
	load	[r14+-228],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1073 = wPipe + 36
	load	[r14+-228],r1
	add	r1,36,r1
	store	r1,[r14+-104]
!   Data Move: *_temp_1073 = newPipe  (sizeInBytes=4)
	load	[r14+-232],r1
	load	[r14+-104],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2058,r13		! source line 2058
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1075 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-96]
!   Data Move: _temp_1074 = *_temp_1075  (sizeInBytes=4)
	load	[r14+-96],r1
	load	[r1],r1
	store	r1,[r14+-100]
!   if intIsZero (_temp_1074) then goto _runtimeErrorNullPointer
	load	[r14+-100],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1076 = _temp_1074 + 244
	load	[r14+-100],r1
	add	r1,244,r1
	store	r1,[r14+-92]
!   Move address of _temp_1076 [wFd ] into _temp_1077
!     make sure index expr is >= 0
	load	[r14+-244],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-92],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-88]
	mov	2058,r13		! source line 2058
	mov	"\0\0SE",r10
!   if intIsZero (wPipe) then goto _runtimeErrorNullPointer
	load	[r14+-228],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message NewReference
	load	[r14+-228],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_1078  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-84]
!   Data Move: *_temp_1077 = _temp_1078  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r14+-88],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2060,r13		! source line 2060
	mov	"\0\0AS",r10
	mov	2060,r13		! source line 2060
	mov	"\0\0SE",r10
!   _temp_1079 = fds		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-80]
!   _temp_1080 = &len
	add	r14,-248,r1
	store	r1,[r14+-76]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1082 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-68]
!   Data Move: _temp_1081 = *_temp_1082  (sizeInBytes=4)
	load	[r14+-68],r1
	load	[r1],r1
	store	r1,[r14+-72]
!   if intIsZero (_temp_1081) then goto _runtimeErrorNullPointer
	load	[r14+-72],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1083 = _temp_1081 + 32
	load	[r14+-72],r1
	add	r1,32,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=12  value=_temp_1079  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_1080  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=4  sizeInBytes=4
	mov	4,r1
	store	r1,[r15+12]
!   Send message CopyBytesToVirtual
	load	[r14+-64],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,80,r2
	call	r2
!   Retrieve Result: targetName=ret  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-236]
! IF STATEMENT...
	mov	2061,r13		! source line 2061
	mov	"\0\0IF",r10
!   if ret >= 0 then goto _Label_1085		(int)
	load	[r14+-236],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1085
!	_Label_1084	jmp	_Label_1084
_Label_1084:
! THEN...
	mov	2062,r13		! source line 2062
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2062,r13		! source line 2062
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,260,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1085:
! ASSIGNMENT STATEMENT...
	mov	2065,r13		! source line 2065
	mov	"\0\0AS",r10
	mov	2065,r13		! source line 2065
	mov	"\0\0SE",r10
!   _temp_1087 = fds		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-56]
!   _temp_1086 = _temp_1087 + 4		(int)
	load	[r14+-56],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-60]
!   _temp_1088 = &rFd
	add	r14,-240,r1
	store	r1,[r14+-52]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1090 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-44]
!   Data Move: _temp_1089 = *_temp_1090  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r1],r1
	store	r1,[r14+-48]
!   if intIsZero (_temp_1089) then goto _runtimeErrorNullPointer
	load	[r14+-48],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1091 = _temp_1089 + 32
	load	[r14+-48],r1
	add	r1,32,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=_temp_1086  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_1088  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=4  sizeInBytes=4
	mov	4,r1
	store	r1,[r15+12]
!   Send message CopyBytesToVirtual
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,80,r2
	call	r2
!   Retrieve Result: targetName=ret  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-236]
! IF STATEMENT...
	mov	2066,r13		! source line 2066
	mov	"\0\0IF",r10
!   if ret >= 0 then goto _Label_1093		(int)
	load	[r14+-236],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1093
!	_Label_1092	jmp	_Label_1092
_Label_1092:
! THEN...
	mov	2067,r13		! source line 2067
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2067,r13		! source line 2067
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,260,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1093:
! ASSIGNMENT STATEMENT...
	mov	2070,r13		! source line 2070
	mov	"\0\0AS",r10
	mov	2070,r13		! source line 2070
	mov	"\0\0SE",r10
!   _temp_1095 = fds		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-32]
!   _temp_1094 = _temp_1095 + 8		(int)
	load	[r14+-32],r1
	mov	8,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
!   _temp_1096 = &wFd
	add	r14,-244,r1
	store	r1,[r14+-28]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1098 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-20]
!   Data Move: _temp_1097 = *_temp_1098  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_1097) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1099 = _temp_1097 + 32
	load	[r14+-24],r1
	add	r1,32,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_1094  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_1096  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=4  sizeInBytes=4
	mov	4,r1
	store	r1,[r15+12]
!   Send message CopyBytesToVirtual
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,80,r2
	call	r2
!   Retrieve Result: targetName=ret  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-236]
! IF STATEMENT...
	mov	2071,r13		! source line 2071
	mov	"\0\0IF",r10
!   if ret >= 0 then goto _Label_1101		(int)
	load	[r14+-236],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1101
!	_Label_1100	jmp	_Label_1100
_Label_1100:
! THEN...
	mov	2072,r13		! source line 2072
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2072,r13		! source line 2072
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,260,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1101:
! RETURN STATEMENT...
	mov	2076,r13		! source line 2076
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,260,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_236_Handle_Sys_Pipe:
	.word	_sourceFileName
	.word	_Label_1102
	.word	4		! total size of parameters
	.word	256		! frame size = 256
	.word	_Label_1103
	.word	8
	.word	4
	.word	_Label_1104
	.word	-16
	.word	4
	.word	_Label_1105
	.word	-20
	.word	4
	.word	_Label_1106
	.word	-24
	.word	4
	.word	_Label_1107
	.word	-28
	.word	4
	.word	_Label_1108
	.word	-32
	.word	4
	.word	_Label_1109
	.word	-36
	.word	4
	.word	_Label_1110
	.word	-40
	.word	4
	.word	_Label_1111
	.word	-44
	.word	4
	.word	_Label_1112
	.word	-48
	.word	4
	.word	_Label_1113
	.word	-52
	.word	4
	.word	_Label_1114
	.word	-56
	.word	4
	.word	_Label_1115
	.word	-60
	.word	4
	.word	_Label_1116
	.word	-64
	.word	4
	.word	_Label_1117
	.word	-68
	.word	4
	.word	_Label_1118
	.word	-72
	.word	4
	.word	_Label_1119
	.word	-76
	.word	4
	.word	_Label_1120
	.word	-80
	.word	4
	.word	_Label_1121
	.word	-84
	.word	4
	.word	_Label_1122
	.word	-88
	.word	4
	.word	_Label_1123
	.word	-92
	.word	4
	.word	_Label_1124
	.word	-96
	.word	4
	.word	_Label_1125
	.word	-100
	.word	4
	.word	_Label_1126
	.word	-104
	.word	4
	.word	_Label_1127
	.word	-108
	.word	4
	.word	_Label_1128
	.word	-112
	.word	4
	.word	_Label_1129
	.word	-116
	.word	4
	.word	_Label_1130
	.word	-120
	.word	4
	.word	_Label_1131
	.word	-124
	.word	4
	.word	_Label_1132
	.word	-128
	.word	4
	.word	_Label_1133
	.word	-132
	.word	4
	.word	_Label_1134
	.word	-136
	.word	4
	.word	_Label_1135
	.word	-140
	.word	4
	.word	_Label_1136
	.word	-144
	.word	4
	.word	_Label_1137
	.word	-148
	.word	4
	.word	_Label_1138
	.word	-152
	.word	4
	.word	_Label_1139
	.word	-156
	.word	4
	.word	_Label_1140
	.word	-160
	.word	4
	.word	_Label_1141
	.word	-164
	.word	4
	.word	_Label_1142
	.word	-168
	.word	4
	.word	_Label_1143
	.word	-172
	.word	4
	.word	_Label_1144
	.word	-176
	.word	4
	.word	_Label_1145
	.word	-180
	.word	4
	.word	_Label_1146
	.word	-184
	.word	4
	.word	_Label_1147
	.word	-188
	.word	4
	.word	_Label_1148
	.word	-192
	.word	4
	.word	_Label_1149
	.word	-196
	.word	4
	.word	_Label_1150
	.word	-200
	.word	4
	.word	_Label_1151
	.word	-204
	.word	4
	.word	_Label_1152
	.word	-208
	.word	4
	.word	_Label_1153
	.word	-212
	.word	4
	.word	_Label_1154
	.word	-216
	.word	4
	.word	_Label_1155
	.word	-9
	.word	1
	.word	_Label_1156
	.word	-220
	.word	4
	.word	_Label_1157
	.word	-224
	.word	4
	.word	_Label_1158
	.word	-228
	.word	4
	.word	_Label_1159
	.word	-232
	.word	4
	.word	_Label_1160
	.word	-236
	.word	4
	.word	_Label_1161
	.word	-240
	.word	4
	.word	_Label_1162
	.word	-244
	.word	4
	.word	_Label_1163
	.word	-248
	.word	4
	.word	0
_Label_1102:
	.ascii	"Handle_Sys_Pipe\0"
	.align
_Label_1103:
	.byte	'P'
	.ascii	"fds\0"
	.align
_Label_1104:
	.byte	'?'
	.ascii	"_temp_1099\0"
	.align
_Label_1105:
	.byte	'?'
	.ascii	"_temp_1098\0"
	.align
_Label_1106:
	.byte	'?'
	.ascii	"_temp_1097\0"
	.align
_Label_1107:
	.byte	'?'
	.ascii	"_temp_1096\0"
	.align
_Label_1108:
	.byte	'?'
	.ascii	"_temp_1095\0"
	.align
_Label_1109:
	.byte	'?'
	.ascii	"_temp_1094\0"
	.align
_Label_1110:
	.byte	'?'
	.ascii	"_temp_1091\0"
	.align
_Label_1111:
	.byte	'?'
	.ascii	"_temp_1090\0"
	.align
_Label_1112:
	.byte	'?'
	.ascii	"_temp_1089\0"
	.align
_Label_1113:
	.byte	'?'
	.ascii	"_temp_1088\0"
	.align
_Label_1114:
	.byte	'?'
	.ascii	"_temp_1087\0"
	.align
_Label_1115:
	.byte	'?'
	.ascii	"_temp_1086\0"
	.align
_Label_1116:
	.byte	'?'
	.ascii	"_temp_1083\0"
	.align
_Label_1117:
	.byte	'?'
	.ascii	"_temp_1082\0"
	.align
_Label_1118:
	.byte	'?'
	.ascii	"_temp_1081\0"
	.align
_Label_1119:
	.byte	'?'
	.ascii	"_temp_1080\0"
	.align
_Label_1120:
	.byte	'?'
	.ascii	"_temp_1079\0"
	.align
_Label_1121:
	.byte	'?'
	.ascii	"_temp_1078\0"
	.align
_Label_1122:
	.byte	'?'
	.ascii	"_temp_1077\0"
	.align
_Label_1123:
	.byte	'?'
	.ascii	"_temp_1076\0"
	.align
_Label_1124:
	.byte	'?'
	.ascii	"_temp_1075\0"
	.align
_Label_1125:
	.byte	'?'
	.ascii	"_temp_1074\0"
	.align
_Label_1126:
	.byte	'?'
	.ascii	"_temp_1073\0"
	.align
_Label_1127:
	.byte	'?'
	.ascii	"_temp_1072\0"
	.align
_Label_1128:
	.byte	'?'
	.ascii	"_temp_1071\0"
	.align
_Label_1129:
	.byte	'?'
	.ascii	"_temp_1070\0"
	.align
_Label_1130:
	.byte	'?'
	.ascii	"_temp_1069\0"
	.align
_Label_1131:
	.byte	'?'
	.ascii	"_temp_1068\0"
	.align
_Label_1132:
	.byte	'?'
	.ascii	"_temp_1067\0"
	.align
_Label_1133:
	.byte	'?'
	.ascii	"_temp_1064\0"
	.align
_Label_1134:
	.byte	'?'
	.ascii	"_temp_1063\0"
	.align
_Label_1135:
	.byte	'?'
	.ascii	"_temp_1062\0"
	.align
_Label_1136:
	.byte	'?'
	.ascii	"_temp_1061\0"
	.align
_Label_1137:
	.byte	'?'
	.ascii	"_temp_1060\0"
	.align
_Label_1138:
	.byte	'?'
	.ascii	"_temp_1055\0"
	.align
_Label_1139:
	.byte	'?'
	.ascii	"_temp_1054\0"
	.align
_Label_1140:
	.byte	'?'
	.ascii	"_temp_1053\0"
	.align
_Label_1141:
	.byte	'?'
	.ascii	"_temp_1052\0"
	.align
_Label_1142:
	.byte	'?'
	.ascii	"_temp_1051\0"
	.align
_Label_1143:
	.byte	'?'
	.ascii	"_temp_1050\0"
	.align
_Label_1144:
	.byte	'?'
	.ascii	"_temp_1049\0"
	.align
_Label_1145:
	.byte	'?'
	.ascii	"_temp_1048\0"
	.align
_Label_1146:
	.byte	'?'
	.ascii	"_temp_1047\0"
	.align
_Label_1147:
	.byte	'?'
	.ascii	"_temp_1046\0"
	.align
_Label_1148:
	.byte	'?'
	.ascii	"_temp_1045\0"
	.align
_Label_1149:
	.byte	'?'
	.ascii	"_temp_1044\0"
	.align
_Label_1150:
	.byte	'?'
	.ascii	"_temp_1041\0"
	.align
_Label_1151:
	.byte	'?'
	.ascii	"_temp_1040\0"
	.align
_Label_1152:
	.byte	'?'
	.ascii	"_temp_1039\0"
	.align
_Label_1153:
	.byte	'?'
	.ascii	"_temp_1038\0"
	.align
_Label_1154:
	.byte	'?'
	.ascii	"_temp_1037\0"
	.align
_Label_1155:
	.byte	'C'
	.ascii	"_temp_1032\0"
	.align
_Label_1156:
	.byte	'?'
	.ascii	"_temp_1029\0"
	.align
_Label_1157:
	.byte	'P'
	.ascii	"rPipe\0"
	.align
_Label_1158:
	.byte	'P'
	.ascii	"wPipe\0"
	.align
_Label_1159:
	.byte	'P'
	.ascii	"newPipe\0"
	.align
_Label_1160:
	.byte	'I'
	.ascii	"ret\0"
	.align
_Label_1161:
	.byte	'I'
	.ascii	"rFd\0"
	.align
_Label_1162:
	.byte	'I'
	.ascii	"wFd\0"
	.align
_Label_1163:
	.byte	'I'
	.ascii	"len\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Fork  ===============
! 
_P_Kernel_Handle_Sys_Fork:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Fork,r1
	push	r1
	mov	77,r1
_Label_7784:
	push	r0
	sub	r1,1,r1
	bne	_Label_7784
	mov	2081,r13		! source line 2081
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2088,r13		! source line 2088
	mov	"\0\0AS",r10
	mov	2088,r13		! source line 2088
	mov	"\0\0SE",r10
!   _temp_1164 = &_P_Kernel_threadManager
	set	_P_Kernel_threadManager,r1
	store	r1,[r14+-272]
!   Send message GetANewThread
	load	[r14+-272],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=chThread  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-276]
! SEND STATEMENT...
	mov	2089,r13		! source line 2089
	mov	"\0\0SE",r10
!   _temp_1165 = _StringConst_41
	set	_StringConst_41,r1
	store	r1,[r14+-268]
!   if intIsZero (chThread) then goto _runtimeErrorNullPointer
	load	[r14+-276],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_1165  sizeInBytes=4
	load	[r14+-268],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-276],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2090,r13		! source line 2090
	mov	"\0\0AS",r10
	mov	2090,r13		! source line 2090
	mov	"\0\0SE",r10
!   _temp_1166 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-264]
!   Send message GetANewProcess
	load	[r14+-264],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=chPcb  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-280]
! ASSIGNMENT STATEMENT...
	mov	2093,r13		! source line 2093
	mov	"\0\0AS",r10
!   if intIsZero (chPcb) then goto _runtimeErrorNullPointer
	load	[r14+-280],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1167 = chPcb + 24
	load	[r14+-280],r1
	add	r1,24,r1
	store	r1,[r14+-260]
!   Data Move: *_temp_1167 = chThread  (sizeInBytes=4)
	load	[r14+-276],r1
	load	[r14+-260],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2094,r13		! source line 2094
	mov	"\0\0AS",r10
!   if intIsZero (chThread) then goto _runtimeErrorNullPointer
	load	[r14+-276],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1168 = chThread + 4160
	load	[r14+-276],r1
	add	r1,4160,r1
	store	r1,[r14+-256]
!   Data Move: *_temp_1168 = chPcb  (sizeInBytes=4)
	load	[r14+-280],r1
	load	[r14+-256],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2095,r13		! source line 2095
	mov	"\0\0AS",r10
!   if intIsZero (chPcb) then goto _runtimeErrorNullPointer
	load	[r14+-280],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1169 = chPcb + 16
	load	[r14+-280],r1
	add	r1,16,r1
	store	r1,[r14+-252]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1172 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-240]
!   Data Move: _temp_1171 = *_temp_1172  (sizeInBytes=4)
	load	[r14+-240],r1
	load	[r1],r1
	store	r1,[r14+-244]
!   if intIsZero (_temp_1171) then goto _runtimeErrorNullPointer
	load	[r14+-244],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1173 = _temp_1171 + 12
	load	[r14+-244],r1
	add	r1,12,r1
	store	r1,[r14+-236]
!   Data Move: _temp_1170 = *_temp_1173  (sizeInBytes=4)
	load	[r14+-236],r1
	load	[r1],r1
	store	r1,[r14+-248]
!   Data Move: *_temp_1169 = _temp_1170  (sizeInBytes=4)
	load	[r14+-248],r1
	load	[r14+-252],r2
	store	r1,[r2]
! CALL STATEMENT...
!   if intIsZero (chThread) then goto _runtimeErrorNullPointer
	load	[r14+-276],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1175 = chThread + 4096
	load	[r14+-276],r1
	add	r1,4096,r1
	store	r1,[r14+-228]
!   Move address of _temp_1175 [0 ] into _temp_1176
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-228],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-224]
!   _temp_1174 = _temp_1176		(4 bytes)
	load	[r14+-224],r1
	store	r1,[r14+-232]
!   Prepare Argument: offset=8  value=_temp_1174  sizeInBytes=4
	load	[r14+-232],r1
	store	r1,[r15+0]
!   Call the function
	mov	2098,r13		! source line 2098
	mov	"\0\0CE",r10
	call	SaveUserRegs
! ASSIGNMENT STATEMENT...
	mov	2100,r13		! source line 2100
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+0]
!   Call the function
	mov	2100,r13		! source line 2100
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=garbage  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-284]
! ASSIGNMENT STATEMENT...
	mov	2102,r13		! source line 2102
	mov	"\0\0AS",r10
!   if intIsZero (chThread) then goto _runtimeErrorNullPointer
	load	[r14+-276],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1177 = chThread + 68
	load	[r14+-276],r1
	add	r1,68,r1
	store	r1,[r14+-220]
!   if intIsZero (chThread) then goto _runtimeErrorNullPointer
	load	[r14+-276],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1179 = chThread + 88
	load	[r14+-276],r1
	add	r1,88,r1
	store	r1,[r14+-212]
!   Move address of _temp_1179 [999 ] into _temp_1180
!     make sure index expr is >= 0
	mov	999,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-212],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-208]
!   _temp_1178 = _temp_1180		(4 bytes)
	load	[r14+-208],r1
	store	r1,[r14+-216]
!   Data Move: *_temp_1177 = _temp_1178  (sizeInBytes=4)
	load	[r14+-216],r1
	load	[r14+-220],r2
	store	r1,[r2]
! FOR STATEMENT...
	mov	2105,r13		! source line 2105
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1185 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-204]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1186 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-200]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1185  (sizeInBytes=4)
	load	[r14+-204],r1
	store	r1,[r14+-300]
_Label_1181:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1186 then goto _Label_1184		
	load	[r14+-300],r1
	load	[r14+-200],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1184
_Label_1182:
	mov	2105,r13		! source line 2105
	mov	"\0\0FB",r10
! IF STATEMENT...
	mov	2106,r13		! source line 2106
	mov	"\0\0IF",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1191 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-188]
!   Data Move: _temp_1190 = *_temp_1191  (sizeInBytes=4)
	load	[r14+-188],r1
	load	[r1],r1
	store	r1,[r14+-192]
!   if intIsZero (_temp_1190) then goto _runtimeErrorNullPointer
	load	[r14+-192],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1192 = _temp_1190 + 244
	load	[r14+-192],r1
	add	r1,244,r1
	store	r1,[r14+-184]
!   Move address of _temp_1192 [i ] into _temp_1193
!     make sure index expr is >= 0
	load	[r14+-300],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-184],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-180]
!   Data Move: _temp_1189 = *_temp_1193  (sizeInBytes=4)
	load	[r14+-180],r1
	load	[r1],r1
	store	r1,[r14+-196]
!   if intIsZero (_temp_1189) then goto _Label_1188
	load	[r14+-196],r1
	cmp	r1,r0
	be	_Label_1188
!	_Label_1187	jmp	_Label_1187
_Label_1187:
! THEN...
	mov	2107,r13		! source line 2107
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2107,r13		! source line 2107
	mov	"\0\0AS",r10
!   if intIsZero (chPcb) then goto _runtimeErrorNullPointer
	load	[r14+-280],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1194 = chPcb + 244
	load	[r14+-280],r1
	add	r1,244,r1
	store	r1,[r14+-176]
!   Move address of _temp_1194 [i ] into _temp_1195
!     make sure index expr is >= 0
	load	[r14+-300],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-176],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-172]
	mov	2107,r13		! source line 2107
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1199 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-156]
!   Data Move: _temp_1198 = *_temp_1199  (sizeInBytes=4)
	load	[r14+-156],r1
	load	[r1],r1
	store	r1,[r14+-160]
!   if intIsZero (_temp_1198) then goto _runtimeErrorNullPointer
	load	[r14+-160],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1200 = _temp_1198 + 244
	load	[r14+-160],r1
	add	r1,244,r1
	store	r1,[r14+-152]
!   Move address of _temp_1200 [i ] into _temp_1201
!     make sure index expr is >= 0
	load	[r14+-300],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-152],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-148]
!   Data Move: _temp_1197 = *_temp_1201  (sizeInBytes=4)
	load	[r14+-148],r1
	load	[r1],r1
	store	r1,[r14+-164]
!   if intIsZero (_temp_1197) then goto _runtimeErrorNullPointer
	load	[r14+-164],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message NewReference
	load	[r14+-164],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_1196  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-168]
!   Data Move: *_temp_1195 = _temp_1196  (sizeInBytes=4)
	load	[r14+-168],r1
	load	[r14+-172],r2
	store	r1,[r2]
! END IF...
_Label_1188:
!   Increment the FOR-LOOP index variable and jump back
_Label_1183:
!   i = i + 1
	load	[r14+-300],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-300]
	jmp	_Label_1181
! END FOR
_Label_1184:
! ASSIGNMENT STATEMENT...
	mov	2111,r13		! source line 2111
	mov	"\0\0AS",r10
!   if intIsZero (chPcb) then goto _runtimeErrorNullPointer
	load	[r14+-280],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1202 = chPcb + 240
	load	[r14+-280],r1
	add	r1,240,r1
	store	r1,[r14+-144]
	mov	2111,r13		! source line 2111
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1206 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-128]
!   Data Move: _temp_1205 = *_temp_1206  (sizeInBytes=4)
	load	[r14+-128],r1
	load	[r1],r1
	store	r1,[r14+-132]
!   if intIsZero (_temp_1205) then goto _runtimeErrorNullPointer
	load	[r14+-132],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1207 = _temp_1205 + 240
	load	[r14+-132],r1
	add	r1,240,r1
	store	r1,[r14+-124]
!   Data Move: _temp_1204 = *_temp_1207  (sizeInBytes=4)
	load	[r14+-124],r1
	load	[r1],r1
	store	r1,[r14+-136]
!   if intIsZero (_temp_1204) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message NewReference
	load	[r14+-136],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_1203  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-140]
!   Data Move: *_temp_1202 = _temp_1203  (sizeInBytes=4)
	load	[r14+-140],r1
	load	[r14+-144],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2113,r13		! source line 2113
	mov	"\0\0SE",r10
!   if intIsZero (chPcb) then goto _runtimeErrorNullPointer
	load	[r14+-280],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1209 = chPcb + 32
	load	[r14+-280],r1
	add	r1,32,r1
	store	r1,[r14+-116]
!   _temp_1208 = _temp_1209		(4 bytes)
	load	[r14+-116],r1
	store	r1,[r14+-120]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1212 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-104]
!   Data Move: _temp_1211 = *_temp_1212  (sizeInBytes=4)
	load	[r14+-104],r1
	load	[r1],r1
	store	r1,[r14+-108]
!   if intIsZero (_temp_1211) then goto _runtimeErrorNullPointer
	load	[r14+-108],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1213 = _temp_1211 + 32
	load	[r14+-108],r1
	add	r1,32,r1
	store	r1,[r14+-100]
!   _temp_1214 = _temp_1213 + 4
	load	[r14+-100],r1
	add	r1,4,r1
	store	r1,[r14+-96]
!   Data Move: _temp_1210 = *_temp_1214  (sizeInBytes=4)
	load	[r14+-96],r1
	load	[r1],r1
	store	r1,[r14+-112]
!   _temp_1215 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=12  value=_temp_1208  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_1210  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+8]
!   Send message GetNewFrames
	load	[r14+-92],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2114,r13		! source line 2114
	mov	"\0\0AS",r10
!   count = 8192		(4 bytes)
	mov	8192,r1
	store	r1,[r14+-296]
! FOR STATEMENT...
	mov	2116,r13		! source line 2116
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1220 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-88]
!   Calculate and save the FOR-LOOP ending value
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1224 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-72]
!   Data Move: _temp_1223 = *_temp_1224  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r1],r1
	store	r1,[r14+-76]
!   if intIsZero (_temp_1223) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1225 = _temp_1223 + 32
	load	[r14+-76],r1
	add	r1,32,r1
	store	r1,[r14+-68]
!   _temp_1226 = _temp_1225 + 4
	load	[r14+-68],r1
	add	r1,4,r1
	store	r1,[r14+-64]
!   Data Move: _temp_1222 = *_temp_1226  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-80]
!   _temp_1221 = _temp_1222 - 1		(int)
	load	[r14+-80],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-84]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1220  (sizeInBytes=4)
	load	[r14+-88],r1
	store	r1,[r14+-300]
_Label_1216:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1221 then goto _Label_1219		
	load	[r14+-300],r1
	load	[r14+-84],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1219
_Label_1217:
	mov	2116,r13		! source line 2116
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2117,r13		! source line 2117
	mov	"\0\0AS",r10
	mov	2117,r13		! source line 2117
	mov	"\0\0SE",r10
!   if intIsZero (chPcb) then goto _runtimeErrorNullPointer
	load	[r14+-280],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1227 = chPcb + 32
	load	[r14+-280],r1
	add	r1,32,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-300],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+-60],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=destCpy  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-288]
! ASSIGNMENT STATEMENT...
	mov	2118,r13		! source line 2118
	mov	"\0\0AS",r10
	mov	2118,r13		! source line 2118
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1229 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-52]
!   Data Move: _temp_1228 = *_temp_1229  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   if intIsZero (_temp_1228) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1230 = _temp_1228 + 32
	load	[r14+-56],r1
	add	r1,32,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-300],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+-48],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=srcCpy  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-292]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=destCpy  sizeInBytes=4
	load	[r14+-288],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=srcCpy  sizeInBytes=4
	load	[r14+-292],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=count  sizeInBytes=4
	load	[r14+-296],r1
	store	r1,[r15+8]
!   Call the function
	mov	2119,r13		! source line 2119
	mov	"\0\0CE",r10
	call	MemoryCopy
! IF STATEMENT...
	mov	2120,r13		! source line 2120
	mov	"\0\0IF",r10
	mov	2120,r13		! source line 2120
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1235 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-40]
!   Data Move: _temp_1234 = *_temp_1235  (sizeInBytes=4)
	load	[r14+-40],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   if intIsZero (_temp_1234) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1236 = _temp_1234 + 32
	load	[r14+-44],r1
	add	r1,32,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-300],r1
	store	r1,[r15+4]
!   Send message IsWritable
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   Retrieve Result: targetName=_temp_1233  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   _temp_1237 = _temp_1233 XOR 1		(bool)
	loadb	[r14+-10],r1
	mov	1,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-9]
!   if _temp_1237 then goto _Label_1232 else goto _Label_1231
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1231
	jmp	_Label_1232
_Label_1231:
! THEN...
	mov	2121,r13		! source line 2121
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2121,r13		! source line 2121
	mov	"\0\0SE",r10
!   if intIsZero (chPcb) then goto _runtimeErrorNullPointer
	load	[r14+-280],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1238 = chPcb + 32
	load	[r14+-280],r1
	add	r1,32,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-300],r1
	store	r1,[r15+4]
!   Send message SetWritable
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,48,r2
	call	r2
	jmp	_Label_1239
_Label_1232:
! ELSE...
	mov	2123,r13		! source line 2123
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	2123,r13		! source line 2123
	mov	"\0\0SE",r10
!   if intIsZero (chPcb) then goto _runtimeErrorNullPointer
	load	[r14+-280],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1240 = chPcb + 32
	load	[r14+-280],r1
	add	r1,32,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-300],r1
	store	r1,[r15+4]
!   Send message ClearWritable
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,64,r2
	call	r2
! END IF...
_Label_1239:
!   Increment the FOR-LOOP index variable and jump back
_Label_1218:
!   i = i + 1
	load	[r14+-300],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-300]
	jmp	_Label_1216
! END FOR
_Label_1219:
! ASSIGNMENT STATEMENT...
	mov	2126,r13		! source line 2126
	mov	"\0\0AS",r10
!   Call the function
	mov	2126,r13		! source line 2126
	mov	"\0\0CE",r10
	call	GetOldUserPCFromSystemStack
!   Retrieve Result: targetName=oldUsrPC  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-304]
! SEND STATEMENT...
	mov	2128,r13		! source line 2128
	mov	"\0\0SE",r10
!   _temp_1241 = _function_235_ResumeChildAfterFork
	set	_function_235_ResumeChildAfterFork,r1
	store	r1,[r14+-24]
!   if intIsZero (chThread) then goto _runtimeErrorNullPointer
	load	[r14+-276],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_1241  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=oldUsrPC  sizeInBytes=4
	load	[r14+-304],r1
	store	r1,[r15+8]
!   Send message Fork
	load	[r14+-276],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! RETURN STATEMENT...
	mov	2130,r13		! source line 2130
	mov	"\0\0RE",r10
!   if intIsZero (chPcb) then goto _runtimeErrorNullPointer
	load	[r14+-280],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1243 = chPcb + 12
	load	[r14+-280],r1
	add	r1,12,r1
	store	r1,[r14+-16]
!   Data Move: _temp_1242 = *_temp_1243  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   ReturnResult: _temp_1242  (sizeInBytes=4)
	load	[r14+-20],r1
	store	r1,[r14+8]
	add	r15,312,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Fork:
	.word	_sourceFileName
	.word	_Label_1244
	.word	0		! total size of parameters
	.word	308		! frame size = 308
	.word	_Label_1245
	.word	-16
	.word	4
	.word	_Label_1246
	.word	-20
	.word	4
	.word	_Label_1247
	.word	-24
	.word	4
	.word	_Label_1248
	.word	-28
	.word	4
	.word	_Label_1249
	.word	-32
	.word	4
	.word	_Label_1250
	.word	-9
	.word	1
	.word	_Label_1251
	.word	-36
	.word	4
	.word	_Label_1252
	.word	-40
	.word	4
	.word	_Label_1253
	.word	-44
	.word	4
	.word	_Label_1254
	.word	-10
	.word	1
	.word	_Label_1255
	.word	-48
	.word	4
	.word	_Label_1256
	.word	-52
	.word	4
	.word	_Label_1257
	.word	-56
	.word	4
	.word	_Label_1258
	.word	-60
	.word	4
	.word	_Label_1259
	.word	-64
	.word	4
	.word	_Label_1260
	.word	-68
	.word	4
	.word	_Label_1261
	.word	-72
	.word	4
	.word	_Label_1262
	.word	-76
	.word	4
	.word	_Label_1263
	.word	-80
	.word	4
	.word	_Label_1264
	.word	-84
	.word	4
	.word	_Label_1265
	.word	-88
	.word	4
	.word	_Label_1266
	.word	-92
	.word	4
	.word	_Label_1267
	.word	-96
	.word	4
	.word	_Label_1268
	.word	-100
	.word	4
	.word	_Label_1269
	.word	-104
	.word	4
	.word	_Label_1270
	.word	-108
	.word	4
	.word	_Label_1271
	.word	-112
	.word	4
	.word	_Label_1272
	.word	-116
	.word	4
	.word	_Label_1273
	.word	-120
	.word	4
	.word	_Label_1274
	.word	-124
	.word	4
	.word	_Label_1275
	.word	-128
	.word	4
	.word	_Label_1276
	.word	-132
	.word	4
	.word	_Label_1277
	.word	-136
	.word	4
	.word	_Label_1278
	.word	-140
	.word	4
	.word	_Label_1279
	.word	-144
	.word	4
	.word	_Label_1280
	.word	-148
	.word	4
	.word	_Label_1281
	.word	-152
	.word	4
	.word	_Label_1282
	.word	-156
	.word	4
	.word	_Label_1283
	.word	-160
	.word	4
	.word	_Label_1284
	.word	-164
	.word	4
	.word	_Label_1285
	.word	-168
	.word	4
	.word	_Label_1286
	.word	-172
	.word	4
	.word	_Label_1287
	.word	-176
	.word	4
	.word	_Label_1288
	.word	-180
	.word	4
	.word	_Label_1289
	.word	-184
	.word	4
	.word	_Label_1290
	.word	-188
	.word	4
	.word	_Label_1291
	.word	-192
	.word	4
	.word	_Label_1292
	.word	-196
	.word	4
	.word	_Label_1293
	.word	-200
	.word	4
	.word	_Label_1294
	.word	-204
	.word	4
	.word	_Label_1295
	.word	-208
	.word	4
	.word	_Label_1296
	.word	-212
	.word	4
	.word	_Label_1297
	.word	-216
	.word	4
	.word	_Label_1298
	.word	-220
	.word	4
	.word	_Label_1299
	.word	-224
	.word	4
	.word	_Label_1300
	.word	-228
	.word	4
	.word	_Label_1301
	.word	-232
	.word	4
	.word	_Label_1302
	.word	-236
	.word	4
	.word	_Label_1303
	.word	-240
	.word	4
	.word	_Label_1304
	.word	-244
	.word	4
	.word	_Label_1305
	.word	-248
	.word	4
	.word	_Label_1306
	.word	-252
	.word	4
	.word	_Label_1307
	.word	-256
	.word	4
	.word	_Label_1308
	.word	-260
	.word	4
	.word	_Label_1309
	.word	-264
	.word	4
	.word	_Label_1310
	.word	-268
	.word	4
	.word	_Label_1311
	.word	-272
	.word	4
	.word	_Label_1312
	.word	-276
	.word	4
	.word	_Label_1313
	.word	-280
	.word	4
	.word	_Label_1314
	.word	-284
	.word	4
	.word	_Label_1315
	.word	-288
	.word	4
	.word	_Label_1316
	.word	-292
	.word	4
	.word	_Label_1317
	.word	-296
	.word	4
	.word	_Label_1318
	.word	-300
	.word	4
	.word	_Label_1319
	.word	-304
	.word	4
	.word	0
_Label_1244:
	.ascii	"Handle_Sys_Fork\0"
	.align
_Label_1245:
	.byte	'?'
	.ascii	"_temp_1243\0"
	.align
_Label_1246:
	.byte	'?'
	.ascii	"_temp_1242\0"
	.align
_Label_1247:
	.byte	'?'
	.ascii	"_temp_1241\0"
	.align
_Label_1248:
	.byte	'?'
	.ascii	"_temp_1240\0"
	.align
_Label_1249:
	.byte	'?'
	.ascii	"_temp_1238\0"
	.align
_Label_1250:
	.byte	'C'
	.ascii	"_temp_1237\0"
	.align
_Label_1251:
	.byte	'?'
	.ascii	"_temp_1236\0"
	.align
_Label_1252:
	.byte	'?'
	.ascii	"_temp_1235\0"
	.align
_Label_1253:
	.byte	'?'
	.ascii	"_temp_1234\0"
	.align
_Label_1254:
	.byte	'C'
	.ascii	"_temp_1233\0"
	.align
_Label_1255:
	.byte	'?'
	.ascii	"_temp_1230\0"
	.align
_Label_1256:
	.byte	'?'
	.ascii	"_temp_1229\0"
	.align
_Label_1257:
	.byte	'?'
	.ascii	"_temp_1228\0"
	.align
_Label_1258:
	.byte	'?'
	.ascii	"_temp_1227\0"
	.align
_Label_1259:
	.byte	'?'
	.ascii	"_temp_1226\0"
	.align
_Label_1260:
	.byte	'?'
	.ascii	"_temp_1225\0"
	.align
_Label_1261:
	.byte	'?'
	.ascii	"_temp_1224\0"
	.align
_Label_1262:
	.byte	'?'
	.ascii	"_temp_1223\0"
	.align
_Label_1263:
	.byte	'?'
	.ascii	"_temp_1222\0"
	.align
_Label_1264:
	.byte	'?'
	.ascii	"_temp_1221\0"
	.align
_Label_1265:
	.byte	'?'
	.ascii	"_temp_1220\0"
	.align
_Label_1266:
	.byte	'?'
	.ascii	"_temp_1215\0"
	.align
_Label_1267:
	.byte	'?'
	.ascii	"_temp_1214\0"
	.align
_Label_1268:
	.byte	'?'
	.ascii	"_temp_1213\0"
	.align
_Label_1269:
	.byte	'?'
	.ascii	"_temp_1212\0"
	.align
_Label_1270:
	.byte	'?'
	.ascii	"_temp_1211\0"
	.align
_Label_1271:
	.byte	'?'
	.ascii	"_temp_1210\0"
	.align
_Label_1272:
	.byte	'?'
	.ascii	"_temp_1209\0"
	.align
_Label_1273:
	.byte	'?'
	.ascii	"_temp_1208\0"
	.align
_Label_1274:
	.byte	'?'
	.ascii	"_temp_1207\0"
	.align
_Label_1275:
	.byte	'?'
	.ascii	"_temp_1206\0"
	.align
_Label_1276:
	.byte	'?'
	.ascii	"_temp_1205\0"
	.align
_Label_1277:
	.byte	'?'
	.ascii	"_temp_1204\0"
	.align
_Label_1278:
	.byte	'?'
	.ascii	"_temp_1203\0"
	.align
_Label_1279:
	.byte	'?'
	.ascii	"_temp_1202\0"
	.align
_Label_1280:
	.byte	'?'
	.ascii	"_temp_1201\0"
	.align
_Label_1281:
	.byte	'?'
	.ascii	"_temp_1200\0"
	.align
_Label_1282:
	.byte	'?'
	.ascii	"_temp_1199\0"
	.align
_Label_1283:
	.byte	'?'
	.ascii	"_temp_1198\0"
	.align
_Label_1284:
	.byte	'?'
	.ascii	"_temp_1197\0"
	.align
_Label_1285:
	.byte	'?'
	.ascii	"_temp_1196\0"
	.align
_Label_1286:
	.byte	'?'
	.ascii	"_temp_1195\0"
	.align
_Label_1287:
	.byte	'?'
	.ascii	"_temp_1194\0"
	.align
_Label_1288:
	.byte	'?'
	.ascii	"_temp_1193\0"
	.align
_Label_1289:
	.byte	'?'
	.ascii	"_temp_1192\0"
	.align
_Label_1290:
	.byte	'?'
	.ascii	"_temp_1191\0"
	.align
_Label_1291:
	.byte	'?'
	.ascii	"_temp_1190\0"
	.align
_Label_1292:
	.byte	'?'
	.ascii	"_temp_1189\0"
	.align
_Label_1293:
	.byte	'?'
	.ascii	"_temp_1186\0"
	.align
_Label_1294:
	.byte	'?'
	.ascii	"_temp_1185\0"
	.align
_Label_1295:
	.byte	'?'
	.ascii	"_temp_1180\0"
	.align
_Label_1296:
	.byte	'?'
	.ascii	"_temp_1179\0"
	.align
_Label_1297:
	.byte	'?'
	.ascii	"_temp_1178\0"
	.align
_Label_1298:
	.byte	'?'
	.ascii	"_temp_1177\0"
	.align
_Label_1299:
	.byte	'?'
	.ascii	"_temp_1176\0"
	.align
_Label_1300:
	.byte	'?'
	.ascii	"_temp_1175\0"
	.align
_Label_1301:
	.byte	'?'
	.ascii	"_temp_1174\0"
	.align
_Label_1302:
	.byte	'?'
	.ascii	"_temp_1173\0"
	.align
_Label_1303:
	.byte	'?'
	.ascii	"_temp_1172\0"
	.align
_Label_1304:
	.byte	'?'
	.ascii	"_temp_1171\0"
	.align
_Label_1305:
	.byte	'?'
	.ascii	"_temp_1170\0"
	.align
_Label_1306:
	.byte	'?'
	.ascii	"_temp_1169\0"
	.align
_Label_1307:
	.byte	'?'
	.ascii	"_temp_1168\0"
	.align
_Label_1308:
	.byte	'?'
	.ascii	"_temp_1167\0"
	.align
_Label_1309:
	.byte	'?'
	.ascii	"_temp_1166\0"
	.align
_Label_1310:
	.byte	'?'
	.ascii	"_temp_1165\0"
	.align
_Label_1311:
	.byte	'?'
	.ascii	"_temp_1164\0"
	.align
_Label_1312:
	.byte	'P'
	.ascii	"chThread\0"
	.align
_Label_1313:
	.byte	'P'
	.ascii	"chPcb\0"
	.align
_Label_1314:
	.byte	'I'
	.ascii	"garbage\0"
	.align
_Label_1315:
	.byte	'I'
	.ascii	"destCpy\0"
	.align
_Label_1316:
	.byte	'I'
	.ascii	"srcCpy\0"
	.align
_Label_1317:
	.byte	'I'
	.ascii	"count\0"
	.align
_Label_1318:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1319:
	.byte	'I'
	.ascii	"oldUsrPC\0"
	.align
! 
! ===============  FUNCTION ResumeChildAfterFork  ===============
! 
_function_235_ResumeChildAfterFork:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_235_ResumeChildAfterFork,r1
	push	r1
	mov	18,r1
_Label_7785:
	push	r0
	sub	r1,1,r1
	bne	_Label_7785
	mov	2135,r13		! source line 2135
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2137,r13		! source line 2137
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	2137,r13		! source line 2137
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=garbage  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-56]
! SEND STATEMENT...
	mov	2139,r13		! source line 2139
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1321 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-48]
!   Data Move: _temp_1320 = *_temp_1321  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r1],r1
	store	r1,[r14+-52]
!   if intIsZero (_temp_1320) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1322 = _temp_1320 + 32
	load	[r14+-52],r1
	add	r1,32,r1
	store	r1,[r14+-44]
!   Send message SetToThisPageTable
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,72,r2
	call	r2
! CALL STATEMENT...
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1324 = _P_Kernel_currentThread + 4096
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4096,r1
	store	r1,[r14+-36]
!   Move address of _temp_1324 [0 ] into _temp_1325
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-36],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-32]
!   _temp_1323 = _temp_1325		(4 bytes)
	load	[r14+-32],r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_1323  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	2140,r13		! source line 2140
	mov	"\0\0CE",r10
	call	RestoreUserRegs
! ASSIGNMENT STATEMENT...
	mov	2141,r13		! source line 2141
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1326 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_1326 = 1  (sizeInBytes=1)
	mov	1,r1
	load	[r14+-28],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2142,r13		! source line 2142
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1327 = _P_Kernel_currentThread + 4096
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4096,r1
	store	r1,[r14+-24]
!   Move address of _temp_1327 [14 ] into _temp_1328
!     make sure index expr is >= 0
	mov	14,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-24],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-20]
!   Data Move: initUserStackTop = *_temp_1328  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-60]
! ASSIGNMENT STATEMENT...
	mov	2143,r13		! source line 2143
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1329 = _P_Kernel_currentThread + 88
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,88,r1
	store	r1,[r14+-16]
!   Move address of _temp_1329 [999 ] into _temp_1330
!     make sure index expr is >= 0
	mov	999,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   initSystemStackTop = _temp_1330		(4 bytes)
	load	[r14+-12],r1
	store	r1,[r14+-64]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=initUserStackTop  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=oldUsrPC  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=initSystemStackTop  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+12]
!   Call the function
	mov	2145,r13		! source line 2145
	mov	"\0\0CE",r10
	call	BecomeUserThread
! RETURN STATEMENT...
	mov	2145,r13		! source line 2145
	mov	"\0\0RE",r10
	add	r15,76,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_235_ResumeChildAfterFork:
	.word	_sourceFileName
	.word	_Label_1331
	.word	4		! total size of parameters
	.word	72		! frame size = 72
	.word	_Label_1332
	.word	8
	.word	4
	.word	_Label_1333
	.word	-12
	.word	4
	.word	_Label_1334
	.word	-16
	.word	4
	.word	_Label_1335
	.word	-20
	.word	4
	.word	_Label_1336
	.word	-24
	.word	4
	.word	_Label_1337
	.word	-28
	.word	4
	.word	_Label_1338
	.word	-32
	.word	4
	.word	_Label_1339
	.word	-36
	.word	4
	.word	_Label_1340
	.word	-40
	.word	4
	.word	_Label_1341
	.word	-44
	.word	4
	.word	_Label_1342
	.word	-48
	.word	4
	.word	_Label_1343
	.word	-52
	.word	4
	.word	_Label_1344
	.word	-56
	.word	4
	.word	_Label_1345
	.word	-60
	.word	4
	.word	_Label_1346
	.word	-64
	.word	4
	.word	0
_Label_1331:
	.ascii	"ResumeChildAfterFork\0"
	.align
_Label_1332:
	.byte	'I'
	.ascii	"oldUsrPC\0"
	.align
_Label_1333:
	.byte	'?'
	.ascii	"_temp_1330\0"
	.align
_Label_1334:
	.byte	'?'
	.ascii	"_temp_1329\0"
	.align
_Label_1335:
	.byte	'?'
	.ascii	"_temp_1328\0"
	.align
_Label_1336:
	.byte	'?'
	.ascii	"_temp_1327\0"
	.align
_Label_1337:
	.byte	'?'
	.ascii	"_temp_1326\0"
	.align
_Label_1338:
	.byte	'?'
	.ascii	"_temp_1325\0"
	.align
_Label_1339:
	.byte	'?'
	.ascii	"_temp_1324\0"
	.align
_Label_1340:
	.byte	'?'
	.ascii	"_temp_1323\0"
	.align
_Label_1341:
	.byte	'?'
	.ascii	"_temp_1322\0"
	.align
_Label_1342:
	.byte	'?'
	.ascii	"_temp_1321\0"
	.align
_Label_1343:
	.byte	'?'
	.ascii	"_temp_1320\0"
	.align
_Label_1344:
	.byte	'I'
	.ascii	"garbage\0"
	.align
_Label_1345:
	.byte	'I'
	.ascii	"initUserStackTop\0"
	.align
_Label_1346:
	.byte	'I'
	.ascii	"initSystemStackTop\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Join  ===============
! 
_P_Kernel_Handle_Sys_Join:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Join,r1
	push	r1
	mov	24,r1
_Label_7786:
	push	r0
	sub	r1,1,r1
	bne	_Label_7786
	mov	2150,r13		! source line 2150
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ret
!   ret = -1		(4 bytes)
	mov	-1,r1
	store	r1,[r14+-92]
! ASSIGNMENT STATEMENT...
	mov	2154,r13		! source line 2154
	mov	"\0\0AS",r10
	mov	2154,r13		! source line 2154
	mov	"\0\0SE",r10
!   _temp_1347 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=12  value=processID  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+4]
!   Send message FindProcess
	load	[r14+-88],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,24,r2
	call	r2
!   Retrieve Result: targetName=childProc  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-96]
! IF STATEMENT...
	mov	2155,r13		! source line 2155
	mov	"\0\0IF",r10
!   if intIsZero (childProc) then goto _Label_1349
	load	[r14+-96],r1
	cmp	r1,r0
	be	_Label_1349
!	_Label_1351	jmp	_Label_1351
_Label_1351:
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1354 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-76]
!   Data Move: _temp_1353 = *_temp_1354  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-80]
!   if intIsZero (_temp_1353) then goto _runtimeErrorNullPointer
	load	[r14+-80],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1355 = _temp_1353 + 12
	load	[r14+-80],r1
	add	r1,12,r1
	store	r1,[r14+-72]
!   Data Move: _temp_1352 = *_temp_1355  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r1],r1
	store	r1,[r14+-84]
!   if intIsZero (childProc) then goto _runtimeErrorNullPointer
	load	[r14+-96],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1357 = childProc + 16
	load	[r14+-96],r1
	add	r1,16,r1
	store	r1,[r14+-64]
!   Data Move: _temp_1356 = *_temp_1357  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   if _temp_1352 != _temp_1356 then goto _Label_1349		(int)
	load	[r14+-84],r1
	load	[r14+-68],r2
	cmp	r1,r2
	bne	_Label_1349
!	_Label_1350	jmp	_Label_1350
_Label_1350:
!   if intIsZero (childProc) then goto _runtimeErrorNullPointer
	load	[r14+-96],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1359 = childProc + 20
	load	[r14+-96],r1
	add	r1,20,r1
	store	r1,[r14+-56]
!   Data Move: _temp_1358 = *_temp_1359  (sizeInBytes=4)
	load	[r14+-56],r1
	load	[r1],r1
	store	r1,[r14+-60]
!   if _temp_1358 == 3 then goto _Label_1349		(int)
	load	[r14+-60],r1
	mov	3,r2
	cmp	r1,r2
	be	_Label_1349
!	_Label_1348	jmp	_Label_1348
_Label_1348:
! THEN...
	mov	2156,r13		! source line 2156
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2156,r13		! source line 2156
	mov	"\0\0AS",r10
	mov	2156,r13		! source line 2156
	mov	"\0\0SE",r10
!   _temp_1360 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=12  value=childProc  sizeInBytes=4
	load	[r14+-96],r1
	store	r1,[r15+4]
!   Send message WaitForZombie
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   Retrieve Result: targetName=ret  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-92]
	jmp	_Label_1361
_Label_1349:
! ELSE...
	mov	2158,r13		! source line 2158
	mov	"\0\0EL",r10
! ASSIGNMENT STATEMENT...
	mov	2158,r13		! source line 2158
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1363 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-44]
!   Data Move: _temp_1362 = *_temp_1363  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r1],r1
	store	r1,[r14+-48]
!   if intIsZero (_temp_1362) then goto _runtimeErrorNullPointer
	load	[r14+-48],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1364 = _temp_1362 + 236
	load	[r14+-48],r1
	add	r1,236,r1
	store	r1,[r14+-40]
!   Data Move: *_temp_1364 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-40],r2
	store	r1,[r2]
! END IF...
_Label_1361:
! IF STATEMENT...
	mov	2161,r13		! source line 2161
	mov	"\0\0IF",r10
!   if intIsZero (childProc) then goto _Label_1366
	load	[r14+-96],r1
	cmp	r1,r0
	be	_Label_1366
!	_Label_1367	jmp	_Label_1367
_Label_1367:
!   if intIsZero (childProc) then goto _runtimeErrorNullPointer
	load	[r14+-96],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1369 = childProc + 236
	load	[r14+-96],r1
	add	r1,236,r1
	store	r1,[r14+-32]
!   Data Move: _temp_1368 = *_temp_1369  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   if intIsZero (_temp_1368) then goto _Label_1366
	load	[r14+-36],r1
	cmp	r1,r0
	be	_Label_1366
!	_Label_1365	jmp	_Label_1365
_Label_1365:
! THEN...
	mov	2162,r13		! source line 2162
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2162,r13		! source line 2162
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1371 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-24]
!   Data Move: _temp_1370 = *_temp_1371  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_1370) then goto _runtimeErrorNullPointer
	load	[r14+-28],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1372 = _temp_1370 + 236
	load	[r14+-28],r1
	add	r1,236,r1
	store	r1,[r14+-20]
!   if intIsZero (childProc) then goto _runtimeErrorNullPointer
	load	[r14+-96],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1374 = childProc + 236
	load	[r14+-96],r1
	add	r1,236,r1
	store	r1,[r14+-12]
!   Data Move: _temp_1373 = *_temp_1374  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-16]
!   Data Move: *_temp_1372 = _temp_1373  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r14+-20],r2
	store	r1,[r2]
! END IF...
_Label_1366:
! RETURN STATEMENT...
	mov	2165,r13		! source line 2165
	mov	"\0\0RE",r10
!   ReturnResult: ret  (sizeInBytes=4)
	load	[r14+-92],r1
	store	r1,[r14+8]
	add	r15,100,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Join:
	.word	_sourceFileName
	.word	_Label_1375
	.word	4		! total size of parameters
	.word	96		! frame size = 96
	.word	_Label_1376
	.word	8
	.word	4
	.word	_Label_1377
	.word	-12
	.word	4
	.word	_Label_1378
	.word	-16
	.word	4
	.word	_Label_1379
	.word	-20
	.word	4
	.word	_Label_1380
	.word	-24
	.word	4
	.word	_Label_1381
	.word	-28
	.word	4
	.word	_Label_1382
	.word	-32
	.word	4
	.word	_Label_1383
	.word	-36
	.word	4
	.word	_Label_1384
	.word	-40
	.word	4
	.word	_Label_1385
	.word	-44
	.word	4
	.word	_Label_1386
	.word	-48
	.word	4
	.word	_Label_1387
	.word	-52
	.word	4
	.word	_Label_1388
	.word	-56
	.word	4
	.word	_Label_1389
	.word	-60
	.word	4
	.word	_Label_1390
	.word	-64
	.word	4
	.word	_Label_1391
	.word	-68
	.word	4
	.word	_Label_1392
	.word	-72
	.word	4
	.word	_Label_1393
	.word	-76
	.word	4
	.word	_Label_1394
	.word	-80
	.word	4
	.word	_Label_1395
	.word	-84
	.word	4
	.word	_Label_1396
	.word	-88
	.word	4
	.word	_Label_1397
	.word	-92
	.word	4
	.word	_Label_1398
	.word	-96
	.word	4
	.word	0
_Label_1375:
	.ascii	"Handle_Sys_Join\0"
	.align
_Label_1376:
	.byte	'I'
	.ascii	"processID\0"
	.align
_Label_1377:
	.byte	'?'
	.ascii	"_temp_1374\0"
	.align
_Label_1378:
	.byte	'?'
	.ascii	"_temp_1373\0"
	.align
_Label_1379:
	.byte	'?'
	.ascii	"_temp_1372\0"
	.align
_Label_1380:
	.byte	'?'
	.ascii	"_temp_1371\0"
	.align
_Label_1381:
	.byte	'?'
	.ascii	"_temp_1370\0"
	.align
_Label_1382:
	.byte	'?'
	.ascii	"_temp_1369\0"
	.align
_Label_1383:
	.byte	'?'
	.ascii	"_temp_1368\0"
	.align
_Label_1384:
	.byte	'?'
	.ascii	"_temp_1364\0"
	.align
_Label_1385:
	.byte	'?'
	.ascii	"_temp_1363\0"
	.align
_Label_1386:
	.byte	'?'
	.ascii	"_temp_1362\0"
	.align
_Label_1387:
	.byte	'?'
	.ascii	"_temp_1360\0"
	.align
_Label_1388:
	.byte	'?'
	.ascii	"_temp_1359\0"
	.align
_Label_1389:
	.byte	'?'
	.ascii	"_temp_1358\0"
	.align
_Label_1390:
	.byte	'?'
	.ascii	"_temp_1357\0"
	.align
_Label_1391:
	.byte	'?'
	.ascii	"_temp_1356\0"
	.align
_Label_1392:
	.byte	'?'
	.ascii	"_temp_1355\0"
	.align
_Label_1393:
	.byte	'?'
	.ascii	"_temp_1354\0"
	.align
_Label_1394:
	.byte	'?'
	.ascii	"_temp_1353\0"
	.align
_Label_1395:
	.byte	'?'
	.ascii	"_temp_1352\0"
	.align
_Label_1396:
	.byte	'?'
	.ascii	"_temp_1347\0"
	.align
_Label_1397:
	.byte	'I'
	.ascii	"ret\0"
	.align
_Label_1398:
	.byte	'P'
	.ascii	"childProc\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Exec  ===============
! 
_P_Kernel_Handle_Sys_Exec:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Exec,r1
	push	r1
	mov	340,r1
_Label_7787:
	push	r0
	sub	r1,1,r1
	bne	_Label_7787
	mov	2170,r13		! source line 2170
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! nameBuf
!   NEW ARRAY Constructor...
!   _temp_1400 = &_temp_1399
	add	r14,-612,r1
	store	r1,[r14+-352]
!   _temp_1400 = _temp_1400 + 4
	load	[r14+-352],r1
	add	r1,4,r1
	store	r1,[r14+-352]
!   Next value...
	mov	255,r1
	store	r1,[r14+-348]
_Label_1402:
!   Data Move: *_temp_1400 = 0  (sizeInBytes=1)
	mov	0,r1
	load	[r14+-352],r2
	storeb	r1,[r2]
!   _temp_1400 = _temp_1400 + 1
	load	[r14+-352],r1
	add	r1,1,r1
	store	r1,[r14+-352]
!   _temp_1401 = _temp_1401 + -1
	load	[r14+-348],r1
	add	r1,-1,r1
	store	r1,[r14+-348]
!   if intNotZero (_temp_1401) then goto _Label_1402
	load	[r14+-348],r1
	cmp	r1,r0
	bne	_Label_1402
!   Initialize the array size...
	mov	255,r1
	store	r1,[r14+-612]
!   _temp_1403 = &_temp_1399
	add	r14,-612,r1
	store	r1,[r14+-344]
!   make sure array has size 255
	load	[r14+-344],r1
	load	[r1],r1
	set	255, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: nameBuf = *_temp_1403  (sizeInBytes=260)
	load	[r14+-344],r5
	add	r14,-872,r4
	mov	65,r3
_Label_7788:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_7788
! argPtr
!   argPtr = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-904]
! j
!   j = argPtr		(4 bytes)
	load	[r14+-904],r1
	store	r1,[r14+-908]
! numArgs
!   numArgs = j		(4 bytes)
	load	[r14+-908],r1
	store	r1,[r14+-912]
! numCharStr
!   numCharStr = numArgs		(4 bytes)
	load	[r14+-912],r1
	store	r1,[r14+-916]
! singleStrAddr
!   singleStrAddr = numCharStr		(4 bytes)
	load	[r14+-916],r1
	store	r1,[r14+-920]
! pcb
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1404 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-340]
!   Data Move: pcb = *_temp_1404  (sizeInBytes=4)
	load	[r14+-340],r1
	load	[r1],r1
	store	r1,[r14+-932]
! newAddrSpace
!   NEW CLASS Constructor...
!   ZeroMemory: newAddrSpace = zeros  (sizeInBytes=204)
	add	r14,-1136,r4
	mov	51,r3
_Label_7789:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_7789
!   newAddrSpace = _P_Kernel_AddrSpace
	set	_P_Kernel_AddrSpace,r1
	store	r1,[r14+-1136]
! oldAddrSpace
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1407 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-328]
!   Data Move: _temp_1406 = *_temp_1407  (sizeInBytes=4)
	load	[r14+-328],r1
	load	[r1],r1
	store	r1,[r14+-332]
!   if intIsZero (_temp_1406) then goto _runtimeErrorNullPointer
	load	[r14+-332],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1408 = _temp_1406 + 32
	load	[r14+-332],r1
	add	r1,32,r1
	store	r1,[r14+-324]
!   Data Move: oldAddrSpace = *_temp_1408  (sizeInBytes=204)
	load	[r14+-324],r5
	add	r14,-1340,r4
	mov	51,r3
_Label_7790:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_7790
! argsAddr
!   argsAddr = args		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-1344]
! offset
!   offset = 8192		(4 bytes)
	mov	8192,r1
	store	r1,[r14+-1348]
! ASSIGNMENT STATEMENT...
	mov	2183,r13		! source line 2183
	mov	"\0\0AS",r10
	mov	2183,r13		! source line 2183
	mov	"\0\0SE",r10
!   _temp_1409 = &nameBuf
	add	r14,-872,r1
	store	r1,[r14+-320]
!   _temp_1410 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-316]
!   _temp_1411 = &oldAddrSpace
	add	r14,-1340,r1
	store	r1,[r14+-312]
!   Prepare Argument: offset=12  value=_temp_1409  sizeInBytes=4
	load	[r14+-320],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_1410  sizeInBytes=4
	load	[r14+-316],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=255  sizeInBytes=4
	mov	255,r1
	store	r1,[r15+12]
!   Send message GetStringFromVirtual
	load	[r14+-312],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,84,r2
	call	r2
!   Retrieve Result: targetName=garbage  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-876]
! IF STATEMENT...
	mov	2184,r13		! source line 2184
	mov	"\0\0IF",r10
!   if garbage >= 0 then goto _Label_1413		(int)
	load	[r14+-876],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1413
!	_Label_1412	jmp	_Label_1412
_Label_1412:
! THEN...
	mov	2185,r13		! source line 2185
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2185,r13		! source line 2185
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1415 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-304]
!   Data Move: _temp_1414 = *_temp_1415  (sizeInBytes=4)
	load	[r14+-304],r1
	load	[r1],r1
	store	r1,[r14+-308]
!   if intIsZero (_temp_1414) then goto _runtimeErrorNullPointer
	load	[r14+-308],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1416 = _temp_1414 + 236
	load	[r14+-308],r1
	add	r1,236,r1
	store	r1,[r14+-300]
!   Data Move: *_temp_1416 = 8  (sizeInBytes=4)
	mov	8,r1
	load	[r14+-300],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	2186,r13		! source line 2186
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,1364,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1413:
! SEND STATEMENT...
	mov	2188,r13		! source line 2188
	mov	"\0\0SE",r10
!   _temp_1417 = &newAddrSpace
	add	r14,-1136,r1
	store	r1,[r14+-296]
!   Send message Init
	load	[r14+-296],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2191,r13		! source line 2191
	mov	"\0\0AS",r10
	mov	2191,r13		! source line 2191
	mov	"\0\0SE",r10
!   _temp_1418 = &nameBuf
	add	r14,-872,r1
	store	r1,[r14+-292]
!   if intIsZero (pcb) then goto _runtimeErrorNullPointer
	load	[r14+-932],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1420 = pcb + 240
	load	[r14+-932],r1
	add	r1,240,r1
	store	r1,[r14+-284]
!   Data Move: _temp_1419 = *_temp_1420  (sizeInBytes=4)
	load	[r14+-284],r1
	load	[r1],r1
	store	r1,[r14+-288]
!   _temp_1421 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-280]
!   Prepare Argument: offset=12  value=_temp_1418  sizeInBytes=4
	load	[r14+-292],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_1419  sizeInBytes=4
	load	[r14+-288],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+12]
!   Prepare Argument: offset=24  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+16]
!   Send message Open
	load	[r14+-280],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,36,r2
	call	r2
!   Retrieve Result: targetName=file  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-924]
! IF STATEMENT...
	mov	2192,r13		! source line 2192
	mov	"\0\0IF",r10
!   if intIsZero (file) then goto _Label_1422
	load	[r14+-924],r1
	cmp	r1,r0
	be	_Label_1422
	jmp	_Label_1423
_Label_1422:
! THEN...
	mov	2193,r13		! source line 2193
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2193,r13		! source line 2193
	mov	"\0\0SE",r10
!   _temp_1424 = &newAddrSpace
	add	r14,-1136,r1
	store	r1,[r14+-276]
!   _temp_1425 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-272]
!   Prepare Argument: offset=12  value=_temp_1424  sizeInBytes=4
	load	[r14+-276],r1
	store	r1,[r15+4]
!   Send message ReturnAllFrames
	load	[r14+-272],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,24,r2
	call	r2
! RETURN STATEMENT...
	mov	2194,r13		! source line 2194
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,1364,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1423:
! IF STATEMENT...
	mov	2197,r13		! source line 2197
	mov	"\0\0IF",r10
!   if intIsZero (file) then goto _runtimeErrorNullPointer
	load	[r14+-924],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1431 = file + 20
	load	[r14+-924],r1
	add	r1,20,r1
	store	r1,[r14+-256]
!   Data Move: _temp_1430 = *_temp_1431  (sizeInBytes=4)
	load	[r14+-256],r1
	load	[r1],r1
	store	r1,[r14+-260]
!   if intIsZero (_temp_1430) then goto _runtimeErrorNullPointer
	load	[r14+-260],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1432 = _temp_1430 + 12
	load	[r14+-260],r1
	add	r1,12,r1
	store	r1,[r14+-252]
!   _temp_1433 = _temp_1432 + 12
	load	[r14+-252],r1
	add	r1,12,r1
	store	r1,[r14+-248]
!   Data Move: _temp_1429 = *_temp_1433  (sizeInBytes=4)
	load	[r14+-248],r1
	load	[r1],r1
	store	r1,[r14+-264]
!   _temp_1428 = _temp_1429 AND 1		(int)
	load	[r14+-264],r1
	mov	1,r2
	and	r1,r2,r1
	store	r1,[r14+-268]
!   if _temp_1428 == 1 then goto _Label_1427		(int)
	load	[r14+-268],r1
	mov	1,r2
	cmp	r1,r2
	be	_Label_1427
!	_Label_1426	jmp	_Label_1426
_Label_1426:
! THEN...
	mov	2198,r13		! source line 2198
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2198,r13		! source line 2198
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1435 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-240]
!   Data Move: _temp_1434 = *_temp_1435  (sizeInBytes=4)
	load	[r14+-240],r1
	load	[r1],r1
	store	r1,[r14+-244]
!   if intIsZero (_temp_1434) then goto _runtimeErrorNullPointer
	load	[r14+-244],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1436 = _temp_1434 + 236
	load	[r14+-244],r1
	add	r1,236,r1
	store	r1,[r14+-236]
!   Data Move: *_temp_1436 = 9  (sizeInBytes=4)
	mov	9,r1
	load	[r14+-236],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2199,r13		! source line 2199
	mov	"\0\0SE",r10
!   _temp_1437 = &newAddrSpace
	add	r14,-1136,r1
	store	r1,[r14+-232]
!   _temp_1438 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-228]
!   Prepare Argument: offset=12  value=_temp_1437  sizeInBytes=4
	load	[r14+-232],r1
	store	r1,[r15+4]
!   Send message ReturnAllFrames
	load	[r14+-228],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,24,r2
	call	r2
! RETURN STATEMENT...
	mov	2200,r13		! source line 2200
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,1364,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1427:
! ASSIGNMENT STATEMENT...
	mov	2203,r13		! source line 2203
	mov	"\0\0AS",r10
	mov	2203,r13		! source line 2203
	mov	"\0\0SE",r10
!   _temp_1439 = &newAddrSpace
	add	r14,-1136,r1
	store	r1,[r14+-224]
!   if intIsZero (file) then goto _runtimeErrorNullPointer
	load	[r14+-924],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_1439  sizeInBytes=4
	load	[r14+-224],r1
	store	r1,[r15+4]
!   Send message LoadExecutable
	load	[r14+-924],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,24,r2
	call	r2
!   Retrieve Result: targetName=initPC  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-880]
! IF STATEMENT...
	mov	2204,r13		! source line 2204
	mov	"\0\0IF",r10
!   if initPC != -1 then goto _Label_1441		(int)
	load	[r14+-880],r1
	mov	-1,r2
	cmp	r1,r2
	bne	_Label_1441
!	_Label_1440	jmp	_Label_1440
_Label_1440:
! THEN...
	mov	2205,r13		! source line 2205
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2205,r13		! source line 2205
	mov	"\0\0SE",r10
!   _temp_1442 = &newAddrSpace
	add	r14,-1136,r1
	store	r1,[r14+-220]
!   _temp_1443 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-216]
!   Prepare Argument: offset=12  value=_temp_1442  sizeInBytes=4
	load	[r14+-220],r1
	store	r1,[r15+4]
!   Send message ReturnAllFrames
	load	[r14+-216],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,24,r2
	call	r2
! RETURN STATEMENT...
	mov	2206,r13		! source line 2206
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,1364,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1441:
! SEND STATEMENT...
	mov	2208,r13		! source line 2208
	mov	"\0\0SE",r10
!   _temp_1444 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-212]
!   Prepare Argument: offset=12  value=file  sizeInBytes=4
	load	[r14+-924],r1
	store	r1,[r15+4]
!   Send message Close
	load	[r14+-212],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,40,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2212,r13		! source line 2212
	mov	"\0\0AS",r10
	mov	2212,r13		! source line 2212
	mov	"\0\0SE",r10
!   _temp_1447 = &newAddrSpace
	add	r14,-1136,r1
	store	r1,[r14+-200]
!   _temp_1448 = _temp_1447 + 4
	load	[r14+-200],r1
	add	r1,4,r1
	store	r1,[r14+-196]
!   Data Move: _temp_1446 = *_temp_1448  (sizeInBytes=4)
	load	[r14+-196],r1
	load	[r1],r1
	store	r1,[r14+-204]
!   _temp_1445 = _temp_1446 - 1		(int)
	load	[r14+-204],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-208]
!   _temp_1449 = &newAddrSpace
	add	r14,-1136,r1
	store	r1,[r14+-192]
!   Prepare Argument: offset=12  value=_temp_1445  sizeInBytes=4
	load	[r14+-208],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+-192],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=ppa  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-892]
! ASSIGNMENT STATEMENT...
	mov	2213,r13		! source line 2213
	mov	"\0\0AS",r10
!   _temp_1452 = &newAddrSpace
	add	r14,-1136,r1
	store	r1,[r14+-180]
!   _temp_1453 = _temp_1452 + 4
	load	[r14+-180],r1
	add	r1,4,r1
	store	r1,[r14+-176]
!   Data Move: _temp_1451 = *_temp_1453  (sizeInBytes=4)
	load	[r14+-176],r1
	load	[r1],r1
	store	r1,[r14+-184]
!   _temp_1450 = _temp_1451 - 1		(int)
	load	[r14+-184],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-188]
!   pla = _temp_1450 * 8192		(int)
	load	[r14+-188],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-896]
! IF STATEMENT...
	mov	2214,r13		! source line 2214
	mov	"\0\0IF",r10
!   if intIsZero (args) then goto _Label_1455
	load	[r14+12],r1
	cmp	r1,r0
	be	_Label_1455
!	_Label_1454	jmp	_Label_1454
_Label_1454:
! THEN...
	mov	2215,r13		! source line 2215
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2215,r13		! source line 2215
	mov	"\0\0AS",r10
	mov	2215,r13		! source line 2215
	mov	"\0\0SE",r10
!   _temp_1456 = &numArgs
	add	r14,-912,r1
	store	r1,[r14+-172]
!   _temp_1457 = &oldAddrSpace
	add	r14,-1340,r1
	store	r1,[r14+-168]
!   Prepare Argument: offset=12  value=_temp_1456  sizeInBytes=4
	load	[r14+-172],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=argsAddr  sizeInBytes=4
	load	[r14+-1344],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=4  sizeInBytes=4
	mov	4,r1
	store	r1,[r15+12]
!   Send message CopyBytesFromVirtual
	load	[r14+-168],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,76,r2
	call	r2
!   Retrieve Result: targetName=garbage  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-876]
! IF STATEMENT...
	mov	2216,r13		! source line 2216
	mov	"\0\0IF",r10
!   if garbage >= 0 then goto _Label_1460		(int)
	load	[r14+-876],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1460
	jmp	_Label_1458
_Label_1460:
!   if numArgs <= 100 then goto _Label_1459		(int)
	load	[r14+-912],r1
	mov	100,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1459
!	_Label_1458	jmp	_Label_1458
_Label_1458:
! THEN...
	mov	2217,r13		! source line 2217
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2217,r13		! source line 2217
	mov	"\0\0SE",r10
!   _temp_1461 = &newAddrSpace
	add	r14,-1136,r1
	store	r1,[r14+-164]
!   _temp_1462 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-160]
!   Prepare Argument: offset=12  value=_temp_1461  sizeInBytes=4
	load	[r14+-164],r1
	store	r1,[r15+4]
!   Send message ReturnAllFrames
	load	[r14+-160],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,24,r2
	call	r2
! RETURN STATEMENT...
	mov	2218,r13		! source line 2218
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,1364,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1459:
! ASSIGNMENT STATEMENT...
	mov	2220,r13		! source line 2220
	mov	"\0\0AS",r10
!   _temp_1464 = numArgs + 1		(int)
	load	[r14+-912],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-152]
!   _temp_1463 = _temp_1464 * 4		(int)
	load	[r14+-152],r1
	mov	4,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-156]
!   offset = offset - _temp_1463		(int)
	load	[r14+-1348],r1
	load	[r14+-156],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-1348]
! ASSIGNMENT STATEMENT...
	mov	2223,r13		! source line 2223
	mov	"\0\0AS",r10
!   ip = ppa + offset		(int)
	load	[r14+-892],r1
	load	[r14+-1348],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-928]
! ASSIGNMENT STATEMENT...
	mov	2224,r13		! source line 2224
	mov	"\0\0AS",r10
!   if intIsZero (ip) then goto _runtimeErrorNullPointer
	load	[r14+-928],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *ip = numArgs  (sizeInBytes=4)
	load	[r14+-912],r1
	load	[r14+-928],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2225,r13		! source line 2225
	mov	"\0\0AS",r10
!   argPtr = pla + offset		(int)
	load	[r14+-896],r1
	load	[r14+-1348],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-904]
! ASSIGNMENT STATEMENT...
	mov	2226,r13		! source line 2226
	mov	"\0\0AS",r10
!   ip = ip + 4		(int)
	load	[r14+-928],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-928]
! WHILE STATEMENT...
	mov	2228,r13		! source line 2228
	mov	"\0\0WH",r10
_Label_1465:
!   if j >= numArgs then goto _Label_1467		(int)
	load	[r14+-908],r1
	load	[r14+-912],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1467
!	_Label_1466	jmp	_Label_1466
_Label_1466:
	mov	2228,r13		! source line 2228
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	2229,r13		! source line 2229
	mov	"\0\0AS",r10
!   argsAddr = argsAddr + 4		(int)
	load	[r14+-1344],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-1344]
! ASSIGNMENT STATEMENT...
	mov	2231,r13		! source line 2231
	mov	"\0\0AS",r10
	mov	2231,r13		! source line 2231
	mov	"\0\0SE",r10
!   _temp_1468 = &singleStrAddr
	add	r14,-920,r1
	store	r1,[r14+-148]
!   _temp_1469 = &oldAddrSpace
	add	r14,-1340,r1
	store	r1,[r14+-144]
!   Prepare Argument: offset=12  value=_temp_1468  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=argsAddr  sizeInBytes=4
	load	[r14+-1344],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=4  sizeInBytes=4
	mov	4,r1
	store	r1,[r15+12]
!   Send message CopyBytesFromVirtual
	load	[r14+-144],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,76,r2
	call	r2
!   Retrieve Result: targetName=garbage  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-876]
! IF STATEMENT...
	mov	2232,r13		! source line 2232
	mov	"\0\0IF",r10
!   if garbage >= 0 then goto _Label_1471		(int)
	load	[r14+-876],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1471
!	_Label_1470	jmp	_Label_1470
_Label_1470:
! THEN...
	mov	2233,r13		! source line 2233
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2233,r13		! source line 2233
	mov	"\0\0SE",r10
!   _temp_1472 = &newAddrSpace
	add	r14,-1136,r1
	store	r1,[r14+-140]
!   _temp_1473 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-136]
!   Prepare Argument: offset=12  value=_temp_1472  sizeInBytes=4
	load	[r14+-140],r1
	store	r1,[r15+4]
!   Send message ReturnAllFrames
	load	[r14+-136],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,24,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2234,r13		! source line 2234
	mov	"\0\0AS",r10
!   if intIsZero (pcb) then goto _runtimeErrorNullPointer
	load	[r14+-932],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1474 = pcb + 236
	load	[r14+-932],r1
	add	r1,236,r1
	store	r1,[r14+-132]
!   Data Move: *_temp_1474 = 6  (sizeInBytes=4)
	mov	6,r1
	load	[r14+-132],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	2235,r13		! source line 2235
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,1364,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1471:
! IF STATEMENT...
	mov	2238,r13		! source line 2238
	mov	"\0\0IF",r10
!   _temp_1477 = singleStrAddr div 8192		(int)
	load	[r14+-920],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-128]
!   if intIsZero (pcb) then goto _runtimeErrorNullPointer
	load	[r14+-932],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1479 = pcb + 32
	load	[r14+-932],r1
	add	r1,32,r1
	store	r1,[r14+-120]
!   _temp_1480 = _temp_1479 + 4
	load	[r14+-120],r1
	add	r1,4,r1
	store	r1,[r14+-116]
!   Data Move: _temp_1478 = *_temp_1480  (sizeInBytes=4)
	load	[r14+-116],r1
	load	[r1],r1
	store	r1,[r14+-124]
!   if _temp_1477 < _temp_1478 then goto _Label_1476		(int)
	load	[r14+-128],r1
	load	[r14+-124],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_1476
!	_Label_1475	jmp	_Label_1475
_Label_1475:
! THEN...
	mov	2239,r13		! source line 2239
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2239,r13		! source line 2239
	mov	"\0\0AS",r10
!   if intIsZero (pcb) then goto _runtimeErrorNullPointer
	load	[r14+-932],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1481 = pcb + 236
	load	[r14+-932],r1
	add	r1,236,r1
	store	r1,[r14+-112]
!   Data Move: *_temp_1481 = 6  (sizeInBytes=4)
	mov	6,r1
	load	[r14+-112],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2240,r13		! source line 2240
	mov	"\0\0SE",r10
!   _temp_1482 = &newAddrSpace
	add	r14,-1136,r1
	store	r1,[r14+-108]
!   _temp_1483 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=12  value=_temp_1482  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+4]
!   Send message ReturnAllFrames
	load	[r14+-104],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,24,r2
	call	r2
! RETURN STATEMENT...
	mov	2241,r13		! source line 2241
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,1364,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1476:
! ASSIGNMENT STATEMENT...
	mov	2244,r13		! source line 2244
	mov	"\0\0AS",r10
	mov	2244,r13		! source line 2244
	mov	"\0\0SE",r10
!   _temp_1484 = &numCharStr
	add	r14,-916,r1
	store	r1,[r14+-100]
!   _temp_1485 = &oldAddrSpace
	add	r14,-1340,r1
	store	r1,[r14+-96]
!   Prepare Argument: offset=12  value=_temp_1484  sizeInBytes=4
	load	[r14+-100],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=singleStrAddr  sizeInBytes=4
	load	[r14+-920],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=4  sizeInBytes=4
	mov	4,r1
	store	r1,[r15+12]
!   Send message CopyBytesFromVirtual
	load	[r14+-96],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,76,r2
	call	r2
!   Retrieve Result: targetName=garbage  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-876]
! IF STATEMENT...
	mov	2245,r13		! source line 2245
	mov	"\0\0IF",r10
!   if garbage >= 0 then goto _Label_1487		(int)
	load	[r14+-876],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1487
!	_Label_1486	jmp	_Label_1486
_Label_1486:
! THEN...
	mov	2246,r13		! source line 2246
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2246,r13		! source line 2246
	mov	"\0\0SE",r10
!   _temp_1488 = &newAddrSpace
	add	r14,-1136,r1
	store	r1,[r14+-92]
!   _temp_1489 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=12  value=_temp_1488  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+4]
!   Send message ReturnAllFrames
	load	[r14+-88],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,24,r2
	call	r2
! RETURN STATEMENT...
	mov	2247,r13		! source line 2247
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,1364,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1487:
! ASSIGNMENT STATEMENT...
	mov	2250,r13		! source line 2250
	mov	"\0\0AS",r10
!   buf = numCharStr		(4 bytes)
	load	[r14+-916],r1
	store	r1,[r14+-900]
! WHILE STATEMENT...
	mov	2251,r13		! source line 2251
	mov	"\0\0WH",r10
_Label_1490:
!   _temp_1493 = buf rem 4		(int)
	load	[r14+-900],r1
	mov	4,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-84]
!   if intIsZero (_temp_1493) then goto _Label_1492
	load	[r14+-84],r1
	cmp	r1,r0
	be	_Label_1492
!	_Label_1491	jmp	_Label_1491
_Label_1491:
	mov	2251,r13		! source line 2251
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	2252,r13		! source line 2252
	mov	"\0\0AS",r10
!   buf = buf + 1		(int)
	load	[r14+-900],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-900]
! END WHILE...
	jmp	_Label_1490
_Label_1492:
! ASSIGNMENT STATEMENT...
	mov	2255,r13		! source line 2255
	mov	"\0\0AS",r10
!   _temp_1494 = offset - buf		(int)
	load	[r14+-1348],r1
	load	[r14+-900],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-80]
!   offset = _temp_1494 - 4		(int)
	load	[r14+-80],r1
	mov	4,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-1348]
! IF STATEMENT...
	mov	2256,r13		! source line 2256
	mov	"\0\0IF",r10
!   if offset >= 6144 then goto _Label_1496		(int)
	load	[r14+-1348],r1
	mov	6144,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1496
!	_Label_1495	jmp	_Label_1495
_Label_1495:
! THEN...
	mov	2257,r13		! source line 2257
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2257,r13		! source line 2257
	mov	"\0\0SE",r10
!   _temp_1497 = &newAddrSpace
	add	r14,-1136,r1
	store	r1,[r14+-76]
!   _temp_1498 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=12  value=_temp_1497  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+4]
!   Send message ReturnAllFrames
	load	[r14+-72],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,24,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2258,r13		! source line 2258
	mov	"\0\0AS",r10
!   if intIsZero (pcb) then goto _runtimeErrorNullPointer
	load	[r14+-932],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1499 = pcb + 236
	load	[r14+-932],r1
	add	r1,236,r1
	store	r1,[r14+-68]
!   Data Move: *_temp_1499 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-68],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	2259,r13		! source line 2259
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,1364,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1496:
! ASSIGNMENT STATEMENT...
	mov	2262,r13		! source line 2262
	mov	"\0\0AS",r10
	mov	2262,r13		! source line 2262
	mov	"\0\0SE",r10
!   _temp_1500 = ppa + offset		(int)
	load	[r14+-892],r1
	load	[r14+-1348],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-64]
!   _temp_1501 = &oldAddrSpace
	add	r14,-1340,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=12  value=_temp_1500  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=singleStrAddr  sizeInBytes=4
	load	[r14+-920],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=numCharStr  sizeInBytes=4
	load	[r14+-916],r1
	store	r1,[r15+12]
!   Send message GetStringFromVirtual
	load	[r14+-60],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,84,r2
	call	r2
!   Retrieve Result: targetName=garbage  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-876]
! IF STATEMENT...
	mov	2263,r13		! source line 2263
	mov	"\0\0IF",r10
!   if garbage >= 0 then goto _Label_1503		(int)
	load	[r14+-876],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1503
!	_Label_1502	jmp	_Label_1502
_Label_1502:
! THEN...
	mov	2264,r13		! source line 2264
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2264,r13		! source line 2264
	mov	"\0\0SE",r10
!   _temp_1504 = &newAddrSpace
	add	r14,-1136,r1
	store	r1,[r14+-56]
!   _temp_1505 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=12  value=_temp_1504  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+4]
!   Send message ReturnAllFrames
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,24,r2
	call	r2
! RETURN STATEMENT...
	mov	2265,r13		! source line 2265
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,1364,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1503:
! ASSIGNMENT STATEMENT...
	mov	2268,r13		! source line 2268
	mov	"\0\0AS",r10
!   if intIsZero (ip) then goto _runtimeErrorNullPointer
	load	[r14+-928],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1506 = pla + offset		(int)
	load	[r14+-896],r1
	load	[r14+-1348],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
!   Data Move: *ip = _temp_1506  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r14+-928],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2269,r13		! source line 2269
	mov	"\0\0AS",r10
!   ip = ip + 4		(int)
	load	[r14+-928],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-928]
! ASSIGNMENT STATEMENT...
	mov	2270,r13		! source line 2270
	mov	"\0\0AS",r10
!   j = j + 1		(int)
	load	[r14+-908],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-908]
! END WHILE...
	jmp	_Label_1465
_Label_1467:
! END IF...
_Label_1455:
! ASSIGNMENT STATEMENT...
	mov	2276,r13		! source line 2276
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1508 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-40]
!   Data Move: _temp_1507 = *_temp_1508  (sizeInBytes=4)
	load	[r14+-40],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   if intIsZero (_temp_1507) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1509 = _temp_1507 + 32
	load	[r14+-44],r1
	add	r1,32,r1
	store	r1,[r14+-36]
!   Data Move: *_temp_1509 = newAddrSpace  (sizeInBytes=204)
	add	r14,-1136,r5
	load	[r14+-36],r4
	mov	51,r3
_Label_7791:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_7791
! SEND STATEMENT...
	mov	2277,r13		! source line 2277
	mov	"\0\0SE",r10
!   _temp_1510 = &oldAddrSpace
	add	r14,-1340,r1
	store	r1,[r14+-32]
!   _temp_1511 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=_temp_1510  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+4]
!   Send message ReturnAllFrames
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,24,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2281,r13		! source line 2281
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1512 = _P_Kernel_currentThread + 88
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,88,r1
	store	r1,[r14+-24]
!   Move address of _temp_1512 [999 ] into _temp_1513
!     make sure index expr is >= 0
	mov	999,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-24],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-20]
!   initSystemStackTop = _temp_1513		(4 bytes)
	load	[r14+-20],r1
	store	r1,[r14+-888]
! ASSIGNMENT STATEMENT...
	mov	2282,r13		! source line 2282
	mov	"\0\0AS",r10
!   initUserStackTop = pla + offset		(int)
	load	[r14+-896],r1
	load	[r14+-1348],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-884]
! ASSIGNMENT STATEMENT...
	mov	2285,r13		! source line 2285
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	2285,r13		! source line 2285
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=garbage  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-876]
! SEND STATEMENT...
	mov	2286,r13		! source line 2286
	mov	"\0\0SE",r10
!   if intIsZero (pcb) then goto _runtimeErrorNullPointer
	load	[r14+-932],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1514 = pcb + 32
	load	[r14+-932],r1
	add	r1,32,r1
	store	r1,[r14+-16]
!   Send message SetToThisPageTable
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,72,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2287,r13		! source line 2287
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1515 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-12]
!   Data Move: *_temp_1515 = 1  (sizeInBytes=1)
	mov	1,r1
	load	[r14+-12],r2
	storeb	r1,[r2]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=initUserStackTop  sizeInBytes=4
	load	[r14+-884],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=initPC  sizeInBytes=4
	load	[r14+-880],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=initSystemStackTop  sizeInBytes=4
	load	[r14+-888],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=argPtr  sizeInBytes=4
	load	[r14+-904],r1
	store	r1,[r15+12]
!   Call the function
	mov	2288,r13		! source line 2288
	mov	"\0\0CE",r10
	call	BecomeUserThread
! RETURN STATEMENT...
	mov	2290,r13		! source line 2290
	mov	"\0\0RE",r10
!   ReturnResult: 3000  (sizeInBytes=4)
	mov	3000,r1
	store	r1,[r14+8]
	add	r15,1364,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Exec:
	.word	_sourceFileName
	.word	_Label_1516
	.word	8		! total size of parameters
	.word	1360		! frame size = 1360
	.word	_Label_1517
	.word	8
	.word	4
	.word	_Label_1518
	.word	12
	.word	4
	.word	_Label_1519
	.word	-12
	.word	4
	.word	_Label_1520
	.word	-16
	.word	4
	.word	_Label_1521
	.word	-20
	.word	4
	.word	_Label_1522
	.word	-24
	.word	4
	.word	_Label_1523
	.word	-28
	.word	4
	.word	_Label_1524
	.word	-32
	.word	4
	.word	_Label_1525
	.word	-36
	.word	4
	.word	_Label_1526
	.word	-40
	.word	4
	.word	_Label_1527
	.word	-44
	.word	4
	.word	_Label_1528
	.word	-48
	.word	4
	.word	_Label_1529
	.word	-52
	.word	4
	.word	_Label_1530
	.word	-56
	.word	4
	.word	_Label_1531
	.word	-60
	.word	4
	.word	_Label_1532
	.word	-64
	.word	4
	.word	_Label_1533
	.word	-68
	.word	4
	.word	_Label_1534
	.word	-72
	.word	4
	.word	_Label_1535
	.word	-76
	.word	4
	.word	_Label_1536
	.word	-80
	.word	4
	.word	_Label_1537
	.word	-84
	.word	4
	.word	_Label_1538
	.word	-88
	.word	4
	.word	_Label_1539
	.word	-92
	.word	4
	.word	_Label_1540
	.word	-96
	.word	4
	.word	_Label_1541
	.word	-100
	.word	4
	.word	_Label_1542
	.word	-104
	.word	4
	.word	_Label_1543
	.word	-108
	.word	4
	.word	_Label_1544
	.word	-112
	.word	4
	.word	_Label_1545
	.word	-116
	.word	4
	.word	_Label_1546
	.word	-120
	.word	4
	.word	_Label_1547
	.word	-124
	.word	4
	.word	_Label_1548
	.word	-128
	.word	4
	.word	_Label_1549
	.word	-132
	.word	4
	.word	_Label_1550
	.word	-136
	.word	4
	.word	_Label_1551
	.word	-140
	.word	4
	.word	_Label_1552
	.word	-144
	.word	4
	.word	_Label_1553
	.word	-148
	.word	4
	.word	_Label_1554
	.word	-152
	.word	4
	.word	_Label_1555
	.word	-156
	.word	4
	.word	_Label_1556
	.word	-160
	.word	4
	.word	_Label_1557
	.word	-164
	.word	4
	.word	_Label_1558
	.word	-168
	.word	4
	.word	_Label_1559
	.word	-172
	.word	4
	.word	_Label_1560
	.word	-176
	.word	4
	.word	_Label_1561
	.word	-180
	.word	4
	.word	_Label_1562
	.word	-184
	.word	4
	.word	_Label_1563
	.word	-188
	.word	4
	.word	_Label_1564
	.word	-192
	.word	4
	.word	_Label_1565
	.word	-196
	.word	4
	.word	_Label_1566
	.word	-200
	.word	4
	.word	_Label_1567
	.word	-204
	.word	4
	.word	_Label_1568
	.word	-208
	.word	4
	.word	_Label_1569
	.word	-212
	.word	4
	.word	_Label_1570
	.word	-216
	.word	4
	.word	_Label_1571
	.word	-220
	.word	4
	.word	_Label_1572
	.word	-224
	.word	4
	.word	_Label_1573
	.word	-228
	.word	4
	.word	_Label_1574
	.word	-232
	.word	4
	.word	_Label_1575
	.word	-236
	.word	4
	.word	_Label_1576
	.word	-240
	.word	4
	.word	_Label_1577
	.word	-244
	.word	4
	.word	_Label_1578
	.word	-248
	.word	4
	.word	_Label_1579
	.word	-252
	.word	4
	.word	_Label_1580
	.word	-256
	.word	4
	.word	_Label_1581
	.word	-260
	.word	4
	.word	_Label_1582
	.word	-264
	.word	4
	.word	_Label_1583
	.word	-268
	.word	4
	.word	_Label_1584
	.word	-272
	.word	4
	.word	_Label_1585
	.word	-276
	.word	4
	.word	_Label_1586
	.word	-280
	.word	4
	.word	_Label_1587
	.word	-284
	.word	4
	.word	_Label_1588
	.word	-288
	.word	4
	.word	_Label_1589
	.word	-292
	.word	4
	.word	_Label_1590
	.word	-296
	.word	4
	.word	_Label_1591
	.word	-300
	.word	4
	.word	_Label_1592
	.word	-304
	.word	4
	.word	_Label_1593
	.word	-308
	.word	4
	.word	_Label_1594
	.word	-312
	.word	4
	.word	_Label_1595
	.word	-316
	.word	4
	.word	_Label_1596
	.word	-320
	.word	4
	.word	_Label_1597
	.word	-324
	.word	4
	.word	_Label_1598
	.word	-328
	.word	4
	.word	_Label_1599
	.word	-332
	.word	4
	.word	_Label_1600
	.word	-336
	.word	4
	.word	_Label_1601
	.word	-340
	.word	4
	.word	_Label_1602
	.word	-344
	.word	4
	.word	_Label_1603
	.word	-348
	.word	4
	.word	_Label_1604
	.word	-352
	.word	4
	.word	_Label_1605
	.word	-612
	.word	260
	.word	_Label_1606
	.word	-872
	.word	260
	.word	_Label_1607
	.word	-876
	.word	4
	.word	_Label_1608
	.word	-880
	.word	4
	.word	_Label_1609
	.word	-884
	.word	4
	.word	_Label_1610
	.word	-888
	.word	4
	.word	_Label_1611
	.word	-892
	.word	4
	.word	_Label_1612
	.word	-896
	.word	4
	.word	_Label_1613
	.word	-900
	.word	4
	.word	_Label_1614
	.word	-904
	.word	4
	.word	_Label_1615
	.word	-908
	.word	4
	.word	_Label_1616
	.word	-912
	.word	4
	.word	_Label_1617
	.word	-916
	.word	4
	.word	_Label_1618
	.word	-920
	.word	4
	.word	_Label_1619
	.word	-924
	.word	4
	.word	_Label_1620
	.word	-928
	.word	4
	.word	_Label_1621
	.word	-932
	.word	4
	.word	_Label_1622
	.word	-1136
	.word	204
	.word	_Label_1623
	.word	-1340
	.word	204
	.word	_Label_1624
	.word	-1344
	.word	4
	.word	_Label_1625
	.word	-1348
	.word	4
	.word	0
_Label_1516:
	.ascii	"Handle_Sys_Exec\0"
	.align
_Label_1517:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_1518:
	.byte	'P'
	.ascii	"args\0"
	.align
_Label_1519:
	.byte	'?'
	.ascii	"_temp_1515\0"
	.align
_Label_1520:
	.byte	'?'
	.ascii	"_temp_1514\0"
	.align
_Label_1521:
	.byte	'?'
	.ascii	"_temp_1513\0"
	.align
_Label_1522:
	.byte	'?'
	.ascii	"_temp_1512\0"
	.align
_Label_1523:
	.byte	'?'
	.ascii	"_temp_1511\0"
	.align
_Label_1524:
	.byte	'?'
	.ascii	"_temp_1510\0"
	.align
_Label_1525:
	.byte	'?'
	.ascii	"_temp_1509\0"
	.align
_Label_1526:
	.byte	'?'
	.ascii	"_temp_1508\0"
	.align
_Label_1527:
	.byte	'?'
	.ascii	"_temp_1507\0"
	.align
_Label_1528:
	.byte	'?'
	.ascii	"_temp_1506\0"
	.align
_Label_1529:
	.byte	'?'
	.ascii	"_temp_1505\0"
	.align
_Label_1530:
	.byte	'?'
	.ascii	"_temp_1504\0"
	.align
_Label_1531:
	.byte	'?'
	.ascii	"_temp_1501\0"
	.align
_Label_1532:
	.byte	'?'
	.ascii	"_temp_1500\0"
	.align
_Label_1533:
	.byte	'?'
	.ascii	"_temp_1499\0"
	.align
_Label_1534:
	.byte	'?'
	.ascii	"_temp_1498\0"
	.align
_Label_1535:
	.byte	'?'
	.ascii	"_temp_1497\0"
	.align
_Label_1536:
	.byte	'?'
	.ascii	"_temp_1494\0"
	.align
_Label_1537:
	.byte	'?'
	.ascii	"_temp_1493\0"
	.align
_Label_1538:
	.byte	'?'
	.ascii	"_temp_1489\0"
	.align
_Label_1539:
	.byte	'?'
	.ascii	"_temp_1488\0"
	.align
_Label_1540:
	.byte	'?'
	.ascii	"_temp_1485\0"
	.align
_Label_1541:
	.byte	'?'
	.ascii	"_temp_1484\0"
	.align
_Label_1542:
	.byte	'?'
	.ascii	"_temp_1483\0"
	.align
_Label_1543:
	.byte	'?'
	.ascii	"_temp_1482\0"
	.align
_Label_1544:
	.byte	'?'
	.ascii	"_temp_1481\0"
	.align
_Label_1545:
	.byte	'?'
	.ascii	"_temp_1480\0"
	.align
_Label_1546:
	.byte	'?'
	.ascii	"_temp_1479\0"
	.align
_Label_1547:
	.byte	'?'
	.ascii	"_temp_1478\0"
	.align
_Label_1548:
	.byte	'?'
	.ascii	"_temp_1477\0"
	.align
_Label_1549:
	.byte	'?'
	.ascii	"_temp_1474\0"
	.align
_Label_1550:
	.byte	'?'
	.ascii	"_temp_1473\0"
	.align
_Label_1551:
	.byte	'?'
	.ascii	"_temp_1472\0"
	.align
_Label_1552:
	.byte	'?'
	.ascii	"_temp_1469\0"
	.align
_Label_1553:
	.byte	'?'
	.ascii	"_temp_1468\0"
	.align
_Label_1554:
	.byte	'?'
	.ascii	"_temp_1464\0"
	.align
_Label_1555:
	.byte	'?'
	.ascii	"_temp_1463\0"
	.align
_Label_1556:
	.byte	'?'
	.ascii	"_temp_1462\0"
	.align
_Label_1557:
	.byte	'?'
	.ascii	"_temp_1461\0"
	.align
_Label_1558:
	.byte	'?'
	.ascii	"_temp_1457\0"
	.align
_Label_1559:
	.byte	'?'
	.ascii	"_temp_1456\0"
	.align
_Label_1560:
	.byte	'?'
	.ascii	"_temp_1453\0"
	.align
_Label_1561:
	.byte	'?'
	.ascii	"_temp_1452\0"
	.align
_Label_1562:
	.byte	'?'
	.ascii	"_temp_1451\0"
	.align
_Label_1563:
	.byte	'?'
	.ascii	"_temp_1450\0"
	.align
_Label_1564:
	.byte	'?'
	.ascii	"_temp_1449\0"
	.align
_Label_1565:
	.byte	'?'
	.ascii	"_temp_1448\0"
	.align
_Label_1566:
	.byte	'?'
	.ascii	"_temp_1447\0"
	.align
_Label_1567:
	.byte	'?'
	.ascii	"_temp_1446\0"
	.align
_Label_1568:
	.byte	'?'
	.ascii	"_temp_1445\0"
	.align
_Label_1569:
	.byte	'?'
	.ascii	"_temp_1444\0"
	.align
_Label_1570:
	.byte	'?'
	.ascii	"_temp_1443\0"
	.align
_Label_1571:
	.byte	'?'
	.ascii	"_temp_1442\0"
	.align
_Label_1572:
	.byte	'?'
	.ascii	"_temp_1439\0"
	.align
_Label_1573:
	.byte	'?'
	.ascii	"_temp_1438\0"
	.align
_Label_1574:
	.byte	'?'
	.ascii	"_temp_1437\0"
	.align
_Label_1575:
	.byte	'?'
	.ascii	"_temp_1436\0"
	.align
_Label_1576:
	.byte	'?'
	.ascii	"_temp_1435\0"
	.align
_Label_1577:
	.byte	'?'
	.ascii	"_temp_1434\0"
	.align
_Label_1578:
	.byte	'?'
	.ascii	"_temp_1433\0"
	.align
_Label_1579:
	.byte	'?'
	.ascii	"_temp_1432\0"
	.align
_Label_1580:
	.byte	'?'
	.ascii	"_temp_1431\0"
	.align
_Label_1581:
	.byte	'?'
	.ascii	"_temp_1430\0"
	.align
_Label_1582:
	.byte	'?'
	.ascii	"_temp_1429\0"
	.align
_Label_1583:
	.byte	'?'
	.ascii	"_temp_1428\0"
	.align
_Label_1584:
	.byte	'?'
	.ascii	"_temp_1425\0"
	.align
_Label_1585:
	.byte	'?'
	.ascii	"_temp_1424\0"
	.align
_Label_1586:
	.byte	'?'
	.ascii	"_temp_1421\0"
	.align
_Label_1587:
	.byte	'?'
	.ascii	"_temp_1420\0"
	.align
_Label_1588:
	.byte	'?'
	.ascii	"_temp_1419\0"
	.align
_Label_1589:
	.byte	'?'
	.ascii	"_temp_1418\0"
	.align
_Label_1590:
	.byte	'?'
	.ascii	"_temp_1417\0"
	.align
_Label_1591:
	.byte	'?'
	.ascii	"_temp_1416\0"
	.align
_Label_1592:
	.byte	'?'
	.ascii	"_temp_1415\0"
	.align
_Label_1593:
	.byte	'?'
	.ascii	"_temp_1414\0"
	.align
_Label_1594:
	.byte	'?'
	.ascii	"_temp_1411\0"
	.align
_Label_1595:
	.byte	'?'
	.ascii	"_temp_1410\0"
	.align
_Label_1596:
	.byte	'?'
	.ascii	"_temp_1409\0"
	.align
_Label_1597:
	.byte	'?'
	.ascii	"_temp_1408\0"
	.align
_Label_1598:
	.byte	'?'
	.ascii	"_temp_1407\0"
	.align
_Label_1599:
	.byte	'?'
	.ascii	"_temp_1406\0"
	.align
_Label_1600:
	.byte	'?'
	.ascii	"_temp_1405\0"
	.align
_Label_1601:
	.byte	'?'
	.ascii	"_temp_1404\0"
	.align
_Label_1602:
	.byte	'?'
	.ascii	"_temp_1403\0"
	.align
_Label_1603:
	.byte	'?'
	.ascii	"_temp_1401\0"
	.align
_Label_1604:
	.byte	'?'
	.ascii	"_temp_1400\0"
	.align
_Label_1605:
	.byte	'?'
	.ascii	"_temp_1399\0"
	.align
_Label_1606:
	.byte	'A'
	.ascii	"nameBuf\0"
	.align
_Label_1607:
	.byte	'I'
	.ascii	"garbage\0"
	.align
_Label_1608:
	.byte	'I'
	.ascii	"initPC\0"
	.align
_Label_1609:
	.byte	'I'
	.ascii	"initUserStackTop\0"
	.align
_Label_1610:
	.byte	'I'
	.ascii	"initSystemStackTop\0"
	.align
_Label_1611:
	.byte	'I'
	.ascii	"ppa\0"
	.align
_Label_1612:
	.byte	'I'
	.ascii	"pla\0"
	.align
_Label_1613:
	.byte	'I'
	.ascii	"buf\0"
	.align
_Label_1614:
	.byte	'I'
	.ascii	"argPtr\0"
	.align
_Label_1615:
	.byte	'I'
	.ascii	"j\0"
	.align
_Label_1616:
	.byte	'I'
	.ascii	"numArgs\0"
	.align
_Label_1617:
	.byte	'I'
	.ascii	"numCharStr\0"
	.align
_Label_1618:
	.byte	'I'
	.ascii	"singleStrAddr\0"
	.align
_Label_1619:
	.byte	'P'
	.ascii	"file\0"
	.align
_Label_1620:
	.byte	'P'
	.ascii	"ip\0"
	.align
_Label_1621:
	.byte	'P'
	.ascii	"pcb\0"
	.align
_Label_1622:
	.byte	'O'
	.ascii	"newAddrSpace\0"
	.align
_Label_1623:
	.byte	'O'
	.ascii	"oldAddrSpace\0"
	.align
_Label_1624:
	.byte	'I'
	.ascii	"argsAddr\0"
	.align
_Label_1625:
	.byte	'I'
	.ascii	"offset\0"
	.align
! 
! ===============  FUNCTION ValidatePtr  ===============
! 
_function_234_ValidatePtr:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_234_ValidatePtr,r1
	push	r1
	mov	10,r1
_Label_7792:
	push	r0
	sub	r1,1,r1
	bne	_Label_7792
	mov	2295,r13		! source line 2295
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! retVal
!   retVal = -1		(4 bytes)
	mov	-1,r1
	store	r1,[r14+-44]
! numPages
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1627 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-36]
!   Data Move: _temp_1626 = *_temp_1627  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if intIsZero (_temp_1626) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1628 = _temp_1626 + 32
	load	[r14+-40],r1
	add	r1,32,r1
	store	r1,[r14+-32]
!   _temp_1629 = _temp_1628 + 4
	load	[r14+-32],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Data Move: numPages = *_temp_1629  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r1],r1
	store	r1,[r14+-48]
! IF STATEMENT...
	mov	2298,r13		! source line 2298
	mov	"\0\0IF",r10
!   _temp_1633 = 8192 * numPages		(int)
	mov	8192,r1
	load	[r14+-48],r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-24]
!   if arg >= _temp_1633 then goto _Label_1631		(int)
	load	[r14+8],r1
	load	[r14+-24],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1631
!	_Label_1632	jmp	_Label_1632
_Label_1632:
!   if arg <= 0 then goto _Label_1631		(int)
	load	[r14+8],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1631
!	_Label_1630	jmp	_Label_1630
_Label_1630:
! THEN...
	mov	2299,r13		! source line 2299
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2299,r13		! source line 2299
	mov	"\0\0AS",r10
!   retVal = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-44]
	jmp	_Label_1634
_Label_1631:
! ELSE...
	mov	2301,r13		! source line 2301
	mov	"\0\0EL",r10
! ASSIGNMENT STATEMENT...
	mov	2301,r13		! source line 2301
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1636 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-16]
!   Data Move: _temp_1635 = *_temp_1636  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_1635) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1637 = _temp_1635 + 236
	load	[r14+-20],r1
	add	r1,236,r1
	store	r1,[r14+-12]
!   Data Move: *_temp_1637 = 6  (sizeInBytes=4)
	mov	6,r1
	load	[r14+-12],r2
	store	r1,[r2]
! END IF...
_Label_1634:
! RETURN STATEMENT...
	mov	2303,r13		! source line 2303
	mov	"\0\0RE",r10
!   ReturnResult: retVal  (sizeInBytes=4)
	load	[r14+-44],r1
	store	r1,[r14+8]
	add	r15,44,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_234_ValidatePtr:
	.word	_sourceFileName
	.word	_Label_1638
	.word	4		! total size of parameters
	.word	40		! frame size = 40
	.word	_Label_1639
	.word	8
	.word	4
	.word	_Label_1640
	.word	-12
	.word	4
	.word	_Label_1641
	.word	-16
	.word	4
	.word	_Label_1642
	.word	-20
	.word	4
	.word	_Label_1643
	.word	-24
	.word	4
	.word	_Label_1644
	.word	-28
	.word	4
	.word	_Label_1645
	.word	-32
	.word	4
	.word	_Label_1646
	.word	-36
	.word	4
	.word	_Label_1647
	.word	-40
	.word	4
	.word	_Label_1648
	.word	-44
	.word	4
	.word	_Label_1649
	.word	-48
	.word	4
	.word	0
_Label_1638:
	.ascii	"ValidatePtr\0"
	.align
_Label_1639:
	.byte	'I'
	.ascii	"arg\0"
	.align
_Label_1640:
	.byte	'?'
	.ascii	"_temp_1637\0"
	.align
_Label_1641:
	.byte	'?'
	.ascii	"_temp_1636\0"
	.align
_Label_1642:
	.byte	'?'
	.ascii	"_temp_1635\0"
	.align
_Label_1643:
	.byte	'?'
	.ascii	"_temp_1633\0"
	.align
_Label_1644:
	.byte	'?'
	.ascii	"_temp_1629\0"
	.align
_Label_1645:
	.byte	'?'
	.ascii	"_temp_1628\0"
	.align
_Label_1646:
	.byte	'?'
	.ascii	"_temp_1627\0"
	.align
_Label_1647:
	.byte	'?'
	.ascii	"_temp_1626\0"
	.align
_Label_1648:
	.byte	'I'
	.ascii	"retVal\0"
	.align
_Label_1649:
	.byte	'I'
	.ascii	"numPages\0"
	.align
! 
! ===============  FUNCTION ValidatePointerWrite  ===============
! 
_function_233_ValidatePointerWrite:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_233_ValidatePointerWrite,r1
	push	r1
	mov	73,r1
_Label_7793:
	push	r0
	sub	r1,1,r1
	bne	_Label_7793
	mov	2308,r13		! source line 2308
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! retVal
!   retVal = -1		(4 bytes)
	mov	-1,r1
	store	r1,[r14+-68]
! pass
!   pass = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-84]
! bufAddr
!   bufAddr = buf		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-88]
! addrSpace
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1651 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-60]
!   Data Move: _temp_1650 = *_temp_1651  (sizeInBytes=4)
	load	[r14+-60],r1
	load	[r1],r1
	store	r1,[r14+-64]
!   if intIsZero (_temp_1650) then goto _runtimeErrorNullPointer
	load	[r14+-64],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1652 = _temp_1650 + 32
	load	[r14+-64],r1
	add	r1,32,r1
	store	r1,[r14+-56]
!   Data Move: addrSpace = *_temp_1652  (sizeInBytes=204)
	load	[r14+-56],r5
	add	r14,-292,r4
	mov	51,r3
_Label_7794:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_7794
! WHILE STATEMENT...
	mov	2314,r13		! source line 2314
	mov	"\0\0WH",r10
_Label_1653:
!   _temp_1658 = &addrSpace
	add	r14,-292,r1
	store	r1,[r14+-48]
!   _temp_1659 = _temp_1658 + 4
	load	[r14+-48],r1
	add	r1,4,r1
	store	r1,[r14+-44]
!   Data Move: _temp_1657 = *_temp_1659  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r1],r1
	store	r1,[r14+-52]
!   if i >= _temp_1657 then goto _Label_1655		(int)
	load	[r14+-72],r1
	load	[r14+-52],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1655
!	_Label_1656	jmp	_Label_1656
_Label_1656:
!   if intIsZero (pass) then goto _Label_1654
	load	[r14+-84],r1
	cmp	r1,r0
	be	_Label_1654
	jmp	_Label_1655
_Label_1654:
	mov	2314,r13		! source line 2314
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	2315,r13		! source line 2315
	mov	"\0\0AS",r10
!   frAddr = i * 8192		(int)
	load	[r14+-72],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-76]
! ASSIGNMENT STATEMENT...
	mov	2316,r13		! source line 2316
	mov	"\0\0AS",r10
!   endOfFr = frAddr + 8192		(int)
	load	[r14+-76],r1
	mov	8192,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-80]
! IF STATEMENT...
	mov	2317,r13		! source line 2317
	mov	"\0\0IF",r10
!   if bufAddr <= frAddr then goto _Label_1661		(int)
	load	[r14+-88],r1
	load	[r14+-76],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1661
!	_Label_1662	jmp	_Label_1662
_Label_1662:
!   if bufAddr >= endOfFr then goto _Label_1661		(int)
	load	[r14+-88],r1
	load	[r14+-80],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1661
!	_Label_1660	jmp	_Label_1660
_Label_1660:
! THEN...
	mov	2318,r13		! source line 2318
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2318,r13		! source line 2318
	mov	"\0\0AS",r10
!   pass = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-84]
! END IF...
_Label_1661:
! ASSIGNMENT STATEMENT...
	mov	2320,r13		! source line 2320
	mov	"\0\0AS",r10
!   i = i + 1		(int)
	load	[r14+-72],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-72]
! END WHILE...
	jmp	_Label_1653
_Label_1655:
! ASSIGNMENT STATEMENT...
	mov	2322,r13		! source line 2322
	mov	"\0\0AS",r10
!   frAddr = i * 8192		(int)
	load	[r14+-72],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-76]
! IF STATEMENT...
	mov	2324,r13		! source line 2324
	mov	"\0\0IF",r10
!   if pass != 1 then goto _Label_1664		(int)
	load	[r14+-84],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_1664
!	_Label_1663	jmp	_Label_1663
_Label_1663:
! THEN...
	mov	2325,r13		! source line 2325
	mov	"\0\0TN",r10
! IF STATEMENT...
	mov	2325,r13		! source line 2325
	mov	"\0\0IF",r10
	mov	2325,r13		! source line 2325
	mov	"\0\0SE",r10
!   _temp_1668 = &addrSpace
	add	r14,-292,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+4]
!   Send message IsValid
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,36,r2
	call	r2
!   if result==true then goto _Label_1667 else goto _Label_1666
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1666
	jmp	_Label_1667
_Label_1667:
	mov	2325,r13		! source line 2325
	mov	"\0\0SE",r10
!   _temp_1669 = &addrSpace
	add	r14,-292,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+4]
!   Send message IsWritable
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   if result==true then goto _Label_1665 else goto _Label_1666
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1666
	jmp	_Label_1665
_Label_1665:
! THEN...
	mov	2326,r13		! source line 2326
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2326,r13		! source line 2326
	mov	"\0\0AS",r10
!   retVal = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-68]
	jmp	_Label_1670
_Label_1666:
! ELSE...
	mov	2328,r13		! source line 2328
	mov	"\0\0EL",r10
! ASSIGNMENT STATEMENT...
	mov	2328,r13		! source line 2328
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1672 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-28]
!   Data Move: _temp_1671 = *_temp_1672  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   if intIsZero (_temp_1671) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1673 = _temp_1671 + 236
	load	[r14+-32],r1
	add	r1,236,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1673 = 9  (sizeInBytes=4)
	mov	9,r1
	load	[r14+-24],r2
	store	r1,[r2]
! END IF...
_Label_1670:
	jmp	_Label_1674
_Label_1664:
! ELSE...
	mov	2331,r13		! source line 2331
	mov	"\0\0EL",r10
! ASSIGNMENT STATEMENT...
	mov	2331,r13		! source line 2331
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1676 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-16]
!   Data Move: _temp_1675 = *_temp_1676  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_1675) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1677 = _temp_1675 + 236
	load	[r14+-20],r1
	add	r1,236,r1
	store	r1,[r14+-12]
!   Data Move: *_temp_1677 = 8  (sizeInBytes=4)
	mov	8,r1
	load	[r14+-12],r2
	store	r1,[r2]
! END IF...
_Label_1674:
! RETURN STATEMENT...
	mov	2333,r13		! source line 2333
	mov	"\0\0RE",r10
!   ReturnResult: retVal  (sizeInBytes=4)
	load	[r14+-68],r1
	store	r1,[r14+8]
	add	r15,296,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_233_ValidatePointerWrite:
	.word	_sourceFileName
	.word	_Label_1678
	.word	4		! total size of parameters
	.word	292		! frame size = 292
	.word	_Label_1679
	.word	8
	.word	4
	.word	_Label_1680
	.word	-12
	.word	4
	.word	_Label_1681
	.word	-16
	.word	4
	.word	_Label_1682
	.word	-20
	.word	4
	.word	_Label_1683
	.word	-24
	.word	4
	.word	_Label_1684
	.word	-28
	.word	4
	.word	_Label_1685
	.word	-32
	.word	4
	.word	_Label_1686
	.word	-36
	.word	4
	.word	_Label_1687
	.word	-40
	.word	4
	.word	_Label_1688
	.word	-44
	.word	4
	.word	_Label_1689
	.word	-48
	.word	4
	.word	_Label_1690
	.word	-52
	.word	4
	.word	_Label_1691
	.word	-56
	.word	4
	.word	_Label_1692
	.word	-60
	.word	4
	.word	_Label_1693
	.word	-64
	.word	4
	.word	_Label_1694
	.word	-68
	.word	4
	.word	_Label_1695
	.word	-72
	.word	4
	.word	_Label_1696
	.word	-76
	.word	4
	.word	_Label_1697
	.word	-80
	.word	4
	.word	_Label_1698
	.word	-84
	.word	4
	.word	_Label_1699
	.word	-88
	.word	4
	.word	_Label_1700
	.word	-292
	.word	204
	.word	0
_Label_1678:
	.ascii	"ValidatePointerWrite\0"
	.align
_Label_1679:
	.byte	'I'
	.ascii	"buf\0"
	.align
_Label_1680:
	.byte	'?'
	.ascii	"_temp_1677\0"
	.align
_Label_1681:
	.byte	'?'
	.ascii	"_temp_1676\0"
	.align
_Label_1682:
	.byte	'?'
	.ascii	"_temp_1675\0"
	.align
_Label_1683:
	.byte	'?'
	.ascii	"_temp_1673\0"
	.align
_Label_1684:
	.byte	'?'
	.ascii	"_temp_1672\0"
	.align
_Label_1685:
	.byte	'?'
	.ascii	"_temp_1671\0"
	.align
_Label_1686:
	.byte	'?'
	.ascii	"_temp_1669\0"
	.align
_Label_1687:
	.byte	'?'
	.ascii	"_temp_1668\0"
	.align
_Label_1688:
	.byte	'?'
	.ascii	"_temp_1659\0"
	.align
_Label_1689:
	.byte	'?'
	.ascii	"_temp_1658\0"
	.align
_Label_1690:
	.byte	'?'
	.ascii	"_temp_1657\0"
	.align
_Label_1691:
	.byte	'?'
	.ascii	"_temp_1652\0"
	.align
_Label_1692:
	.byte	'?'
	.ascii	"_temp_1651\0"
	.align
_Label_1693:
	.byte	'?'
	.ascii	"_temp_1650\0"
	.align
_Label_1694:
	.byte	'I'
	.ascii	"retVal\0"
	.align
_Label_1695:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1696:
	.byte	'I'
	.ascii	"frAddr\0"
	.align
_Label_1697:
	.byte	'I'
	.ascii	"endOfFr\0"
	.align
_Label_1698:
	.byte	'I'
	.ascii	"pass\0"
	.align
_Label_1699:
	.byte	'I'
	.ascii	"bufAddr\0"
	.align
_Label_1700:
	.byte	'O'
	.ascii	"addrSpace\0"
	.align
! 
! ===============  FUNCTION ValidateFd  ===============
! 
_function_232_ValidateFd:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_232_ValidateFd,r1
	push	r1
	mov	12,r1
_Label_7795:
	push	r0
	sub	r1,1,r1
	bne	_Label_7795
	mov	2338,r13		! source line 2338
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! retVal
!   retVal = -1		(4 bytes)
	mov	-1,r1
	store	r1,[r14+-56]
! IF STATEMENT...
	mov	2341,r13		! source line 2341
	mov	"\0\0IF",r10
!   if fileDesc >= 0 then goto _Label_1703		(int)
	load	[r14+8],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1703
	jmp	_Label_1701
_Label_1703:
!   if fileDesc <= 10 then goto _Label_1702		(int)
	load	[r14+8],r1
	mov	10,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1702
!	_Label_1701	jmp	_Label_1701
_Label_1701:
! THEN...
	mov	2342,r13		! source line 2342
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2342,r13		! source line 2342
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1705 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-48]
!   Data Move: _temp_1704 = *_temp_1705  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r1],r1
	store	r1,[r14+-52]
!   if intIsZero (_temp_1704) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1706 = _temp_1704 + 236
	load	[r14+-52],r1
	add	r1,236,r1
	store	r1,[r14+-44]
!   Data Move: *_temp_1706 = 7  (sizeInBytes=4)
	mov	7,r1
	load	[r14+-44],r2
	store	r1,[r2]
	jmp	_Label_1707
_Label_1702:
! ELSE...
	mov	2343,r13		! source line 2343
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	2343,r13		! source line 2343
	mov	"\0\0IF",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1712 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-32]
!   Data Move: _temp_1711 = *_temp_1712  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   if intIsZero (_temp_1711) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1713 = _temp_1711 + 244
	load	[r14+-36],r1
	add	r1,244,r1
	store	r1,[r14+-28]
!   Move address of _temp_1713 [fileDesc ] into _temp_1714
!     make sure index expr is >= 0
	load	[r14+8],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-28],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-24]
!   Data Move: _temp_1710 = *_temp_1714  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if intIsZero (_temp_1710) then goto _Label_1708
	load	[r14+-40],r1
	cmp	r1,r0
	be	_Label_1708
	jmp	_Label_1709
_Label_1708:
! THEN...
	mov	2344,r13		! source line 2344
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2344,r13		! source line 2344
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1716 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-16]
!   Data Move: _temp_1715 = *_temp_1716  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_1715) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1717 = _temp_1715 + 236
	load	[r14+-20],r1
	add	r1,236,r1
	store	r1,[r14+-12]
!   Data Move: *_temp_1717 = 7  (sizeInBytes=4)
	mov	7,r1
	load	[r14+-12],r2
	store	r1,[r2]
	jmp	_Label_1718
_Label_1709:
! ELSE...
	mov	2346,r13		! source line 2346
	mov	"\0\0EL",r10
! ASSIGNMENT STATEMENT...
	mov	2346,r13		! source line 2346
	mov	"\0\0AS",r10
!   retVal = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-56]
! END IF...
_Label_1718:
! END IF...
_Label_1707:
! RETURN STATEMENT...
	mov	2349,r13		! source line 2349
	mov	"\0\0RE",r10
!   ReturnResult: retVal  (sizeInBytes=4)
	load	[r14+-56],r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_232_ValidateFd:
	.word	_sourceFileName
	.word	_Label_1719
	.word	4		! total size of parameters
	.word	48		! frame size = 48
	.word	_Label_1720
	.word	8
	.word	4
	.word	_Label_1721
	.word	-12
	.word	4
	.word	_Label_1722
	.word	-16
	.word	4
	.word	_Label_1723
	.word	-20
	.word	4
	.word	_Label_1724
	.word	-24
	.word	4
	.word	_Label_1725
	.word	-28
	.word	4
	.word	_Label_1726
	.word	-32
	.word	4
	.word	_Label_1727
	.word	-36
	.word	4
	.word	_Label_1728
	.word	-40
	.word	4
	.word	_Label_1729
	.word	-44
	.word	4
	.word	_Label_1730
	.word	-48
	.word	4
	.word	_Label_1731
	.word	-52
	.word	4
	.word	_Label_1732
	.word	-56
	.word	4
	.word	0
_Label_1719:
	.ascii	"ValidateFd\0"
	.align
_Label_1720:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_1721:
	.byte	'?'
	.ascii	"_temp_1717\0"
	.align
_Label_1722:
	.byte	'?'
	.ascii	"_temp_1716\0"
	.align
_Label_1723:
	.byte	'?'
	.ascii	"_temp_1715\0"
	.align
_Label_1724:
	.byte	'?'
	.ascii	"_temp_1714\0"
	.align
_Label_1725:
	.byte	'?'
	.ascii	"_temp_1713\0"
	.align
_Label_1726:
	.byte	'?'
	.ascii	"_temp_1712\0"
	.align
_Label_1727:
	.byte	'?'
	.ascii	"_temp_1711\0"
	.align
_Label_1728:
	.byte	'?'
	.ascii	"_temp_1710\0"
	.align
_Label_1729:
	.byte	'?'
	.ascii	"_temp_1706\0"
	.align
_Label_1730:
	.byte	'?'
	.ascii	"_temp_1705\0"
	.align
_Label_1731:
	.byte	'?'
	.ascii	"_temp_1704\0"
	.align
_Label_1732:
	.byte	'I'
	.ascii	"retVal\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Open  ===============
! 
_P_Kernel_Handle_Sys_Open:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Open,r1
	push	r1
	mov	203,r1
_Label_7796:
	push	r0
	sub	r1,1,r1
	bne	_Label_7796
	mov	2355,r13		! source line 2355
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! nameBuf
!   NEW ARRAY Constructor...
!   _temp_1734 = &_temp_1733
	add	r14,-524,r1
	store	r1,[r14+-264]
!   _temp_1734 = _temp_1734 + 4
	load	[r14+-264],r1
	add	r1,4,r1
	store	r1,[r14+-264]
!   Next value...
	mov	255,r1
	store	r1,[r14+-260]
_Label_1736:
!   Data Move: *_temp_1734 = 0  (sizeInBytes=1)
	mov	0,r1
	load	[r14+-264],r2
	storeb	r1,[r2]
!   _temp_1734 = _temp_1734 + 1
	load	[r14+-264],r1
	add	r1,1,r1
	store	r1,[r14+-264]
!   _temp_1735 = _temp_1735 + -1
	load	[r14+-260],r1
	add	r1,-1,r1
	store	r1,[r14+-260]
!   if intNotZero (_temp_1735) then goto _Label_1736
	load	[r14+-260],r1
	cmp	r1,r0
	bne	_Label_1736
!   Initialize the array size...
	mov	255,r1
	store	r1,[r14+-524]
!   _temp_1737 = &_temp_1733
	add	r14,-524,r1
	store	r1,[r14+-256]
!   make sure array has size 255
	load	[r14+-256],r1
	load	[r1],r1
	set	255, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: nameBuf = *_temp_1737  (sizeInBytes=260)
	load	[r14+-256],r5
	add	r14,-784,r4
	mov	65,r3
_Label_7797:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_7797
! garbage
!   garbage = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-788]
! freeFd
!   freeFd = garbage		(4 bytes)
	load	[r14+-788],r1
	store	r1,[r14+-792]
! ASSIGNMENT STATEMENT...
	mov	2361,r13		! source line 2361
	mov	"\0\0AS",r10
!   serial = _StringConst_42
	set	_StringConst_42,r1
	store	r1,[r14+-800]
! ASSIGNMENT STATEMENT...
	mov	2362,r13		! source line 2362
	mov	"\0\0AS",r10
!   _temp_1738 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-252]
!   Prepare Argument: offset=8  value=_temp_1738  sizeInBytes=4
	load	[r14+-252],r1
	store	r1,[r15+0]
!   Call the function
	mov	2362,r13		! source line 2362
	mov	"\0\0CA",r10
	call	_function_234_ValidatePtr
!   Retrieve Result: targetName=garbage  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-788]
! IF STATEMENT...
	mov	2363,r13		! source line 2363
	mov	"\0\0IF",r10
!   if garbage >= 0 then goto _Label_1740		(int)
	load	[r14+-788],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1740
!	_Label_1739	jmp	_Label_1739
_Label_1739:
! THEN...
	mov	2364,r13		! source line 2364
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2364,r13		! source line 2364
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1742 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-244]
!   Data Move: _temp_1741 = *_temp_1742  (sizeInBytes=4)
	load	[r14+-244],r1
	load	[r1],r1
	store	r1,[r14+-248]
!   if intIsZero (_temp_1741) then goto _runtimeErrorNullPointer
	load	[r14+-248],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1743 = _temp_1741 + 236
	load	[r14+-248],r1
	add	r1,236,r1
	store	r1,[r14+-240]
!   Data Move: *_temp_1743 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-240],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	2365,r13		! source line 2365
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,816,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1740:
! ASSIGNMENT STATEMENT...
	mov	2368,r13		! source line 2368
	mov	"\0\0AS",r10
	mov	2368,r13		! source line 2368
	mov	"\0\0SE",r10
!   _temp_1744 = &nameBuf
	add	r14,-784,r1
	store	r1,[r14+-236]
!   _temp_1745 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-232]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1747 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-224]
!   Data Move: _temp_1746 = *_temp_1747  (sizeInBytes=4)
	load	[r14+-224],r1
	load	[r1],r1
	store	r1,[r14+-228]
!   if intIsZero (_temp_1746) then goto _runtimeErrorNullPointer
	load	[r14+-228],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1748 = _temp_1746 + 32
	load	[r14+-228],r1
	add	r1,32,r1
	store	r1,[r14+-220]
!   Prepare Argument: offset=12  value=_temp_1744  sizeInBytes=4
	load	[r14+-236],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_1745  sizeInBytes=4
	load	[r14+-232],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=255  sizeInBytes=4
	mov	255,r1
	store	r1,[r15+12]
!   Send message GetStringFromVirtual
	load	[r14+-220],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,84,r2
	call	r2
!   Retrieve Result: targetName=garbage  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-788]
! IF STATEMENT...
	mov	2369,r13		! source line 2369
	mov	"\0\0IF",r10
!   if garbage >= 0 then goto _Label_1750		(int)
	load	[r14+-788],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1750
!	_Label_1749	jmp	_Label_1749
_Label_1749:
! THEN...
	mov	2370,r13		! source line 2370
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2370,r13		! source line 2370
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1752 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-212]
!   Data Move: _temp_1751 = *_temp_1752  (sizeInBytes=4)
	load	[r14+-212],r1
	load	[r1],r1
	store	r1,[r14+-216]
!   if intIsZero (_temp_1751) then goto _runtimeErrorNullPointer
	load	[r14+-216],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1753 = _temp_1751 + 236
	load	[r14+-216],r1
	add	r1,236,r1
	store	r1,[r14+-208]
!   Data Move: *_temp_1753 = 8  (sizeInBytes=4)
	mov	8,r1
	load	[r14+-208],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	2371,r13		! source line 2371
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,816,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1750:
! IF STATEMENT...
	mov	2374,r13		! source line 2374
	mov	"\0\0IF",r10
!   if flags != 4 then goto _Label_1755		(int)
	load	[r14+12],r1
	mov	4,r2
	cmp	r1,r2
	bne	_Label_1755
!	_Label_1754	jmp	_Label_1754
_Label_1754:
! THEN...
	mov	2375,r13		! source line 2375
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2375,r13		! source line 2375
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1757 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-200]
!   Data Move: _temp_1756 = *_temp_1757  (sizeInBytes=4)
	load	[r14+-200],r1
	load	[r1],r1
	store	r1,[r14+-204]
!   if intIsZero (_temp_1756) then goto _runtimeErrorNullPointer
	load	[r14+-204],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1758 = _temp_1756 + 236
	load	[r14+-204],r1
	add	r1,236,r1
	store	r1,[r14+-196]
!   Data Move: *_temp_1758 = 8  (sizeInBytes=4)
	mov	8,r1
	load	[r14+-196],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	2376,r13		! source line 2376
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,816,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1755:
! IF STATEMENT...
	mov	2379,r13		! source line 2379
	mov	"\0\0IF",r10
!   if intIsZero (flags) then goto _Label_1759
	load	[r14+12],r1
	cmp	r1,r0
	be	_Label_1759
	jmp	_Label_1760
_Label_1759:
! THEN...
	mov	2380,r13		! source line 2380
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2380,r13		! source line 2380
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1762 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-188]
!   Data Move: _temp_1761 = *_temp_1762  (sizeInBytes=4)
	load	[r14+-188],r1
	load	[r1],r1
	store	r1,[r14+-192]
!   if intIsZero (_temp_1761) then goto _runtimeErrorNullPointer
	load	[r14+-192],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1763 = _temp_1761 + 236
	load	[r14+-192],r1
	add	r1,236,r1
	store	r1,[r14+-184]
!   Data Move: *_temp_1763 = 8  (sizeInBytes=4)
	mov	8,r1
	load	[r14+-184],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	2381,r13		! source line 2381
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,816,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1760:
! WHILE STATEMENT...
	mov	2384,r13		! source line 2384
	mov	"\0\0WH",r10
_Label_1764:
!   if freeFd >= 10 then goto _Label_1766		(int)
	load	[r14+-792],r1
	mov	10,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1766
!	_Label_1767	jmp	_Label_1767
_Label_1767:
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1770 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-172]
!   Data Move: _temp_1769 = *_temp_1770  (sizeInBytes=4)
	load	[r14+-172],r1
	load	[r1],r1
	store	r1,[r14+-176]
!   if intIsZero (_temp_1769) then goto _runtimeErrorNullPointer
	load	[r14+-176],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1771 = _temp_1769 + 244
	load	[r14+-176],r1
	add	r1,244,r1
	store	r1,[r14+-168]
!   Move address of _temp_1771 [freeFd ] into _temp_1772
!     make sure index expr is >= 0
	load	[r14+-792],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-168],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-164]
!   Data Move: _temp_1768 = *_temp_1772  (sizeInBytes=4)
	load	[r14+-164],r1
	load	[r1],r1
	store	r1,[r14+-180]
!   if intIsZero (_temp_1768) then goto _Label_1766
	load	[r14+-180],r1
	cmp	r1,r0
	be	_Label_1766
!	_Label_1765	jmp	_Label_1765
_Label_1765:
	mov	2384,r13		! source line 2384
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	2385,r13		! source line 2385
	mov	"\0\0AS",r10
!   freeFd = freeFd + 1		(int)
	load	[r14+-792],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-792]
! END WHILE...
	jmp	_Label_1764
_Label_1766:
! IF STATEMENT...
	mov	2388,r13		! source line 2388
	mov	"\0\0IF",r10
!   if freeFd != 10 then goto _Label_1774		(int)
	load	[r14+-792],r1
	mov	10,r2
	cmp	r1,r2
	bne	_Label_1774
!	_Label_1773	jmp	_Label_1773
_Label_1773:
! THEN...
	mov	2389,r13		! source line 2389
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2389,r13		! source line 2389
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1776 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-156]
!   Data Move: _temp_1775 = *_temp_1776  (sizeInBytes=4)
	load	[r14+-156],r1
	load	[r1],r1
	store	r1,[r14+-160]
!   if intIsZero (_temp_1775) then goto _runtimeErrorNullPointer
	load	[r14+-160],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1777 = _temp_1775 + 236
	load	[r14+-160],r1
	add	r1,236,r1
	store	r1,[r14+-152]
!   Data Move: *_temp_1777 = 4  (sizeInBytes=4)
	mov	4,r1
	load	[r14+-152],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	2390,r13		! source line 2390
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,816,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1774:
! IF STATEMENT...
	mov	2393,r13		! source line 2393
	mov	"\0\0IF",r10
!   _temp_1781 = &nameBuf
	add	r14,-784,r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=serial  sizeInBytes=4
	load	[r14+-800],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1781  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+4]
!   Call the function
	mov	2393,r13		! source line 2393
	mov	"\0\0CA",r10
	call	_P_System_StrEqual
!   Retrieve Result: targetName=_temp_1780  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   _temp_1782 = _temp_1780 XOR 1		(bool)
	loadb	[r14+-10],r1
	mov	1,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-9]
!   if _temp_1782 then goto _Label_1779 else goto _Label_1778
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1778
	jmp	_Label_1779
_Label_1778:
! THEN...
	mov	2394,r13		! source line 2394
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2394,r13		! source line 2394
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1784 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-140]
!   Data Move: _temp_1783 = *_temp_1784  (sizeInBytes=4)
	load	[r14+-140],r1
	load	[r1],r1
	store	r1,[r14+-144]
!   if intIsZero (_temp_1783) then goto _runtimeErrorNullPointer
	load	[r14+-144],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1785 = _temp_1783 + 244
	load	[r14+-144],r1
	add	r1,244,r1
	store	r1,[r14+-136]
!   Move address of _temp_1785 [freeFd ] into _temp_1786
!     make sure index expr is >= 0
	load	[r14+-792],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-136],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-132]
!   _temp_1788 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-124]
!   _temp_1789 = _temp_1788 + 7384
	load	[r14+-124],r1
	add	r1,7384,r1
	store	r1,[r14+-120]
!   _temp_1787 = _temp_1789		(4 bytes)
	load	[r14+-120],r1
	store	r1,[r14+-128]
!   Data Move: *_temp_1786 = _temp_1787  (sizeInBytes=4)
	load	[r14+-128],r1
	load	[r14+-132],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	2395,r13		! source line 2395
	mov	"\0\0RE",r10
!   ReturnResult: freeFd  (sizeInBytes=4)
	load	[r14+-792],r1
	store	r1,[r14+8]
	add	r15,816,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1779:
! IF STATEMENT...
	mov	2398,r13		! source line 2398
	mov	"\0\0IF",r10
	mov	2398,r13		! source line 2398
	mov	"\0\0SE",r10
!   _temp_1794 = &nameBuf
	add	r14,-784,r1
	store	r1,[r14+-112]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1797 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-100]
!   Data Move: _temp_1796 = *_temp_1797  (sizeInBytes=4)
	load	[r14+-100],r1
	load	[r1],r1
	store	r1,[r14+-104]
!   if intIsZero (_temp_1796) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1798 = _temp_1796 + 240
	load	[r14+-104],r1
	add	r1,240,r1
	store	r1,[r14+-96]
!   Data Move: _temp_1795 = *_temp_1798  (sizeInBytes=4)
	load	[r14+-96],r1
	load	[r1],r1
	store	r1,[r14+-108]
!   if intIsZero (_temp_1795) then goto _runtimeErrorNullPointer
	load	[r14+-108],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_1794  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+4]
!   Send message Lookup
	load	[r14+-108],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,28,r2
	call	r2
!   Retrieve Result: targetName=_temp_1793  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-116]
!   if intIsZero (_temp_1793) then goto _Label_1792
	load	[r14+-116],r1
	cmp	r1,r0
	be	_Label_1792
	jmp	_Label_1791
_Label_1792:
!   _temp_1799 = flags AND 4		(int)
	load	[r14+12],r1
	mov	4,r2
	and	r1,r2,r1
	store	r1,[r14+-92]
!   if _temp_1799 == 4 then goto _Label_1791		(int)
	load	[r14+-92],r1
	mov	4,r2
	cmp	r1,r2
	be	_Label_1791
!	_Label_1790	jmp	_Label_1790
_Label_1790:
! THEN...
	mov	2401,r13		! source line 2401
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2401,r13		! source line 2401
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1801 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-84]
!   Data Move: _temp_1800 = *_temp_1801  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r1],r1
	store	r1,[r14+-88]
!   if intIsZero (_temp_1800) then goto _runtimeErrorNullPointer
	load	[r14+-88],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1802 = _temp_1800 + 236
	load	[r14+-88],r1
	add	r1,236,r1
	store	r1,[r14+-80]
!   Data Move: *_temp_1802 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-80],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	2402,r13		! source line 2402
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,816,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1791:
! ASSIGNMENT STATEMENT...
	mov	2405,r13		! source line 2405
	mov	"\0\0AS",r10
	mov	2405,r13		! source line 2405
	mov	"\0\0SE",r10
!   _temp_1803 = &nameBuf
	add	r14,-784,r1
	store	r1,[r14+-76]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1806 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-64]
!   Data Move: _temp_1805 = *_temp_1806  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   if intIsZero (_temp_1805) then goto _runtimeErrorNullPointer
	load	[r14+-68],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1807 = _temp_1805 + 240
	load	[r14+-68],r1
	add	r1,240,r1
	store	r1,[r14+-60]
!   Data Move: _temp_1804 = *_temp_1807  (sizeInBytes=4)
	load	[r14+-60],r1
	load	[r1],r1
	store	r1,[r14+-72]
!   _temp_1808 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=12  value=_temp_1803  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_1804  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=flags  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+12]
!   Prepare Argument: offset=24  value=mode  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+16]
!   Send message Open
	load	[r14+-56],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,36,r2
	call	r2
!   Retrieve Result: targetName=tempOpenFile  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-796]
! IF STATEMENT...
	mov	2407,r13		! source line 2407
	mov	"\0\0IF",r10
!   if intIsZero (tempOpenFile) then goto _Label_1809
	load	[r14+-796],r1
	cmp	r1,r0
	be	_Label_1809
	jmp	_Label_1810
_Label_1809:
! THEN...
	mov	2408,r13		! source line 2408
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2408,r13		! source line 2408
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,816,r15
	pop	r13
	pop	r14
	ret
	jmp	_Label_1811
_Label_1810:
! ELSE...
	mov	2409,r13		! source line 2409
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	2409,r13		! source line 2409
	mov	"\0\0IF",r10
!   if intIsZero (tempOpenFile) then goto _runtimeErrorNullPointer
	load	[r14+-796],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1815 = tempOpenFile + 12
	load	[r14+-796],r1
	add	r1,12,r1
	store	r1,[r14+-48]
!   Data Move: _temp_1814 = *_temp_1815  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r1],r1
	store	r1,[r14+-52]
!   if _temp_1814 != 4 then goto _Label_1813		(int)
	load	[r14+-52],r1
	mov	4,r2
	cmp	r1,r2
	bne	_Label_1813
!	_Label_1812	jmp	_Label_1812
_Label_1812:
! THEN...
	mov	2410,r13		! source line 2410
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2410,r13		! source line 2410
	mov	"\0\0SE",r10
!   _temp_1816 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=12  value=tempOpenFile  sizeInBytes=4
	load	[r14+-796],r1
	store	r1,[r15+4]
!   Send message Close
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,40,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2411,r13		! source line 2411
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1818 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-36]
!   Data Move: _temp_1817 = *_temp_1818  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if intIsZero (_temp_1817) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1819 = _temp_1817 + 236
	load	[r14+-40],r1
	add	r1,236,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_1819 = 9  (sizeInBytes=4)
	mov	9,r1
	load	[r14+-32],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	2412,r13		! source line 2412
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,816,r15
	pop	r13
	pop	r14
	ret
	jmp	_Label_1820
_Label_1813:
! ELSE...
	mov	2414,r13		! source line 2414
	mov	"\0\0EL",r10
! ASSIGNMENT STATEMENT...
	mov	2414,r13		! source line 2414
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1822 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-24]
!   Data Move: _temp_1821 = *_temp_1822  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_1821) then goto _runtimeErrorNullPointer
	load	[r14+-28],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1823 = _temp_1821 + 244
	load	[r14+-28],r1
	add	r1,244,r1
	store	r1,[r14+-20]
!   Move address of _temp_1823 [freeFd ] into _temp_1824
!     make sure index expr is >= 0
	load	[r14+-792],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-20],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   Data Move: *_temp_1824 = tempOpenFile  (sizeInBytes=4)
	load	[r14+-796],r1
	load	[r14+-16],r2
	store	r1,[r2]
! END IF...
_Label_1820:
! END IF...
_Label_1811:
! RETURN STATEMENT...
	mov	2418,r13		! source line 2418
	mov	"\0\0RE",r10
!   ReturnResult: freeFd  (sizeInBytes=4)
	load	[r14+-792],r1
	store	r1,[r14+8]
	add	r15,816,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Open:
	.word	_sourceFileName
	.word	_Label_1825
	.word	12		! total size of parameters
	.word	812		! frame size = 812
	.word	_Label_1826
	.word	8
	.word	4
	.word	_Label_1827
	.word	12
	.word	4
	.word	_Label_1828
	.word	16
	.word	4
	.word	_Label_1829
	.word	-16
	.word	4
	.word	_Label_1830
	.word	-20
	.word	4
	.word	_Label_1831
	.word	-24
	.word	4
	.word	_Label_1832
	.word	-28
	.word	4
	.word	_Label_1833
	.word	-32
	.word	4
	.word	_Label_1834
	.word	-36
	.word	4
	.word	_Label_1835
	.word	-40
	.word	4
	.word	_Label_1836
	.word	-44
	.word	4
	.word	_Label_1837
	.word	-48
	.word	4
	.word	_Label_1838
	.word	-52
	.word	4
	.word	_Label_1839
	.word	-56
	.word	4
	.word	_Label_1840
	.word	-60
	.word	4
	.word	_Label_1841
	.word	-64
	.word	4
	.word	_Label_1842
	.word	-68
	.word	4
	.word	_Label_1843
	.word	-72
	.word	4
	.word	_Label_1844
	.word	-76
	.word	4
	.word	_Label_1845
	.word	-80
	.word	4
	.word	_Label_1846
	.word	-84
	.word	4
	.word	_Label_1847
	.word	-88
	.word	4
	.word	_Label_1848
	.word	-92
	.word	4
	.word	_Label_1849
	.word	-96
	.word	4
	.word	_Label_1850
	.word	-100
	.word	4
	.word	_Label_1851
	.word	-104
	.word	4
	.word	_Label_1852
	.word	-108
	.word	4
	.word	_Label_1853
	.word	-112
	.word	4
	.word	_Label_1854
	.word	-116
	.word	4
	.word	_Label_1855
	.word	-120
	.word	4
	.word	_Label_1856
	.word	-124
	.word	4
	.word	_Label_1857
	.word	-128
	.word	4
	.word	_Label_1858
	.word	-132
	.word	4
	.word	_Label_1859
	.word	-136
	.word	4
	.word	_Label_1860
	.word	-140
	.word	4
	.word	_Label_1861
	.word	-144
	.word	4
	.word	_Label_1862
	.word	-9
	.word	1
	.word	_Label_1863
	.word	-148
	.word	4
	.word	_Label_1864
	.word	-10
	.word	1
	.word	_Label_1865
	.word	-152
	.word	4
	.word	_Label_1866
	.word	-156
	.word	4
	.word	_Label_1867
	.word	-160
	.word	4
	.word	_Label_1868
	.word	-164
	.word	4
	.word	_Label_1869
	.word	-168
	.word	4
	.word	_Label_1870
	.word	-172
	.word	4
	.word	_Label_1871
	.word	-176
	.word	4
	.word	_Label_1872
	.word	-180
	.word	4
	.word	_Label_1873
	.word	-184
	.word	4
	.word	_Label_1874
	.word	-188
	.word	4
	.word	_Label_1875
	.word	-192
	.word	4
	.word	_Label_1876
	.word	-196
	.word	4
	.word	_Label_1877
	.word	-200
	.word	4
	.word	_Label_1878
	.word	-204
	.word	4
	.word	_Label_1879
	.word	-208
	.word	4
	.word	_Label_1880
	.word	-212
	.word	4
	.word	_Label_1881
	.word	-216
	.word	4
	.word	_Label_1882
	.word	-220
	.word	4
	.word	_Label_1883
	.word	-224
	.word	4
	.word	_Label_1884
	.word	-228
	.word	4
	.word	_Label_1885
	.word	-232
	.word	4
	.word	_Label_1886
	.word	-236
	.word	4
	.word	_Label_1887
	.word	-240
	.word	4
	.word	_Label_1888
	.word	-244
	.word	4
	.word	_Label_1889
	.word	-248
	.word	4
	.word	_Label_1890
	.word	-252
	.word	4
	.word	_Label_1891
	.word	-256
	.word	4
	.word	_Label_1892
	.word	-260
	.word	4
	.word	_Label_1893
	.word	-264
	.word	4
	.word	_Label_1894
	.word	-524
	.word	260
	.word	_Label_1895
	.word	-784
	.word	260
	.word	_Label_1896
	.word	-788
	.word	4
	.word	_Label_1897
	.word	-792
	.word	4
	.word	_Label_1898
	.word	-796
	.word	4
	.word	_Label_1899
	.word	-800
	.word	4
	.word	0
_Label_1825:
	.ascii	"Handle_Sys_Open\0"
	.align
_Label_1826:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_1827:
	.byte	'I'
	.ascii	"flags\0"
	.align
_Label_1828:
	.byte	'I'
	.ascii	"mode\0"
	.align
_Label_1829:
	.byte	'?'
	.ascii	"_temp_1824\0"
	.align
_Label_1830:
	.byte	'?'
	.ascii	"_temp_1823\0"
	.align
_Label_1831:
	.byte	'?'
	.ascii	"_temp_1822\0"
	.align
_Label_1832:
	.byte	'?'
	.ascii	"_temp_1821\0"
	.align
_Label_1833:
	.byte	'?'
	.ascii	"_temp_1819\0"
	.align
_Label_1834:
	.byte	'?'
	.ascii	"_temp_1818\0"
	.align
_Label_1835:
	.byte	'?'
	.ascii	"_temp_1817\0"
	.align
_Label_1836:
	.byte	'?'
	.ascii	"_temp_1816\0"
	.align
_Label_1837:
	.byte	'?'
	.ascii	"_temp_1815\0"
	.align
_Label_1838:
	.byte	'?'
	.ascii	"_temp_1814\0"
	.align
_Label_1839:
	.byte	'?'
	.ascii	"_temp_1808\0"
	.align
_Label_1840:
	.byte	'?'
	.ascii	"_temp_1807\0"
	.align
_Label_1841:
	.byte	'?'
	.ascii	"_temp_1806\0"
	.align
_Label_1842:
	.byte	'?'
	.ascii	"_temp_1805\0"
	.align
_Label_1843:
	.byte	'?'
	.ascii	"_temp_1804\0"
	.align
_Label_1844:
	.byte	'?'
	.ascii	"_temp_1803\0"
	.align
_Label_1845:
	.byte	'?'
	.ascii	"_temp_1802\0"
	.align
_Label_1846:
	.byte	'?'
	.ascii	"_temp_1801\0"
	.align
_Label_1847:
	.byte	'?'
	.ascii	"_temp_1800\0"
	.align
_Label_1848:
	.byte	'?'
	.ascii	"_temp_1799\0"
	.align
_Label_1849:
	.byte	'?'
	.ascii	"_temp_1798\0"
	.align
_Label_1850:
	.byte	'?'
	.ascii	"_temp_1797\0"
	.align
_Label_1851:
	.byte	'?'
	.ascii	"_temp_1796\0"
	.align
_Label_1852:
	.byte	'?'
	.ascii	"_temp_1795\0"
	.align
_Label_1853:
	.byte	'?'
	.ascii	"_temp_1794\0"
	.align
_Label_1854:
	.byte	'?'
	.ascii	"_temp_1793\0"
	.align
_Label_1855:
	.byte	'?'
	.ascii	"_temp_1789\0"
	.align
_Label_1856:
	.byte	'?'
	.ascii	"_temp_1788\0"
	.align
_Label_1857:
	.byte	'?'
	.ascii	"_temp_1787\0"
	.align
_Label_1858:
	.byte	'?'
	.ascii	"_temp_1786\0"
	.align
_Label_1859:
	.byte	'?'
	.ascii	"_temp_1785\0"
	.align
_Label_1860:
	.byte	'?'
	.ascii	"_temp_1784\0"
	.align
_Label_1861:
	.byte	'?'
	.ascii	"_temp_1783\0"
	.align
_Label_1862:
	.byte	'C'
	.ascii	"_temp_1782\0"
	.align
_Label_1863:
	.byte	'?'
	.ascii	"_temp_1781\0"
	.align
_Label_1864:
	.byte	'C'
	.ascii	"_temp_1780\0"
	.align
_Label_1865:
	.byte	'?'
	.ascii	"_temp_1777\0"
	.align
_Label_1866:
	.byte	'?'
	.ascii	"_temp_1776\0"
	.align
_Label_1867:
	.byte	'?'
	.ascii	"_temp_1775\0"
	.align
_Label_1868:
	.byte	'?'
	.ascii	"_temp_1772\0"
	.align
_Label_1869:
	.byte	'?'
	.ascii	"_temp_1771\0"
	.align
_Label_1870:
	.byte	'?'
	.ascii	"_temp_1770\0"
	.align
_Label_1871:
	.byte	'?'
	.ascii	"_temp_1769\0"
	.align
_Label_1872:
	.byte	'?'
	.ascii	"_temp_1768\0"
	.align
_Label_1873:
	.byte	'?'
	.ascii	"_temp_1763\0"
	.align
_Label_1874:
	.byte	'?'
	.ascii	"_temp_1762\0"
	.align
_Label_1875:
	.byte	'?'
	.ascii	"_temp_1761\0"
	.align
_Label_1876:
	.byte	'?'
	.ascii	"_temp_1758\0"
	.align
_Label_1877:
	.byte	'?'
	.ascii	"_temp_1757\0"
	.align
_Label_1878:
	.byte	'?'
	.ascii	"_temp_1756\0"
	.align
_Label_1879:
	.byte	'?'
	.ascii	"_temp_1753\0"
	.align
_Label_1880:
	.byte	'?'
	.ascii	"_temp_1752\0"
	.align
_Label_1881:
	.byte	'?'
	.ascii	"_temp_1751\0"
	.align
_Label_1882:
	.byte	'?'
	.ascii	"_temp_1748\0"
	.align
_Label_1883:
	.byte	'?'
	.ascii	"_temp_1747\0"
	.align
_Label_1884:
	.byte	'?'
	.ascii	"_temp_1746\0"
	.align
_Label_1885:
	.byte	'?'
	.ascii	"_temp_1745\0"
	.align
_Label_1886:
	.byte	'?'
	.ascii	"_temp_1744\0"
	.align
_Label_1887:
	.byte	'?'
	.ascii	"_temp_1743\0"
	.align
_Label_1888:
	.byte	'?'
	.ascii	"_temp_1742\0"
	.align
_Label_1889:
	.byte	'?'
	.ascii	"_temp_1741\0"
	.align
_Label_1890:
	.byte	'?'
	.ascii	"_temp_1738\0"
	.align
_Label_1891:
	.byte	'?'
	.ascii	"_temp_1737\0"
	.align
_Label_1892:
	.byte	'?'
	.ascii	"_temp_1735\0"
	.align
_Label_1893:
	.byte	'?'
	.ascii	"_temp_1734\0"
	.align
_Label_1894:
	.byte	'?'
	.ascii	"_temp_1733\0"
	.align
_Label_1895:
	.byte	'A'
	.ascii	"nameBuf\0"
	.align
_Label_1896:
	.byte	'I'
	.ascii	"garbage\0"
	.align
_Label_1897:
	.byte	'I'
	.ascii	"freeFd\0"
	.align
_Label_1898:
	.byte	'P'
	.ascii	"tempOpenFile\0"
	.align
_Label_1899:
	.byte	'P'
	.ascii	"serial\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Read  ===============
! 
_P_Kernel_Handle_Sys_Read:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Read,r1
	push	r1
	mov	46,r1
_Label_7798:
	push	r0
	sub	r1,1,r1
	bne	_Label_7798
	mov	2423,r13		! source line 2423
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2427,r13		! source line 2427
	mov	"\0\0IF",r10
!   if sizeInBytes >= 0 then goto _Label_1901		(int)
	load	[r14+16],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1901
!	_Label_1900	jmp	_Label_1900
_Label_1900:
! THEN...
	mov	2428,r13		! source line 2428
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2428,r13		! source line 2428
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1903 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-164]
!   Data Move: _temp_1902 = *_temp_1903  (sizeInBytes=4)
	load	[r14+-164],r1
	load	[r1],r1
	store	r1,[r14+-168]
!   if intIsZero (_temp_1902) then goto _runtimeErrorNullPointer
	load	[r14+-168],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1904 = _temp_1902 + 236
	load	[r14+-168],r1
	add	r1,236,r1
	store	r1,[r14+-160]
!   Data Move: *_temp_1904 = 8  (sizeInBytes=4)
	mov	8,r1
	load	[r14+-160],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	2429,r13		! source line 2429
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,188,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1901:
! IF STATEMENT...
	mov	2432,r13		! source line 2432
	mov	"\0\0IF",r10
!   _temp_1909 = buffer		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-152]
!   Prepare Argument: offset=8  value=_temp_1909  sizeInBytes=4
	load	[r14+-152],r1
	store	r1,[r15+0]
!   Call the function
	mov	2432,r13		! source line 2432
	mov	"\0\0CA",r10
	call	_function_234_ValidatePtr
!   Retrieve Result: targetName=_temp_1908  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-156]
!   if _temp_1908 >= 0 then goto _Label_1907		(int)
	load	[r14+-156],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1907
	jmp	_Label_1905
_Label_1907:
!   _temp_1912 = buffer		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-140]
!   _temp_1911 = _temp_1912 + sizeInBytes		(int)
	load	[r14+-140],r1
	load	[r14+16],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-144]
!   Prepare Argument: offset=8  value=_temp_1911  sizeInBytes=4
	load	[r14+-144],r1
	store	r1,[r15+0]
!   Call the function
	mov	2432,r13		! source line 2432
	mov	"\0\0CA",r10
	call	_function_234_ValidatePtr
!   Retrieve Result: targetName=_temp_1910  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-148]
!   if _temp_1910 >= 0 then goto _Label_1906		(int)
	load	[r14+-148],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1906
!	_Label_1905	jmp	_Label_1905
_Label_1905:
! THEN...
	mov	2433,r13		! source line 2433
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2433,r13		! source line 2433
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1914 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-132]
!   Data Move: _temp_1913 = *_temp_1914  (sizeInBytes=4)
	load	[r14+-132],r1
	load	[r1],r1
	store	r1,[r14+-136]
!   if intIsZero (_temp_1913) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1915 = _temp_1913 + 236
	load	[r14+-136],r1
	add	r1,236,r1
	store	r1,[r14+-128]
!   Data Move: *_temp_1915 = 6  (sizeInBytes=4)
	mov	6,r1
	load	[r14+-128],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	2434,r13		! source line 2434
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,188,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1906:
! IF STATEMENT...
	mov	2437,r13		! source line 2437
	mov	"\0\0IF",r10
!   _temp_1919 = buffer		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-120]
!   Prepare Argument: offset=8  value=_temp_1919  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+0]
!   Call the function
	mov	2437,r13		! source line 2437
	mov	"\0\0CA",r10
	call	_function_233_ValidatePointerWrite
!   Retrieve Result: targetName=_temp_1918  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-124]
!   if _temp_1918 >= 0 then goto _Label_1917		(int)
	load	[r14+-124],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1917
!	_Label_1916	jmp	_Label_1916
_Label_1916:
! THEN...
	mov	2438,r13		! source line 2438
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2438,r13		! source line 2438
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,188,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1917:
! IF STATEMENT...
	mov	2442,r13		! source line 2442
	mov	"\0\0IF",r10
!   Prepare Argument: offset=8  value=fileDesc  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	2442,r13		! source line 2442
	mov	"\0\0CA",r10
	call	_function_232_ValidateFd
!   Retrieve Result: targetName=_temp_1922  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-116]
!   if _temp_1922 >= 0 then goto _Label_1921		(int)
	load	[r14+-116],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1921
!	_Label_1920	jmp	_Label_1920
_Label_1920:
! THEN...
	mov	2443,r13		! source line 2443
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2443,r13		! source line 2443
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,188,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1921:
! ASSIGNMENT STATEMENT...
	mov	2445,r13		! source line 2445
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1924 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-108]
!   Data Move: _temp_1923 = *_temp_1924  (sizeInBytes=4)
	load	[r14+-108],r1
	load	[r1],r1
	store	r1,[r14+-112]
!   if intIsZero (_temp_1923) then goto _runtimeErrorNullPointer
	load	[r14+-112],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1925 = _temp_1923 + 244
	load	[r14+-112],r1
	add	r1,244,r1
	store	r1,[r14+-104]
!   Move address of _temp_1925 [fileDesc ] into _temp_1926
!     make sure index expr is >= 0
	load	[r14+8],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-104],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-100]
!   Data Move: file = *_temp_1926  (sizeInBytes=4)
	load	[r14+-100],r1
	load	[r1],r1
	store	r1,[r14+-176]
! IF STATEMENT...
	mov	2446,r13		! source line 2446
	mov	"\0\0IF",r10
!   if intIsZero (file) then goto _runtimeErrorNullPointer
	load	[r14+-176],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1930 = file + 12
	load	[r14+-176],r1
	add	r1,12,r1
	store	r1,[r14+-92]
!   Data Move: _temp_1929 = *_temp_1930  (sizeInBytes=4)
	load	[r14+-92],r1
	load	[r1],r1
	store	r1,[r14+-96]
!   if _temp_1929 != 4 then goto _Label_1928		(int)
	load	[r14+-96],r1
	mov	4,r2
	cmp	r1,r2
	bne	_Label_1928
!	_Label_1927	jmp	_Label_1927
_Label_1927:
! THEN...
	mov	2447,r13		! source line 2447
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2447,r13		! source line 2447
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1932 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-84]
!   Data Move: _temp_1931 = *_temp_1932  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r1],r1
	store	r1,[r14+-88]
!   if intIsZero (_temp_1931) then goto _runtimeErrorNullPointer
	load	[r14+-88],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1933 = _temp_1931 + 236
	load	[r14+-88],r1
	add	r1,236,r1
	store	r1,[r14+-80]
!   Data Move: *_temp_1933 = 9  (sizeInBytes=4)
	mov	9,r1
	load	[r14+-80],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	2448,r13		! source line 2448
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,188,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1928:
! IF STATEMENT...
	mov	2452,r13		! source line 2452
	mov	"\0\0IF",r10
!   if intIsZero (file) then goto _runtimeErrorNullPointer
	load	[r14+-176],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1939 = file + 32
	load	[r14+-176],r1
	add	r1,32,r1
	store	r1,[r14+-68]
!   Data Move: _temp_1938 = *_temp_1939  (sizeInBytes=4)
	load	[r14+-68],r1
	load	[r1],r1
	store	r1,[r14+-72]
!   _temp_1937 = _temp_1938 AND 1		(int)
	load	[r14+-72],r1
	mov	1,r2
	and	r1,r2,r1
	store	r1,[r14+-76]
!   if _temp_1937 == 1 then goto _Label_1935		(int)
	load	[r14+-76],r1
	mov	1,r2
	cmp	r1,r2
	be	_Label_1935
!	_Label_1936	jmp	_Label_1936
_Label_1936:
!   if intIsZero (file) then goto _runtimeErrorNullPointer
	load	[r14+-176],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1942 = file + 32
	load	[r14+-176],r1
	add	r1,32,r1
	store	r1,[r14+-56]
!   Data Move: _temp_1941 = *_temp_1942  (sizeInBytes=4)
	load	[r14+-56],r1
	load	[r1],r1
	store	r1,[r14+-60]
!   _temp_1940 = _temp_1941 AND 3		(int)
	load	[r14+-60],r1
	mov	3,r2
	and	r1,r2,r1
	store	r1,[r14+-64]
!   if _temp_1940 == 3 then goto _Label_1935		(int)
	load	[r14+-64],r1
	mov	3,r2
	cmp	r1,r2
	be	_Label_1935
!	_Label_1934	jmp	_Label_1934
_Label_1934:
! THEN...
	mov	2453,r13		! source line 2453
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2453,r13		! source line 2453
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1944 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-48]
!   Data Move: _temp_1943 = *_temp_1944  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r1],r1
	store	r1,[r14+-52]
!   if intIsZero (_temp_1943) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1945 = _temp_1943 + 236
	load	[r14+-52],r1
	add	r1,236,r1
	store	r1,[r14+-44]
!   Data Move: *_temp_1945 = 9  (sizeInBytes=4)
	mov	9,r1
	load	[r14+-44],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	2454,r13		! source line 2454
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,188,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1935:
! IF STATEMENT...
	mov	2457,r13		! source line 2457
	mov	"\0\0IF",r10
!   if intIsZero (file) then goto _runtimeErrorNullPointer
	load	[r14+-176],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1949 = file + 12
	load	[r14+-176],r1
	add	r1,12,r1
	store	r1,[r14+-36]
!   Data Move: _temp_1948 = *_temp_1949  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if _temp_1948 != 2 then goto _Label_1947		(int)
	load	[r14+-40],r1
	mov	2,r2
	cmp	r1,r2
	bne	_Label_1947
!	_Label_1946	jmp	_Label_1946
_Label_1946:
! THEN...
	mov	2458,r13		! source line 2458
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2458,r13		! source line 2458
	mov	"\0\0AS",r10
	mov	2458,r13		! source line 2458
	mov	"\0\0SE",r10
!   _temp_1950 = &_P_Kernel_serialDriver
	set	_P_Kernel_serialDriver,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=file  sizeInBytes=4
	load	[r14+-176],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=buffer  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=sizeInBytes  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+12]
!   Send message ReadTerminal
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=garbage  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-172]
	jmp	_Label_1951
_Label_1947:
! ELSE...
	mov	2459,r13		! source line 2459
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	2459,r13		! source line 2459
	mov	"\0\0IF",r10
!   if intIsZero (file) then goto _runtimeErrorNullPointer
	load	[r14+-176],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1955 = file + 12
	load	[r14+-176],r1
	add	r1,12,r1
	store	r1,[r14+-24]
!   Data Move: _temp_1954 = *_temp_1955  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   if _temp_1954 != 3 then goto _Label_1953		(int)
	load	[r14+-28],r1
	mov	3,r2
	cmp	r1,r2
	bne	_Label_1953
!	_Label_1952	jmp	_Label_1952
_Label_1952:
! THEN...
	mov	2460,r13		! source line 2460
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2460,r13		! source line 2460
	mov	"\0\0AS",r10
	mov	2460,r13		! source line 2460
	mov	"\0\0SE",r10
!   if intIsZero (file) then goto _runtimeErrorNullPointer
	load	[r14+-176],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1957 = file + 36
	load	[r14+-176],r1
	add	r1,36,r1
	store	r1,[r14+-16]
!   Data Move: _temp_1956 = *_temp_1957  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_1956) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=buffer  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=sizeInBytes  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+8]
!   Send message Read
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=garbage  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-172]
	jmp	_Label_1958
_Label_1953:
! ELSE...
	mov	2462,r13		! source line 2462
	mov	"\0\0EL",r10
! ASSIGNMENT STATEMENT...
	mov	2462,r13		! source line 2462
	mov	"\0\0AS",r10
	mov	2462,r13		! source line 2462
	mov	"\0\0SE",r10
!   _temp_1959 = &_P_Kernel_fileSystem
	set	_P_Kernel_fileSystem,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=file  sizeInBytes=4
	load	[r14+-176],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=buffer  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=sizeInBytes  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+12]
!   Send message ReadFile
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,36,r2
	call	r2
!   Retrieve Result: targetName=garbage  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-172]
! END IF...
_Label_1958:
! END IF...
_Label_1951:
! RETURN STATEMENT...
	mov	2465,r13		! source line 2465
	mov	"\0\0RE",r10
!   ReturnResult: garbage  (sizeInBytes=4)
	load	[r14+-172],r1
	store	r1,[r14+8]
	add	r15,188,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Read:
	.word	_sourceFileName
	.word	_Label_1960
	.word	12		! total size of parameters
	.word	184		! frame size = 184
	.word	_Label_1961
	.word	8
	.word	4
	.word	_Label_1962
	.word	12
	.word	4
	.word	_Label_1963
	.word	16
	.word	4
	.word	_Label_1964
	.word	-12
	.word	4
	.word	_Label_1965
	.word	-16
	.word	4
	.word	_Label_1966
	.word	-20
	.word	4
	.word	_Label_1967
	.word	-24
	.word	4
	.word	_Label_1968
	.word	-28
	.word	4
	.word	_Label_1969
	.word	-32
	.word	4
	.word	_Label_1970
	.word	-36
	.word	4
	.word	_Label_1971
	.word	-40
	.word	4
	.word	_Label_1972
	.word	-44
	.word	4
	.word	_Label_1973
	.word	-48
	.word	4
	.word	_Label_1974
	.word	-52
	.word	4
	.word	_Label_1975
	.word	-56
	.word	4
	.word	_Label_1976
	.word	-60
	.word	4
	.word	_Label_1977
	.word	-64
	.word	4
	.word	_Label_1978
	.word	-68
	.word	4
	.word	_Label_1979
	.word	-72
	.word	4
	.word	_Label_1980
	.word	-76
	.word	4
	.word	_Label_1981
	.word	-80
	.word	4
	.word	_Label_1982
	.word	-84
	.word	4
	.word	_Label_1983
	.word	-88
	.word	4
	.word	_Label_1984
	.word	-92
	.word	4
	.word	_Label_1985
	.word	-96
	.word	4
	.word	_Label_1986
	.word	-100
	.word	4
	.word	_Label_1987
	.word	-104
	.word	4
	.word	_Label_1988
	.word	-108
	.word	4
	.word	_Label_1989
	.word	-112
	.word	4
	.word	_Label_1990
	.word	-116
	.word	4
	.word	_Label_1991
	.word	-120
	.word	4
	.word	_Label_1992
	.word	-124
	.word	4
	.word	_Label_1993
	.word	-128
	.word	4
	.word	_Label_1994
	.word	-132
	.word	4
	.word	_Label_1995
	.word	-136
	.word	4
	.word	_Label_1996
	.word	-140
	.word	4
	.word	_Label_1997
	.word	-144
	.word	4
	.word	_Label_1998
	.word	-148
	.word	4
	.word	_Label_1999
	.word	-152
	.word	4
	.word	_Label_2000
	.word	-156
	.word	4
	.word	_Label_2001
	.word	-160
	.word	4
	.word	_Label_2002
	.word	-164
	.word	4
	.word	_Label_2003
	.word	-168
	.word	4
	.word	_Label_2004
	.word	-172
	.word	4
	.word	_Label_2005
	.word	-176
	.word	4
	.word	0
_Label_1960:
	.ascii	"Handle_Sys_Read\0"
	.align
_Label_1961:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_1962:
	.byte	'P'
	.ascii	"buffer\0"
	.align
_Label_1963:
	.byte	'I'
	.ascii	"sizeInBytes\0"
	.align
_Label_1964:
	.byte	'?'
	.ascii	"_temp_1959\0"
	.align
_Label_1965:
	.byte	'?'
	.ascii	"_temp_1957\0"
	.align
_Label_1966:
	.byte	'?'
	.ascii	"_temp_1956\0"
	.align
_Label_1967:
	.byte	'?'
	.ascii	"_temp_1955\0"
	.align
_Label_1968:
	.byte	'?'
	.ascii	"_temp_1954\0"
	.align
_Label_1969:
	.byte	'?'
	.ascii	"_temp_1950\0"
	.align
_Label_1970:
	.byte	'?'
	.ascii	"_temp_1949\0"
	.align
_Label_1971:
	.byte	'?'
	.ascii	"_temp_1948\0"
	.align
_Label_1972:
	.byte	'?'
	.ascii	"_temp_1945\0"
	.align
_Label_1973:
	.byte	'?'
	.ascii	"_temp_1944\0"
	.align
_Label_1974:
	.byte	'?'
	.ascii	"_temp_1943\0"
	.align
_Label_1975:
	.byte	'?'
	.ascii	"_temp_1942\0"
	.align
_Label_1976:
	.byte	'?'
	.ascii	"_temp_1941\0"
	.align
_Label_1977:
	.byte	'?'
	.ascii	"_temp_1940\0"
	.align
_Label_1978:
	.byte	'?'
	.ascii	"_temp_1939\0"
	.align
_Label_1979:
	.byte	'?'
	.ascii	"_temp_1938\0"
	.align
_Label_1980:
	.byte	'?'
	.ascii	"_temp_1937\0"
	.align
_Label_1981:
	.byte	'?'
	.ascii	"_temp_1933\0"
	.align
_Label_1982:
	.byte	'?'
	.ascii	"_temp_1932\0"
	.align
_Label_1983:
	.byte	'?'
	.ascii	"_temp_1931\0"
	.align
_Label_1984:
	.byte	'?'
	.ascii	"_temp_1930\0"
	.align
_Label_1985:
	.byte	'?'
	.ascii	"_temp_1929\0"
	.align
_Label_1986:
	.byte	'?'
	.ascii	"_temp_1926\0"
	.align
_Label_1987:
	.byte	'?'
	.ascii	"_temp_1925\0"
	.align
_Label_1988:
	.byte	'?'
	.ascii	"_temp_1924\0"
	.align
_Label_1989:
	.byte	'?'
	.ascii	"_temp_1923\0"
	.align
_Label_1990:
	.byte	'?'
	.ascii	"_temp_1922\0"
	.align
_Label_1991:
	.byte	'?'
	.ascii	"_temp_1919\0"
	.align
_Label_1992:
	.byte	'?'
	.ascii	"_temp_1918\0"
	.align
_Label_1993:
	.byte	'?'
	.ascii	"_temp_1915\0"
	.align
_Label_1994:
	.byte	'?'
	.ascii	"_temp_1914\0"
	.align
_Label_1995:
	.byte	'?'
	.ascii	"_temp_1913\0"
	.align
_Label_1996:
	.byte	'?'
	.ascii	"_temp_1912\0"
	.align
_Label_1997:
	.byte	'?'
	.ascii	"_temp_1911\0"
	.align
_Label_1998:
	.byte	'?'
	.ascii	"_temp_1910\0"
	.align
_Label_1999:
	.byte	'?'
	.ascii	"_temp_1909\0"
	.align
_Label_2000:
	.byte	'?'
	.ascii	"_temp_1908\0"
	.align
_Label_2001:
	.byte	'?'
	.ascii	"_temp_1904\0"
	.align
_Label_2002:
	.byte	'?'
	.ascii	"_temp_1903\0"
	.align
_Label_2003:
	.byte	'?'
	.ascii	"_temp_1902\0"
	.align
_Label_2004:
	.byte	'I'
	.ascii	"garbage\0"
	.align
_Label_2005:
	.byte	'P'
	.ascii	"file\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Write  ===============
! 
_P_Kernel_Handle_Sys_Write:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Write,r1
	push	r1
	mov	45,r1
_Label_7799:
	push	r0
	sub	r1,1,r1
	bne	_Label_7799
	mov	2470,r13		! source line 2470
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! retVal
!   retVal = -1		(4 bytes)
	mov	-1,r1
	store	r1,[r14+-168]
! IF STATEMENT...
	mov	2473,r13		! source line 2473
	mov	"\0\0IF",r10
!   if sizeInBytes >= 0 then goto _Label_2007		(int)
	load	[r14+16],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2007
!	_Label_2006	jmp	_Label_2006
_Label_2006:
! THEN...
	mov	2474,r13		! source line 2474
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2474,r13		! source line 2474
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2009 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-160]
!   Data Move: _temp_2008 = *_temp_2009  (sizeInBytes=4)
	load	[r14+-160],r1
	load	[r1],r1
	store	r1,[r14+-164]
!   if intIsZero (_temp_2008) then goto _runtimeErrorNullPointer
	load	[r14+-164],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2010 = _temp_2008 + 236
	load	[r14+-164],r1
	add	r1,236,r1
	store	r1,[r14+-156]
!   Data Move: *_temp_2010 = 8  (sizeInBytes=4)
	mov	8,r1
	load	[r14+-156],r2
	store	r1,[r2]
	jmp	_Label_2011
_Label_2007:
! ELSE...
	mov	2475,r13		! source line 2475
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	2475,r13		! source line 2475
	mov	"\0\0IF",r10
!   Prepare Argument: offset=8  value=fileDesc  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	2475,r13		! source line 2475
	mov	"\0\0CA",r10
	call	_function_232_ValidateFd
!   Retrieve Result: targetName=_temp_2015  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-152]
!   if _temp_2015 <= 0 then goto _Label_2013		(int)
	load	[r14+-152],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_2013
!	_Label_2014	jmp	_Label_2014
_Label_2014:
!   _temp_2017 = buffer		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-144]
!   Prepare Argument: offset=8  value=_temp_2017  sizeInBytes=4
	load	[r14+-144],r1
	store	r1,[r15+0]
!   Call the function
	mov	2475,r13		! source line 2475
	mov	"\0\0CA",r10
	call	_function_233_ValidatePointerWrite
!   Retrieve Result: targetName=_temp_2016  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-148]
!   if _temp_2016 <= 0 then goto _Label_2013		(int)
	load	[r14+-148],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_2013
!	_Label_2012	jmp	_Label_2012
_Label_2012:
! THEN...
	mov	2476,r13		! source line 2476
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2476,r13		! source line 2476
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2019 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-136]
!   Data Move: _temp_2018 = *_temp_2019  (sizeInBytes=4)
	load	[r14+-136],r1
	load	[r1],r1
	store	r1,[r14+-140]
!   if intIsZero (_temp_2018) then goto _runtimeErrorNullPointer
	load	[r14+-140],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2020 = _temp_2018 + 244
	load	[r14+-140],r1
	add	r1,244,r1
	store	r1,[r14+-132]
!   Move address of _temp_2020 [fileDesc ] into _temp_2021
!     make sure index expr is >= 0
	load	[r14+8],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-132],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-128]
!   Data Move: file = *_temp_2021  (sizeInBytes=4)
	load	[r14+-128],r1
	load	[r1],r1
	store	r1,[r14+-172]
! IF STATEMENT...
	mov	2477,r13		! source line 2477
	mov	"\0\0IF",r10
!   if intIsZero (file) then goto _runtimeErrorNullPointer
	load	[r14+-172],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2025 = file + 12
	load	[r14+-172],r1
	add	r1,12,r1
	store	r1,[r14+-120]
!   Data Move: _temp_2024 = *_temp_2025  (sizeInBytes=4)
	load	[r14+-120],r1
	load	[r1],r1
	store	r1,[r14+-124]
!   if _temp_2024 != 4 then goto _Label_2023		(int)
	load	[r14+-124],r1
	mov	4,r2
	cmp	r1,r2
	bne	_Label_2023
!	_Label_2022	jmp	_Label_2022
_Label_2022:
! THEN...
	mov	2478,r13		! source line 2478
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2478,r13		! source line 2478
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,184,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2023:
! IF STATEMENT...
	mov	2480,r13		! source line 2480
	mov	"\0\0IF",r10
!   if intIsZero (file) then goto _runtimeErrorNullPointer
	load	[r14+-172],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2031 = file + 32
	load	[r14+-172],r1
	add	r1,32,r1
	store	r1,[r14+-108]
!   Data Move: _temp_2030 = *_temp_2031  (sizeInBytes=4)
	load	[r14+-108],r1
	load	[r1],r1
	store	r1,[r14+-112]
!   _temp_2029 = _temp_2030 AND 2		(int)
	load	[r14+-112],r1
	mov	2,r2
	and	r1,r2,r1
	store	r1,[r14+-116]
!   if _temp_2029 == 2 then goto _Label_2027		(int)
	load	[r14+-116],r1
	mov	2,r2
	cmp	r1,r2
	be	_Label_2027
!	_Label_2028	jmp	_Label_2028
_Label_2028:
!   if intIsZero (file) then goto _runtimeErrorNullPointer
	load	[r14+-172],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2034 = file + 32
	load	[r14+-172],r1
	add	r1,32,r1
	store	r1,[r14+-96]
!   Data Move: _temp_2033 = *_temp_2034  (sizeInBytes=4)
	load	[r14+-96],r1
	load	[r1],r1
	store	r1,[r14+-100]
!   _temp_2032 = _temp_2033 AND 3		(int)
	load	[r14+-100],r1
	mov	3,r2
	and	r1,r2,r1
	store	r1,[r14+-104]
!   if _temp_2032 == 3 then goto _Label_2027		(int)
	load	[r14+-104],r1
	mov	3,r2
	cmp	r1,r2
	be	_Label_2027
!	_Label_2026	jmp	_Label_2026
_Label_2026:
! THEN...
	mov	2481,r13		! source line 2481
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2481,r13		! source line 2481
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2036 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-88]
!   Data Move: _temp_2035 = *_temp_2036  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_2035) then goto _runtimeErrorNullPointer
	load	[r14+-92],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2037 = _temp_2035 + 236
	load	[r14+-92],r1
	add	r1,236,r1
	store	r1,[r14+-84]
!   Data Move: *_temp_2037 = 9  (sizeInBytes=4)
	mov	9,r1
	load	[r14+-84],r2
	store	r1,[r2]
	jmp	_Label_2038
_Label_2027:
! ELSE...
	mov	2483,r13		! source line 2483
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	2483,r13		! source line 2483
	mov	"\0\0IF",r10
!   if intIsZero (file) then goto _runtimeErrorNullPointer
	load	[r14+-172],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2042 = file + 12
	load	[r14+-172],r1
	add	r1,12,r1
	store	r1,[r14+-76]
!   Data Move: _temp_2041 = *_temp_2042  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-80]
!   if _temp_2041 != 2 then goto _Label_2040		(int)
	load	[r14+-80],r1
	mov	2,r2
	cmp	r1,r2
	bne	_Label_2040
!	_Label_2039	jmp	_Label_2039
_Label_2039:
! THEN...
	mov	2484,r13		! source line 2484
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2484,r13		! source line 2484
	mov	"\0\0AS",r10
	mov	2484,r13		! source line 2484
	mov	"\0\0SE",r10
!   _temp_2043 = &_P_Kernel_serialDriver
	set	_P_Kernel_serialDriver,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=12  value=file  sizeInBytes=4
	load	[r14+-172],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=buffer  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=sizeInBytes  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+12]
!   Send message WriteTerminal
	load	[r14+-72],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
!   Retrieve Result: targetName=retVal  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-168]
	jmp	_Label_2044
_Label_2040:
! ELSE...
	mov	2485,r13		! source line 2485
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	2485,r13		! source line 2485
	mov	"\0\0IF",r10
!   if intIsZero (file) then goto _runtimeErrorNullPointer
	load	[r14+-172],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2048 = file + 12
	load	[r14+-172],r1
	add	r1,12,r1
	store	r1,[r14+-64]
!   Data Move: _temp_2047 = *_temp_2048  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   if _temp_2047 != 3 then goto _Label_2046		(int)
	load	[r14+-68],r1
	mov	3,r2
	cmp	r1,r2
	bne	_Label_2046
!	_Label_2045	jmp	_Label_2045
_Label_2045:
! THEN...
	mov	2486,r13		! source line 2486
	mov	"\0\0TN",r10
! IF STATEMENT...
	mov	2486,r13		! source line 2486
	mov	"\0\0IF",r10
!   if intIsZero (file) then goto _runtimeErrorNullPointer
	load	[r14+-172],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2053 = file + 36
	load	[r14+-172],r1
	add	r1,36,r1
	store	r1,[r14+-52]
!   Data Move: _temp_2052 = *_temp_2053  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   if intIsZero (_temp_2052) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2054 = _temp_2052 + 24
	load	[r14+-56],r1
	add	r1,24,r1
	store	r1,[r14+-48]
!   Data Move: _temp_2051 = *_temp_2054  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r1],r1
	store	r1,[r14+-60]
!   if _temp_2051 != 2 then goto _Label_2050		(int)
	load	[r14+-60],r1
	mov	2,r2
	cmp	r1,r2
	bne	_Label_2050
!	_Label_2049	jmp	_Label_2049
_Label_2049:
! THEN...
	mov	2487,r13		! source line 2487
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2487,r13		! source line 2487
	mov	"\0\0AS",r10
	mov	2487,r13		! source line 2487
	mov	"\0\0SE",r10
!   if intIsZero (file) then goto _runtimeErrorNullPointer
	load	[r14+-172],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2056 = file + 36
	load	[r14+-172],r1
	add	r1,36,r1
	store	r1,[r14+-40]
!   Data Move: _temp_2055 = *_temp_2056  (sizeInBytes=4)
	load	[r14+-40],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   if intIsZero (_temp_2055) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=buffer  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=sizeInBytes  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+8]
!   Send message Write
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
!   Retrieve Result: targetName=retVal  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-168]
	jmp	_Label_2057
_Label_2050:
! ELSE...
	mov	2489,r13		! source line 2489
	mov	"\0\0EL",r10
! ASSIGNMENT STATEMENT...
	mov	2489,r13		! source line 2489
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2059 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-32]
!   Data Move: _temp_2058 = *_temp_2059  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   if intIsZero (_temp_2058) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2060 = _temp_2058 + 236
	load	[r14+-36],r1
	add	r1,236,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_2060 = 12  (sizeInBytes=4)
	mov	12,r1
	load	[r14+-28],r2
	store	r1,[r2]
! END IF...
_Label_2057:
	jmp	_Label_2061
_Label_2046:
! ELSE...
	mov	2492,r13		! source line 2492
	mov	"\0\0EL",r10
! ASSIGNMENT STATEMENT...
	mov	2492,r13		! source line 2492
	mov	"\0\0AS",r10
	mov	2492,r13		! source line 2492
	mov	"\0\0SE",r10
!   _temp_2062 = &_P_Kernel_fileSystem
	set	_P_Kernel_fileSystem,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=file  sizeInBytes=4
	load	[r14+-172],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=buffer  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=sizeInBytes  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+12]
!   Send message WriteFile
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,40,r2
	call	r2
!   Retrieve Result: targetName=retVal  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-168]
! END IF...
_Label_2061:
! END IF...
_Label_2044:
! END IF...
_Label_2038:
	jmp	_Label_2063
_Label_2013:
! ELSE...
	mov	2496,r13		! source line 2496
	mov	"\0\0EL",r10
! ASSIGNMENT STATEMENT...
	mov	2496,r13		! source line 2496
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2065 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-16]
!   Data Move: _temp_2064 = *_temp_2065  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_2064) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2066 = _temp_2064 + 236
	load	[r14+-20],r1
	add	r1,236,r1
	store	r1,[r14+-12]
!   Data Move: *_temp_2066 = 6  (sizeInBytes=4)
	mov	6,r1
	load	[r14+-12],r2
	store	r1,[r2]
! END IF...
_Label_2063:
! END IF...
_Label_2011:
! RETURN STATEMENT...
	mov	2498,r13		! source line 2498
	mov	"\0\0RE",r10
!   ReturnResult: retVal  (sizeInBytes=4)
	load	[r14+-168],r1
	store	r1,[r14+8]
	add	r15,184,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Write:
	.word	_sourceFileName
	.word	_Label_2067
	.word	12		! total size of parameters
	.word	180		! frame size = 180
	.word	_Label_2068
	.word	8
	.word	4
	.word	_Label_2069
	.word	12
	.word	4
	.word	_Label_2070
	.word	16
	.word	4
	.word	_Label_2071
	.word	-12
	.word	4
	.word	_Label_2072
	.word	-16
	.word	4
	.word	_Label_2073
	.word	-20
	.word	4
	.word	_Label_2074
	.word	-24
	.word	4
	.word	_Label_2075
	.word	-28
	.word	4
	.word	_Label_2076
	.word	-32
	.word	4
	.word	_Label_2077
	.word	-36
	.word	4
	.word	_Label_2078
	.word	-40
	.word	4
	.word	_Label_2079
	.word	-44
	.word	4
	.word	_Label_2080
	.word	-48
	.word	4
	.word	_Label_2081
	.word	-52
	.word	4
	.word	_Label_2082
	.word	-56
	.word	4
	.word	_Label_2083
	.word	-60
	.word	4
	.word	_Label_2084
	.word	-64
	.word	4
	.word	_Label_2085
	.word	-68
	.word	4
	.word	_Label_2086
	.word	-72
	.word	4
	.word	_Label_2087
	.word	-76
	.word	4
	.word	_Label_2088
	.word	-80
	.word	4
	.word	_Label_2089
	.word	-84
	.word	4
	.word	_Label_2090
	.word	-88
	.word	4
	.word	_Label_2091
	.word	-92
	.word	4
	.word	_Label_2092
	.word	-96
	.word	4
	.word	_Label_2093
	.word	-100
	.word	4
	.word	_Label_2094
	.word	-104
	.word	4
	.word	_Label_2095
	.word	-108
	.word	4
	.word	_Label_2096
	.word	-112
	.word	4
	.word	_Label_2097
	.word	-116
	.word	4
	.word	_Label_2098
	.word	-120
	.word	4
	.word	_Label_2099
	.word	-124
	.word	4
	.word	_Label_2100
	.word	-128
	.word	4
	.word	_Label_2101
	.word	-132
	.word	4
	.word	_Label_2102
	.word	-136
	.word	4
	.word	_Label_2103
	.word	-140
	.word	4
	.word	_Label_2104
	.word	-144
	.word	4
	.word	_Label_2105
	.word	-148
	.word	4
	.word	_Label_2106
	.word	-152
	.word	4
	.word	_Label_2107
	.word	-156
	.word	4
	.word	_Label_2108
	.word	-160
	.word	4
	.word	_Label_2109
	.word	-164
	.word	4
	.word	_Label_2110
	.word	-168
	.word	4
	.word	_Label_2111
	.word	-172
	.word	4
	.word	0
_Label_2067:
	.ascii	"Handle_Sys_Write\0"
	.align
_Label_2068:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_2069:
	.byte	'P'
	.ascii	"buffer\0"
	.align
_Label_2070:
	.byte	'I'
	.ascii	"sizeInBytes\0"
	.align
_Label_2071:
	.byte	'?'
	.ascii	"_temp_2066\0"
	.align
_Label_2072:
	.byte	'?'
	.ascii	"_temp_2065\0"
	.align
_Label_2073:
	.byte	'?'
	.ascii	"_temp_2064\0"
	.align
_Label_2074:
	.byte	'?'
	.ascii	"_temp_2062\0"
	.align
_Label_2075:
	.byte	'?'
	.ascii	"_temp_2060\0"
	.align
_Label_2076:
	.byte	'?'
	.ascii	"_temp_2059\0"
	.align
_Label_2077:
	.byte	'?'
	.ascii	"_temp_2058\0"
	.align
_Label_2078:
	.byte	'?'
	.ascii	"_temp_2056\0"
	.align
_Label_2079:
	.byte	'?'
	.ascii	"_temp_2055\0"
	.align
_Label_2080:
	.byte	'?'
	.ascii	"_temp_2054\0"
	.align
_Label_2081:
	.byte	'?'
	.ascii	"_temp_2053\0"
	.align
_Label_2082:
	.byte	'?'
	.ascii	"_temp_2052\0"
	.align
_Label_2083:
	.byte	'?'
	.ascii	"_temp_2051\0"
	.align
_Label_2084:
	.byte	'?'
	.ascii	"_temp_2048\0"
	.align
_Label_2085:
	.byte	'?'
	.ascii	"_temp_2047\0"
	.align
_Label_2086:
	.byte	'?'
	.ascii	"_temp_2043\0"
	.align
_Label_2087:
	.byte	'?'
	.ascii	"_temp_2042\0"
	.align
_Label_2088:
	.byte	'?'
	.ascii	"_temp_2041\0"
	.align
_Label_2089:
	.byte	'?'
	.ascii	"_temp_2037\0"
	.align
_Label_2090:
	.byte	'?'
	.ascii	"_temp_2036\0"
	.align
_Label_2091:
	.byte	'?'
	.ascii	"_temp_2035\0"
	.align
_Label_2092:
	.byte	'?'
	.ascii	"_temp_2034\0"
	.align
_Label_2093:
	.byte	'?'
	.ascii	"_temp_2033\0"
	.align
_Label_2094:
	.byte	'?'
	.ascii	"_temp_2032\0"
	.align
_Label_2095:
	.byte	'?'
	.ascii	"_temp_2031\0"
	.align
_Label_2096:
	.byte	'?'
	.ascii	"_temp_2030\0"
	.align
_Label_2097:
	.byte	'?'
	.ascii	"_temp_2029\0"
	.align
_Label_2098:
	.byte	'?'
	.ascii	"_temp_2025\0"
	.align
_Label_2099:
	.byte	'?'
	.ascii	"_temp_2024\0"
	.align
_Label_2100:
	.byte	'?'
	.ascii	"_temp_2021\0"
	.align
_Label_2101:
	.byte	'?'
	.ascii	"_temp_2020\0"
	.align
_Label_2102:
	.byte	'?'
	.ascii	"_temp_2019\0"
	.align
_Label_2103:
	.byte	'?'
	.ascii	"_temp_2018\0"
	.align
_Label_2104:
	.byte	'?'
	.ascii	"_temp_2017\0"
	.align
_Label_2105:
	.byte	'?'
	.ascii	"_temp_2016\0"
	.align
_Label_2106:
	.byte	'?'
	.ascii	"_temp_2015\0"
	.align
_Label_2107:
	.byte	'?'
	.ascii	"_temp_2010\0"
	.align
_Label_2108:
	.byte	'?'
	.ascii	"_temp_2009\0"
	.align
_Label_2109:
	.byte	'?'
	.ascii	"_temp_2008\0"
	.align
_Label_2110:
	.byte	'I'
	.ascii	"retVal\0"
	.align
_Label_2111:
	.byte	'P'
	.ascii	"file\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Seek  ===============
! 
_P_Kernel_Handle_Sys_Seek:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Seek,r1
	push	r1
	mov	46,r1
_Label_7800:
	push	r0
	sub	r1,1,r1
	bne	_Label_7800
	mov	2503,r13		! source line 2503
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! retVal
!   retVal = -1		(4 bytes)
	mov	-1,r1
	store	r1,[r14+-180]
! SEND STATEMENT...
	mov	2508,r13		! source line 2508
	mov	"\0\0SE",r10
!   _temp_2112 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-176]
!   _temp_2113 = _temp_2112 + 4
	load	[r14+-176],r1
	add	r1,4,r1
	store	r1,[r14+-172]
!   Send message Lock
	load	[r14+-172],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! IF STATEMENT...
	mov	2509,r13		! source line 2509
	mov	"\0\0IF",r10
!   Prepare Argument: offset=8  value=fileDesc  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	2509,r13		! source line 2509
	mov	"\0\0CA",r10
	call	_function_232_ValidateFd
!   Retrieve Result: targetName=_temp_2116  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-168]
!   if _temp_2116 <= 0 then goto _Label_2115		(int)
	load	[r14+-168],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_2115
!	_Label_2114	jmp	_Label_2114
_Label_2114:
! THEN...
	mov	2510,r13		! source line 2510
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2510,r13		! source line 2510
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2118 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-160]
!   Data Move: _temp_2117 = *_temp_2118  (sizeInBytes=4)
	load	[r14+-160],r1
	load	[r1],r1
	store	r1,[r14+-164]
!   if intIsZero (_temp_2117) then goto _runtimeErrorNullPointer
	load	[r14+-164],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2119 = _temp_2117 + 244
	load	[r14+-164],r1
	add	r1,244,r1
	store	r1,[r14+-156]
!   Move address of _temp_2119 [fileDesc ] into _temp_2120
!     make sure index expr is >= 0
	load	[r14+8],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-156],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-152]
!   Data Move: file = *_temp_2120  (sizeInBytes=4)
	load	[r14+-152],r1
	load	[r1],r1
	store	r1,[r14+-184]
! IF STATEMENT...
	mov	2512,r13		! source line 2512
	mov	"\0\0IF",r10
!   if intIsZero (file) then goto _runtimeErrorNullPointer
	load	[r14+-184],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2125 = file + 12
	load	[r14+-184],r1
	add	r1,12,r1
	store	r1,[r14+-144]
!   Data Move: _temp_2124 = *_temp_2125  (sizeInBytes=4)
	load	[r14+-144],r1
	load	[r1],r1
	store	r1,[r14+-148]
!   if _temp_2124 != 4 then goto _Label_2122		(int)
	load	[r14+-148],r1
	mov	4,r2
	cmp	r1,r2
	bne	_Label_2122
!	_Label_2123	jmp	_Label_2123
_Label_2123:
!   if intIsZero (newCurrentPos) then goto _Label_2122
	load	[r14+12],r1
	cmp	r1,r0
	be	_Label_2122
!	_Label_2121	jmp	_Label_2121
_Label_2121:
! THEN...
	mov	2513,r13		! source line 2513
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2513,r13		! source line 2513
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2127 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-136]
!   Data Move: _temp_2126 = *_temp_2127  (sizeInBytes=4)
	load	[r14+-136],r1
	load	[r1],r1
	store	r1,[r14+-140]
!   if intIsZero (_temp_2126) then goto _runtimeErrorNullPointer
	load	[r14+-140],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2128 = _temp_2126 + 236
	load	[r14+-140],r1
	add	r1,236,r1
	store	r1,[r14+-132]
!   Data Move: *_temp_2128 = 8  (sizeInBytes=4)
	mov	8,r1
	load	[r14+-132],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2514,r13		! source line 2514
	mov	"\0\0SE",r10
!   _temp_2129 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-128]
!   _temp_2130 = _temp_2129 + 4
	load	[r14+-128],r1
	add	r1,4,r1
	store	r1,[r14+-124]
!   Send message Unlock
	load	[r14+-124],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	2515,r13		! source line 2515
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,188,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2122:
! IF STATEMENT...
	mov	2518,r13		! source line 2518
	mov	"\0\0IF",r10
!   if intIsZero (file) then goto _runtimeErrorNullPointer
	load	[r14+-184],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2134 = file + 12
	load	[r14+-184],r1
	add	r1,12,r1
	store	r1,[r14+-116]
!   Data Move: _temp_2133 = *_temp_2134  (sizeInBytes=4)
	load	[r14+-116],r1
	load	[r1],r1
	store	r1,[r14+-120]
!   if _temp_2133 != 4 then goto _Label_2132		(int)
	load	[r14+-120],r1
	mov	4,r2
	cmp	r1,r2
	bne	_Label_2132
!	_Label_2131	jmp	_Label_2131
_Label_2131:
! THEN...
	mov	2519,r13		! source line 2519
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2519,r13		! source line 2519
	mov	"\0\0AS",r10
!   if intIsZero (file) then goto _runtimeErrorNullPointer
	load	[r14+-184],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2135 = file + 16
	load	[r14+-184],r1
	add	r1,16,r1
	store	r1,[r14+-112]
!   Data Move: *_temp_2135 = newCurrentPos  (sizeInBytes=4)
	load	[r14+12],r1
	load	[r14+-112],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2520,r13		! source line 2520
	mov	"\0\0AS",r10
!   if intIsZero (file) then goto _runtimeErrorNullPointer
	load	[r14+-184],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2136 = file + 16
	load	[r14+-184],r1
	add	r1,16,r1
	store	r1,[r14+-108]
!   Data Move: retVal = *_temp_2136  (sizeInBytes=4)
	load	[r14+-108],r1
	load	[r1],r1
	store	r1,[r14+-180]
	jmp	_Label_2137
_Label_2132:
! ELSE...
	mov	2522,r13		! source line 2522
	mov	"\0\0EL",r10
! ASSIGNMENT STATEMENT...
	mov	2522,r13		! source line 2522
	mov	"\0\0AS",r10
!   if intIsZero (file) then goto _runtimeErrorNullPointer
	load	[r14+-184],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2138 = file + 16
	load	[r14+-184],r1
	add	r1,16,r1
	store	r1,[r14+-104]
!   Data Move: oldPos = *_temp_2138  (sizeInBytes=4)
	load	[r14+-104],r1
	load	[r1],r1
	store	r1,[r14+-188]
! IF STATEMENT...
	mov	2524,r13		! source line 2524
	mov	"\0\0IF",r10
!   if newCurrentPos != -1 then goto _Label_2140		(int)
	load	[r14+12],r1
	mov	-1,r2
	cmp	r1,r2
	bne	_Label_2140
!	_Label_2139	jmp	_Label_2139
_Label_2139:
! THEN...
	mov	2525,r13		! source line 2525
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2525,r13		! source line 2525
	mov	"\0\0AS",r10
!   if intIsZero (file) then goto _runtimeErrorNullPointer
	load	[r14+-184],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2141 = file + 16
	load	[r14+-184],r1
	add	r1,16,r1
	store	r1,[r14+-100]
!   if intIsZero (file) then goto _runtimeErrorNullPointer
	load	[r14+-184],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2144 = file + 20
	load	[r14+-184],r1
	add	r1,20,r1
	store	r1,[r14+-88]
!   Data Move: _temp_2143 = *_temp_2144  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_2143) then goto _runtimeErrorNullPointer
	load	[r14+-92],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2145 = _temp_2143 + 12
	load	[r14+-92],r1
	add	r1,12,r1
	store	r1,[r14+-84]
!   _temp_2146 = _temp_2145 + 16
	load	[r14+-84],r1
	add	r1,16,r1
	store	r1,[r14+-80]
!   Data Move: _temp_2142 = *_temp_2146  (sizeInBytes=4)
	load	[r14+-80],r1
	load	[r1],r1
	store	r1,[r14+-96]
!   Data Move: *_temp_2141 = _temp_2142  (sizeInBytes=4)
	load	[r14+-96],r1
	load	[r14+-100],r2
	store	r1,[r2]
	jmp	_Label_2147
_Label_2140:
! ELSE...
	mov	2527,r13		! source line 2527
	mov	"\0\0EL",r10
! ASSIGNMENT STATEMENT...
	mov	2527,r13		! source line 2527
	mov	"\0\0AS",r10
!   if intIsZero (file) then goto _runtimeErrorNullPointer
	load	[r14+-184],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2148 = file + 16
	load	[r14+-184],r1
	add	r1,16,r1
	store	r1,[r14+-76]
!   Data Move: *_temp_2148 = newCurrentPos  (sizeInBytes=4)
	load	[r14+12],r1
	load	[r14+-76],r2
	store	r1,[r2]
! END IF...
_Label_2147:
! ASSIGNMENT STATEMENT...
	mov	2529,r13		! source line 2529
	mov	"\0\0AS",r10
!   if intIsZero (file) then goto _runtimeErrorNullPointer
	load	[r14+-184],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2149 = file + 16
	load	[r14+-184],r1
	add	r1,16,r1
	store	r1,[r14+-72]
!   Data Move: retVal = *_temp_2149  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r1],r1
	store	r1,[r14+-180]
! IF STATEMENT...
	mov	2532,r13		! source line 2532
	mov	"\0\0IF",r10
!   if intIsZero (file) then goto _runtimeErrorNullPointer
	load	[r14+-184],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2154 = file + 16
	load	[r14+-184],r1
	add	r1,16,r1
	store	r1,[r14+-64]
!   Data Move: _temp_2153 = *_temp_2154  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   if intIsZero (file) then goto _runtimeErrorNullPointer
	load	[r14+-184],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2157 = file + 20
	load	[r14+-184],r1
	add	r1,20,r1
	store	r1,[r14+-52]
!   Data Move: _temp_2156 = *_temp_2157  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   if intIsZero (_temp_2156) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2158 = _temp_2156 + 12
	load	[r14+-56],r1
	add	r1,12,r1
	store	r1,[r14+-48]
!   _temp_2159 = _temp_2158 + 16
	load	[r14+-48],r1
	add	r1,16,r1
	store	r1,[r14+-44]
!   Data Move: _temp_2155 = *_temp_2159  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r1],r1
	store	r1,[r14+-60]
!   if _temp_2153 <= _temp_2155 then goto _Label_2152		(int)
	load	[r14+-68],r1
	load	[r14+-60],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_2152
	jmp	_Label_2150
_Label_2152:
!   if intIsZero (file) then goto _runtimeErrorNullPointer
	load	[r14+-184],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2161 = file + 16
	load	[r14+-184],r1
	add	r1,16,r1
	store	r1,[r14+-36]
!   Data Move: _temp_2160 = *_temp_2161  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if _temp_2160 >= 0 then goto _Label_2151		(int)
	load	[r14+-40],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2151
!	_Label_2150	jmp	_Label_2150
_Label_2150:
! THEN...
	mov	2533,r13		! source line 2533
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2533,r13		! source line 2533
	mov	"\0\0AS",r10
!   if intIsZero (file) then goto _runtimeErrorNullPointer
	load	[r14+-184],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2162 = file + 16
	load	[r14+-184],r1
	add	r1,16,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_2162 = oldPos  (sizeInBytes=4)
	load	[r14+-188],r1
	load	[r14+-32],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2534,r13		! source line 2534
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2164 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-24]
!   Data Move: _temp_2163 = *_temp_2164  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_2163) then goto _runtimeErrorNullPointer
	load	[r14+-28],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2165 = _temp_2163 + 236
	load	[r14+-28],r1
	add	r1,236,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_2165 = 8  (sizeInBytes=4)
	mov	8,r1
	load	[r14+-20],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2535,r13		! source line 2535
	mov	"\0\0AS",r10
!   retVal = -1		(4 bytes)
	mov	-1,r1
	store	r1,[r14+-180]
! END IF...
_Label_2151:
! END IF...
_Label_2137:
! END IF...
_Label_2115:
! SEND STATEMENT...
	mov	2540,r13		! source line 2540
	mov	"\0\0SE",r10
!   _temp_2166 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-16]
!   _temp_2167 = _temp_2166 + 4
	load	[r14+-16],r1
	add	r1,4,r1
	store	r1,[r14+-12]
!   Send message Unlock
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	2542,r13		! source line 2542
	mov	"\0\0RE",r10
!   ReturnResult: retVal  (sizeInBytes=4)
	load	[r14+-180],r1
	store	r1,[r14+8]
	add	r15,188,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Seek:
	.word	_sourceFileName
	.word	_Label_2168
	.word	8		! total size of parameters
	.word	184		! frame size = 184
	.word	_Label_2169
	.word	8
	.word	4
	.word	_Label_2170
	.word	12
	.word	4
	.word	_Label_2171
	.word	-12
	.word	4
	.word	_Label_2172
	.word	-16
	.word	4
	.word	_Label_2173
	.word	-20
	.word	4
	.word	_Label_2174
	.word	-24
	.word	4
	.word	_Label_2175
	.word	-28
	.word	4
	.word	_Label_2176
	.word	-32
	.word	4
	.word	_Label_2177
	.word	-36
	.word	4
	.word	_Label_2178
	.word	-40
	.word	4
	.word	_Label_2179
	.word	-44
	.word	4
	.word	_Label_2180
	.word	-48
	.word	4
	.word	_Label_2181
	.word	-52
	.word	4
	.word	_Label_2182
	.word	-56
	.word	4
	.word	_Label_2183
	.word	-60
	.word	4
	.word	_Label_2184
	.word	-64
	.word	4
	.word	_Label_2185
	.word	-68
	.word	4
	.word	_Label_2186
	.word	-72
	.word	4
	.word	_Label_2187
	.word	-76
	.word	4
	.word	_Label_2188
	.word	-80
	.word	4
	.word	_Label_2189
	.word	-84
	.word	4
	.word	_Label_2190
	.word	-88
	.word	4
	.word	_Label_2191
	.word	-92
	.word	4
	.word	_Label_2192
	.word	-96
	.word	4
	.word	_Label_2193
	.word	-100
	.word	4
	.word	_Label_2194
	.word	-104
	.word	4
	.word	_Label_2195
	.word	-108
	.word	4
	.word	_Label_2196
	.word	-112
	.word	4
	.word	_Label_2197
	.word	-116
	.word	4
	.word	_Label_2198
	.word	-120
	.word	4
	.word	_Label_2199
	.word	-124
	.word	4
	.word	_Label_2200
	.word	-128
	.word	4
	.word	_Label_2201
	.word	-132
	.word	4
	.word	_Label_2202
	.word	-136
	.word	4
	.word	_Label_2203
	.word	-140
	.word	4
	.word	_Label_2204
	.word	-144
	.word	4
	.word	_Label_2205
	.word	-148
	.word	4
	.word	_Label_2206
	.word	-152
	.word	4
	.word	_Label_2207
	.word	-156
	.word	4
	.word	_Label_2208
	.word	-160
	.word	4
	.word	_Label_2209
	.word	-164
	.word	4
	.word	_Label_2210
	.word	-168
	.word	4
	.word	_Label_2211
	.word	-172
	.word	4
	.word	_Label_2212
	.word	-176
	.word	4
	.word	_Label_2213
	.word	-180
	.word	4
	.word	_Label_2214
	.word	-184
	.word	4
	.word	_Label_2215
	.word	-188
	.word	4
	.word	0
_Label_2168:
	.ascii	"Handle_Sys_Seek\0"
	.align
_Label_2169:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_2170:
	.byte	'I'
	.ascii	"newCurrentPos\0"
	.align
_Label_2171:
	.byte	'?'
	.ascii	"_temp_2167\0"
	.align
_Label_2172:
	.byte	'?'
	.ascii	"_temp_2166\0"
	.align
_Label_2173:
	.byte	'?'
	.ascii	"_temp_2165\0"
	.align
_Label_2174:
	.byte	'?'
	.ascii	"_temp_2164\0"
	.align
_Label_2175:
	.byte	'?'
	.ascii	"_temp_2163\0"
	.align
_Label_2176:
	.byte	'?'
	.ascii	"_temp_2162\0"
	.align
_Label_2177:
	.byte	'?'
	.ascii	"_temp_2161\0"
	.align
_Label_2178:
	.byte	'?'
	.ascii	"_temp_2160\0"
	.align
_Label_2179:
	.byte	'?'
	.ascii	"_temp_2159\0"
	.align
_Label_2180:
	.byte	'?'
	.ascii	"_temp_2158\0"
	.align
_Label_2181:
	.byte	'?'
	.ascii	"_temp_2157\0"
	.align
_Label_2182:
	.byte	'?'
	.ascii	"_temp_2156\0"
	.align
_Label_2183:
	.byte	'?'
	.ascii	"_temp_2155\0"
	.align
_Label_2184:
	.byte	'?'
	.ascii	"_temp_2154\0"
	.align
_Label_2185:
	.byte	'?'
	.ascii	"_temp_2153\0"
	.align
_Label_2186:
	.byte	'?'
	.ascii	"_temp_2149\0"
	.align
_Label_2187:
	.byte	'?'
	.ascii	"_temp_2148\0"
	.align
_Label_2188:
	.byte	'?'
	.ascii	"_temp_2146\0"
	.align
_Label_2189:
	.byte	'?'
	.ascii	"_temp_2145\0"
	.align
_Label_2190:
	.byte	'?'
	.ascii	"_temp_2144\0"
	.align
_Label_2191:
	.byte	'?'
	.ascii	"_temp_2143\0"
	.align
_Label_2192:
	.byte	'?'
	.ascii	"_temp_2142\0"
	.align
_Label_2193:
	.byte	'?'
	.ascii	"_temp_2141\0"
	.align
_Label_2194:
	.byte	'?'
	.ascii	"_temp_2138\0"
	.align
_Label_2195:
	.byte	'?'
	.ascii	"_temp_2136\0"
	.align
_Label_2196:
	.byte	'?'
	.ascii	"_temp_2135\0"
	.align
_Label_2197:
	.byte	'?'
	.ascii	"_temp_2134\0"
	.align
_Label_2198:
	.byte	'?'
	.ascii	"_temp_2133\0"
	.align
_Label_2199:
	.byte	'?'
	.ascii	"_temp_2130\0"
	.align
_Label_2200:
	.byte	'?'
	.ascii	"_temp_2129\0"
	.align
_Label_2201:
	.byte	'?'
	.ascii	"_temp_2128\0"
	.align
_Label_2202:
	.byte	'?'
	.ascii	"_temp_2127\0"
	.align
_Label_2203:
	.byte	'?'
	.ascii	"_temp_2126\0"
	.align
_Label_2204:
	.byte	'?'
	.ascii	"_temp_2125\0"
	.align
_Label_2205:
	.byte	'?'
	.ascii	"_temp_2124\0"
	.align
_Label_2206:
	.byte	'?'
	.ascii	"_temp_2120\0"
	.align
_Label_2207:
	.byte	'?'
	.ascii	"_temp_2119\0"
	.align
_Label_2208:
	.byte	'?'
	.ascii	"_temp_2118\0"
	.align
_Label_2209:
	.byte	'?'
	.ascii	"_temp_2117\0"
	.align
_Label_2210:
	.byte	'?'
	.ascii	"_temp_2116\0"
	.align
_Label_2211:
	.byte	'?'
	.ascii	"_temp_2113\0"
	.align
_Label_2212:
	.byte	'?'
	.ascii	"_temp_2112\0"
	.align
_Label_2213:
	.byte	'I'
	.ascii	"retVal\0"
	.align
_Label_2214:
	.byte	'P'
	.ascii	"file\0"
	.align
_Label_2215:
	.byte	'I'
	.ascii	"oldPos\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Close  ===============
! 
_P_Kernel_Handle_Sys_Close:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Close,r1
	push	r1
	mov	20,r1
_Label_7801:
	push	r0
	sub	r1,1,r1
	bne	_Label_7801
	mov	2547,r13		! source line 2547
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2548,r13		! source line 2548
	mov	"\0\0IF",r10
!   Prepare Argument: offset=8  value=fileDesc  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	2548,r13		! source line 2548
	mov	"\0\0CA",r10
	call	_function_232_ValidateFd
!   Retrieve Result: targetName=_temp_2218  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-80]
!   if _temp_2218 <= 0 then goto _Label_2217		(int)
	load	[r14+-80],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_2217
!	_Label_2216	jmp	_Label_2216
_Label_2216:
! THEN...
	mov	2549,r13		! source line 2549
	mov	"\0\0TN",r10
! IF STATEMENT...
	mov	2549,r13		! source line 2549
	mov	"\0\0IF",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2224 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-64]
!   Data Move: _temp_2223 = *_temp_2224  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   if intIsZero (_temp_2223) then goto _runtimeErrorNullPointer
	load	[r14+-68],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2225 = _temp_2223 + 244
	load	[r14+-68],r1
	add	r1,244,r1
	store	r1,[r14+-60]
!   Move address of _temp_2225 [fileDesc ] into _temp_2226
!     make sure index expr is >= 0
	load	[r14+8],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-60],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-56]
!   Data Move: _temp_2222 = *_temp_2226  (sizeInBytes=4)
	load	[r14+-56],r1
	load	[r1],r1
	store	r1,[r14+-72]
!   if intIsZero (_temp_2222) then goto _runtimeErrorNullPointer
	load	[r14+-72],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2227 = _temp_2222 + 12
	load	[r14+-72],r1
	add	r1,12,r1
	store	r1,[r14+-52]
!   Data Move: _temp_2221 = *_temp_2227  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-76]
!   if _temp_2221 == 2 then goto _Label_2220		(int)
	load	[r14+-76],r1
	mov	2,r2
	cmp	r1,r2
	be	_Label_2220
!	_Label_2219	jmp	_Label_2219
_Label_2219:
! THEN...
	mov	2550,r13		! source line 2550
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2550,r13		! source line 2550
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2230 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-40]
!   Data Move: _temp_2229 = *_temp_2230  (sizeInBytes=4)
	load	[r14+-40],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   if intIsZero (_temp_2229) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2231 = _temp_2229 + 244
	load	[r14+-44],r1
	add	r1,244,r1
	store	r1,[r14+-36]
!   Move address of _temp_2231 [fileDesc ] into _temp_2232
!     make sure index expr is >= 0
	load	[r14+8],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-36],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-32]
!   Data Move: _temp_2228 = *_temp_2232  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-48]
!   _temp_2233 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=_temp_2228  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+4]
!   Send message Close
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,40,r2
	call	r2
! END IF...
_Label_2220:
! ASSIGNMENT STATEMENT...
	mov	2552,r13		! source line 2552
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2235 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-20]
!   Data Move: _temp_2234 = *_temp_2235  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_2234) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2236 = _temp_2234 + 244
	load	[r14+-24],r1
	add	r1,244,r1
	store	r1,[r14+-16]
!   Move address of _temp_2236 [fileDesc ] into _temp_2237
!     make sure index expr is >= 0
	load	[r14+8],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: *_temp_2237 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-12],r2
	store	r1,[r2]
! END IF...
_Label_2217:
! RETURN STATEMENT...
	mov	2548,r13		! source line 2548
	mov	"\0\0RE",r10
	add	r15,84,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Close:
	.word	_sourceFileName
	.word	_Label_2238
	.word	4		! total size of parameters
	.word	80		! frame size = 80
	.word	_Label_2239
	.word	8
	.word	4
	.word	_Label_2240
	.word	-12
	.word	4
	.word	_Label_2241
	.word	-16
	.word	4
	.word	_Label_2242
	.word	-20
	.word	4
	.word	_Label_2243
	.word	-24
	.word	4
	.word	_Label_2244
	.word	-28
	.word	4
	.word	_Label_2245
	.word	-32
	.word	4
	.word	_Label_2246
	.word	-36
	.word	4
	.word	_Label_2247
	.word	-40
	.word	4
	.word	_Label_2248
	.word	-44
	.word	4
	.word	_Label_2249
	.word	-48
	.word	4
	.word	_Label_2250
	.word	-52
	.word	4
	.word	_Label_2251
	.word	-56
	.word	4
	.word	_Label_2252
	.word	-60
	.word	4
	.word	_Label_2253
	.word	-64
	.word	4
	.word	_Label_2254
	.word	-68
	.word	4
	.word	_Label_2255
	.word	-72
	.word	4
	.word	_Label_2256
	.word	-76
	.word	4
	.word	_Label_2257
	.word	-80
	.word	4
	.word	0
_Label_2238:
	.ascii	"Handle_Sys_Close\0"
	.align
_Label_2239:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_2240:
	.byte	'?'
	.ascii	"_temp_2237\0"
	.align
_Label_2241:
	.byte	'?'
	.ascii	"_temp_2236\0"
	.align
_Label_2242:
	.byte	'?'
	.ascii	"_temp_2235\0"
	.align
_Label_2243:
	.byte	'?'
	.ascii	"_temp_2234\0"
	.align
_Label_2244:
	.byte	'?'
	.ascii	"_temp_2233\0"
	.align
_Label_2245:
	.byte	'?'
	.ascii	"_temp_2232\0"
	.align
_Label_2246:
	.byte	'?'
	.ascii	"_temp_2231\0"
	.align
_Label_2247:
	.byte	'?'
	.ascii	"_temp_2230\0"
	.align
_Label_2248:
	.byte	'?'
	.ascii	"_temp_2229\0"
	.align
_Label_2249:
	.byte	'?'
	.ascii	"_temp_2228\0"
	.align
_Label_2250:
	.byte	'?'
	.ascii	"_temp_2227\0"
	.align
_Label_2251:
	.byte	'?'
	.ascii	"_temp_2226\0"
	.align
_Label_2252:
	.byte	'?'
	.ascii	"_temp_2225\0"
	.align
_Label_2253:
	.byte	'?'
	.ascii	"_temp_2224\0"
	.align
_Label_2254:
	.byte	'?'
	.ascii	"_temp_2223\0"
	.align
_Label_2255:
	.byte	'?'
	.ascii	"_temp_2222\0"
	.align
_Label_2256:
	.byte	'?'
	.ascii	"_temp_2221\0"
	.align
_Label_2257:
	.byte	'?'
	.ascii	"_temp_2218\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Stat  ===============
! 
_P_Kernel_Handle_Sys_Stat:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Stat,r1
	push	r1
	mov	257,r1
_Label_7802:
	push	r0
	sub	r1,1,r1
	bne	_Label_7802
	mov	2559,r13		! source line 2559
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! nameBuf
!   NEW ARRAY Constructor...
!   _temp_2259 = &_temp_2258
	add	r14,-524,r1
	store	r1,[r14+-264]
!   _temp_2259 = _temp_2259 + 4
	load	[r14+-264],r1
	add	r1,4,r1
	store	r1,[r14+-264]
!   Next value...
	mov	255,r1
	store	r1,[r14+-260]
_Label_2261:
!   Data Move: *_temp_2259 = 0  (sizeInBytes=1)
	mov	0,r1
	load	[r14+-264],r2
	storeb	r1,[r2]
!   _temp_2259 = _temp_2259 + 1
	load	[r14+-264],r1
	add	r1,1,r1
	store	r1,[r14+-264]
!   _temp_2260 = _temp_2260 + -1
	load	[r14+-260],r1
	add	r1,-1,r1
	store	r1,[r14+-260]
!   if intNotZero (_temp_2260) then goto _Label_2261
	load	[r14+-260],r1
	cmp	r1,r0
	bne	_Label_2261
!   Initialize the array size...
	mov	255,r1
	store	r1,[r14+-524]
!   _temp_2262 = &_temp_2258
	add	r14,-524,r1
	store	r1,[r14+-256]
!   make sure array has size 255
	load	[r14+-256],r1
	load	[r1],r1
	set	255, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: nameBuf = *_temp_2262  (sizeInBytes=260)
	load	[r14+-256],r5
	add	r14,-804,r4
	mov	65,r3
_Label_7803:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_7803
! addrSpace
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2264 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-248]
!   Data Move: _temp_2263 = *_temp_2264  (sizeInBytes=4)
	load	[r14+-248],r1
	load	[r1],r1
	store	r1,[r14+-252]
!   if intIsZero (_temp_2263) then goto _runtimeErrorNullPointer
	load	[r14+-252],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2265 = _temp_2263 + 32
	load	[r14+-252],r1
	add	r1,32,r1
	store	r1,[r14+-244]
!   Data Move: addrSpace = *_temp_2265  (sizeInBytes=204)
	load	[r14+-244],r5
	add	r14,-1016,r4
	mov	51,r3
_Label_7804:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_7804
! ASSIGNMENT STATEMENT...
	mov	2567,r13		! source line 2567
	mov	"\0\0AS",r10
!   _temp_2266 = statBuf		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-240]
!   Prepare Argument: offset=8  value=_temp_2266  sizeInBytes=4
	load	[r14+-240],r1
	store	r1,[r15+0]
!   Call the function
	mov	2567,r13		! source line 2567
	mov	"\0\0CA",r10
	call	_function_233_ValidatePointerWrite
!   Retrieve Result: targetName=garbage  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-808]
! IF STATEMENT...
	mov	2568,r13		! source line 2568
	mov	"\0\0IF",r10
!   if garbage != -1 then goto _Label_2268		(int)
	load	[r14+-808],r1
	mov	-1,r2
	cmp	r1,r2
	bne	_Label_2268
!	_Label_2267	jmp	_Label_2267
_Label_2267:
! THEN...
	mov	2569,r13		! source line 2569
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2569,r13		! source line 2569
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2270 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-232]
!   Data Move: _temp_2269 = *_temp_2270  (sizeInBytes=4)
	load	[r14+-232],r1
	load	[r1],r1
	store	r1,[r14+-236]
!   if intIsZero (_temp_2269) then goto _runtimeErrorNullPointer
	load	[r14+-236],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2271 = _temp_2269 + 236
	load	[r14+-236],r1
	add	r1,236,r1
	store	r1,[r14+-228]
!   Data Move: *_temp_2271 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-228],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	2570,r13		! source line 2570
	mov	"\0\0RE",r10
!   ReturnResult: garbage  (sizeInBytes=4)
	load	[r14+-808],r1
	store	r1,[r14+8]
	add	r15,1032,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2268:
! ASSIGNMENT STATEMENT...
	mov	2573,r13		! source line 2573
	mov	"\0\0AS",r10
	mov	2573,r13		! source line 2573
	mov	"\0\0SE",r10
!   _temp_2272 = &nameBuf
	add	r14,-804,r1
	store	r1,[r14+-224]
!   _temp_2273 = fileName		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-220]
!   _temp_2274 = &addrSpace
	add	r14,-1016,r1
	store	r1,[r14+-216]
!   Prepare Argument: offset=12  value=_temp_2272  sizeInBytes=4
	load	[r14+-224],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_2273  sizeInBytes=4
	load	[r14+-220],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=255  sizeInBytes=4
	mov	255,r1
	store	r1,[r15+12]
!   Send message GetStringFromVirtual
	load	[r14+-216],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,84,r2
	call	r2
!   Retrieve Result: targetName=garbage  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-808]
! IF STATEMENT...
	mov	2574,r13		! source line 2574
	mov	"\0\0IF",r10
!   if garbage >= 0 then goto _Label_2276		(int)
	load	[r14+-808],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2276
!	_Label_2275	jmp	_Label_2275
_Label_2275:
! THEN...
	mov	2575,r13		! source line 2575
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2575,r13		! source line 2575
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2278 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-208]
!   Data Move: _temp_2277 = *_temp_2278  (sizeInBytes=4)
	load	[r14+-208],r1
	load	[r1],r1
	store	r1,[r14+-212]
!   if intIsZero (_temp_2277) then goto _runtimeErrorNullPointer
	load	[r14+-212],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2279 = _temp_2277 + 236
	load	[r14+-212],r1
	add	r1,236,r1
	store	r1,[r14+-204]
!   Data Move: *_temp_2279 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-204],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	2576,r13		! source line 2576
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,1032,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2276:
! ASSIGNMENT STATEMENT...
	mov	2580,r13		! source line 2580
	mov	"\0\0AS",r10
	mov	2580,r13		! source line 2580
	mov	"\0\0SE",r10
!   _temp_2280 = &nameBuf
	add	r14,-804,r1
	store	r1,[r14+-200]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2283 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-188]
!   Data Move: _temp_2282 = *_temp_2283  (sizeInBytes=4)
	load	[r14+-188],r1
	load	[r1],r1
	store	r1,[r14+-192]
!   if intIsZero (_temp_2282) then goto _runtimeErrorNullPointer
	load	[r14+-192],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2284 = _temp_2282 + 240
	load	[r14+-192],r1
	add	r1,240,r1
	store	r1,[r14+-184]
!   Data Move: _temp_2281 = *_temp_2284  (sizeInBytes=4)
	load	[r14+-184],r1
	load	[r1],r1
	store	r1,[r14+-196]
!   _temp_2285 = &_P_Kernel_fileSystem
	set	_P_Kernel_fileSystem,r1
	store	r1,[r14+-180]
!   Prepare Argument: offset=12  value=_temp_2280  sizeInBytes=4
	load	[r14+-200],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_2281  sizeInBytes=4
	load	[r14+-196],r1
	store	r1,[r15+8]
!   Send message NameToInodeNum
	load	[r14+-180],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=iNodeNum  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-812]
! IF STATEMENT...
	mov	2581,r13		! source line 2581
	mov	"\0\0IF",r10
!   if iNodeNum != -1 then goto _Label_2287		(int)
	load	[r14+-812],r1
	mov	-1,r2
	cmp	r1,r2
	bne	_Label_2287
!	_Label_2286	jmp	_Label_2286
_Label_2286:
! THEN...
	mov	2582,r13		! source line 2582
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2582,r13		! source line 2582
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2289 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-172]
!   Data Move: _temp_2288 = *_temp_2289  (sizeInBytes=4)
	load	[r14+-172],r1
	load	[r1],r1
	store	r1,[r14+-176]
!   if intIsZero (_temp_2288) then goto _runtimeErrorNullPointer
	load	[r14+-176],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2290 = _temp_2288 + 236
	load	[r14+-176],r1
	add	r1,236,r1
	store	r1,[r14+-168]
!   Data Move: *_temp_2290 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-168],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	2583,r13		! source line 2583
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,1032,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2287:
! ASSIGNMENT STATEMENT...
	mov	2586,r13		! source line 2586
	mov	"\0\0AS",r10
	mov	2586,r13		! source line 2586
	mov	"\0\0SE",r10
!   _temp_2291 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-164]
!   Prepare Argument: offset=12  value=iNodeNum  sizeInBytes=4
	load	[r14+-812],r1
	store	r1,[r15+4]
!   Send message GetFCB
	load	[r14+-164],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=fcb  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-1020]
! IF STATEMENT...
	mov	2587,r13		! source line 2587
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _Label_2292
	load	[r14+-1020],r1
	cmp	r1,r0
	be	_Label_2292
	jmp	_Label_2293
_Label_2292:
! THEN...
	mov	2588,r13		! source line 2588
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2588,r13		! source line 2588
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2295 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-156]
!   Data Move: _temp_2294 = *_temp_2295  (sizeInBytes=4)
	load	[r14+-156],r1
	load	[r1],r1
	store	r1,[r14+-160]
!   if intIsZero (_temp_2294) then goto _runtimeErrorNullPointer
	load	[r14+-160],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2296 = _temp_2294 + 236
	load	[r14+-160],r1
	add	r1,236,r1
	store	r1,[r14+-152]
!   Data Move: *_temp_2296 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-152],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	2589,r13		! source line 2589
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,1032,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2293:
! ASSIGNMENT STATEMENT...
	mov	2591,r13		! source line 2591
	mov	"\0\0AS",r10
!   _temp_2297 = &statInfoBlk
	add	r14,-544,r1
	store	r1,[r14+-148]
!   _temp_2298 = _temp_2297 + 0
	load	[r14+-148],r1
	add	r1,0,r1
	store	r1,[r14+-144]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-1020],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2300 = fcb + 12
	load	[r14+-1020],r1
	add	r1,12,r1
	store	r1,[r14+-136]
!   _temp_2301 = _temp_2300 + 4
	load	[r14+-136],r1
	add	r1,4,r1
	store	r1,[r14+-132]
!   Data Move: _temp_2299 = *_temp_2301  (sizeInBytes=4)
	load	[r14+-132],r1
	load	[r1],r1
	store	r1,[r14+-140]
!   Data Move: *_temp_2298 = _temp_2299  (sizeInBytes=4)
	load	[r14+-140],r1
	load	[r14+-144],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2592,r13		! source line 2592
	mov	"\0\0AS",r10
!   _temp_2302 = &statInfoBlk
	add	r14,-544,r1
	store	r1,[r14+-128]
!   _temp_2303 = _temp_2302 + 4
	load	[r14+-128],r1
	add	r1,4,r1
	store	r1,[r14+-124]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-1020],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2305 = fcb + 12
	load	[r14+-1020],r1
	add	r1,12,r1
	store	r1,[r14+-116]
!   _temp_2306 = _temp_2305 + 8
	load	[r14+-116],r1
	add	r1,8,r1
	store	r1,[r14+-112]
!   Data Move: _temp_2304 = *_temp_2306  (sizeInBytes=4)
	load	[r14+-112],r1
	load	[r1],r1
	store	r1,[r14+-120]
!   Data Move: *_temp_2303 = _temp_2304  (sizeInBytes=4)
	load	[r14+-120],r1
	load	[r14+-124],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2593,r13		! source line 2593
	mov	"\0\0AS",r10
!   _temp_2307 = &statInfoBlk
	add	r14,-544,r1
	store	r1,[r14+-108]
!   _temp_2308 = _temp_2307 + 8
	load	[r14+-108],r1
	add	r1,8,r1
	store	r1,[r14+-104]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-1020],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2310 = fcb + 12
	load	[r14+-1020],r1
	add	r1,12,r1
	store	r1,[r14+-96]
!   _temp_2311 = _temp_2310 + 12
	load	[r14+-96],r1
	add	r1,12,r1
	store	r1,[r14+-92]
!   Data Move: _temp_2309 = *_temp_2311  (sizeInBytes=4)
	load	[r14+-92],r1
	load	[r1],r1
	store	r1,[r14+-100]
!   Data Move: *_temp_2308 = _temp_2309  (sizeInBytes=4)
	load	[r14+-100],r1
	load	[r14+-104],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2594,r13		! source line 2594
	mov	"\0\0AS",r10
!   _temp_2312 = &statInfoBlk
	add	r14,-544,r1
	store	r1,[r14+-88]
!   _temp_2313 = _temp_2312 + 12
	load	[r14+-88],r1
	add	r1,12,r1
	store	r1,[r14+-84]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-1020],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2315 = fcb + 12
	load	[r14+-1020],r1
	add	r1,12,r1
	store	r1,[r14+-76]
!   _temp_2316 = _temp_2315 + 16
	load	[r14+-76],r1
	add	r1,16,r1
	store	r1,[r14+-72]
!   Data Move: _temp_2314 = *_temp_2316  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r1],r1
	store	r1,[r14+-80]
!   Data Move: *_temp_2313 = _temp_2314  (sizeInBytes=4)
	load	[r14+-80],r1
	load	[r14+-84],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2595,r13		! source line 2595
	mov	"\0\0AS",r10
!   _temp_2317 = &statInfoBlk
	add	r14,-544,r1
	store	r1,[r14+-68]
!   _temp_2318 = _temp_2317 + 16
	load	[r14+-68],r1
	add	r1,16,r1
	store	r1,[r14+-64]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-1020],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2320 = fcb + 12
	load	[r14+-1020],r1
	add	r1,12,r1
	store	r1,[r14+-56]
!   _temp_2321 = _temp_2320 + 20
	load	[r14+-56],r1
	add	r1,20,r1
	store	r1,[r14+-52]
!   Data Move: _temp_2319 = *_temp_2321  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-60]
!   Data Move: *_temp_2318 = _temp_2319  (sizeInBytes=4)
	load	[r14+-60],r1
	load	[r14+-64],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2597,r13		! source line 2597
	mov	"\0\0SE",r10
!   _temp_2322 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-48]
!   _temp_2323 = _temp_2322 + 4
	load	[r14+-48],r1
	add	r1,4,r1
	store	r1,[r14+-44]
!   Send message Lock
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	2598,r13		! source line 2598
	mov	"\0\0SE",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-1020],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Flush
	load	[r14+-1020],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! SEND STATEMENT...
	mov	2599,r13		! source line 2599
	mov	"\0\0SE",r10
!   _temp_2325 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-36]
!   _temp_2326 = _temp_2325 + 4
	load	[r14+-36],r1
	add	r1,4,r1
	store	r1,[r14+-32]
!   _temp_2324 = _temp_2326		(4 bytes)
	load	[r14+-32],r1
	store	r1,[r14+-40]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-1020],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_2324  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+4]
!   Send message Release
	load	[r14+-1020],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! SEND STATEMENT...
	mov	2600,r13		! source line 2600
	mov	"\0\0SE",r10
!   _temp_2327 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-28]
!   _temp_2328 = _temp_2327 + 4
	load	[r14+-28],r1
	add	r1,4,r1
	store	r1,[r14+-24]
!   Send message Unlock
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2602,r13		! source line 2602
	mov	"\0\0AS",r10
	mov	2602,r13		! source line 2602
	mov	"\0\0SE",r10
!   _temp_2329 = statBuf		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-20]
!   _temp_2330 = &statInfoBlk
	add	r14,-544,r1
	store	r1,[r14+-16]
!   _temp_2331 = &addrSpace
	add	r14,-1016,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_2329  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_2330  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=20  sizeInBytes=4
	mov	20,r1
	store	r1,[r15+12]
!   Send message CopyBytesToVirtual
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,80,r2
	call	r2
!   Retrieve Result: targetName=garbage  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-808]
! RETURN STATEMENT...
	mov	2604,r13		! source line 2604
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,1032,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Stat:
	.word	_sourceFileName
	.word	_Label_2332
	.word	8		! total size of parameters
	.word	1028		! frame size = 1028
	.word	_Label_2333
	.word	8
	.word	4
	.word	_Label_2334
	.word	12
	.word	4
	.word	_Label_2335
	.word	-12
	.word	4
	.word	_Label_2336
	.word	-16
	.word	4
	.word	_Label_2337
	.word	-20
	.word	4
	.word	_Label_2338
	.word	-24
	.word	4
	.word	_Label_2339
	.word	-28
	.word	4
	.word	_Label_2340
	.word	-32
	.word	4
	.word	_Label_2341
	.word	-36
	.word	4
	.word	_Label_2342
	.word	-40
	.word	4
	.word	_Label_2343
	.word	-44
	.word	4
	.word	_Label_2344
	.word	-48
	.word	4
	.word	_Label_2345
	.word	-52
	.word	4
	.word	_Label_2346
	.word	-56
	.word	4
	.word	_Label_2347
	.word	-60
	.word	4
	.word	_Label_2348
	.word	-64
	.word	4
	.word	_Label_2349
	.word	-68
	.word	4
	.word	_Label_2350
	.word	-72
	.word	4
	.word	_Label_2351
	.word	-76
	.word	4
	.word	_Label_2352
	.word	-80
	.word	4
	.word	_Label_2353
	.word	-84
	.word	4
	.word	_Label_2354
	.word	-88
	.word	4
	.word	_Label_2355
	.word	-92
	.word	4
	.word	_Label_2356
	.word	-96
	.word	4
	.word	_Label_2357
	.word	-100
	.word	4
	.word	_Label_2358
	.word	-104
	.word	4
	.word	_Label_2359
	.word	-108
	.word	4
	.word	_Label_2360
	.word	-112
	.word	4
	.word	_Label_2361
	.word	-116
	.word	4
	.word	_Label_2362
	.word	-120
	.word	4
	.word	_Label_2363
	.word	-124
	.word	4
	.word	_Label_2364
	.word	-128
	.word	4
	.word	_Label_2365
	.word	-132
	.word	4
	.word	_Label_2366
	.word	-136
	.word	4
	.word	_Label_2367
	.word	-140
	.word	4
	.word	_Label_2368
	.word	-144
	.word	4
	.word	_Label_2369
	.word	-148
	.word	4
	.word	_Label_2370
	.word	-152
	.word	4
	.word	_Label_2371
	.word	-156
	.word	4
	.word	_Label_2372
	.word	-160
	.word	4
	.word	_Label_2373
	.word	-164
	.word	4
	.word	_Label_2374
	.word	-168
	.word	4
	.word	_Label_2375
	.word	-172
	.word	4
	.word	_Label_2376
	.word	-176
	.word	4
	.word	_Label_2377
	.word	-180
	.word	4
	.word	_Label_2378
	.word	-184
	.word	4
	.word	_Label_2379
	.word	-188
	.word	4
	.word	_Label_2380
	.word	-192
	.word	4
	.word	_Label_2381
	.word	-196
	.word	4
	.word	_Label_2382
	.word	-200
	.word	4
	.word	_Label_2383
	.word	-204
	.word	4
	.word	_Label_2384
	.word	-208
	.word	4
	.word	_Label_2385
	.word	-212
	.word	4
	.word	_Label_2386
	.word	-216
	.word	4
	.word	_Label_2387
	.word	-220
	.word	4
	.word	_Label_2388
	.word	-224
	.word	4
	.word	_Label_2389
	.word	-228
	.word	4
	.word	_Label_2390
	.word	-232
	.word	4
	.word	_Label_2391
	.word	-236
	.word	4
	.word	_Label_2392
	.word	-240
	.word	4
	.word	_Label_2393
	.word	-244
	.word	4
	.word	_Label_2394
	.word	-248
	.word	4
	.word	_Label_2395
	.word	-252
	.word	4
	.word	_Label_2396
	.word	-256
	.word	4
	.word	_Label_2397
	.word	-260
	.word	4
	.word	_Label_2398
	.word	-264
	.word	4
	.word	_Label_2399
	.word	-524
	.word	260
	.word	_Label_2400
	.word	-544
	.word	20
	.word	_Label_2401
	.word	-804
	.word	260
	.word	_Label_2402
	.word	-808
	.word	4
	.word	_Label_2403
	.word	-812
	.word	4
	.word	_Label_2404
	.word	-1016
	.word	204
	.word	_Label_2405
	.word	-1020
	.word	4
	.word	0
_Label_2332:
	.ascii	"Handle_Sys_Stat\0"
	.align
_Label_2333:
	.byte	'P'
	.ascii	"fileName\0"
	.align
_Label_2334:
	.byte	'P'
	.ascii	"statBuf\0"
	.align
_Label_2335:
	.byte	'?'
	.ascii	"_temp_2331\0"
	.align
_Label_2336:
	.byte	'?'
	.ascii	"_temp_2330\0"
	.align
_Label_2337:
	.byte	'?'
	.ascii	"_temp_2329\0"
	.align
_Label_2338:
	.byte	'?'
	.ascii	"_temp_2328\0"
	.align
_Label_2339:
	.byte	'?'
	.ascii	"_temp_2327\0"
	.align
_Label_2340:
	.byte	'?'
	.ascii	"_temp_2326\0"
	.align
_Label_2341:
	.byte	'?'
	.ascii	"_temp_2325\0"
	.align
_Label_2342:
	.byte	'?'
	.ascii	"_temp_2324\0"
	.align
_Label_2343:
	.byte	'?'
	.ascii	"_temp_2323\0"
	.align
_Label_2344:
	.byte	'?'
	.ascii	"_temp_2322\0"
	.align
_Label_2345:
	.byte	'?'
	.ascii	"_temp_2321\0"
	.align
_Label_2346:
	.byte	'?'
	.ascii	"_temp_2320\0"
	.align
_Label_2347:
	.byte	'?'
	.ascii	"_temp_2319\0"
	.align
_Label_2348:
	.byte	'?'
	.ascii	"_temp_2318\0"
	.align
_Label_2349:
	.byte	'?'
	.ascii	"_temp_2317\0"
	.align
_Label_2350:
	.byte	'?'
	.ascii	"_temp_2316\0"
	.align
_Label_2351:
	.byte	'?'
	.ascii	"_temp_2315\0"
	.align
_Label_2352:
	.byte	'?'
	.ascii	"_temp_2314\0"
	.align
_Label_2353:
	.byte	'?'
	.ascii	"_temp_2313\0"
	.align
_Label_2354:
	.byte	'?'
	.ascii	"_temp_2312\0"
	.align
_Label_2355:
	.byte	'?'
	.ascii	"_temp_2311\0"
	.align
_Label_2356:
	.byte	'?'
	.ascii	"_temp_2310\0"
	.align
_Label_2357:
	.byte	'?'
	.ascii	"_temp_2309\0"
	.align
_Label_2358:
	.byte	'?'
	.ascii	"_temp_2308\0"
	.align
_Label_2359:
	.byte	'?'
	.ascii	"_temp_2307\0"
	.align
_Label_2360:
	.byte	'?'
	.ascii	"_temp_2306\0"
	.align
_Label_2361:
	.byte	'?'
	.ascii	"_temp_2305\0"
	.align
_Label_2362:
	.byte	'?'
	.ascii	"_temp_2304\0"
	.align
_Label_2363:
	.byte	'?'
	.ascii	"_temp_2303\0"
	.align
_Label_2364:
	.byte	'?'
	.ascii	"_temp_2302\0"
	.align
_Label_2365:
	.byte	'?'
	.ascii	"_temp_2301\0"
	.align
_Label_2366:
	.byte	'?'
	.ascii	"_temp_2300\0"
	.align
_Label_2367:
	.byte	'?'
	.ascii	"_temp_2299\0"
	.align
_Label_2368:
	.byte	'?'
	.ascii	"_temp_2298\0"
	.align
_Label_2369:
	.byte	'?'
	.ascii	"_temp_2297\0"
	.align
_Label_2370:
	.byte	'?'
	.ascii	"_temp_2296\0"
	.align
_Label_2371:
	.byte	'?'
	.ascii	"_temp_2295\0"
	.align
_Label_2372:
	.byte	'?'
	.ascii	"_temp_2294\0"
	.align
_Label_2373:
	.byte	'?'
	.ascii	"_temp_2291\0"
	.align
_Label_2374:
	.byte	'?'
	.ascii	"_temp_2290\0"
	.align
_Label_2375:
	.byte	'?'
	.ascii	"_temp_2289\0"
	.align
_Label_2376:
	.byte	'?'
	.ascii	"_temp_2288\0"
	.align
_Label_2377:
	.byte	'?'
	.ascii	"_temp_2285\0"
	.align
_Label_2378:
	.byte	'?'
	.ascii	"_temp_2284\0"
	.align
_Label_2379:
	.byte	'?'
	.ascii	"_temp_2283\0"
	.align
_Label_2380:
	.byte	'?'
	.ascii	"_temp_2282\0"
	.align
_Label_2381:
	.byte	'?'
	.ascii	"_temp_2281\0"
	.align
_Label_2382:
	.byte	'?'
	.ascii	"_temp_2280\0"
	.align
_Label_2383:
	.byte	'?'
	.ascii	"_temp_2279\0"
	.align
_Label_2384:
	.byte	'?'
	.ascii	"_temp_2278\0"
	.align
_Label_2385:
	.byte	'?'
	.ascii	"_temp_2277\0"
	.align
_Label_2386:
	.byte	'?'
	.ascii	"_temp_2274\0"
	.align
_Label_2387:
	.byte	'?'
	.ascii	"_temp_2273\0"
	.align
_Label_2388:
	.byte	'?'
	.ascii	"_temp_2272\0"
	.align
_Label_2389:
	.byte	'?'
	.ascii	"_temp_2271\0"
	.align
_Label_2390:
	.byte	'?'
	.ascii	"_temp_2270\0"
	.align
_Label_2391:
	.byte	'?'
	.ascii	"_temp_2269\0"
	.align
_Label_2392:
	.byte	'?'
	.ascii	"_temp_2266\0"
	.align
_Label_2393:
	.byte	'?'
	.ascii	"_temp_2265\0"
	.align
_Label_2394:
	.byte	'?'
	.ascii	"_temp_2264\0"
	.align
_Label_2395:
	.byte	'?'
	.ascii	"_temp_2263\0"
	.align
_Label_2396:
	.byte	'?'
	.ascii	"_temp_2262\0"
	.align
_Label_2397:
	.byte	'?'
	.ascii	"_temp_2260\0"
	.align
_Label_2398:
	.byte	'?'
	.ascii	"_temp_2259\0"
	.align
_Label_2399:
	.byte	'?'
	.ascii	"_temp_2258\0"
	.align
_Label_2400:
	.byte	'R'
	.ascii	"statInfoBlk\0"
	.align
_Label_2401:
	.byte	'A'
	.ascii	"nameBuf\0"
	.align
_Label_2402:
	.byte	'I'
	.ascii	"garbage\0"
	.align
_Label_2403:
	.byte	'I'
	.ascii	"iNodeNum\0"
	.align
_Label_2404:
	.byte	'O'
	.ascii	"addrSpace\0"
	.align
_Label_2405:
	.byte	'P'
	.ascii	"fcb\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_ChMode  ===============
! 
_P_Kernel_Handle_Sys_ChMode:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_ChMode,r1
	push	r1
	mov	225,r1
_Label_7805:
	push	r0
	sub	r1,1,r1
	bne	_Label_7805
	mov	2609,r13		! source line 2609
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! nameBuf
!   NEW ARRAY Constructor...
!   _temp_2407 = &_temp_2406
	add	r14,-412,r1
	store	r1,[r14+-152]
!   _temp_2407 = _temp_2407 + 4
	load	[r14+-152],r1
	add	r1,4,r1
	store	r1,[r14+-152]
!   Next value...
	mov	255,r1
	store	r1,[r14+-148]
_Label_2409:
!   Data Move: *_temp_2407 = 0  (sizeInBytes=1)
	mov	0,r1
	load	[r14+-152],r2
	storeb	r1,[r2]
!   _temp_2407 = _temp_2407 + 1
	load	[r14+-152],r1
	add	r1,1,r1
	store	r1,[r14+-152]
!   _temp_2408 = _temp_2408 + -1
	load	[r14+-148],r1
	add	r1,-1,r1
	store	r1,[r14+-148]
!   if intNotZero (_temp_2408) then goto _Label_2409
	load	[r14+-148],r1
	cmp	r1,r0
	bne	_Label_2409
!   Initialize the array size...
	mov	255,r1
	store	r1,[r14+-412]
!   _temp_2410 = &_temp_2406
	add	r14,-412,r1
	store	r1,[r14+-144]
!   make sure array has size 255
	load	[r14+-144],r1
	load	[r1],r1
	set	255, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: nameBuf = *_temp_2410  (sizeInBytes=260)
	load	[r14+-144],r5
	add	r14,-672,r4
	mov	65,r3
_Label_7806:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_7806
! addrSpace
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2412 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-136]
!   Data Move: _temp_2411 = *_temp_2412  (sizeInBytes=4)
	load	[r14+-136],r1
	load	[r1],r1
	store	r1,[r14+-140]
!   if intIsZero (_temp_2411) then goto _runtimeErrorNullPointer
	load	[r14+-140],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2413 = _temp_2411 + 32
	load	[r14+-140],r1
	add	r1,32,r1
	store	r1,[r14+-132]
!   Data Move: addrSpace = *_temp_2413  (sizeInBytes=204)
	load	[r14+-132],r5
	add	r14,-888,r4
	mov	51,r3
_Label_7807:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_7807
! ASSIGNMENT STATEMENT...
	mov	2615,r13		! source line 2615
	mov	"\0\0AS",r10
	mov	2615,r13		! source line 2615
	mov	"\0\0SE",r10
!   _temp_2414 = &nameBuf
	add	r14,-672,r1
	store	r1,[r14+-128]
!   _temp_2415 = fileName		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-124]
!   _temp_2416 = &addrSpace
	add	r14,-888,r1
	store	r1,[r14+-120]
!   Prepare Argument: offset=12  value=_temp_2414  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_2415  sizeInBytes=4
	load	[r14+-124],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=255  sizeInBytes=4
	mov	255,r1
	store	r1,[r15+12]
!   Send message GetStringFromVirtual
	load	[r14+-120],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,84,r2
	call	r2
!   Retrieve Result: targetName=garbage  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-676]
! IF STATEMENT...
	mov	2616,r13		! source line 2616
	mov	"\0\0IF",r10
!   if garbage >= 0 then goto _Label_2418		(int)
	load	[r14+-676],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2418
!	_Label_2417	jmp	_Label_2417
_Label_2417:
! THEN...
	mov	2617,r13		! source line 2617
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2617,r13		! source line 2617
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2420 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-112]
!   Data Move: _temp_2419 = *_temp_2420  (sizeInBytes=4)
	load	[r14+-112],r1
	load	[r1],r1
	store	r1,[r14+-116]
!   if intIsZero (_temp_2419) then goto _runtimeErrorNullPointer
	load	[r14+-116],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2421 = _temp_2419 + 236
	load	[r14+-116],r1
	add	r1,236,r1
	store	r1,[r14+-108]
!   Data Move: *_temp_2421 = 6  (sizeInBytes=4)
	mov	6,r1
	load	[r14+-108],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	2618,r13		! source line 2618
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,904,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2418:
! ASSIGNMENT STATEMENT...
	mov	2621,r13		! source line 2621
	mov	"\0\0AS",r10
	mov	2621,r13		! source line 2621
	mov	"\0\0SE",r10
!   _temp_2422 = &nameBuf
	add	r14,-672,r1
	store	r1,[r14+-104]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2425 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-92]
!   Data Move: _temp_2424 = *_temp_2425  (sizeInBytes=4)
	load	[r14+-92],r1
	load	[r1],r1
	store	r1,[r14+-96]
!   if intIsZero (_temp_2424) then goto _runtimeErrorNullPointer
	load	[r14+-96],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2426 = _temp_2424 + 240
	load	[r14+-96],r1
	add	r1,240,r1
	store	r1,[r14+-88]
!   Data Move: _temp_2423 = *_temp_2426  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-100]
!   _temp_2427 = &_P_Kernel_fileSystem
	set	_P_Kernel_fileSystem,r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=12  value=_temp_2422  sizeInBytes=4
	load	[r14+-104],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_2423  sizeInBytes=4
	load	[r14+-100],r1
	store	r1,[r15+8]
!   Send message NameToInodeNum
	load	[r14+-84],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=iNodeNum  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-680]
! IF STATEMENT...
	mov	2622,r13		! source line 2622
	mov	"\0\0IF",r10
!   if iNodeNum != -1 then goto _Label_2429		(int)
	load	[r14+-680],r1
	mov	-1,r2
	cmp	r1,r2
	bne	_Label_2429
!	_Label_2428	jmp	_Label_2428
_Label_2428:
! THEN...
	mov	2623,r13		! source line 2623
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2623,r13		! source line 2623
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2431 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-76]
!   Data Move: _temp_2430 = *_temp_2431  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-80]
!   if intIsZero (_temp_2430) then goto _runtimeErrorNullPointer
	load	[r14+-80],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2432 = _temp_2430 + 236
	load	[r14+-80],r1
	add	r1,236,r1
	store	r1,[r14+-72]
!   Data Move: *_temp_2432 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-72],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	2624,r13		! source line 2624
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,904,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2429:
! ASSIGNMENT STATEMENT...
	mov	2627,r13		! source line 2627
	mov	"\0\0AS",r10
	mov	2627,r13		! source line 2627
	mov	"\0\0SE",r10
!   _temp_2433 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=12  value=iNodeNum  sizeInBytes=4
	load	[r14+-680],r1
	store	r1,[r15+4]
!   Send message GetFCB
	load	[r14+-68],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=fcb  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-892]
! IF STATEMENT...
	mov	2628,r13		! source line 2628
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _Label_2434
	load	[r14+-892],r1
	cmp	r1,r0
	be	_Label_2434
	jmp	_Label_2435
_Label_2434:
! THEN...
	mov	2629,r13		! source line 2629
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2629,r13		! source line 2629
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2437 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-60]
!   Data Move: _temp_2436 = *_temp_2437  (sizeInBytes=4)
	load	[r14+-60],r1
	load	[r1],r1
	store	r1,[r14+-64]
!   if intIsZero (_temp_2436) then goto _runtimeErrorNullPointer
	load	[r14+-64],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2438 = _temp_2436 + 236
	load	[r14+-64],r1
	add	r1,236,r1
	store	r1,[r14+-56]
!   Data Move: *_temp_2438 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-56],r2
	store	r1,[r2]
! END IF...
_Label_2435:
! SEND STATEMENT...
	mov	2632,r13		! source line 2632
	mov	"\0\0SE",r10
!   _temp_2439 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-52]
!   _temp_2440 = _temp_2439 + 4
	load	[r14+-52],r1
	add	r1,4,r1
	store	r1,[r14+-48]
!   Send message Lock
	load	[r14+-48],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! IF STATEMENT...
	mov	2633,r13		! source line 2633
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-892],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2445 = fcb + 12
	load	[r14+-892],r1
	add	r1,12,r1
	store	r1,[r14+-36]
!   _temp_2446 = _temp_2445 + 12
	load	[r14+-36],r1
	add	r1,12,r1
	store	r1,[r14+-32]
!   Data Move: _temp_2444 = *_temp_2446  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   _temp_2443 = _temp_2444 AND 16		(int)
	load	[r14+-40],r1
	mov	16,r2
	and	r1,r2,r1
	store	r1,[r14+-44]
!   if _temp_2443 != 16 then goto _Label_2442		(int)
	load	[r14+-44],r1
	mov	16,r2
	cmp	r1,r2
	bne	_Label_2442
!	_Label_2441	jmp	_Label_2441
_Label_2441:
! THEN...
	mov	2634,r13		! source line 2634
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2634,r13		! source line 2634
	mov	"\0\0AS",r10
!   kind = 16		(4 bytes)
	mov	16,r1
	store	r1,[r14+-684]
	jmp	_Label_2447
_Label_2442:
! ELSE...
	mov	2636,r13		! source line 2636
	mov	"\0\0EL",r10
! ASSIGNMENT STATEMENT...
	mov	2636,r13		! source line 2636
	mov	"\0\0AS",r10
!   kind = 32		(4 bytes)
	mov	32,r1
	store	r1,[r14+-684]
! END IF...
_Label_2447:
! SEND STATEMENT...
	mov	2638,r13		! source line 2638
	mov	"\0\0SE",r10
!   _temp_2448 = newMode OR kind		(int)
	load	[r14+12],r1
	load	[r14+-684],r2
	or	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-892],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2449 = fcb + 12
	load	[r14+-892],r1
	add	r1,12,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=_temp_2448  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+4]
!   Send message SetMode
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,40,r2
	call	r2
! SEND STATEMENT...
	mov	2639,r13		! source line 2639
	mov	"\0\0SE",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-892],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2450 = fcb + 12
	load	[r14+-892],r1
	add	r1,12,r1
	store	r1,[r14+-20]
!   Send message WriteInode
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! SEND STATEMENT...
	mov	2640,r13		! source line 2640
	mov	"\0\0SE",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-892],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Flush
	load	[r14+-892],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! SEND STATEMENT...
	mov	2641,r13		! source line 2641
	mov	"\0\0SE",r10
!   _temp_2451 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-16]
!   _temp_2452 = _temp_2451 + 4
	load	[r14+-16],r1
	add	r1,4,r1
	store	r1,[r14+-12]
!   Send message Unlock
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	2643,r13		! source line 2643
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,904,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_ChMode:
	.word	_sourceFileName
	.word	_Label_2453
	.word	8		! total size of parameters
	.word	900		! frame size = 900
	.word	_Label_2454
	.word	8
	.word	4
	.word	_Label_2455
	.word	12
	.word	4
	.word	_Label_2456
	.word	-12
	.word	4
	.word	_Label_2457
	.word	-16
	.word	4
	.word	_Label_2458
	.word	-20
	.word	4
	.word	_Label_2459
	.word	-24
	.word	4
	.word	_Label_2460
	.word	-28
	.word	4
	.word	_Label_2461
	.word	-32
	.word	4
	.word	_Label_2462
	.word	-36
	.word	4
	.word	_Label_2463
	.word	-40
	.word	4
	.word	_Label_2464
	.word	-44
	.word	4
	.word	_Label_2465
	.word	-48
	.word	4
	.word	_Label_2466
	.word	-52
	.word	4
	.word	_Label_2467
	.word	-56
	.word	4
	.word	_Label_2468
	.word	-60
	.word	4
	.word	_Label_2469
	.word	-64
	.word	4
	.word	_Label_2470
	.word	-68
	.word	4
	.word	_Label_2471
	.word	-72
	.word	4
	.word	_Label_2472
	.word	-76
	.word	4
	.word	_Label_2473
	.word	-80
	.word	4
	.word	_Label_2474
	.word	-84
	.word	4
	.word	_Label_2475
	.word	-88
	.word	4
	.word	_Label_2476
	.word	-92
	.word	4
	.word	_Label_2477
	.word	-96
	.word	4
	.word	_Label_2478
	.word	-100
	.word	4
	.word	_Label_2479
	.word	-104
	.word	4
	.word	_Label_2480
	.word	-108
	.word	4
	.word	_Label_2481
	.word	-112
	.word	4
	.word	_Label_2482
	.word	-116
	.word	4
	.word	_Label_2483
	.word	-120
	.word	4
	.word	_Label_2484
	.word	-124
	.word	4
	.word	_Label_2485
	.word	-128
	.word	4
	.word	_Label_2486
	.word	-132
	.word	4
	.word	_Label_2487
	.word	-136
	.word	4
	.word	_Label_2488
	.word	-140
	.word	4
	.word	_Label_2489
	.word	-144
	.word	4
	.word	_Label_2490
	.word	-148
	.word	4
	.word	_Label_2491
	.word	-152
	.word	4
	.word	_Label_2492
	.word	-412
	.word	260
	.word	_Label_2493
	.word	-672
	.word	260
	.word	_Label_2494
	.word	-676
	.word	4
	.word	_Label_2495
	.word	-680
	.word	4
	.word	_Label_2496
	.word	-684
	.word	4
	.word	_Label_2497
	.word	-888
	.word	204
	.word	_Label_2498
	.word	-892
	.word	4
	.word	0
_Label_2453:
	.ascii	"Handle_Sys_ChMode\0"
	.align
_Label_2454:
	.byte	'P'
	.ascii	"fileName\0"
	.align
_Label_2455:
	.byte	'I'
	.ascii	"newMode\0"
	.align
_Label_2456:
	.byte	'?'
	.ascii	"_temp_2452\0"
	.align
_Label_2457:
	.byte	'?'
	.ascii	"_temp_2451\0"
	.align
_Label_2458:
	.byte	'?'
	.ascii	"_temp_2450\0"
	.align
_Label_2459:
	.byte	'?'
	.ascii	"_temp_2449\0"
	.align
_Label_2460:
	.byte	'?'
	.ascii	"_temp_2448\0"
	.align
_Label_2461:
	.byte	'?'
	.ascii	"_temp_2446\0"
	.align
_Label_2462:
	.byte	'?'
	.ascii	"_temp_2445\0"
	.align
_Label_2463:
	.byte	'?'
	.ascii	"_temp_2444\0"
	.align
_Label_2464:
	.byte	'?'
	.ascii	"_temp_2443\0"
	.align
_Label_2465:
	.byte	'?'
	.ascii	"_temp_2440\0"
	.align
_Label_2466:
	.byte	'?'
	.ascii	"_temp_2439\0"
	.align
_Label_2467:
	.byte	'?'
	.ascii	"_temp_2438\0"
	.align
_Label_2468:
	.byte	'?'
	.ascii	"_temp_2437\0"
	.align
_Label_2469:
	.byte	'?'
	.ascii	"_temp_2436\0"
	.align
_Label_2470:
	.byte	'?'
	.ascii	"_temp_2433\0"
	.align
_Label_2471:
	.byte	'?'
	.ascii	"_temp_2432\0"
	.align
_Label_2472:
	.byte	'?'
	.ascii	"_temp_2431\0"
	.align
_Label_2473:
	.byte	'?'
	.ascii	"_temp_2430\0"
	.align
_Label_2474:
	.byte	'?'
	.ascii	"_temp_2427\0"
	.align
_Label_2475:
	.byte	'?'
	.ascii	"_temp_2426\0"
	.align
_Label_2476:
	.byte	'?'
	.ascii	"_temp_2425\0"
	.align
_Label_2477:
	.byte	'?'
	.ascii	"_temp_2424\0"
	.align
_Label_2478:
	.byte	'?'
	.ascii	"_temp_2423\0"
	.align
_Label_2479:
	.byte	'?'
	.ascii	"_temp_2422\0"
	.align
_Label_2480:
	.byte	'?'
	.ascii	"_temp_2421\0"
	.align
_Label_2481:
	.byte	'?'
	.ascii	"_temp_2420\0"
	.align
_Label_2482:
	.byte	'?'
	.ascii	"_temp_2419\0"
	.align
_Label_2483:
	.byte	'?'
	.ascii	"_temp_2416\0"
	.align
_Label_2484:
	.byte	'?'
	.ascii	"_temp_2415\0"
	.align
_Label_2485:
	.byte	'?'
	.ascii	"_temp_2414\0"
	.align
_Label_2486:
	.byte	'?'
	.ascii	"_temp_2413\0"
	.align
_Label_2487:
	.byte	'?'
	.ascii	"_temp_2412\0"
	.align
_Label_2488:
	.byte	'?'
	.ascii	"_temp_2411\0"
	.align
_Label_2489:
	.byte	'?'
	.ascii	"_temp_2410\0"
	.align
_Label_2490:
	.byte	'?'
	.ascii	"_temp_2408\0"
	.align
_Label_2491:
	.byte	'?'
	.ascii	"_temp_2407\0"
	.align
_Label_2492:
	.byte	'?'
	.ascii	"_temp_2406\0"
	.align
_Label_2493:
	.byte	'A'
	.ascii	"nameBuf\0"
	.align
_Label_2494:
	.byte	'I'
	.ascii	"garbage\0"
	.align
_Label_2495:
	.byte	'I'
	.ascii	"iNodeNum\0"
	.align
_Label_2496:
	.byte	'I'
	.ascii	"kind\0"
	.align
_Label_2497:
	.byte	'O'
	.ascii	"addrSpace\0"
	.align
_Label_2498:
	.byte	'P'
	.ascii	"fcb\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_OpenDir  ===============
! 
_function_231_Handle_Sys_OpenDir:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_231_Handle_Sys_OpenDir,r1
	push	r1
	mov	180,r1
_Label_7808:
	push	r0
	sub	r1,1,r1
	bne	_Label_7808
	mov	2648,r13		! source line 2648
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! nameBuf
!   NEW ARRAY Constructor...
!   _temp_2500 = &_temp_2499
	add	r14,-436,r1
	store	r1,[r14+-176]
!   _temp_2500 = _temp_2500 + 4
	load	[r14+-176],r1
	add	r1,4,r1
	store	r1,[r14+-176]
!   Next value...
	mov	255,r1
	store	r1,[r14+-172]
_Label_2502:
!   Data Move: *_temp_2500 = 0  (sizeInBytes=1)
	mov	0,r1
	load	[r14+-176],r2
	storeb	r1,[r2]
!   _temp_2500 = _temp_2500 + 1
	load	[r14+-176],r1
	add	r1,1,r1
	store	r1,[r14+-176]
!   _temp_2501 = _temp_2501 + -1
	load	[r14+-172],r1
	add	r1,-1,r1
	store	r1,[r14+-172]
!   if intNotZero (_temp_2501) then goto _Label_2502
	load	[r14+-172],r1
	cmp	r1,r0
	bne	_Label_2502
!   Initialize the array size...
	mov	255,r1
	store	r1,[r14+-436]
!   _temp_2503 = &_temp_2499
	add	r14,-436,r1
	store	r1,[r14+-168]
!   make sure array has size 255
	load	[r14+-168],r1
	load	[r1],r1
	set	255, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: nameBuf = *_temp_2503  (sizeInBytes=260)
	load	[r14+-168],r5
	add	r14,-704,r4
	mov	65,r3
_Label_7809:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_7809
! ASSIGNMENT STATEMENT...
	mov	2653,r13		! source line 2653
	mov	"\0\0AS",r10
!   _temp_2504 = fileName		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-164]
!   Prepare Argument: offset=8  value=_temp_2504  sizeInBytes=4
	load	[r14+-164],r1
	store	r1,[r15+0]
!   Call the function
	mov	2653,r13		! source line 2653
	mov	"\0\0CA",r10
	call	_function_234_ValidatePtr
!   Retrieve Result: targetName=garbage  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-440]
! IF STATEMENT...
	mov	2654,r13		! source line 2654
	mov	"\0\0IF",r10
!   if garbage >= 0 then goto _Label_2506		(int)
	load	[r14+-440],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2506
!	_Label_2505	jmp	_Label_2505
_Label_2505:
! THEN...
	mov	2655,r13		! source line 2655
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2655,r13		! source line 2655
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2508 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-156]
!   Data Move: _temp_2507 = *_temp_2508  (sizeInBytes=4)
	load	[r14+-156],r1
	load	[r1],r1
	store	r1,[r14+-160]
!   if intIsZero (_temp_2507) then goto _runtimeErrorNullPointer
	load	[r14+-160],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2509 = _temp_2507 + 236
	load	[r14+-160],r1
	add	r1,236,r1
	store	r1,[r14+-152]
!   Data Move: *_temp_2509 = 6  (sizeInBytes=4)
	mov	6,r1
	load	[r14+-152],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	2656,r13		! source line 2656
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,724,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2506:
! ASSIGNMENT STATEMENT...
	mov	2659,r13		! source line 2659
	mov	"\0\0AS",r10
	mov	2659,r13		! source line 2659
	mov	"\0\0SE",r10
!   _temp_2510 = &nameBuf
	add	r14,-704,r1
	store	r1,[r14+-148]
!   _temp_2511 = fileName		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-144]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2513 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-136]
!   Data Move: _temp_2512 = *_temp_2513  (sizeInBytes=4)
	load	[r14+-136],r1
	load	[r1],r1
	store	r1,[r14+-140]
!   if intIsZero (_temp_2512) then goto _runtimeErrorNullPointer
	load	[r14+-140],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2514 = _temp_2512 + 32
	load	[r14+-140],r1
	add	r1,32,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=12  value=_temp_2510  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_2511  sizeInBytes=4
	load	[r14+-144],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=255  sizeInBytes=4
	mov	255,r1
	store	r1,[r15+12]
!   Send message GetStringFromVirtual
	load	[r14+-132],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,84,r2
	call	r2
!   Retrieve Result: targetName=garbage  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-440]
! IF STATEMENT...
	mov	2660,r13		! source line 2660
	mov	"\0\0IF",r10
!   if garbage >= 0 then goto _Label_2516		(int)
	load	[r14+-440],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2516
!	_Label_2515	jmp	_Label_2515
_Label_2515:
! THEN...
	mov	2661,r13		! source line 2661
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2661,r13		! source line 2661
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2518 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-124]
!   Data Move: _temp_2517 = *_temp_2518  (sizeInBytes=4)
	load	[r14+-124],r1
	load	[r1],r1
	store	r1,[r14+-128]
!   if intIsZero (_temp_2517) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2519 = _temp_2517 + 236
	load	[r14+-128],r1
	add	r1,236,r1
	store	r1,[r14+-120]
!   Data Move: *_temp_2519 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-120],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	2662,r13		! source line 2662
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,724,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2516:
! WHILE STATEMENT...
	mov	2665,r13		! source line 2665
	mov	"\0\0WH",r10
_Label_2520:
!   if freeFd >= 10 then goto _Label_2522		(int)
	load	[r14+-444],r1
	mov	10,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2522
!	_Label_2523	jmp	_Label_2523
_Label_2523:
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2526 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-108]
!   Data Move: _temp_2525 = *_temp_2526  (sizeInBytes=4)
	load	[r14+-108],r1
	load	[r1],r1
	store	r1,[r14+-112]
!   if intIsZero (_temp_2525) then goto _runtimeErrorNullPointer
	load	[r14+-112],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2527 = _temp_2525 + 244
	load	[r14+-112],r1
	add	r1,244,r1
	store	r1,[r14+-104]
!   Move address of _temp_2527 [freeFd ] into _temp_2528
!     make sure index expr is >= 0
	load	[r14+-444],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-104],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-100]
!   Data Move: _temp_2524 = *_temp_2528  (sizeInBytes=4)
	load	[r14+-100],r1
	load	[r1],r1
	store	r1,[r14+-116]
!   if intIsZero (_temp_2524) then goto _Label_2522
	load	[r14+-116],r1
	cmp	r1,r0
	be	_Label_2522
!	_Label_2521	jmp	_Label_2521
_Label_2521:
	mov	2665,r13		! source line 2665
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	2666,r13		! source line 2666
	mov	"\0\0AS",r10
!   freeFd = freeFd + 1		(int)
	load	[r14+-444],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-444]
! END WHILE...
	jmp	_Label_2520
_Label_2522:
! IF STATEMENT...
	mov	2669,r13		! source line 2669
	mov	"\0\0IF",r10
!   if freeFd != 10 then goto _Label_2530		(int)
	load	[r14+-444],r1
	mov	10,r2
	cmp	r1,r2
	bne	_Label_2530
!	_Label_2529	jmp	_Label_2529
_Label_2529:
! THEN...
	mov	2670,r13		! source line 2670
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2670,r13		! source line 2670
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2532 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-92]
!   Data Move: _temp_2531 = *_temp_2532  (sizeInBytes=4)
	load	[r14+-92],r1
	load	[r1],r1
	store	r1,[r14+-96]
!   if intIsZero (_temp_2531) then goto _runtimeErrorNullPointer
	load	[r14+-96],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2533 = _temp_2531 + 236
	load	[r14+-96],r1
	add	r1,236,r1
	store	r1,[r14+-88]
!   Data Move: *_temp_2533 = 4  (sizeInBytes=4)
	mov	4,r1
	load	[r14+-88],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	2671,r13		! source line 2671
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,724,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2530:
! ASSIGNMENT STATEMENT...
	mov	2674,r13		! source line 2674
	mov	"\0\0AS",r10
	mov	2674,r13		! source line 2674
	mov	"\0\0SE",r10
!   _temp_2534 = &nameBuf
	add	r14,-704,r1
	store	r1,[r14+-84]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2537 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-72]
!   Data Move: _temp_2536 = *_temp_2537  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r1],r1
	store	r1,[r14+-76]
!   if intIsZero (_temp_2536) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2538 = _temp_2536 + 240
	load	[r14+-76],r1
	add	r1,240,r1
	store	r1,[r14+-68]
!   Data Move: _temp_2535 = *_temp_2538  (sizeInBytes=4)
	load	[r14+-68],r1
	load	[r1],r1
	store	r1,[r14+-80]
!   _temp_2539 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=12  value=_temp_2534  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_2535  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+12]
!   Prepare Argument: offset=24  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+16]
!   Send message Open
	load	[r14+-64],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,36,r2
	call	r2
!   Retrieve Result: targetName=openDir  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-708]
! IF STATEMENT...
	mov	2676,r13		! source line 2676
	mov	"\0\0IF",r10
!   if intIsZero (openDir) then goto _Label_2540
	load	[r14+-708],r1
	cmp	r1,r0
	be	_Label_2540
	jmp	_Label_2541
_Label_2540:
! THEN...
	mov	2677,r13		! source line 2677
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2677,r13		! source line 2677
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2543 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-56]
!   Data Move: _temp_2542 = *_temp_2543  (sizeInBytes=4)
	load	[r14+-56],r1
	load	[r1],r1
	store	r1,[r14+-60]
!   if intIsZero (_temp_2542) then goto _runtimeErrorNullPointer
	load	[r14+-60],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2544 = _temp_2542 + 236
	load	[r14+-60],r1
	add	r1,236,r1
	store	r1,[r14+-52]
!   Data Move: *_temp_2544 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-52],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	2678,r13		! source line 2678
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,724,r15
	pop	r13
	pop	r14
	ret
	jmp	_Label_2545
_Label_2541:
! ELSE...
	mov	2679,r13		! source line 2679
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	2679,r13		! source line 2679
	mov	"\0\0IF",r10
!   if intIsZero (openDir) then goto _runtimeErrorNullPointer
	load	[r14+-708],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2549 = openDir + 12
	load	[r14+-708],r1
	add	r1,12,r1
	store	r1,[r14+-44]
!   Data Move: _temp_2548 = *_temp_2549  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r1],r1
	store	r1,[r14+-48]
!   if _temp_2548 != 1 then goto _Label_2547		(int)
	load	[r14+-48],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_2547
!	_Label_2546	jmp	_Label_2546
_Label_2546:
! THEN...
	mov	2680,r13		! source line 2680
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2680,r13		! source line 2680
	mov	"\0\0SE",r10
!   _temp_2550 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=openDir  sizeInBytes=4
	load	[r14+-708],r1
	store	r1,[r15+4]
!   Send message Close
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,40,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2681,r13		! source line 2681
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2552 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-32]
!   Data Move: _temp_2551 = *_temp_2552  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   if intIsZero (_temp_2551) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2553 = _temp_2551 + 236
	load	[r14+-36],r1
	add	r1,236,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_2553 = 5  (sizeInBytes=4)
	mov	5,r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	2682,r13		! source line 2682
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,724,r15
	pop	r13
	pop	r14
	ret
	jmp	_Label_2554
_Label_2547:
! ELSE...
	mov	2684,r13		! source line 2684
	mov	"\0\0EL",r10
! ASSIGNMENT STATEMENT...
	mov	2684,r13		! source line 2684
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2556 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-20]
!   Data Move: _temp_2555 = *_temp_2556  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_2555) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2557 = _temp_2555 + 244
	load	[r14+-24],r1
	add	r1,244,r1
	store	r1,[r14+-16]
!   Move address of _temp_2557 [freeFd ] into _temp_2558
!     make sure index expr is >= 0
	load	[r14+-444],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: *_temp_2558 = openDir  (sizeInBytes=4)
	load	[r14+-708],r1
	load	[r14+-12],r2
	store	r1,[r2]
! END IF...
_Label_2554:
! END IF...
_Label_2545:
! RETURN STATEMENT...
	mov	2687,r13		! source line 2687
	mov	"\0\0RE",r10
!   ReturnResult: freeFd  (sizeInBytes=4)
	load	[r14+-444],r1
	store	r1,[r14+8]
	add	r15,724,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_231_Handle_Sys_OpenDir:
	.word	_sourceFileName
	.word	_Label_2559
	.word	4		! total size of parameters
	.word	720		! frame size = 720
	.word	_Label_2560
	.word	8
	.word	4
	.word	_Label_2561
	.word	-12
	.word	4
	.word	_Label_2562
	.word	-16
	.word	4
	.word	_Label_2563
	.word	-20
	.word	4
	.word	_Label_2564
	.word	-24
	.word	4
	.word	_Label_2565
	.word	-28
	.word	4
	.word	_Label_2566
	.word	-32
	.word	4
	.word	_Label_2567
	.word	-36
	.word	4
	.word	_Label_2568
	.word	-40
	.word	4
	.word	_Label_2569
	.word	-44
	.word	4
	.word	_Label_2570
	.word	-48
	.word	4
	.word	_Label_2571
	.word	-52
	.word	4
	.word	_Label_2572
	.word	-56
	.word	4
	.word	_Label_2573
	.word	-60
	.word	4
	.word	_Label_2574
	.word	-64
	.word	4
	.word	_Label_2575
	.word	-68
	.word	4
	.word	_Label_2576
	.word	-72
	.word	4
	.word	_Label_2577
	.word	-76
	.word	4
	.word	_Label_2578
	.word	-80
	.word	4
	.word	_Label_2579
	.word	-84
	.word	4
	.word	_Label_2580
	.word	-88
	.word	4
	.word	_Label_2581
	.word	-92
	.word	4
	.word	_Label_2582
	.word	-96
	.word	4
	.word	_Label_2583
	.word	-100
	.word	4
	.word	_Label_2584
	.word	-104
	.word	4
	.word	_Label_2585
	.word	-108
	.word	4
	.word	_Label_2586
	.word	-112
	.word	4
	.word	_Label_2587
	.word	-116
	.word	4
	.word	_Label_2588
	.word	-120
	.word	4
	.word	_Label_2589
	.word	-124
	.word	4
	.word	_Label_2590
	.word	-128
	.word	4
	.word	_Label_2591
	.word	-132
	.word	4
	.word	_Label_2592
	.word	-136
	.word	4
	.word	_Label_2593
	.word	-140
	.word	4
	.word	_Label_2594
	.word	-144
	.word	4
	.word	_Label_2595
	.word	-148
	.word	4
	.word	_Label_2596
	.word	-152
	.word	4
	.word	_Label_2597
	.word	-156
	.word	4
	.word	_Label_2598
	.word	-160
	.word	4
	.word	_Label_2599
	.word	-164
	.word	4
	.word	_Label_2600
	.word	-168
	.word	4
	.word	_Label_2601
	.word	-172
	.word	4
	.word	_Label_2602
	.word	-176
	.word	4
	.word	_Label_2603
	.word	-436
	.word	260
	.word	_Label_2604
	.word	-440
	.word	4
	.word	_Label_2605
	.word	-444
	.word	4
	.word	_Label_2606
	.word	-704
	.word	260
	.word	_Label_2607
	.word	-708
	.word	4
	.word	0
_Label_2559:
	.ascii	"Handle_Sys_OpenDir\0"
	.align
_Label_2560:
	.byte	'P'
	.ascii	"fileName\0"
	.align
_Label_2561:
	.byte	'?'
	.ascii	"_temp_2558\0"
	.align
_Label_2562:
	.byte	'?'
	.ascii	"_temp_2557\0"
	.align
_Label_2563:
	.byte	'?'
	.ascii	"_temp_2556\0"
	.align
_Label_2564:
	.byte	'?'
	.ascii	"_temp_2555\0"
	.align
_Label_2565:
	.byte	'?'
	.ascii	"_temp_2553\0"
	.align
_Label_2566:
	.byte	'?'
	.ascii	"_temp_2552\0"
	.align
_Label_2567:
	.byte	'?'
	.ascii	"_temp_2551\0"
	.align
_Label_2568:
	.byte	'?'
	.ascii	"_temp_2550\0"
	.align
_Label_2569:
	.byte	'?'
	.ascii	"_temp_2549\0"
	.align
_Label_2570:
	.byte	'?'
	.ascii	"_temp_2548\0"
	.align
_Label_2571:
	.byte	'?'
	.ascii	"_temp_2544\0"
	.align
_Label_2572:
	.byte	'?'
	.ascii	"_temp_2543\0"
	.align
_Label_2573:
	.byte	'?'
	.ascii	"_temp_2542\0"
	.align
_Label_2574:
	.byte	'?'
	.ascii	"_temp_2539\0"
	.align
_Label_2575:
	.byte	'?'
	.ascii	"_temp_2538\0"
	.align
_Label_2576:
	.byte	'?'
	.ascii	"_temp_2537\0"
	.align
_Label_2577:
	.byte	'?'
	.ascii	"_temp_2536\0"
	.align
_Label_2578:
	.byte	'?'
	.ascii	"_temp_2535\0"
	.align
_Label_2579:
	.byte	'?'
	.ascii	"_temp_2534\0"
	.align
_Label_2580:
	.byte	'?'
	.ascii	"_temp_2533\0"
	.align
_Label_2581:
	.byte	'?'
	.ascii	"_temp_2532\0"
	.align
_Label_2582:
	.byte	'?'
	.ascii	"_temp_2531\0"
	.align
_Label_2583:
	.byte	'?'
	.ascii	"_temp_2528\0"
	.align
_Label_2584:
	.byte	'?'
	.ascii	"_temp_2527\0"
	.align
_Label_2585:
	.byte	'?'
	.ascii	"_temp_2526\0"
	.align
_Label_2586:
	.byte	'?'
	.ascii	"_temp_2525\0"
	.align
_Label_2587:
	.byte	'?'
	.ascii	"_temp_2524\0"
	.align
_Label_2588:
	.byte	'?'
	.ascii	"_temp_2519\0"
	.align
_Label_2589:
	.byte	'?'
	.ascii	"_temp_2518\0"
	.align
_Label_2590:
	.byte	'?'
	.ascii	"_temp_2517\0"
	.align
_Label_2591:
	.byte	'?'
	.ascii	"_temp_2514\0"
	.align
_Label_2592:
	.byte	'?'
	.ascii	"_temp_2513\0"
	.align
_Label_2593:
	.byte	'?'
	.ascii	"_temp_2512\0"
	.align
_Label_2594:
	.byte	'?'
	.ascii	"_temp_2511\0"
	.align
_Label_2595:
	.byte	'?'
	.ascii	"_temp_2510\0"
	.align
_Label_2596:
	.byte	'?'
	.ascii	"_temp_2509\0"
	.align
_Label_2597:
	.byte	'?'
	.ascii	"_temp_2508\0"
	.align
_Label_2598:
	.byte	'?'
	.ascii	"_temp_2507\0"
	.align
_Label_2599:
	.byte	'?'
	.ascii	"_temp_2504\0"
	.align
_Label_2600:
	.byte	'?'
	.ascii	"_temp_2503\0"
	.align
_Label_2601:
	.byte	'?'
	.ascii	"_temp_2501\0"
	.align
_Label_2602:
	.byte	'?'
	.ascii	"_temp_2500\0"
	.align
_Label_2603:
	.byte	'?'
	.ascii	"_temp_2499\0"
	.align
_Label_2604:
	.byte	'I'
	.ascii	"garbage\0"
	.align
_Label_2605:
	.byte	'I'
	.ascii	"freeFd\0"
	.align
_Label_2606:
	.byte	'A'
	.ascii	"nameBuf\0"
	.align
_Label_2607:
	.byte	'P'
	.ascii	"openDir\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_ReadDir  ===============
! 
_P_Kernel_Handle_Sys_ReadDir:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_ReadDir,r1
	push	r1
	mov	50,r1
_Label_7810:
	push	r0
	sub	r1,1,r1
	bne	_Label_7810
	mov	2692,r13		! source line 2692
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2697,r13		! source line 2697
	mov	"\0\0IF",r10
!   Prepare Argument: offset=8  value=fileDesc  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	2697,r13		! source line 2697
	mov	"\0\0CA",r10
	call	_function_232_ValidateFd
!   Retrieve Result: targetName=_temp_2610  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-176]
!   if _temp_2610 >= 0 then goto _Label_2609		(int)
	load	[r14+-176],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2609
!	_Label_2608	jmp	_Label_2608
_Label_2608:
! THEN...
	mov	2698,r13		! source line 2698
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2698,r13		! source line 2698
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2612 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-168]
!   Data Move: _temp_2611 = *_temp_2612  (sizeInBytes=4)
	load	[r14+-168],r1
	load	[r1],r1
	store	r1,[r14+-172]
!   if intIsZero (_temp_2611) then goto _runtimeErrorNullPointer
	load	[r14+-172],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2613 = _temp_2611 + 236
	load	[r14+-172],r1
	add	r1,236,r1
	store	r1,[r14+-164]
!   Data Move: *_temp_2613 = 7  (sizeInBytes=4)
	mov	7,r1
	load	[r14+-164],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	2699,r13		! source line 2699
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,204,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2609:
! IF STATEMENT...
	mov	2702,r13		! source line 2702
	mov	"\0\0IF",r10
!   _temp_2618 = userDirEntry		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-156]
!   Prepare Argument: offset=8  value=_temp_2618  sizeInBytes=4
	load	[r14+-156],r1
	store	r1,[r15+0]
!   Call the function
	mov	2702,r13		! source line 2702
	mov	"\0\0CA",r10
	call	_function_234_ValidatePtr
!   Retrieve Result: targetName=_temp_2617  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-160]
!   if _temp_2617 >= 0 then goto _Label_2616		(int)
	load	[r14+-160],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2616
	jmp	_Label_2614
_Label_2616:
!   _temp_2621 = userDirEntry		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-144]
!   _temp_2620 = _temp_2621 + 263		(int)
	load	[r14+-144],r1
	mov	263,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_2620  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+0]
!   Call the function
	mov	2702,r13		! source line 2702
	mov	"\0\0CA",r10
	call	_function_234_ValidatePtr
!   Retrieve Result: targetName=_temp_2619  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-152]
!   if _temp_2619 >= 0 then goto _Label_2615		(int)
	load	[r14+-152],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2615
!	_Label_2614	jmp	_Label_2614
_Label_2614:
! THEN...
	mov	2703,r13		! source line 2703
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2703,r13		! source line 2703
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2623 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-136]
!   Data Move: _temp_2622 = *_temp_2623  (sizeInBytes=4)
	load	[r14+-136],r1
	load	[r1],r1
	store	r1,[r14+-140]
!   if intIsZero (_temp_2622) then goto _runtimeErrorNullPointer
	load	[r14+-140],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2624 = _temp_2622 + 236
	load	[r14+-140],r1
	add	r1,236,r1
	store	r1,[r14+-132]
!   Data Move: *_temp_2624 = 6  (sizeInBytes=4)
	mov	6,r1
	load	[r14+-132],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	2704,r13		! source line 2704
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,204,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2615:
! IF STATEMENT...
	mov	2707,r13		! source line 2707
	mov	"\0\0IF",r10
!   _temp_2628 = userDirEntry		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-124]
!   Prepare Argument: offset=8  value=_temp_2628  sizeInBytes=4
	load	[r14+-124],r1
	store	r1,[r15+0]
!   Call the function
	mov	2707,r13		! source line 2707
	mov	"\0\0CA",r10
	call	_function_233_ValidatePointerWrite
!   Retrieve Result: targetName=_temp_2627  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-128]
!   if _temp_2627 >= 0 then goto _Label_2626		(int)
	load	[r14+-128],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2626
!	_Label_2625	jmp	_Label_2625
_Label_2625:
! THEN...
	mov	2708,r13		! source line 2708
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2708,r13		! source line 2708
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2630 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-116]
!   Data Move: _temp_2629 = *_temp_2630  (sizeInBytes=4)
	load	[r14+-116],r1
	load	[r1],r1
	store	r1,[r14+-120]
!   if intIsZero (_temp_2629) then goto _runtimeErrorNullPointer
	load	[r14+-120],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2631 = _temp_2629 + 236
	load	[r14+-120],r1
	add	r1,236,r1
	store	r1,[r14+-112]
!   Data Move: *_temp_2631 = 9  (sizeInBytes=4)
	mov	9,r1
	load	[r14+-112],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	2709,r13		! source line 2709
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,204,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2626:
! IF STATEMENT...
	mov	2712,r13		! source line 2712
	mov	"\0\0IF",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2636 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-100]
!   Data Move: _temp_2635 = *_temp_2636  (sizeInBytes=4)
	load	[r14+-100],r1
	load	[r1],r1
	store	r1,[r14+-104]
!   if intIsZero (_temp_2635) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2637 = _temp_2635 + 244
	load	[r14+-104],r1
	add	r1,244,r1
	store	r1,[r14+-96]
!   Move address of _temp_2637 [fileDesc ] into _temp_2638
!     make sure index expr is >= 0
	load	[r14+8],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-96],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-92]
!   Data Move: _temp_2634 = *_temp_2638  (sizeInBytes=4)
	load	[r14+-92],r1
	load	[r1],r1
	store	r1,[r14+-108]
!   if intIsZero (_temp_2634) then goto _Label_2632
	load	[r14+-108],r1
	cmp	r1,r0
	be	_Label_2632
	jmp	_Label_2633
_Label_2632:
! THEN...
	mov	2713,r13		! source line 2713
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2713,r13		! source line 2713
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2640 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-84]
!   Data Move: _temp_2639 = *_temp_2640  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r1],r1
	store	r1,[r14+-88]
!   if intIsZero (_temp_2639) then goto _runtimeErrorNullPointer
	load	[r14+-88],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2641 = _temp_2639 + 236
	load	[r14+-88],r1
	add	r1,236,r1
	store	r1,[r14+-80]
!   Data Move: *_temp_2641 = 7  (sizeInBytes=4)
	mov	7,r1
	load	[r14+-80],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	2714,r13		! source line 2714
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,204,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2633:
! ASSIGNMENT STATEMENT...
	mov	2716,r13		! source line 2716
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2643 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-72]
!   Data Move: _temp_2642 = *_temp_2643  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r1],r1
	store	r1,[r14+-76]
!   if intIsZero (_temp_2642) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2644 = _temp_2642 + 244
	load	[r14+-76],r1
	add	r1,244,r1
	store	r1,[r14+-68]
!   Move address of _temp_2644 [fileDesc ] into _temp_2645
!     make sure index expr is >= 0
	load	[r14+8],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-68],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-64]
!   Data Move: dir = *_temp_2645  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-184]
! IF STATEMENT...
	mov	2718,r13		! source line 2718
	mov	"\0\0IF",r10
!   if intIsZero (dir) then goto _runtimeErrorNullPointer
	load	[r14+-184],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2649 = dir + 12
	load	[r14+-184],r1
	add	r1,12,r1
	store	r1,[r14+-56]
!   Data Move: _temp_2648 = *_temp_2649  (sizeInBytes=4)
	load	[r14+-56],r1
	load	[r1],r1
	store	r1,[r14+-60]
!   if _temp_2648 == 4 then goto _Label_2647		(int)
	load	[r14+-60],r1
	mov	4,r2
	cmp	r1,r2
	be	_Label_2647
!	_Label_2646	jmp	_Label_2646
_Label_2646:
! THEN...
	mov	2719,r13		! source line 2719
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2719,r13		! source line 2719
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2651 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-48]
!   Data Move: _temp_2650 = *_temp_2651  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r1],r1
	store	r1,[r14+-52]
!   if intIsZero (_temp_2650) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2652 = _temp_2650 + 236
	load	[r14+-52],r1
	add	r1,236,r1
	store	r1,[r14+-44]
!   Data Move: *_temp_2652 = 5  (sizeInBytes=4)
	mov	5,r1
	load	[r14+-44],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	2720,r13		! source line 2720
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,204,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2647:
! ASSIGNMENT STATEMENT...
	mov	2723,r13		! source line 2723
	mov	"\0\0AS",r10
	mov	2723,r13		! source line 2723
	mov	"\0\0SE",r10
!   if intIsZero (dir) then goto _runtimeErrorNullPointer
	load	[r14+-184],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=size  sizeInBytes=4
	load	[r14+-188],r1
	store	r1,[r15+4]
!   Send message GetNextEntry
	load	[r14+-184],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   Retrieve Result: targetName=dirEnt  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-180]
! IF STATEMENT...
	mov	2724,r13		! source line 2724
	mov	"\0\0IF",r10
!   if intIsZero (dirEnt) then goto _Label_2653
	load	[r14+-180],r1
	cmp	r1,r0
	be	_Label_2653
	jmp	_Label_2654
_Label_2653:
! THEN...
	mov	2725,r13		! source line 2725
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2725,r13		! source line 2725
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2656 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-36]
!   Data Move: _temp_2655 = *_temp_2656  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if intIsZero (_temp_2655) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2657 = _temp_2655 + 236
	load	[r14+-40],r1
	add	r1,236,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_2657 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-32],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	2726,r13		! source line 2726
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,204,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2654:
! ASSIGNMENT STATEMENT...
	mov	2730,r13		! source line 2730
	mov	"\0\0AS",r10
	mov	2730,r13		! source line 2730
	mov	"\0\0SE",r10
!   _temp_2658 = userDirEntry		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-28]
!   _temp_2659 = dirEnt		(4 bytes)
	load	[r14+-180],r1
	store	r1,[r14+-24]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2661 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-16]
!   Data Move: _temp_2660 = *_temp_2661  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_2660) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2662 = _temp_2660 + 32
	load	[r14+-20],r1
	add	r1,32,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_2658  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_2659  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=263  sizeInBytes=4
	mov	263,r1
	store	r1,[r15+12]
!   Send message CopyBytesToVirtual
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,80,r2
	call	r2
!   Retrieve Result: targetName=garbage  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-192]
! IF STATEMENT...
	mov	2731,r13		! source line 2731
	mov	"\0\0IF",r10
!   if garbage >= 0 then goto _Label_2664		(int)
	load	[r14+-192],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2664
!	_Label_2663	jmp	_Label_2663
_Label_2663:
! THEN...
	mov	2732,r13		! source line 2732
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2732,r13		! source line 2732
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,204,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2664:
! RETURN STATEMENT...
	mov	2735,r13		! source line 2735
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,204,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_ReadDir:
	.word	_sourceFileName
	.word	_Label_2665
	.word	8		! total size of parameters
	.word	200		! frame size = 200
	.word	_Label_2666
	.word	8
	.word	4
	.word	_Label_2667
	.word	12
	.word	4
	.word	_Label_2668
	.word	-12
	.word	4
	.word	_Label_2669
	.word	-16
	.word	4
	.word	_Label_2670
	.word	-20
	.word	4
	.word	_Label_2671
	.word	-24
	.word	4
	.word	_Label_2672
	.word	-28
	.word	4
	.word	_Label_2673
	.word	-32
	.word	4
	.word	_Label_2674
	.word	-36
	.word	4
	.word	_Label_2675
	.word	-40
	.word	4
	.word	_Label_2676
	.word	-44
	.word	4
	.word	_Label_2677
	.word	-48
	.word	4
	.word	_Label_2678
	.word	-52
	.word	4
	.word	_Label_2679
	.word	-56
	.word	4
	.word	_Label_2680
	.word	-60
	.word	4
	.word	_Label_2681
	.word	-64
	.word	4
	.word	_Label_2682
	.word	-68
	.word	4
	.word	_Label_2683
	.word	-72
	.word	4
	.word	_Label_2684
	.word	-76
	.word	4
	.word	_Label_2685
	.word	-80
	.word	4
	.word	_Label_2686
	.word	-84
	.word	4
	.word	_Label_2687
	.word	-88
	.word	4
	.word	_Label_2688
	.word	-92
	.word	4
	.word	_Label_2689
	.word	-96
	.word	4
	.word	_Label_2690
	.word	-100
	.word	4
	.word	_Label_2691
	.word	-104
	.word	4
	.word	_Label_2692
	.word	-108
	.word	4
	.word	_Label_2693
	.word	-112
	.word	4
	.word	_Label_2694
	.word	-116
	.word	4
	.word	_Label_2695
	.word	-120
	.word	4
	.word	_Label_2696
	.word	-124
	.word	4
	.word	_Label_2697
	.word	-128
	.word	4
	.word	_Label_2698
	.word	-132
	.word	4
	.word	_Label_2699
	.word	-136
	.word	4
	.word	_Label_2700
	.word	-140
	.word	4
	.word	_Label_2701
	.word	-144
	.word	4
	.word	_Label_2702
	.word	-148
	.word	4
	.word	_Label_2703
	.word	-152
	.word	4
	.word	_Label_2704
	.word	-156
	.word	4
	.word	_Label_2705
	.word	-160
	.word	4
	.word	_Label_2706
	.word	-164
	.word	4
	.word	_Label_2707
	.word	-168
	.word	4
	.word	_Label_2708
	.word	-172
	.word	4
	.word	_Label_2709
	.word	-176
	.word	4
	.word	_Label_2710
	.word	-180
	.word	4
	.word	_Label_2711
	.word	-184
	.word	4
	.word	_Label_2712
	.word	-188
	.word	4
	.word	_Label_2713
	.word	-192
	.word	4
	.word	0
_Label_2665:
	.ascii	"Handle_Sys_ReadDir\0"
	.align
_Label_2666:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_2667:
	.byte	'P'
	.ascii	"userDirEntry\0"
	.align
_Label_2668:
	.byte	'?'
	.ascii	"_temp_2662\0"
	.align
_Label_2669:
	.byte	'?'
	.ascii	"_temp_2661\0"
	.align
_Label_2670:
	.byte	'?'
	.ascii	"_temp_2660\0"
	.align
_Label_2671:
	.byte	'?'
	.ascii	"_temp_2659\0"
	.align
_Label_2672:
	.byte	'?'
	.ascii	"_temp_2658\0"
	.align
_Label_2673:
	.byte	'?'
	.ascii	"_temp_2657\0"
	.align
_Label_2674:
	.byte	'?'
	.ascii	"_temp_2656\0"
	.align
_Label_2675:
	.byte	'?'
	.ascii	"_temp_2655\0"
	.align
_Label_2676:
	.byte	'?'
	.ascii	"_temp_2652\0"
	.align
_Label_2677:
	.byte	'?'
	.ascii	"_temp_2651\0"
	.align
_Label_2678:
	.byte	'?'
	.ascii	"_temp_2650\0"
	.align
_Label_2679:
	.byte	'?'
	.ascii	"_temp_2649\0"
	.align
_Label_2680:
	.byte	'?'
	.ascii	"_temp_2648\0"
	.align
_Label_2681:
	.byte	'?'
	.ascii	"_temp_2645\0"
	.align
_Label_2682:
	.byte	'?'
	.ascii	"_temp_2644\0"
	.align
_Label_2683:
	.byte	'?'
	.ascii	"_temp_2643\0"
	.align
_Label_2684:
	.byte	'?'
	.ascii	"_temp_2642\0"
	.align
_Label_2685:
	.byte	'?'
	.ascii	"_temp_2641\0"
	.align
_Label_2686:
	.byte	'?'
	.ascii	"_temp_2640\0"
	.align
_Label_2687:
	.byte	'?'
	.ascii	"_temp_2639\0"
	.align
_Label_2688:
	.byte	'?'
	.ascii	"_temp_2638\0"
	.align
_Label_2689:
	.byte	'?'
	.ascii	"_temp_2637\0"
	.align
_Label_2690:
	.byte	'?'
	.ascii	"_temp_2636\0"
	.align
_Label_2691:
	.byte	'?'
	.ascii	"_temp_2635\0"
	.align
_Label_2692:
	.byte	'?'
	.ascii	"_temp_2634\0"
	.align
_Label_2693:
	.byte	'?'
	.ascii	"_temp_2631\0"
	.align
_Label_2694:
	.byte	'?'
	.ascii	"_temp_2630\0"
	.align
_Label_2695:
	.byte	'?'
	.ascii	"_temp_2629\0"
	.align
_Label_2696:
	.byte	'?'
	.ascii	"_temp_2628\0"
	.align
_Label_2697:
	.byte	'?'
	.ascii	"_temp_2627\0"
	.align
_Label_2698:
	.byte	'?'
	.ascii	"_temp_2624\0"
	.align
_Label_2699:
	.byte	'?'
	.ascii	"_temp_2623\0"
	.align
_Label_2700:
	.byte	'?'
	.ascii	"_temp_2622\0"
	.align
_Label_2701:
	.byte	'?'
	.ascii	"_temp_2621\0"
	.align
_Label_2702:
	.byte	'?'
	.ascii	"_temp_2620\0"
	.align
_Label_2703:
	.byte	'?'
	.ascii	"_temp_2619\0"
	.align
_Label_2704:
	.byte	'?'
	.ascii	"_temp_2618\0"
	.align
_Label_2705:
	.byte	'?'
	.ascii	"_temp_2617\0"
	.align
_Label_2706:
	.byte	'?'
	.ascii	"_temp_2613\0"
	.align
_Label_2707:
	.byte	'?'
	.ascii	"_temp_2612\0"
	.align
_Label_2708:
	.byte	'?'
	.ascii	"_temp_2611\0"
	.align
_Label_2709:
	.byte	'?'
	.ascii	"_temp_2610\0"
	.align
_Label_2710:
	.byte	'P'
	.ascii	"dirEnt\0"
	.align
_Label_2711:
	.byte	'P'
	.ascii	"dir\0"
	.align
_Label_2712:
	.byte	'I'
	.ascii	"size\0"
	.align
_Label_2713:
	.byte	'I'
	.ascii	"garbage\0"
	.align
! 
! ===============  FUNCTION copyUnalignedWord  ===============
! 
_function_230_copyUnalignedWord:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_230_copyUnalignedWord,r1
	push	r1
	mov	9,r1
_Label_7811:
	push	r0
	sub	r1,1,r1
	bne	_Label_7811
	mov	3415,r13		! source line 3415
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	3417,r13		! source line 3417
	mov	"\0\0AS",r10
!   from = fromPtr		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	3418,r13		! source line 3418
	mov	"\0\0AS",r10
!   dest = destPtr		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-44]
! ASSIGNMENT STATEMENT...
	mov	3419,r13		! source line 3419
	mov	"\0\0AS",r10
!   if intIsZero (dest) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   if intIsZero (from) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_2714 = *from  (sizeInBytes=1)
	load	[r14+-40],r1
	loadb	[r1],r1
	storeb	r1,[r14+-12]
!   Data Move: *dest = _temp_2714  (sizeInBytes=1)
	loadb	[r14+-12],r1
	load	[r14+-44],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	3420,r13		! source line 3420
	mov	"\0\0AS",r10
!   _temp_2715 = dest + 1		(int)
	load	[r14+-44],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
!   if intIsZero (_temp_2715) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2717 = from + 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-32]
!   if intIsZero (_temp_2717) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_2716 = *_temp_2717  (sizeInBytes=1)
	load	[r14+-32],r1
	loadb	[r1],r1
	storeb	r1,[r14+-11]
!   Data Move: *_temp_2715 = _temp_2716  (sizeInBytes=1)
	loadb	[r14+-11],r1
	load	[r14+-36],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	3421,r13		! source line 3421
	mov	"\0\0AS",r10
!   _temp_2718 = dest + 2		(int)
	load	[r14+-44],r1
	mov	2,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-28]
!   if intIsZero (_temp_2718) then goto _runtimeErrorNullPointer
	load	[r14+-28],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2720 = from + 2		(int)
	load	[r14+-40],r1
	mov	2,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-24]
!   if intIsZero (_temp_2720) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_2719 = *_temp_2720  (sizeInBytes=1)
	load	[r14+-24],r1
	loadb	[r1],r1
	storeb	r1,[r14+-10]
!   Data Move: *_temp_2718 = _temp_2719  (sizeInBytes=1)
	loadb	[r14+-10],r1
	load	[r14+-28],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	3422,r13		! source line 3422
	mov	"\0\0AS",r10
!   _temp_2721 = dest + 3		(int)
	load	[r14+-44],r1
	mov	3,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-20]
!   if intIsZero (_temp_2721) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2723 = from + 3		(int)
	load	[r14+-40],r1
	mov	3,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-16]
!   if intIsZero (_temp_2723) then goto _runtimeErrorNullPointer
	load	[r14+-16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_2722 = *_temp_2723  (sizeInBytes=1)
	load	[r14+-16],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *_temp_2721 = _temp_2722  (sizeInBytes=1)
	loadb	[r14+-9],r1
	load	[r14+-20],r2
	storeb	r1,[r2]
! RETURN STATEMENT...
	mov	3422,r13		! source line 3422
	mov	"\0\0RE",r10
	add	r15,40,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_230_copyUnalignedWord:
	.word	_sourceFileName
	.word	_Label_2724
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_2725
	.word	8
	.word	4
	.word	_Label_2726
	.word	12
	.word	4
	.word	_Label_2727
	.word	-16
	.word	4
	.word	_Label_2728
	.word	-9
	.word	1
	.word	_Label_2729
	.word	-20
	.word	4
	.word	_Label_2730
	.word	-24
	.word	4
	.word	_Label_2731
	.word	-10
	.word	1
	.word	_Label_2732
	.word	-28
	.word	4
	.word	_Label_2733
	.word	-32
	.word	4
	.word	_Label_2734
	.word	-11
	.word	1
	.word	_Label_2735
	.word	-36
	.word	4
	.word	_Label_2736
	.word	-12
	.word	1
	.word	_Label_2737
	.word	-40
	.word	4
	.word	_Label_2738
	.word	-44
	.word	4
	.word	0
_Label_2724:
	.ascii	"copyUnalignedWord\0"
	.align
_Label_2725:
	.byte	'P'
	.ascii	"destPtr\0"
	.align
_Label_2726:
	.byte	'P'
	.ascii	"fromPtr\0"
	.align
_Label_2727:
	.byte	'?'
	.ascii	"_temp_2723\0"
	.align
_Label_2728:
	.byte	'C'
	.ascii	"_temp_2722\0"
	.align
_Label_2729:
	.byte	'?'
	.ascii	"_temp_2721\0"
	.align
_Label_2730:
	.byte	'?'
	.ascii	"_temp_2720\0"
	.align
_Label_2731:
	.byte	'C'
	.ascii	"_temp_2719\0"
	.align
_Label_2732:
	.byte	'?'
	.ascii	"_temp_2718\0"
	.align
_Label_2733:
	.byte	'?'
	.ascii	"_temp_2717\0"
	.align
_Label_2734:
	.byte	'C'
	.ascii	"_temp_2716\0"
	.align
_Label_2735:
	.byte	'?'
	.ascii	"_temp_2715\0"
	.align
_Label_2736:
	.byte	'C'
	.ascii	"_temp_2714\0"
	.align
_Label_2737:
	.byte	'P'
	.ascii	"from\0"
	.align
_Label_2738:
	.byte	'P'
	.ascii	"dest\0"
	.align
! 
! ===============  FUNCTION printFCB  ===============
! 
_function_229_printFCB:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_229_printFCB,r1
	push	r1
	mov	4,r1
_Label_7812:
	push	r0
	sub	r1,1,r1
	bne	_Label_7812
	mov	3425,r13		! source line 3425
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2740 = fcb + 12
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-16]
!   _temp_2741 = _temp_2740 + 4
	load	[r14+-16],r1
	add	r1,4,r1
	store	r1,[r14+-12]
!   Data Move: _temp_2739 = *_temp_2741  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2739  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	3426,r13		! source line 3426
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=32  sizeInBytes=1
	mov	32,r1
	storeb	r1,[r15+0]
!   Call the function
	mov	3427,r13		! source line 3427
	mov	"\0\0CE",r10
	call	printChar
! RETURN STATEMENT...
	mov	3427,r13		! source line 3427
	mov	"\0\0RE",r10
	add	r15,20,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_229_printFCB:
	.word	_sourceFileName
	.word	_Label_2742
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_2743
	.word	8
	.word	4
	.word	_Label_2744
	.word	-12
	.word	4
	.word	_Label_2745
	.word	-16
	.word	4
	.word	_Label_2746
	.word	-20
	.word	4
	.word	0
_Label_2742:
	.ascii	"printFCB\0"
	.align
_Label_2743:
	.byte	'P'
	.ascii	"fcb\0"
	.align
_Label_2744:
	.byte	'?'
	.ascii	"_temp_2741\0"
	.align
_Label_2745:
	.byte	'?'
	.ascii	"_temp_2740\0"
	.align
_Label_2746:
	.byte	'?'
	.ascii	"_temp_2739\0"
	.align
! 
! ===============  FUNCTION printOpen  ===============
! 
_function_228_printOpen:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_228_printOpen,r1
	push	r1
	mov	4,r1
_Label_7813:
	push	r0
	sub	r1,1,r1
	bne	_Label_7813
	mov	3430,r13		! source line 3430
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2747 = _StringConst_43
	set	_StringConst_43,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2747  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	3431,r13		! source line 3431
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2748 = open		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_2748  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	3432,r13		! source line 3432
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2749 = _StringConst_44
	set	_StringConst_44,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2749  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	3433,r13		! source line 3433
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	3434,r13		! source line 3434
	mov	"\0\0SE",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Print
	load	[r14+8],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! RETURN STATEMENT...
	mov	3434,r13		! source line 3434
	mov	"\0\0RE",r10
	add	r15,20,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_228_printOpen:
	.word	_sourceFileName
	.word	_Label_2750
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_2751
	.word	8
	.word	4
	.word	_Label_2752
	.word	-12
	.word	4
	.word	_Label_2753
	.word	-16
	.word	4
	.word	_Label_2754
	.word	-20
	.word	4
	.word	0
_Label_2750:
	.ascii	"printOpen\0"
	.align
_Label_2751:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_2752:
	.byte	'?'
	.ascii	"_temp_2749\0"
	.align
_Label_2753:
	.byte	'?'
	.ascii	"_temp_2748\0"
	.align
_Label_2754:
	.byte	'?'
	.ascii	"_temp_2747\0"
	.align
! 
! ===============  FUNCTION SerialHandlerFunction  ===============
! 
_P_Kernel_SerialHandlerFunction:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_SerialHandlerFunction,r1
	push	r1
	mov	2,r1
_Label_7814:
	push	r0
	sub	r1,1,r1
	bne	_Label_7814
	mov	5085,r13		! source line 5085
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	5086,r13		! source line 5086
	mov	"\0\0SE",r10
!   _temp_2755 = &_P_Kernel_serialDriver
	set	_P_Kernel_serialDriver,r1
	store	r1,[r14+-12]
!   Send message SerialHandler
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,24,r2
	call	r2
! RETURN STATEMENT...
	mov	5086,r13		! source line 5086
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_SerialHandlerFunction:
	.word	_sourceFileName
	.word	_Label_2756
	.word	4		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_2757
	.word	8
	.word	4
	.word	_Label_2758
	.word	-12
	.word	4
	.word	0
_Label_2756:
	.ascii	"SerialHandlerFunction\0"
	.align
_Label_2757:
	.byte	'I'
	.ascii	"value\0"
	.align
_Label_2758:
	.byte	'?'
	.ascii	"_temp_2755\0"
	.align
! 
! ===============  CLASS Semaphore  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Semaphore:
	.word	_Label_2759
	jmp	_Method_P_Kernel_Semaphore_1	! 4:	Init
	jmp	_Method_P_Kernel_Semaphore_3	! 8:	Down
	jmp	_Method_P_Kernel_Semaphore_2	! 12:	Up
	.word	0
! 
! Class descriptor:
! 
_Label_2759:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2760
	.word	_sourceFileName
	.word	136		! line number
	.word	20		! size of instances, in bytes
	.word	_P_Kernel_Semaphore
	.word	_P_System_Object
	.word	0
_Label_2760:
	.ascii	"Semaphore\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_Semaphore_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Semaphore_1,r1
	push	r1
	mov	3,r1
_Label_7815:
	push	r0
	sub	r1,1,r1
	bne	_Label_7815
	mov	233,r13		! source line 233
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	234,r13		! source line 234
	mov	"\0\0IF",r10
!   if initialCount >= 0 then goto _Label_2762		(int)
	load	[r14+12],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2762
!	_Label_2761	jmp	_Label_2761
_Label_2761:
! THEN...
	mov	235,r13		! source line 235
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2763 = _StringConst_45
	set	_StringConst_45,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_2763  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	235,r13		! source line 235
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2762:
! ASSIGNMENT STATEMENT...
	mov	237,r13		! source line 237
	mov	"\0\0AS",r10
!   count = initialCount		(4 bytes)
	load	[r14+12],r1
	load	[r14+8],r2
	store	r1,[r2+4]
! ASSIGNMENT STATEMENT...
	mov	238,r13		! source line 238
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: waitingThreads = zeros  (sizeInBytes=12)
	load	[r14+8],r4
	add	r4,8,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   waitingThreads = _P_List_List
	set	_P_List_List,r1
	load	[r14+8],r2
	store	r1,[r2+8]
! RETURN STATEMENT...
	mov	238,r13		! source line 238
	mov	"\0\0RE",r10
	add	r15,16,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Semaphore_1:
	.word	_sourceFileName
	.word	_Label_2765
	.word	8		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_2766
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2767
	.word	12
	.word	4
	.word	_Label_2768
	.word	-12
	.word	4
	.word	_Label_2769
	.word	-16
	.word	4
	.word	0
_Label_2765:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_2766:
	.ascii	"Pself\0"
	.align
_Label_2767:
	.byte	'I'
	.ascii	"initialCount\0"
	.align
_Label_2768:
	.byte	'?'
	.ascii	"_temp_2764\0"
	.align
_Label_2769:
	.byte	'?'
	.ascii	"_temp_2763\0"
	.align
! 
! ===============  METHOD Up  ===============
! 
_Method_P_Kernel_Semaphore_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Semaphore_2,r1
	push	r1
	mov	8,r1
_Label_7816:
	push	r0
	sub	r1,1,r1
	bne	_Label_7816
	mov	243,r13		! source line 243
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	247,r13		! source line 247
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	247,r13		! source line 247
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! IF STATEMENT...
	mov	248,r13		! source line 248
	mov	"\0\0IF",r10
!   if count != 2147483647 then goto _Label_2771		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	2147483647,r2
	cmp	r1,r2
	bne	_Label_2771
!	_Label_2770	jmp	_Label_2770
_Label_2770:
! THEN...
	mov	249,r13		! source line 249
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2772 = _StringConst_46
	set	_StringConst_46,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2772  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	249,r13		! source line 249
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2771:
! ASSIGNMENT STATEMENT...
	mov	251,r13		! source line 251
	mov	"\0\0AS",r10
!   count = count + 1		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+4]
! IF STATEMENT...
	mov	252,r13		! source line 252
	mov	"\0\0IF",r10
!   if count > 0 then goto _Label_2774		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2774
!	_Label_2773	jmp	_Label_2773
_Label_2773:
! THEN...
	mov	253,r13		! source line 253
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	253,r13		! source line 253
	mov	"\0\0AS",r10
	mov	253,r13		! source line 253
	mov	"\0\0SE",r10
!   _temp_2775 = &waitingThreads
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Send message Remove
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=t  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! ASSIGNMENT STATEMENT...
	mov	254,r13		! source line 254
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2776 = t + 76
	load	[r14+-32],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_2776 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	255,r13		! source line 255
	mov	"\0\0SE",r10
!   _temp_2777 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=t  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END IF...
_Label_2774:
! ASSIGNMENT STATEMENT...
	mov	257,r13		! source line 257
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	257,r13		! source line 257
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! RETURN STATEMENT...
	mov	257,r13		! source line 257
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Semaphore_2:
	.word	_sourceFileName
	.word	_Label_2778
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_2779
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2780
	.word	-12
	.word	4
	.word	_Label_2781
	.word	-16
	.word	4
	.word	_Label_2782
	.word	-20
	.word	4
	.word	_Label_2783
	.word	-24
	.word	4
	.word	_Label_2784
	.word	-28
	.word	4
	.word	_Label_2785
	.word	-32
	.word	4
	.word	0
_Label_2778:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Up\0"
	.align
_Label_2779:
	.ascii	"Pself\0"
	.align
_Label_2780:
	.byte	'?'
	.ascii	"_temp_2777\0"
	.align
_Label_2781:
	.byte	'?'
	.ascii	"_temp_2776\0"
	.align
_Label_2782:
	.byte	'?'
	.ascii	"_temp_2775\0"
	.align
_Label_2783:
	.byte	'?'
	.ascii	"_temp_2772\0"
	.align
_Label_2784:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_2785:
	.byte	'P'
	.ascii	"t\0"
	.align
! 
! ===============  METHOD Down  ===============
! 
_Method_P_Kernel_Semaphore_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Semaphore_3,r1
	push	r1
	mov	5,r1
_Label_7817:
	push	r0
	sub	r1,1,r1
	bne	_Label_7817
	mov	262,r13		! source line 262
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	265,r13		! source line 265
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	265,r13		! source line 265
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
! IF STATEMENT...
	mov	266,r13		! source line 266
	mov	"\0\0IF",r10
!   if count != -2147483648 then goto _Label_2787		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	0x80000000,r2
	cmp	r1,r2
	bne	_Label_2787
!	_Label_2786	jmp	_Label_2786
_Label_2786:
! THEN...
	mov	267,r13		! source line 267
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2788 = _StringConst_47
	set	_StringConst_47,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_2788  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	267,r13		! source line 267
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2787:
! ASSIGNMENT STATEMENT...
	mov	269,r13		! source line 269
	mov	"\0\0AS",r10
!   count = count - 1		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+4]
! IF STATEMENT...
	mov	270,r13		! source line 270
	mov	"\0\0IF",r10
!   if count >= 0 then goto _Label_2790		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2790
!	_Label_2789	jmp	_Label_2789
_Label_2789:
! THEN...
	mov	271,r13		! source line 271
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	271,r13		! source line 271
	mov	"\0\0SE",r10
!   _temp_2791 = &waitingThreads
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_P_Kernel_currentThread  sizeInBytes=4
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	272,r13		! source line 272
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Sleep
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! END IF...
_Label_2790:
! ASSIGNMENT STATEMENT...
	mov	274,r13		! source line 274
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	274,r13		! source line 274
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
! RETURN STATEMENT...
	mov	274,r13		! source line 274
	mov	"\0\0RE",r10
	add	r15,24,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Semaphore_3:
	.word	_sourceFileName
	.word	_Label_2792
	.word	4		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_2793
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2794
	.word	-12
	.word	4
	.word	_Label_2795
	.word	-16
	.word	4
	.word	_Label_2796
	.word	-20
	.word	4
	.word	0
_Label_2792:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Down\0"
	.align
_Label_2793:
	.ascii	"Pself\0"
	.align
_Label_2794:
	.byte	'?'
	.ascii	"_temp_2791\0"
	.align
_Label_2795:
	.byte	'?'
	.ascii	"_temp_2788\0"
	.align
_Label_2796:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
! 
! ===============  CLASS Mutex  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Mutex:
	.word	_Label_2797
	jmp	_Method_P_Kernel_Mutex_1	! 4:	Init
	jmp	_Method_P_Kernel_Mutex_2	! 8:	Lock
	jmp	_Method_P_Kernel_Mutex_3	! 12:	Unlock
	jmp	_Method_P_Kernel_Mutex_4	! 16:	IsHeldByCurrentThread
	.word	0
! 
! Class descriptor:
! 
_Label_2797:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2798
	.word	_sourceFileName
	.word	149		! line number
	.word	20		! size of instances, in bytes
	.word	_P_Kernel_Mutex
	.word	_P_System_Object
	.word	0
_Label_2798:
	.ascii	"Mutex\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_Mutex_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Mutex_1,r1
	push	r1
	mov	1,r1
_Label_7818:
	push	r0
	sub	r1,1,r1
	bne	_Label_7818
	mov	297,r13		! source line 297
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	298,r13		! source line 298
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: waitingThreads = zeros  (sizeInBytes=12)
	load	[r14+8],r4
	add	r4,8,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   waitingThreads = _P_List_List
	set	_P_List_List,r1
	load	[r14+8],r2
	store	r1,[r2+8]
! RETURN STATEMENT...
	mov	298,r13		! source line 298
	mov	"\0\0RE",r10
	add	r15,8,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Mutex_1:
	.word	_sourceFileName
	.word	_Label_2800
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_2801
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2802
	.word	-12
	.word	4
	.word	0
_Label_2800:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_2801:
	.ascii	"Pself\0"
	.align
_Label_2802:
	.byte	'?'
	.ascii	"_temp_2799\0"
	.align
! 
! ===============  METHOD Lock  ===============
! 
_Method_P_Kernel_Mutex_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Mutex_2,r1
	push	r1
	mov	6,r1
_Label_7819:
	push	r0
	sub	r1,1,r1
	bne	_Label_7819
	mov	303,r13		! source line 303
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	306,r13		! source line 306
	mov	"\0\0IF",r10
!   if heldBy != _P_Kernel_currentThread then goto _Label_2804		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	bne	_Label_2804
!	_Label_2803	jmp	_Label_2803
_Label_2803:
! THEN...
	mov	307,r13		! source line 307
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2805 = _StringConst_48
	set	_StringConst_48,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2805  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	307,r13		! source line 307
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2804:
! ASSIGNMENT STATEMENT...
	mov	309,r13		! source line 309
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	309,r13		! source line 309
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! IF STATEMENT...
	mov	310,r13		! source line 310
	mov	"\0\0IF",r10
!   if heldBy == 0 then goto _Label_2809		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_2809
!   _temp_2808 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_2810
_Label_2809:
!   _temp_2808 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_2810:
!   if _temp_2808 then goto _Label_2807 else goto _Label_2806
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_2806
	jmp	_Label_2807
_Label_2806:
! THEN...
	mov	311,r13		! source line 311
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	311,r13		! source line 311
	mov	"\0\0AS",r10
!   heldBy = _P_Kernel_currentThread		(4 bytes)
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r14+8],r2
	store	r1,[r2+4]
	jmp	_Label_2811
_Label_2807:
! ELSE...
	mov	313,r13		! source line 313
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	313,r13		! source line 313
	mov	"\0\0SE",r10
!   _temp_2812 = &waitingThreads
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_P_Kernel_currentThread  sizeInBytes=4
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	314,r13		! source line 314
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Sleep
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! END IF...
_Label_2811:
! ASSIGNMENT STATEMENT...
	mov	316,r13		! source line 316
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	316,r13		! source line 316
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! RETURN STATEMENT...
	mov	316,r13		! source line 316
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Mutex_2:
	.word	_sourceFileName
	.word	_Label_2813
	.word	4		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2814
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2815
	.word	-16
	.word	4
	.word	_Label_2816
	.word	-9
	.word	1
	.word	_Label_2817
	.word	-20
	.word	4
	.word	_Label_2818
	.word	-24
	.word	4
	.word	0
_Label_2813:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Lock\0"
	.align
_Label_2814:
	.ascii	"Pself\0"
	.align
_Label_2815:
	.byte	'?'
	.ascii	"_temp_2812\0"
	.align
_Label_2816:
	.byte	'C'
	.ascii	"_temp_2808\0"
	.align
_Label_2817:
	.byte	'?'
	.ascii	"_temp_2805\0"
	.align
_Label_2818:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
! 
! ===============  METHOD Unlock  ===============
! 
_Method_P_Kernel_Mutex_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Mutex_3,r1
	push	r1
	mov	8,r1
_Label_7820:
	push	r0
	sub	r1,1,r1
	bne	_Label_7820
	mov	321,r13		! source line 321
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	325,r13		! source line 325
	mov	"\0\0IF",r10
!   if heldBy == _P_Kernel_currentThread then goto _Label_2820		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_2820
!	_Label_2819	jmp	_Label_2819
_Label_2819:
! THEN...
	mov	326,r13		! source line 326
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2821 = _StringConst_49
	set	_StringConst_49,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2821  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	326,r13		! source line 326
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2820:
! ASSIGNMENT STATEMENT...
	mov	328,r13		! source line 328
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	328,r13		! source line 328
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! ASSIGNMENT STATEMENT...
	mov	329,r13		! source line 329
	mov	"\0\0AS",r10
	mov	329,r13		! source line 329
	mov	"\0\0SE",r10
!   _temp_2822 = &waitingThreads
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Send message Remove
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=t  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! IF STATEMENT...
	mov	330,r13		! source line 330
	mov	"\0\0IF",r10
!   if t == 0 then goto _Label_2824		(int)
	load	[r14+-32],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_2824
!	_Label_2823	jmp	_Label_2823
_Label_2823:
! THEN...
	mov	331,r13		! source line 331
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	331,r13		! source line 331
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2825 = t + 76
	load	[r14+-32],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_2825 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	332,r13		! source line 332
	mov	"\0\0SE",r10
!   _temp_2826 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=t  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	333,r13		! source line 333
	mov	"\0\0AS",r10
!   heldBy = t		(4 bytes)
	load	[r14+-32],r1
	load	[r14+8],r2
	store	r1,[r2+4]
	jmp	_Label_2827
_Label_2824:
! ELSE...
	mov	335,r13		! source line 335
	mov	"\0\0EL",r10
! ASSIGNMENT STATEMENT...
	mov	335,r13		! source line 335
	mov	"\0\0AS",r10
!   heldBy = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! END IF...
_Label_2827:
! ASSIGNMENT STATEMENT...
	mov	337,r13		! source line 337
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	337,r13		! source line 337
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! RETURN STATEMENT...
	mov	337,r13		! source line 337
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Mutex_3:
	.word	_sourceFileName
	.word	_Label_2828
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_2829
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2830
	.word	-12
	.word	4
	.word	_Label_2831
	.word	-16
	.word	4
	.word	_Label_2832
	.word	-20
	.word	4
	.word	_Label_2833
	.word	-24
	.word	4
	.word	_Label_2834
	.word	-28
	.word	4
	.word	_Label_2835
	.word	-32
	.word	4
	.word	0
_Label_2828:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Unlock\0"
	.align
_Label_2829:
	.ascii	"Pself\0"
	.align
_Label_2830:
	.byte	'?'
	.ascii	"_temp_2826\0"
	.align
_Label_2831:
	.byte	'?'
	.ascii	"_temp_2825\0"
	.align
_Label_2832:
	.byte	'?'
	.ascii	"_temp_2822\0"
	.align
_Label_2833:
	.byte	'?'
	.ascii	"_temp_2821\0"
	.align
_Label_2834:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_2835:
	.byte	'P'
	.ascii	"t\0"
	.align
! 
! ===============  METHOD IsHeldByCurrentThread  ===============
! 
_Method_P_Kernel_Mutex_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Mutex_4,r1
	push	r1
	mov	1,r1
_Label_7821:
	push	r0
	sub	r1,1,r1
	bne	_Label_7821
	mov	342,r13		! source line 342
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	343,r13		! source line 343
	mov	"\0\0RE",r10
!   if heldBy != _P_Kernel_currentThread then goto _Label_2838		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	bne	_Label_2838
!	_Label_2837	jmp	_Label_2837
_Label_2837:
!   _temp_2836 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_2839
_Label_2838:
!   _temp_2836 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_2839:
!   ReturnResult: _temp_2836  (sizeInBytes=1)
	loadb	[r14+-9],r1
	storeb	r1,[r14+8]
	add	r15,8,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Mutex_4:
	.word	_sourceFileName
	.word	_Label_2840
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_2841
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2842
	.word	-9
	.word	1
	.word	0
_Label_2840:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"IsHeldByCurrentThread\0"
	.align
_Label_2841:
	.ascii	"Pself\0"
	.align
_Label_2842:
	.byte	'C'
	.ascii	"_temp_2836\0"
	.align
! 
! ===============  CLASS Condition  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Condition:
	.word	_Label_2843
	jmp	_Method_P_Kernel_Condition_1	! 4:	Init
	jmp	_Method_P_Kernel_Condition_2	! 8:	Wait
	jmp	_Method_P_Kernel_Condition_3	! 12:	Signal
	jmp	_Method_P_Kernel_Condition_4	! 16:	Broadcast
	.word	0
! 
! Class descriptor:
! 
_Label_2843:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2844
	.word	_sourceFileName
	.word	163		! line number
	.word	16		! size of instances, in bytes
	.word	_P_Kernel_Condition
	.word	_P_System_Object
	.word	0
_Label_2844:
	.ascii	"Condition\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_Condition_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Condition_1,r1
	push	r1
	mov	1,r1
_Label_7822:
	push	r0
	sub	r1,1,r1
	bne	_Label_7822
	mov	383,r13		! source line 383
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	384,r13		! source line 384
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: waitingThreads = zeros  (sizeInBytes=12)
	load	[r14+8],r4
	add	r4,4,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   waitingThreads = _P_List_List
	set	_P_List_List,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! RETURN STATEMENT...
	mov	384,r13		! source line 384
	mov	"\0\0RE",r10
	add	r15,8,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Condition_1:
	.word	_sourceFileName
	.word	_Label_2846
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_2847
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2848
	.word	-12
	.word	4
	.word	0
_Label_2846:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_2847:
	.ascii	"Pself\0"
	.align
_Label_2848:
	.byte	'?'
	.ascii	"_temp_2845\0"
	.align
! 
! ===============  METHOD Wait  ===============
! 
_Method_P_Kernel_Condition_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Condition_2,r1
	push	r1
	mov	6,r1
_Label_7823:
	push	r0
	sub	r1,1,r1
	bne	_Label_7823
	mov	389,r13		! source line 389
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	392,r13		! source line 392
	mov	"\0\0IF",r10
	mov	392,r13		! source line 392
	mov	"\0\0SE",r10
!   if intIsZero (mutex) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message IsHeldByCurrentThread
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_2851  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_2851 then goto _Label_2850 else goto _Label_2849
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_2849
	jmp	_Label_2850
_Label_2849:
! THEN...
	mov	393,r13		! source line 393
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2852 = _StringConst_50
	set	_StringConst_50,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2852  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	393,r13		! source line 393
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2850:
! ASSIGNMENT STATEMENT...
	mov	395,r13		! source line 395
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	395,r13		! source line 395
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! SEND STATEMENT...
	mov	396,r13		! source line 396
	mov	"\0\0SE",r10
!   if intIsZero (mutex) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Unlock
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	397,r13		! source line 397
	mov	"\0\0SE",r10
!   _temp_2853 = &waitingThreads
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_P_Kernel_currentThread  sizeInBytes=4
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	398,r13		! source line 398
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Sleep
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! SEND STATEMENT...
	mov	399,r13		! source line 399
	mov	"\0\0SE",r10
!   if intIsZero (mutex) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Lock
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	400,r13		! source line 400
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	400,r13		! source line 400
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! RETURN STATEMENT...
	mov	400,r13		! source line 400
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Condition_2:
	.word	_sourceFileName
	.word	_Label_2854
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2855
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2856
	.word	12
	.word	4
	.word	_Label_2857
	.word	-16
	.word	4
	.word	_Label_2858
	.word	-20
	.word	4
	.word	_Label_2859
	.word	-9
	.word	1
	.word	_Label_2860
	.word	-24
	.word	4
	.word	0
_Label_2854:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Wait\0"
	.align
_Label_2855:
	.ascii	"Pself\0"
	.align
_Label_2856:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_2857:
	.byte	'?'
	.ascii	"_temp_2853\0"
	.align
_Label_2858:
	.byte	'?'
	.ascii	"_temp_2852\0"
	.align
_Label_2859:
	.byte	'C'
	.ascii	"_temp_2851\0"
	.align
_Label_2860:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
! 
! ===============  METHOD Signal  ===============
! 
_Method_P_Kernel_Condition_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Condition_3,r1
	push	r1
	mov	9,r1
_Label_7824:
	push	r0
	sub	r1,1,r1
	bne	_Label_7824
	mov	405,r13		! source line 405
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	409,r13		! source line 409
	mov	"\0\0IF",r10
	mov	409,r13		! source line 409
	mov	"\0\0SE",r10
!   if intIsZero (mutex) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message IsHeldByCurrentThread
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_2863  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_2863 then goto _Label_2862 else goto _Label_2861
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_2861
	jmp	_Label_2862
_Label_2861:
! THEN...
	mov	410,r13		! source line 410
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2864 = _StringConst_51
	set	_StringConst_51,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2864  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	410,r13		! source line 410
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2862:
! ASSIGNMENT STATEMENT...
	mov	412,r13		! source line 412
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	412,r13		! source line 412
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! ASSIGNMENT STATEMENT...
	mov	413,r13		! source line 413
	mov	"\0\0AS",r10
	mov	413,r13		! source line 413
	mov	"\0\0SE",r10
!   _temp_2865 = &waitingThreads
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-24]
!   Send message Remove
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=t  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
! IF STATEMENT...
	mov	414,r13		! source line 414
	mov	"\0\0IF",r10
!   if t == 0 then goto _Label_2867		(int)
	load	[r14+-36],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_2867
!	_Label_2866	jmp	_Label_2866
_Label_2866:
! THEN...
	mov	415,r13		! source line 415
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	415,r13		! source line 415
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2868 = t + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_2868 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	416,r13		! source line 416
	mov	"\0\0SE",r10
!   _temp_2869 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=t  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END IF...
_Label_2867:
! ASSIGNMENT STATEMENT...
	mov	418,r13		! source line 418
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	418,r13		! source line 418
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! RETURN STATEMENT...
	mov	418,r13		! source line 418
	mov	"\0\0RE",r10
	add	r15,40,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Condition_3:
	.word	_sourceFileName
	.word	_Label_2870
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_2871
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2872
	.word	12
	.word	4
	.word	_Label_2873
	.word	-16
	.word	4
	.word	_Label_2874
	.word	-20
	.word	4
	.word	_Label_2875
	.word	-24
	.word	4
	.word	_Label_2876
	.word	-28
	.word	4
	.word	_Label_2877
	.word	-9
	.word	1
	.word	_Label_2878
	.word	-32
	.word	4
	.word	_Label_2879
	.word	-36
	.word	4
	.word	0
_Label_2870:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Signal\0"
	.align
_Label_2871:
	.ascii	"Pself\0"
	.align
_Label_2872:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_2873:
	.byte	'?'
	.ascii	"_temp_2869\0"
	.align
_Label_2874:
	.byte	'?'
	.ascii	"_temp_2868\0"
	.align
_Label_2875:
	.byte	'?'
	.ascii	"_temp_2865\0"
	.align
_Label_2876:
	.byte	'?'
	.ascii	"_temp_2864\0"
	.align
_Label_2877:
	.byte	'C'
	.ascii	"_temp_2863\0"
	.align
_Label_2878:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_2879:
	.byte	'P'
	.ascii	"t\0"
	.align
! 
! ===============  METHOD Broadcast  ===============
! 
_Method_P_Kernel_Condition_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Condition_4,r1
	push	r1
	mov	9,r1
_Label_7825:
	push	r0
	sub	r1,1,r1
	bne	_Label_7825
	mov	423,r13		! source line 423
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	427,r13		! source line 427
	mov	"\0\0IF",r10
	mov	427,r13		! source line 427
	mov	"\0\0SE",r10
!   if intIsZero (mutex) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message IsHeldByCurrentThread
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_2882  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_2882 then goto _Label_2881 else goto _Label_2880
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_2880
	jmp	_Label_2881
_Label_2880:
! THEN...
	mov	428,r13		! source line 428
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2883 = _StringConst_52
	set	_StringConst_52,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2883  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	428,r13		! source line 428
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2881:
! ASSIGNMENT STATEMENT...
	mov	430,r13		! source line 430
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	430,r13		! source line 430
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! WHILE STATEMENT...
	mov	431,r13		! source line 431
	mov	"\0\0WH",r10
_Label_2884:
!	_Label_2885	jmp	_Label_2885
_Label_2885:
	mov	431,r13		! source line 431
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	432,r13		! source line 432
	mov	"\0\0AS",r10
	mov	432,r13		! source line 432
	mov	"\0\0SE",r10
!   _temp_2887 = &waitingThreads
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-24]
!   Send message Remove
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=t  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
! IF STATEMENT...
	mov	433,r13		! source line 433
	mov	"\0\0IF",r10
!   if intIsZero (t) then goto _Label_2888
	load	[r14+-36],r1
	cmp	r1,r0
	be	_Label_2888
	jmp	_Label_2889
_Label_2888:
! THEN...
	mov	434,r13		! source line 434
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	434,r13		! source line 434
	mov	"\0\0BR",r10
	jmp	_Label_2886
! END IF...
_Label_2889:
! ASSIGNMENT STATEMENT...
	mov	436,r13		! source line 436
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2890 = t + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_2890 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	437,r13		! source line 437
	mov	"\0\0SE",r10
!   _temp_2891 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=t  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END WHILE...
	jmp	_Label_2884
_Label_2886:
! ASSIGNMENT STATEMENT...
	mov	439,r13		! source line 439
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	439,r13		! source line 439
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! RETURN STATEMENT...
	mov	439,r13		! source line 439
	mov	"\0\0RE",r10
	add	r15,40,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Condition_4:
	.word	_sourceFileName
	.word	_Label_2892
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_2893
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2894
	.word	12
	.word	4
	.word	_Label_2895
	.word	-16
	.word	4
	.word	_Label_2896
	.word	-20
	.word	4
	.word	_Label_2897
	.word	-24
	.word	4
	.word	_Label_2898
	.word	-28
	.word	4
	.word	_Label_2899
	.word	-9
	.word	1
	.word	_Label_2900
	.word	-32
	.word	4
	.word	_Label_2901
	.word	-36
	.word	4
	.word	0
_Label_2892:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Broadcast\0"
	.align
_Label_2893:
	.ascii	"Pself\0"
	.align
_Label_2894:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_2895:
	.byte	'?'
	.ascii	"_temp_2891\0"
	.align
_Label_2896:
	.byte	'?'
	.ascii	"_temp_2890\0"
	.align
_Label_2897:
	.byte	'?'
	.ascii	"_temp_2887\0"
	.align
_Label_2898:
	.byte	'?'
	.ascii	"_temp_2883\0"
	.align
_Label_2899:
	.byte	'C'
	.ascii	"_temp_2882\0"
	.align
_Label_2900:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_2901:
	.byte	'P'
	.ascii	"t\0"
	.align
! 
! ===============  CLASS Thread  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Thread:
	.word	_Label_2902
	jmp	_Method_P_Kernel_Thread_1	! 4:	Init
	jmp	_Method_P_Kernel_Thread_2	! 8:	Fork
	jmp	_Method_P_Kernel_Thread_3	! 12:	Yield
	jmp	_Method_P_Kernel_Thread_4	! 16:	Sleep
	jmp	_Method_P_Kernel_Thread_5	! 20:	CheckOverflow
	jmp	_Method_P_Kernel_Thread_6	! 24:	Print
	.word	0
! 
! Class descriptor:
! 
_Label_2902:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2903
	.word	_sourceFileName
	.word	176		! line number
	.word	4164		! size of instances, in bytes
	.word	_P_Kernel_Thread
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_2903:
	.ascii	"Thread\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_Thread_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Thread_1,r1
	push	r1
	mov	45,r1
_Label_7826:
	push	r0
	sub	r1,1,r1
	bne	_Label_7826
	mov	450,r13		! source line 450
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	455,r13		! source line 455
	mov	"\0\0AS",r10
!   name = n		(4 bytes)
	load	[r14+12],r1
	load	[r14+8],r2
	store	r1,[r2+72]
! ASSIGNMENT STATEMENT...
	mov	456,r13		! source line 456
	mov	"\0\0AS",r10
!   status = 1		(4 bytes)
	mov	1,r1
	load	[r14+8],r2
	store	r1,[r2+76]
! ASSIGNMENT STATEMENT...
	mov	458,r13		! source line 458
	mov	"\0\0AS",r10
!   _temp_2904 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-188]
!   if intIsZero (_temp_2904) then goto _runtimeErrorNullPointer
	load	[r14+-188],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *_temp_2904 = 1000  (sizeInBytes=4)
	mov	1000,r1
	load	[r14+-188],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	459,r13		! source line 459
	mov	"\0\0AS",r10
!   _temp_2905 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-184]
!   Move address of _temp_2905 [0 ] into _temp_2906
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-184],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-180]
!   Data Move: *_temp_2906 = 606348324  (sizeInBytes=4)
	set	606348324,r1
	load	[r14+-180],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	460,r13		! source line 460
	mov	"\0\0AS",r10
!   _temp_2907 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-176]
!   Move address of _temp_2907 [999 ] into _temp_2908
!     make sure index expr is >= 0
	mov	999,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-176],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-172]
!   Data Move: *_temp_2908 = 606348324  (sizeInBytes=4)
	set	606348324,r1
	load	[r14+-172],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	461,r13		! source line 461
	mov	"\0\0AS",r10
!   _temp_2909 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-168]
!   Move address of _temp_2909 [999 ] into _temp_2910
!     make sure index expr is >= 0
	mov	999,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-168],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-164]
!   stackTop = _temp_2910		(4 bytes)
	load	[r14+-164],r1
	load	[r14+8],r2
	store	r1,[r2+68]
! ASSIGNMENT STATEMENT...
	mov	462,r13		! source line 462
	mov	"\0\0AS",r10
!   _temp_2911 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-160]
!   NEW ARRAY Constructor...
!   _temp_2913 = &_temp_2912
	add	r14,-156,r1
	store	r1,[r14+-100]
!   _temp_2913 = _temp_2913 + 4
	load	[r14+-100],r1
	add	r1,4,r1
	store	r1,[r14+-100]
!   Next value...
	mov	13,r1
	store	r1,[r14+-96]
_Label_2915:
!   Data Move: *_temp_2913 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-100],r2
	store	r1,[r2]
!   _temp_2913 = _temp_2913 + 4
	load	[r14+-100],r1
	add	r1,4,r1
	store	r1,[r14+-100]
!   _temp_2914 = _temp_2914 + -1
	load	[r14+-96],r1
	add	r1,-1,r1
	store	r1,[r14+-96]
!   if intNotZero (_temp_2914) then goto _Label_2915
	load	[r14+-96],r1
	cmp	r1,r0
	bne	_Label_2915
!   Initialize the array size...
	mov	13,r1
	store	r1,[r14+-156]
!   _temp_2916 = &_temp_2912
	add	r14,-156,r1
	store	r1,[r14+-92]
!   make sure array has size 13
	load	[r14+-160],r1
	load	[r1],r1
	set	13, r2
	cmp	r1,0
	be	_Label_7827
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_7827:
!   make sure array has size 13
	load	[r14+-92],r1
	load	[r1],r1
	set	13, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_2911 = *_temp_2916  (sizeInBytes=56)
	load	[r14+-92],r5
	load	[r14+-160],r4
	mov	14,r3
_Label_7828:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_7828
! ASSIGNMENT STATEMENT...
	mov	463,r13		! source line 463
	mov	"\0\0AS",r10
!   isUserThread = 0		(1 byte)
	mov	0,r1
	load	[r14+8],r2
	storeb	r1,[r2+4092]
! ASSIGNMENT STATEMENT...
	mov	464,r13		! source line 464
	mov	"\0\0AS",r10
!   _temp_2917 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-88]
!   NEW ARRAY Constructor...
!   _temp_2919 = &_temp_2918
	add	r14,-84,r1
	store	r1,[r14+-20]
!   _temp_2919 = _temp_2919 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Next value...
	mov	15,r1
	store	r1,[r14+-16]
_Label_2921:
!   Data Move: *_temp_2919 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-20],r2
	store	r1,[r2]
!   _temp_2919 = _temp_2919 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_2920 = _temp_2920 + -1
	load	[r14+-16],r1
	add	r1,-1,r1
	store	r1,[r14+-16]
!   if intNotZero (_temp_2920) then goto _Label_2921
	load	[r14+-16],r1
	cmp	r1,r0
	bne	_Label_2921
!   Initialize the array size...
	mov	15,r1
	store	r1,[r14+-84]
!   _temp_2922 = &_temp_2918
	add	r14,-84,r1
	store	r1,[r14+-12]
!   make sure array has size 15
	load	[r14+-88],r1
	load	[r1],r1
	set	15, r2
	cmp	r1,0
	be	_Label_7829
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_7829:
!   make sure array has size 15
	load	[r14+-12],r1
	load	[r1],r1
	set	15, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_2917 = *_temp_2922  (sizeInBytes=64)
	load	[r14+-12],r5
	load	[r14+-88],r4
	mov	16,r3
_Label_7830:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_7830
! RETURN STATEMENT...
	mov	464,r13		! source line 464
	mov	"\0\0RE",r10
	add	r15,184,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Thread_1:
	.word	_sourceFileName
	.word	_Label_2923
	.word	8		! total size of parameters
	.word	180		! frame size = 180
	.word	_Label_2924
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2925
	.word	12
	.word	4
	.word	_Label_2926
	.word	-12
	.word	4
	.word	_Label_2927
	.word	-16
	.word	4
	.word	_Label_2928
	.word	-20
	.word	4
	.word	_Label_2929
	.word	-84
	.word	64
	.word	_Label_2930
	.word	-88
	.word	4
	.word	_Label_2931
	.word	-92
	.word	4
	.word	_Label_2932
	.word	-96
	.word	4
	.word	_Label_2933
	.word	-100
	.word	4
	.word	_Label_2934
	.word	-156
	.word	56
	.word	_Label_2935
	.word	-160
	.word	4
	.word	_Label_2936
	.word	-164
	.word	4
	.word	_Label_2937
	.word	-168
	.word	4
	.word	_Label_2938
	.word	-172
	.word	4
	.word	_Label_2939
	.word	-176
	.word	4
	.word	_Label_2940
	.word	-180
	.word	4
	.word	_Label_2941
	.word	-184
	.word	4
	.word	_Label_2942
	.word	-188
	.word	4
	.word	0
_Label_2923:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_2924:
	.ascii	"Pself\0"
	.align
_Label_2925:
	.byte	'P'
	.ascii	"n\0"
	.align
_Label_2926:
	.byte	'?'
	.ascii	"_temp_2922\0"
	.align
_Label_2927:
	.byte	'?'
	.ascii	"_temp_2920\0"
	.align
_Label_2928:
	.byte	'?'
	.ascii	"_temp_2919\0"
	.align
_Label_2929:
	.byte	'?'
	.ascii	"_temp_2918\0"
	.align
_Label_2930:
	.byte	'?'
	.ascii	"_temp_2917\0"
	.align
_Label_2931:
	.byte	'?'
	.ascii	"_temp_2916\0"
	.align
_Label_2932:
	.byte	'?'
	.ascii	"_temp_2914\0"
	.align
_Label_2933:
	.byte	'?'
	.ascii	"_temp_2913\0"
	.align
_Label_2934:
	.byte	'?'
	.ascii	"_temp_2912\0"
	.align
_Label_2935:
	.byte	'?'
	.ascii	"_temp_2911\0"
	.align
_Label_2936:
	.byte	'?'
	.ascii	"_temp_2910\0"
	.align
_Label_2937:
	.byte	'?'
	.ascii	"_temp_2909\0"
	.align
_Label_2938:
	.byte	'?'
	.ascii	"_temp_2908\0"
	.align
_Label_2939:
	.byte	'?'
	.ascii	"_temp_2907\0"
	.align
_Label_2940:
	.byte	'?'
	.ascii	"_temp_2906\0"
	.align
_Label_2941:
	.byte	'?'
	.ascii	"_temp_2905\0"
	.align
_Label_2942:
	.byte	'?'
	.ascii	"_temp_2904\0"
	.align
! 
! ===============  METHOD Fork  ===============
! 
_Method_P_Kernel_Thread_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Thread_2,r1
	push	r1
	mov	7,r1
_Label_7831:
	push	r0
	sub	r1,1,r1
	bne	_Label_7831
	mov	469,r13		! source line 469
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	480,r13		! source line 480
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	480,r13		! source line 480
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! ASSIGNMENT STATEMENT...
	mov	482,r13		! source line 482
	mov	"\0\0AS",r10
!   initialFunction = fun		(4 bytes)
	load	[r14+12],r1
	load	[r14+8],r2
	store	r1,[r2+80]
! ASSIGNMENT STATEMENT...
	mov	483,r13		! source line 483
	mov	"\0\0AS",r10
!   initialArgument = arg		(4 bytes)
	load	[r14+16],r1
	load	[r14+8],r2
	store	r1,[r2+84]
! ASSIGNMENT STATEMENT...
	mov	484,r13		! source line 484
	mov	"\0\0AS",r10
!   stackTop = stackTop - 4		(int)
	load	[r14+8],r1
	load	[r1+68],r1
	mov	4,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+68]
! ASSIGNMENT STATEMENT...
	mov	485,r13		! source line 485
	mov	"\0\0AS",r10
!   if intIsZero (stackTop) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+68],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2943 = ThreadStartUp
	set	ThreadStartUp,r1
	store	r1,[r14+-20]
!   Data Move: *stackTop = _temp_2943  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r14+8],r2
	load	[r2+68],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	486,r13		! source line 486
	mov	"\0\0AS",r10
!   status = 2		(4 bytes)
	mov	2,r1
	load	[r14+8],r2
	store	r1,[r2+76]
! SEND STATEMENT...
	mov	487,r13		! source line 487
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   _temp_2945 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_2944  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	488,r13		! source line 488
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	488,r13		! source line 488
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! RETURN STATEMENT...
	mov	488,r13		! source line 488
	mov	"\0\0RE",r10
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Thread_2:
	.word	_sourceFileName
	.word	_Label_2946
	.word	12		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_2947
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2948
	.word	12
	.word	4
	.word	_Label_2949
	.word	16
	.word	4
	.word	_Label_2950
	.word	-12
	.word	4
	.word	_Label_2951
	.word	-16
	.word	4
	.word	_Label_2952
	.word	-20
	.word	4
	.word	_Label_2953
	.word	-24
	.word	4
	.word	_Label_2954
	.word	-28
	.word	4
	.word	0
_Label_2946:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Fork\0"
	.align
_Label_2947:
	.ascii	"Pself\0"
	.align
_Label_2948:
	.byte	'P'
	.ascii	"fun\0"
	.align
_Label_2949:
	.byte	'I'
	.ascii	"arg\0"
	.align
_Label_2950:
	.byte	'?'
	.ascii	"_temp_2945\0"
	.align
_Label_2951:
	.byte	'?'
	.ascii	"_temp_2944\0"
	.align
_Label_2952:
	.byte	'?'
	.ascii	"_temp_2943\0"
	.align
_Label_2953:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_2954:
	.byte	'I'
	.ascii	"junk\0"
	.align
! 
! ===============  METHOD Yield  ===============
! 
_Method_P_Kernel_Thread_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Thread_3,r1
	push	r1
	mov	11,r1
_Label_7832:
	push	r0
	sub	r1,1,r1
	bne	_Label_7832
	mov	493,r13		! source line 493
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	509,r13		! source line 509
	mov	"\0\0IF",r10
	load	[r14+8],r1
	store	r1,[r14+-32]
!   if _temp_2957 == _P_Kernel_currentThread then goto _Label_2956		(int)
	load	[r14+-32],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_2956
!	_Label_2955	jmp	_Label_2955
_Label_2955:
! THEN...
	mov	510,r13		! source line 510
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2958 = _StringConst_53
	set	_StringConst_53,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2958  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	510,r13		! source line 510
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2956:
! ASSIGNMENT STATEMENT...
	mov	512,r13		! source line 512
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	512,r13		! source line 512
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	516,r13		! source line 516
	mov	"\0\0AS",r10
	mov	516,r13		! source line 516
	mov	"\0\0SE",r10
!   _temp_2959 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-24]
!   Send message Remove
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=nextTh  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
! IF STATEMENT...
	mov	517,r13		! source line 517
	mov	"\0\0IF",r10
!   if nextTh == 0 then goto _Label_2961		(int)
	load	[r14+-36],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_2961
!	_Label_2960	jmp	_Label_2960
_Label_2960:
! THEN...
	mov	521,r13		! source line 521
	mov	"\0\0TN",r10
! IF STATEMENT...
	mov	521,r13		! source line 521
	mov	"\0\0IF",r10
!   if status != 4 then goto _Label_2963		(int)
	load	[r14+8],r1
	load	[r1+76],r1
	mov	4,r2
	cmp	r1,r2
	bne	_Label_2963
!	_Label_2962	jmp	_Label_2962
_Label_2962:
! THEN...
	mov	522,r13		! source line 522
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2964 = _StringConst_54
	set	_StringConst_54,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2964  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	522,r13		! source line 522
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2963:
! ASSIGNMENT STATEMENT...
	mov	524,r13		! source line 524
	mov	"\0\0AS",r10
!   status = 2		(4 bytes)
	mov	2,r1
	load	[r14+8],r2
	store	r1,[r2+76]
! SEND STATEMENT...
	mov	525,r13		! source line 525
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   _temp_2966 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_2965  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=nextTh  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	526,r13		! source line 526
	mov	"\0\0CA",r10
	call	_P_Kernel_Run
! END IF...
_Label_2961:
! ASSIGNMENT STATEMENT...
	mov	528,r13		! source line 528
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	528,r13		! source line 528
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-44]
! RETURN STATEMENT...
	mov	528,r13		! source line 528
	mov	"\0\0RE",r10
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Thread_3:
	.word	_sourceFileName
	.word	_Label_2967
	.word	4		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_2968
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2969
	.word	-12
	.word	4
	.word	_Label_2970
	.word	-16
	.word	4
	.word	_Label_2971
	.word	-20
	.word	4
	.word	_Label_2972
	.word	-24
	.word	4
	.word	_Label_2973
	.word	-28
	.word	4
	.word	_Label_2974
	.word	-32
	.word	4
	.word	_Label_2975
	.word	-36
	.word	4
	.word	_Label_2976
	.word	-40
	.word	4
	.word	_Label_2977
	.word	-44
	.word	4
	.word	0
_Label_2967:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Yield\0"
	.align
_Label_2968:
	.ascii	"Pself\0"
	.align
_Label_2969:
	.byte	'?'
	.ascii	"_temp_2966\0"
	.align
_Label_2970:
	.byte	'?'
	.ascii	"_temp_2965\0"
	.align
_Label_2971:
	.byte	'?'
	.ascii	"_temp_2964\0"
	.align
_Label_2972:
	.byte	'?'
	.ascii	"_temp_2959\0"
	.align
_Label_2973:
	.byte	'?'
	.ascii	"_temp_2958\0"
	.align
_Label_2974:
	.byte	'?'
	.ascii	"_temp_2957\0"
	.align
_Label_2975:
	.byte	'P'
	.ascii	"nextTh\0"
	.align
_Label_2976:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_2977:
	.byte	'I'
	.ascii	"junk\0"
	.align
! 
! ===============  METHOD Sleep  ===============
! 
_Method_P_Kernel_Thread_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Thread_4,r1
	push	r1
	mov	7,r1
_Label_7833:
	push	r0
	sub	r1,1,r1
	bne	_Label_7833
	mov	533,r13		! source line 533
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	545,r13		! source line 545
	mov	"\0\0IF",r10
!   if _P_Kernel_currentInterruptStatus == 2 then goto _Label_2979		(int)
	set	_P_Kernel_currentInterruptStatus,r1
	load	[r1],r1
	mov	2,r2
	cmp	r1,r2
	be	_Label_2979
!	_Label_2978	jmp	_Label_2978
_Label_2978:
! THEN...
	mov	546,r13		! source line 546
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2980 = _StringConst_55
	set	_StringConst_55,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2980  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	546,r13		! source line 546
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2979:
! IF STATEMENT...
	mov	549,r13		! source line 549
	mov	"\0\0IF",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if _temp_2983 == _P_Kernel_currentThread then goto _Label_2982		(int)
	load	[r14+-24],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_2982
!	_Label_2981	jmp	_Label_2981
_Label_2981:
! THEN...
	mov	550,r13		! source line 550
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2984 = _StringConst_56
	set	_StringConst_56,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2984  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	550,r13		! source line 550
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2982:
! ASSIGNMENT STATEMENT...
	mov	555,r13		! source line 555
	mov	"\0\0AS",r10
!   status = 4		(4 bytes)
	mov	4,r1
	load	[r14+8],r2
	store	r1,[r2+76]
! ASSIGNMENT STATEMENT...
	mov	556,r13		! source line 556
	mov	"\0\0AS",r10
	mov	556,r13		! source line 556
	mov	"\0\0SE",r10
!   _temp_2985 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-16]
!   Send message Remove
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=nextTh  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! IF STATEMENT...
	mov	557,r13		! source line 557
	mov	"\0\0IF",r10
!   if intIsZero (nextTh) then goto _Label_2986
	load	[r14+-32],r1
	cmp	r1,r0
	be	_Label_2986
	jmp	_Label_2987
_Label_2986:
! THEN...
	mov	558,r13		! source line 558
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2988 = _StringConst_57
	set	_StringConst_57,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2988  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	558,r13		! source line 558
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2987:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=nextTh  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	560,r13		! source line 560
	mov	"\0\0CA",r10
	call	_P_Kernel_Run
! RETURN STATEMENT...
	mov	560,r13		! source line 560
	mov	"\0\0RE",r10
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Thread_4:
	.word	_sourceFileName
	.word	_Label_2989
	.word	4		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_2990
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2991
	.word	-12
	.word	4
	.word	_Label_2992
	.word	-16
	.word	4
	.word	_Label_2993
	.word	-20
	.word	4
	.word	_Label_2994
	.word	-24
	.word	4
	.word	_Label_2995
	.word	-28
	.word	4
	.word	_Label_2996
	.word	-32
	.word	4
	.word	0
_Label_2989:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Sleep\0"
	.align
_Label_2990:
	.ascii	"Pself\0"
	.align
_Label_2991:
	.byte	'?'
	.ascii	"_temp_2988\0"
	.align
_Label_2992:
	.byte	'?'
	.ascii	"_temp_2985\0"
	.align
_Label_2993:
	.byte	'?'
	.ascii	"_temp_2984\0"
	.align
_Label_2994:
	.byte	'?'
	.ascii	"_temp_2983\0"
	.align
_Label_2995:
	.byte	'?'
	.ascii	"_temp_2980\0"
	.align
_Label_2996:
	.byte	'P'
	.ascii	"nextTh\0"
	.align
! 
! ===============  METHOD CheckOverflow  ===============
! 
_Method_P_Kernel_Thread_5:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Thread_5,r1
	push	r1
	mov	9,r1
_Label_7834:
	push	r0
	sub	r1,1,r1
	bne	_Label_7834
	mov	565,r13		! source line 565
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	571,r13		! source line 571
	mov	"\0\0IF",r10
!   _temp_3000 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-36]
!   Move address of _temp_3000 [0 ] into _temp_3001
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-36],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-32]
!   Data Move: _temp_2999 = *_temp_3001  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if _temp_2999 == 606348324 then goto _Label_2998		(int)
	load	[r14+-40],r1
	set	606348324,r2
	cmp	r1,r2
	be	_Label_2998
!	_Label_2997	jmp	_Label_2997
_Label_2997:
! THEN...
	mov	572,r13		! source line 572
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3002 = _StringConst_58
	set	_StringConst_58,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_3002  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	572,r13		! source line 572
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
	jmp	_Label_3003
_Label_2998:
! ELSE...
	mov	573,r13		! source line 573
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	573,r13		! source line 573
	mov	"\0\0IF",r10
!   _temp_3007 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-20]
!   Move address of _temp_3007 [999 ] into _temp_3008
!     make sure index expr is >= 0
	mov	999,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-20],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   Data Move: _temp_3006 = *_temp_3008  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if _temp_3006 == 606348324 then goto _Label_3005		(int)
	load	[r14+-24],r1
	set	606348324,r2
	cmp	r1,r2
	be	_Label_3005
!	_Label_3004	jmp	_Label_3004
_Label_3004:
! THEN...
	mov	574,r13		! source line 574
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3009 = _StringConst_59
	set	_StringConst_59,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_3009  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	574,r13		! source line 574
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_3005:
! END IF...
_Label_3003:
! RETURN STATEMENT...
	mov	571,r13		! source line 571
	mov	"\0\0RE",r10
	add	r15,40,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Thread_5:
	.word	_sourceFileName
	.word	_Label_3010
	.word	4		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_3011
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3012
	.word	-12
	.word	4
	.word	_Label_3013
	.word	-16
	.word	4
	.word	_Label_3014
	.word	-20
	.word	4
	.word	_Label_3015
	.word	-24
	.word	4
	.word	_Label_3016
	.word	-28
	.word	4
	.word	_Label_3017
	.word	-32
	.word	4
	.word	_Label_3018
	.word	-36
	.word	4
	.word	_Label_3019
	.word	-40
	.word	4
	.word	0
_Label_3010:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"CheckOverflow\0"
	.align
_Label_3011:
	.ascii	"Pself\0"
	.align
_Label_3012:
	.byte	'?'
	.ascii	"_temp_3009\0"
	.align
_Label_3013:
	.byte	'?'
	.ascii	"_temp_3008\0"
	.align
_Label_3014:
	.byte	'?'
	.ascii	"_temp_3007\0"
	.align
_Label_3015:
	.byte	'?'
	.ascii	"_temp_3006\0"
	.align
_Label_3016:
	.byte	'?'
	.ascii	"_temp_3002\0"
	.align
_Label_3017:
	.byte	'?'
	.ascii	"_temp_3001\0"
	.align
_Label_3018:
	.byte	'?'
	.ascii	"_temp_3000\0"
	.align
_Label_3019:
	.byte	'?'
	.ascii	"_temp_2999\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_Thread_6:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Thread_6,r1
	push	r1
	mov	49,r1
_Label_7835:
	push	r0
	sub	r1,1,r1
	bne	_Label_7835
	mov	580,r13		! source line 580
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	586,r13		! source line 586
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	586,r13		! source line 586
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-196]
! CALL STATEMENT...
!   _temp_3020 = _StringConst_60
	set	_StringConst_60,r1
	store	r1,[r14+-188]
!   Prepare Argument: offset=8  value=_temp_3020  sizeInBytes=4
	load	[r14+-188],r1
	store	r1,[r15+0]
!   Call the function
	mov	587,r13		! source line 587
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=name  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+72],r1
	store	r1,[r15+0]
!   Call the function
	mov	588,r13		! source line 588
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_3021 = _StringConst_61
	set	_StringConst_61,r1
	store	r1,[r14+-184]
!   Prepare Argument: offset=8  value=_temp_3021  sizeInBytes=4
	load	[r14+-184],r1
	store	r1,[r15+0]
!   Call the function
	mov	589,r13		! source line 589
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	load	[r14+8],r1
	store	r1,[r14+-180]
!   Prepare Argument: offset=8  value=_temp_3022  sizeInBytes=4
	load	[r14+-180],r1
	store	r1,[r15+0]
!   Call the function
	mov	590,r13		! source line 590
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_3023 = _StringConst_62
	set	_StringConst_62,r1
	store	r1,[r14+-176]
!   Prepare Argument: offset=8  value=_temp_3023  sizeInBytes=4
	load	[r14+-176],r1
	store	r1,[r15+0]
!   Call the function
	mov	591,r13		! source line 591
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_3024 = _StringConst_63
	set	_StringConst_63,r1
	store	r1,[r14+-172]
!   Prepare Argument: offset=8  value=_temp_3024  sizeInBytes=4
	load	[r14+-172],r1
	store	r1,[r15+0]
!   Call the function
	mov	592,r13		! source line 592
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	593,r13		! source line 593
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_3029 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-168]
!   Calculate and save the FOR-LOOP ending value
!   _temp_3030 = 12		(4 bytes)
	mov	12,r1
	store	r1,[r14+-164]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_3029  (sizeInBytes=4)
	load	[r14+-168],r1
	store	r1,[r14+-192]
_Label_3025:
!   Perform the FOR-LOOP termination test
!   if i > _temp_3030 then goto _Label_3028		
	load	[r14+-192],r1
	load	[r14+-164],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3028
_Label_3026:
	mov	593,r13		! source line 593
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_3031 = _StringConst_64
	set	_StringConst_64,r1
	store	r1,[r14+-160]
!   Prepare Argument: offset=8  value=_temp_3031  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+0]
!   Call the function
	mov	594,r13		! source line 594
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_3032 = i + 2		(int)
	load	[r14+-192],r1
	mov	2,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-156]
!   Prepare Argument: offset=8  value=_temp_3032  sizeInBytes=4
	load	[r14+-156],r1
	store	r1,[r15+0]
!   Call the function
	mov	595,r13		! source line 595
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_3033 = _StringConst_65
	set	_StringConst_65,r1
	store	r1,[r14+-152]
!   Prepare Argument: offset=8  value=_temp_3033  sizeInBytes=4
	load	[r14+-152],r1
	store	r1,[r15+0]
!   Call the function
	mov	596,r13		! source line 596
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_3035 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-144]
!   Move address of _temp_3035 [i ] into _temp_3036
!     make sure index expr is >= 0
	load	[r14+-192],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-144],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-140]
!   Data Move: _temp_3034 = *_temp_3036  (sizeInBytes=4)
	load	[r14+-140],r1
	load	[r1],r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_3034  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+0]
!   Call the function
	mov	597,r13		! source line 597
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_3037 = _StringConst_66
	set	_StringConst_66,r1
	store	r1,[r14+-136]
!   Prepare Argument: offset=8  value=_temp_3037  sizeInBytes=4
	load	[r14+-136],r1
	store	r1,[r15+0]
!   Call the function
	mov	598,r13		! source line 598
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_3039 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-128]
!   Move address of _temp_3039 [i ] into _temp_3040
!     make sure index expr is >= 0
	load	[r14+-192],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-128],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-124]
!   Data Move: _temp_3038 = *_temp_3040  (sizeInBytes=4)
	load	[r14+-124],r1
	load	[r1],r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_3038  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	599,r13		! source line 599
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_3041 = _StringConst_67
	set	_StringConst_67,r1
	store	r1,[r14+-120]
!   Prepare Argument: offset=8  value=_temp_3041  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+0]
!   Call the function
	mov	600,r13		! source line 600
	mov	"\0\0CE",r10
	call	print
!   Increment the FOR-LOOP index variable and jump back
_Label_3027:
!   i = i + 1
	load	[r14+-192],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-192]
	jmp	_Label_3025
! END FOR
_Label_3028:
! CALL STATEMENT...
!   _temp_3042 = _StringConst_68
	set	_StringConst_68,r1
	store	r1,[r14+-116]
!   _temp_3043 = stackTop		(4 bytes)
	load	[r14+8],r1
	load	[r1+68],r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_3042  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_3043  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+4]
!   Call the function
	mov	602,r13		! source line 602
	mov	"\0\0CA",r10
	call	_P_System_printHexVar
! CALL STATEMENT...
!   _temp_3044 = _StringConst_69
	set	_StringConst_69,r1
	store	r1,[r14+-108]
!   _temp_3046 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-100]
!   Move address of _temp_3046 [0 ] into _temp_3047
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-100],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-96]
!   _temp_3045 = _temp_3047		(4 bytes)
	load	[r14+-96],r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=8  value=_temp_3044  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_3045  sizeInBytes=4
	load	[r14+-104],r1
	store	r1,[r15+4]
!   Call the function
	mov	603,r13		! source line 603
	mov	"\0\0CA",r10
	call	_P_System_printHexVar
! SWITCH STATEMENT (using series of tests)...
	mov	604,r13		! source line 604
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   Branch to the right case label
	load	[r14+8],r1
	load	[r1+76],r1
	cmp	r1,1
	be	_Label_3050
	cmp	r1,2
	be	_Label_3051
	cmp	r1,3
	be	_Label_3052
	cmp	r1,4
	be	_Label_3053
	cmp	r1,5
	be	_Label_3054
	jmp	_Label_3048
! CASE 1...
_Label_3050:
! CALL STATEMENT...
!   _temp_3055 = _StringConst_70
	set	_StringConst_70,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_3055  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	606,r13		! source line 606
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	607,r13		! source line 607
	mov	"\0\0BR",r10
	jmp	_Label_3049
! CASE 2...
_Label_3051:
! CALL STATEMENT...
!   _temp_3056 = _StringConst_71
	set	_StringConst_71,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=8  value=_temp_3056  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   Call the function
	mov	609,r13		! source line 609
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	610,r13		! source line 610
	mov	"\0\0BR",r10
	jmp	_Label_3049
! CASE 3...
_Label_3052:
! CALL STATEMENT...
!   _temp_3057 = _StringConst_72
	set	_StringConst_72,r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=8  value=_temp_3057  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+0]
!   Call the function
	mov	612,r13		! source line 612
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	613,r13		! source line 613
	mov	"\0\0BR",r10
	jmp	_Label_3049
! CASE 4...
_Label_3053:
! CALL STATEMENT...
!   _temp_3058 = _StringConst_73
	set	_StringConst_73,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_3058  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	615,r13		! source line 615
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	616,r13		! source line 616
	mov	"\0\0BR",r10
	jmp	_Label_3049
! CASE 5...
_Label_3054:
! CALL STATEMENT...
!   _temp_3059 = _StringConst_74
	set	_StringConst_74,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_3059  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	618,r13		! source line 618
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	619,r13		! source line 619
	mov	"\0\0BR",r10
	jmp	_Label_3049
! DEFAULT CASE...
_Label_3048:
! CALL STATEMENT...
!   _temp_3060 = _StringConst_75
	set	_StringConst_75,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_3060  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	621,r13		! source line 621
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_3049:
! CALL STATEMENT...
!   _temp_3061 = _StringConst_76
	set	_StringConst_76,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_3061  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	623,r13		! source line 623
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=isUserThread  sizeInBytes=1
	load	[r14+8],r1
	loadb	[r1+4092],r1
	storeb	r1,[r15+0]
!   Call the function
	mov	624,r13		! source line 624
	mov	"\0\0CE",r10
	call	printBool
! CALL STATEMENT...
!   Call the function
	mov	625,r13		! source line 625
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_3062 = _StringConst_77
	set	_StringConst_77,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=8  value=_temp_3062  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+0]
!   Call the function
	mov	626,r13		! source line 626
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	627,r13		! source line 627
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_3067 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-60]
!   Calculate and save the FOR-LOOP ending value
!   _temp_3068 = 14		(4 bytes)
	mov	14,r1
	store	r1,[r14+-56]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_3067  (sizeInBytes=4)
	load	[r14+-60],r1
	store	r1,[r14+-192]
_Label_3063:
!   Perform the FOR-LOOP termination test
!   if i > _temp_3068 then goto _Label_3066		
	load	[r14+-192],r1
	load	[r14+-56],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3066
_Label_3064:
	mov	627,r13		! source line 627
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_3069 = _StringConst_78
	set	_StringConst_78,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_3069  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	628,r13		! source line 628
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_3070 = i + 1		(int)
	load	[r14+-192],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_3070  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	629,r13		! source line 629
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_3071 = _StringConst_79
	set	_StringConst_79,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_3071  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	630,r13		! source line 630
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_3073 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-36]
!   Move address of _temp_3073 [i ] into _temp_3074
!     make sure index expr is >= 0
	load	[r14+-192],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-36],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-32]
!   Data Move: _temp_3072 = *_temp_3074  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_3072  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	631,r13		! source line 631
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_3075 = _StringConst_80
	set	_StringConst_80,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_3075  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	632,r13		! source line 632
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_3077 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-20]
!   Move address of _temp_3077 [i ] into _temp_3078
!     make sure index expr is >= 0
	load	[r14+-192],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-20],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   Data Move: _temp_3076 = *_temp_3078  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_3076  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	633,r13		! source line 633
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_3079 = _StringConst_81
	set	_StringConst_81,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_3079  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	634,r13		! source line 634
	mov	"\0\0CE",r10
	call	print
!   Increment the FOR-LOOP index variable and jump back
_Label_3065:
!   i = i + 1
	load	[r14+-192],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-192]
	jmp	_Label_3063
! END FOR
_Label_3066:
! ASSIGNMENT STATEMENT...
	mov	636,r13		! source line 636
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-196],r1
	store	r1,[r15+0]
!   Call the function
	mov	636,r13		! source line 636
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-196]
! RETURN STATEMENT...
	mov	636,r13		! source line 636
	mov	"\0\0RE",r10
	add	r15,200,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Thread_6:
	.word	_sourceFileName
	.word	_Label_3080
	.word	4		! total size of parameters
	.word	196		! frame size = 196
	.word	_Label_3081
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3082
	.word	-12
	.word	4
	.word	_Label_3083
	.word	-16
	.word	4
	.word	_Label_3084
	.word	-20
	.word	4
	.word	_Label_3085
	.word	-24
	.word	4
	.word	_Label_3086
	.word	-28
	.word	4
	.word	_Label_3087
	.word	-32
	.word	4
	.word	_Label_3088
	.word	-36
	.word	4
	.word	_Label_3089
	.word	-40
	.word	4
	.word	_Label_3090
	.word	-44
	.word	4
	.word	_Label_3091
	.word	-48
	.word	4
	.word	_Label_3092
	.word	-52
	.word	4
	.word	_Label_3093
	.word	-56
	.word	4
	.word	_Label_3094
	.word	-60
	.word	4
	.word	_Label_3095
	.word	-64
	.word	4
	.word	_Label_3096
	.word	-68
	.word	4
	.word	_Label_3097
	.word	-72
	.word	4
	.word	_Label_3098
	.word	-76
	.word	4
	.word	_Label_3099
	.word	-80
	.word	4
	.word	_Label_3100
	.word	-84
	.word	4
	.word	_Label_3101
	.word	-88
	.word	4
	.word	_Label_3102
	.word	-92
	.word	4
	.word	_Label_3103
	.word	-96
	.word	4
	.word	_Label_3104
	.word	-100
	.word	4
	.word	_Label_3105
	.word	-104
	.word	4
	.word	_Label_3106
	.word	-108
	.word	4
	.word	_Label_3107
	.word	-112
	.word	4
	.word	_Label_3108
	.word	-116
	.word	4
	.word	_Label_3109
	.word	-120
	.word	4
	.word	_Label_3110
	.word	-124
	.word	4
	.word	_Label_3111
	.word	-128
	.word	4
	.word	_Label_3112
	.word	-132
	.word	4
	.word	_Label_3113
	.word	-136
	.word	4
	.word	_Label_3114
	.word	-140
	.word	4
	.word	_Label_3115
	.word	-144
	.word	4
	.word	_Label_3116
	.word	-148
	.word	4
	.word	_Label_3117
	.word	-152
	.word	4
	.word	_Label_3118
	.word	-156
	.word	4
	.word	_Label_3119
	.word	-160
	.word	4
	.word	_Label_3120
	.word	-164
	.word	4
	.word	_Label_3121
	.word	-168
	.word	4
	.word	_Label_3122
	.word	-172
	.word	4
	.word	_Label_3123
	.word	-176
	.word	4
	.word	_Label_3124
	.word	-180
	.word	4
	.word	_Label_3125
	.word	-184
	.word	4
	.word	_Label_3126
	.word	-188
	.word	4
	.word	_Label_3127
	.word	-192
	.word	4
	.word	_Label_3128
	.word	-196
	.word	4
	.word	0
_Label_3080:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_3081:
	.ascii	"Pself\0"
	.align
_Label_3082:
	.byte	'?'
	.ascii	"_temp_3079\0"
	.align
_Label_3083:
	.byte	'?'
	.ascii	"_temp_3078\0"
	.align
_Label_3084:
	.byte	'?'
	.ascii	"_temp_3077\0"
	.align
_Label_3085:
	.byte	'?'
	.ascii	"_temp_3076\0"
	.align
_Label_3086:
	.byte	'?'
	.ascii	"_temp_3075\0"
	.align
_Label_3087:
	.byte	'?'
	.ascii	"_temp_3074\0"
	.align
_Label_3088:
	.byte	'?'
	.ascii	"_temp_3073\0"
	.align
_Label_3089:
	.byte	'?'
	.ascii	"_temp_3072\0"
	.align
_Label_3090:
	.byte	'?'
	.ascii	"_temp_3071\0"
	.align
_Label_3091:
	.byte	'?'
	.ascii	"_temp_3070\0"
	.align
_Label_3092:
	.byte	'?'
	.ascii	"_temp_3069\0"
	.align
_Label_3093:
	.byte	'?'
	.ascii	"_temp_3068\0"
	.align
_Label_3094:
	.byte	'?'
	.ascii	"_temp_3067\0"
	.align
_Label_3095:
	.byte	'?'
	.ascii	"_temp_3062\0"
	.align
_Label_3096:
	.byte	'?'
	.ascii	"_temp_3061\0"
	.align
_Label_3097:
	.byte	'?'
	.ascii	"_temp_3060\0"
	.align
_Label_3098:
	.byte	'?'
	.ascii	"_temp_3059\0"
	.align
_Label_3099:
	.byte	'?'
	.ascii	"_temp_3058\0"
	.align
_Label_3100:
	.byte	'?'
	.ascii	"_temp_3057\0"
	.align
_Label_3101:
	.byte	'?'
	.ascii	"_temp_3056\0"
	.align
_Label_3102:
	.byte	'?'
	.ascii	"_temp_3055\0"
	.align
_Label_3103:
	.byte	'?'
	.ascii	"_temp_3047\0"
	.align
_Label_3104:
	.byte	'?'
	.ascii	"_temp_3046\0"
	.align
_Label_3105:
	.byte	'?'
	.ascii	"_temp_3045\0"
	.align
_Label_3106:
	.byte	'?'
	.ascii	"_temp_3044\0"
	.align
_Label_3107:
	.byte	'?'
	.ascii	"_temp_3043\0"
	.align
_Label_3108:
	.byte	'?'
	.ascii	"_temp_3042\0"
	.align
_Label_3109:
	.byte	'?'
	.ascii	"_temp_3041\0"
	.align
_Label_3110:
	.byte	'?'
	.ascii	"_temp_3040\0"
	.align
_Label_3111:
	.byte	'?'
	.ascii	"_temp_3039\0"
	.align
_Label_3112:
	.byte	'?'
	.ascii	"_temp_3038\0"
	.align
_Label_3113:
	.byte	'?'
	.ascii	"_temp_3037\0"
	.align
_Label_3114:
	.byte	'?'
	.ascii	"_temp_3036\0"
	.align
_Label_3115:
	.byte	'?'
	.ascii	"_temp_3035\0"
	.align
_Label_3116:
	.byte	'?'
	.ascii	"_temp_3034\0"
	.align
_Label_3117:
	.byte	'?'
	.ascii	"_temp_3033\0"
	.align
_Label_3118:
	.byte	'?'
	.ascii	"_temp_3032\0"
	.align
_Label_3119:
	.byte	'?'
	.ascii	"_temp_3031\0"
	.align
_Label_3120:
	.byte	'?'
	.ascii	"_temp_3030\0"
	.align
_Label_3121:
	.byte	'?'
	.ascii	"_temp_3029\0"
	.align
_Label_3122:
	.byte	'?'
	.ascii	"_temp_3024\0"
	.align
_Label_3123:
	.byte	'?'
	.ascii	"_temp_3023\0"
	.align
_Label_3124:
	.byte	'?'
	.ascii	"_temp_3022\0"
	.align
_Label_3125:
	.byte	'?'
	.ascii	"_temp_3021\0"
	.align
_Label_3126:
	.byte	'?'
	.ascii	"_temp_3020\0"
	.align
_Label_3127:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_3128:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  CLASS ThreadManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ThreadManager:
	.word	_Label_3129
	jmp	_Method_P_Kernel_ThreadManager_1	! 4:	Init
	jmp	_Method_P_Kernel_ThreadManager_2	! 8:	Print
	jmp	_Method_P_Kernel_ThreadManager_3	! 12:	GetANewThread
	jmp	_Method_P_Kernel_ThreadManager_4	! 16:	FreeThread
	.word	0
! 
! Class descriptor:
! 
_Label_3129:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_3130
	.word	_sourceFileName
	.word	203		! line number
	.word	83340		! size of instances, in bytes
	.word	_P_Kernel_ThreadManager
	.word	_P_System_Object
	.word	0
_Label_3130:
	.ascii	"ThreadManager\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_ThreadManager_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ThreadManager_1,r1
	push	r1
	mov	21888,r1
_Label_7836:
	push	r0
	sub	r1,1,r1
	bne	_Label_7836
	mov	691,r13		! source line 691
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_3131 = _StringConst_82
	set	_StringConst_82,r1
	set	-87548,r2
	store	r1,[r14+r2]
!   Prepare Argument: offset=8  value=_temp_3131  sizeInBytes=4
	set	-87548,r1
	load	[r14+r1],r1
	store	r1,[r15+0]
!   Call the function
	mov	697,r13		! source line 697
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	698,r13		! source line 698
	mov	"\0\0AS",r10
!   threadsInQueue = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r11
	set	83336,r2
	store	r1,[r11+r2]
! ASSIGNMENT STATEMENT...
	mov	699,r13		! source line 699
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: threadManagerMtx = zeros  (sizeInBytes=20)
	set	83300,r11
	load	[r14+8],r4
	add	r4,r11,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   threadManagerMtx = _P_Kernel_Mutex
	set	_P_Kernel_Mutex,r1
	load	[r14+8],r11
	set	83300,r2
	store	r1,[r11+r2]
! ASSIGNMENT STATEMENT...
	mov	700,r13		! source line 700
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: aThreadIsFree = zeros  (sizeInBytes=16)
	set	83320,r11
	load	[r14+8],r4
	add	r4,r11,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
!   aThreadIsFree = _P_Kernel_Condition
	set	_P_Kernel_Condition,r1
	load	[r14+8],r11
	set	83320,r2
	store	r1,[r11+r2]
! SEND STATEMENT...
	mov	701,r13		! source line 701
	mov	"\0\0SE",r10
!   _temp_3134 = &threadManagerMtx
	set	83300,r11
	load	[r14+8],r1
	add	r1,r11,r1
	set	-87536,r2
	store	r1,[r14+r2]
!   Send message Init
	set	-87536,r1
	load	[r14+r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	702,r13		! source line 702
	mov	"\0\0SE",r10
!   _temp_3135 = &aThreadIsFree
	set	83320,r11
	load	[r14+8],r1
	add	r1,r11,r1
	set	-87532,r2
	store	r1,[r14+r2]
!   Send message Init
	set	-87532,r1
	load	[r14+r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	703,r13		! source line 703
	mov	"\0\0AS",r10
!   _temp_3136 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	set	-87528,r2
	store	r1,[r14+r2]
!   NEW ARRAY Constructor...
!   _temp_3138 = &_temp_3137
	set	-87524,r1
	add	r14,r1,r1
	store	r1,[r14+-4240]
!   _temp_3138 = _temp_3138 + 4
	load	[r14+-4240],r1
	add	r1,4,r1
	store	r1,[r14+-4240]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_3140 = zeros  (sizeInBytes=4164)
	add	r14,-4232,r4
	mov	1041,r3
_Label_7837:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_7837
!   _temp_3140 = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	store	r1,[r14+-4232]
	mov	20,r1
	store	r1,[r14+-4236]
_Label_3142:
!   Data Move: *_temp_3138 = _temp_3140  (sizeInBytes=4164)
	add	r14,-4232,r5
	load	[r14+-4240],r4
	mov	1041,r3
_Label_7838:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_7838
!   _temp_3138 = _temp_3138 + 4164
	load	[r14+-4240],r1
	add	r1,4164,r1
	store	r1,[r14+-4240]
!   _temp_3139 = _temp_3139 + -1
	load	[r14+-4236],r1
	add	r1,-1,r1
	store	r1,[r14+-4236]
!   if intNotZero (_temp_3139) then goto _Label_3142
	load	[r14+-4236],r1
	cmp	r1,r0
	bne	_Label_3142
!   Initialize the array size...
	mov	20,r1
	set	-87524,r2
	store	r1,[r14+r2]
!   _temp_3143 = &_temp_3137
	set	-87524,r1
	add	r14,r1,r1
	store	r1,[r14+-64]
!   make sure array has size 20
	set	-87528,r1
	load	[r14+r1],r1
	load	[r1],r1
	set	20, r2
	cmp	r1,0
	be	_Label_7839
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_7839:
!   make sure array has size 20
	load	[r14+-64],r1
	load	[r1],r1
	set	20, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_3136 = *_temp_3143  (sizeInBytes=83284)
	load	[r14+-64],r5
	set	-87528,r4
	load	[r14+r4],r4
	mov	20821,r3
_Label_7840:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_7840
! ASSIGNMENT STATEMENT...
	mov	704,r13		! source line 704
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: freeList = zeros  (sizeInBytes=12)
	set	83288,r11
	load	[r14+8],r4
	add	r4,r11,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   freeList = _P_List_List
	set	_P_List_List,r1
	load	[r14+8],r11
	set	83288,r2
	store	r1,[r11+r2]
! FOR STATEMENT...
	mov	705,r13		! source line 705
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_3149 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-56]
!   Calculate and save the FOR-LOOP ending value
!   _temp_3150 = 19		(4 bytes)
	mov	19,r1
	store	r1,[r14+-52]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_3149  (sizeInBytes=4)
	load	[r14+-56],r1
	set	-87552,r2
	store	r1,[r14+r2]
_Label_3145:
!   Perform the FOR-LOOP termination test
!   if i > _temp_3150 then goto _Label_3148		
	set	-87552,r1
	load	[r14+r1],r1
	load	[r14+-52],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3148
_Label_3146:
	mov	705,r13		! source line 705
	mov	"\0\0FB",r10
! SEND STATEMENT...
	mov	706,r13		! source line 706
	mov	"\0\0SE",r10
!   _temp_3151 = _StringConst_83
	set	_StringConst_83,r1
	store	r1,[r14+-48]
!   _temp_3152 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-44]
!   Move address of _temp_3152 [i ] into _temp_3153
!     make sure index expr is >= 0
	set	-87552,r2
	load	[r14+r2],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-44],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4164,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-40]
!   Prepare Argument: offset=12  value=_temp_3151  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	707,r13		! source line 707
	mov	"\0\0AS",r10
!   _temp_3154 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-36]
!   Move address of _temp_3154 [i ] into _temp_3155
!     make sure index expr is >= 0
	set	-87552,r2
	load	[r14+r2],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-36],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4164,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-32]
!   _temp_3156 = _temp_3155 + 76
	load	[r14+-32],r1
	add	r1,76,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_3156 = 5  (sizeInBytes=4)
	mov	5,r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	708,r13		! source line 708
	mov	"\0\0SE",r10
!   _temp_3158 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Move address of _temp_3158 [i ] into _temp_3159
!     make sure index expr is >= 0
	set	-87552,r2
	load	[r14+r2],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-20],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4164,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   _temp_3157 = _temp_3159		(4 bytes)
	load	[r14+-16],r1
	store	r1,[r14+-24]
!   _temp_3160 = &freeList
	set	83288,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_3157  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_3147:
!   i = i + 1
	set	-87552,r1
	load	[r14+r1],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	set	-87552,r2
	store	r1,[r14+r2]
	jmp	_Label_3145
! END FOR
_Label_3148:
! RETURN STATEMENT...
	mov	705,r13		! source line 705
	mov	"\0\0RE",r10
	set	87556,r1
	add	r15,r1,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ThreadManager_1:
	.word	_sourceFileName
	.word	_Label_3161
	.word	4		! total size of parameters
	.word	87552		! frame size = 87552
	.word	_Label_3162
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3163
	.word	-12
	.word	4
	.word	_Label_3164
	.word	-16
	.word	4
	.word	_Label_3165
	.word	-20
	.word	4
	.word	_Label_3166
	.word	-24
	.word	4
	.word	_Label_3167
	.word	-28
	.word	4
	.word	_Label_3168
	.word	-32
	.word	4
	.word	_Label_3169
	.word	-36
	.word	4
	.word	_Label_3170
	.word	-40
	.word	4
	.word	_Label_3171
	.word	-44
	.word	4
	.word	_Label_3172
	.word	-48
	.word	4
	.word	_Label_3173
	.word	-52
	.word	4
	.word	_Label_3174
	.word	-56
	.word	4
	.word	_Label_3175
	.word	-60
	.word	4
	.word	_Label_3176
	.word	-64
	.word	4
	.word	_Label_3177
	.word	-68
	.word	4
	.word	_Label_3178
	.word	-4232
	.word	4164
	.word	_Label_3179
	.word	-4236
	.word	4
	.word	_Label_3180
	.word	-4240
	.word	4
	.word	_Label_3181
	.word	-87524
	.word	83284
	.word	_Label_3182
	.word	-87528
	.word	4
	.word	_Label_3183
	.word	-87532
	.word	4
	.word	_Label_3184
	.word	-87536
	.word	4
	.word	_Label_3185
	.word	-87540
	.word	4
	.word	_Label_3186
	.word	-87544
	.word	4
	.word	_Label_3187
	.word	-87548
	.word	4
	.word	_Label_3188
	.word	-87552
	.word	4
	.word	0
_Label_3161:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_3162:
	.ascii	"Pself\0"
	.align
_Label_3163:
	.byte	'?'
	.ascii	"_temp_3160\0"
	.align
_Label_3164:
	.byte	'?'
	.ascii	"_temp_3159\0"
	.align
_Label_3165:
	.byte	'?'
	.ascii	"_temp_3158\0"
	.align
_Label_3166:
	.byte	'?'
	.ascii	"_temp_3157\0"
	.align
_Label_3167:
	.byte	'?'
	.ascii	"_temp_3156\0"
	.align
_Label_3168:
	.byte	'?'
	.ascii	"_temp_3155\0"
	.align
_Label_3169:
	.byte	'?'
	.ascii	"_temp_3154\0"
	.align
_Label_3170:
	.byte	'?'
	.ascii	"_temp_3153\0"
	.align
_Label_3171:
	.byte	'?'
	.ascii	"_temp_3152\0"
	.align
_Label_3172:
	.byte	'?'
	.ascii	"_temp_3151\0"
	.align
_Label_3173:
	.byte	'?'
	.ascii	"_temp_3150\0"
	.align
_Label_3174:
	.byte	'?'
	.ascii	"_temp_3149\0"
	.align
_Label_3175:
	.byte	'?'
	.ascii	"_temp_3144\0"
	.align
_Label_3176:
	.byte	'?'
	.ascii	"_temp_3143\0"
	.align
_Label_3177:
	.byte	'?'
	.ascii	"_temp_3141\0"
	.align
_Label_3178:
	.byte	'?'
	.ascii	"_temp_3140\0"
	.align
_Label_3179:
	.byte	'?'
	.ascii	"_temp_3139\0"
	.align
_Label_3180:
	.byte	'?'
	.ascii	"_temp_3138\0"
	.align
_Label_3181:
	.byte	'?'
	.ascii	"_temp_3137\0"
	.align
_Label_3182:
	.byte	'?'
	.ascii	"_temp_3136\0"
	.align
_Label_3183:
	.byte	'?'
	.ascii	"_temp_3135\0"
	.align
_Label_3184:
	.byte	'?'
	.ascii	"_temp_3134\0"
	.align
_Label_3185:
	.byte	'?'
	.ascii	"_temp_3133\0"
	.align
_Label_3186:
	.byte	'?'
	.ascii	"_temp_3132\0"
	.align
_Label_3187:
	.byte	'?'
	.ascii	"_temp_3131\0"
	.align
_Label_3188:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_ThreadManager_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ThreadManager_2,r1
	push	r1
	mov	15,r1
_Label_7841:
	push	r0
	sub	r1,1,r1
	bne	_Label_7841
	mov	714,r13		! source line 714
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	721,r13		! source line 721
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	721,r13		! source line 721
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-60]
! CALL STATEMENT...
!   _temp_3189 = _StringConst_84
	set	_StringConst_84,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_3189  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	722,r13		! source line 722
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	723,r13		! source line 723
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_3194 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-48]
!   Calculate and save the FOR-LOOP ending value
!   _temp_3195 = 19		(4 bytes)
	mov	19,r1
	store	r1,[r14+-44]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_3194  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+-56]
_Label_3190:
!   Perform the FOR-LOOP termination test
!   if i > _temp_3195 then goto _Label_3193		
	load	[r14+-56],r1
	load	[r14+-44],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3193
_Label_3191:
	mov	723,r13		! source line 723
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_3196 = _StringConst_85
	set	_StringConst_85,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_3196  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	724,r13		! source line 724
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	725,r13		! source line 725
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_3197 = _StringConst_86
	set	_StringConst_86,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_3197  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	726,r13		! source line 726
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_3199 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Move address of _temp_3199 [i ] into _temp_3200
!     make sure index expr is >= 0
	load	[r14+-56],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-28],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4164,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-24]
!   _temp_3198 = _temp_3200		(4 bytes)
	load	[r14+-24],r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_3198  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	727,r13		! source line 727
	mov	"\0\0CA",r10
	call	_function_246_ThreadPrintShort
!   Increment the FOR-LOOP index variable and jump back
_Label_3192:
!   i = i + 1
	load	[r14+-56],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-56]
	jmp	_Label_3190
! END FOR
_Label_3193:
! CALL STATEMENT...
!   _temp_3201 = _StringConst_87
	set	_StringConst_87,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_3201  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	729,r13		! source line 729
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	730,r13		! source line 730
	mov	"\0\0SE",r10
!   _temp_3202 = _function_245_PrintObjectAddr
	set	_function_245_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_3203 = &freeList
	set	83288,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_3202  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Send message ApplyToEach
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! CALL STATEMENT...
!   Call the function
	mov	731,r13		! source line 731
	mov	"\0\0CA",r10
	call	_P_System_nl
! ASSIGNMENT STATEMENT...
	mov	732,r13		! source line 732
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	732,r13		! source line 732
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-60]
! RETURN STATEMENT...
	mov	732,r13		! source line 732
	mov	"\0\0RE",r10
	add	r15,64,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ThreadManager_2:
	.word	_sourceFileName
	.word	_Label_3204
	.word	4		! total size of parameters
	.word	60		! frame size = 60
	.word	_Label_3205
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3206
	.word	-12
	.word	4
	.word	_Label_3207
	.word	-16
	.word	4
	.word	_Label_3208
	.word	-20
	.word	4
	.word	_Label_3209
	.word	-24
	.word	4
	.word	_Label_3210
	.word	-28
	.word	4
	.word	_Label_3211
	.word	-32
	.word	4
	.word	_Label_3212
	.word	-36
	.word	4
	.word	_Label_3213
	.word	-40
	.word	4
	.word	_Label_3214
	.word	-44
	.word	4
	.word	_Label_3215
	.word	-48
	.word	4
	.word	_Label_3216
	.word	-52
	.word	4
	.word	_Label_3217
	.word	-56
	.word	4
	.word	_Label_3218
	.word	-60
	.word	4
	.word	0
_Label_3204:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_3205:
	.ascii	"Pself\0"
	.align
_Label_3206:
	.byte	'?'
	.ascii	"_temp_3203\0"
	.align
_Label_3207:
	.byte	'?'
	.ascii	"_temp_3202\0"
	.align
_Label_3208:
	.byte	'?'
	.ascii	"_temp_3201\0"
	.align
_Label_3209:
	.byte	'?'
	.ascii	"_temp_3200\0"
	.align
_Label_3210:
	.byte	'?'
	.ascii	"_temp_3199\0"
	.align
_Label_3211:
	.byte	'?'
	.ascii	"_temp_3198\0"
	.align
_Label_3212:
	.byte	'?'
	.ascii	"_temp_3197\0"
	.align
_Label_3213:
	.byte	'?'
	.ascii	"_temp_3196\0"
	.align
_Label_3214:
	.byte	'?'
	.ascii	"_temp_3195\0"
	.align
_Label_3215:
	.byte	'?'
	.ascii	"_temp_3194\0"
	.align
_Label_3216:
	.byte	'?'
	.ascii	"_temp_3189\0"
	.align
_Label_3217:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_3218:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  METHOD GetANewThread  ===============
! 
_Method_P_Kernel_ThreadManager_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ThreadManager_3,r1
	push	r1
	mov	11,r1
_Label_7842:
	push	r0
	sub	r1,1,r1
	bne	_Label_7842
	mov	737,r13		! source line 737
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	743,r13		! source line 743
	mov	"\0\0SE",r10
!   _temp_3219 = &threadManagerMtx
	set	83300,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-40]
!   Send message Lock
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! IF STATEMENT...
	mov	744,r13		! source line 744
	mov	"\0\0IF",r10
	mov	744,r13		! source line 744
	mov	"\0\0SE",r10
!   _temp_3224 = &freeList
	set	83288,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-36]
!   Send message IsEmpty
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_3223  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   _temp_3225 = _temp_3223 XOR 1		(bool)
	loadb	[r14+-10],r1
	mov	1,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-9]
!   if _temp_3225 then goto _Label_3222 else goto _Label_3220
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_3220
	jmp	_Label_3222
_Label_3222:
!   if threadsInQueue <= 0 then goto _Label_3221		(int)
	load	[r14+8],r11
	set	83336,r1
	load	[r11+r1],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_3221
!	_Label_3220	jmp	_Label_3220
_Label_3220:
! THEN...
	mov	745,r13		! source line 745
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	745,r13		! source line 745
	mov	"\0\0AS",r10
!   threadsInQueue = threadsInQueue + 1		(int)
	load	[r14+8],r11
	set	83336,r1
	load	[r11+r1],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r11
	set	83336,r2
	store	r1,[r11+r2]
! SEND STATEMENT...
	mov	746,r13		! source line 746
	mov	"\0\0SE",r10
!   _temp_3226 = &threadManagerMtx
	set	83300,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-32]
!   _temp_3227 = &aThreadIsFree
	set	83320,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=_temp_3226  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+4]
!   Send message Wait
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	747,r13		! source line 747
	mov	"\0\0AS",r10
!   threadsInQueue = threadsInQueue - 1		(int)
	load	[r14+8],r11
	set	83336,r1
	load	[r11+r1],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r11
	set	83336,r2
	store	r1,[r11+r2]
! END IF...
_Label_3221:
! ASSIGNMENT STATEMENT...
	mov	749,r13		! source line 749
	mov	"\0\0AS",r10
	mov	749,r13		! source line 749
	mov	"\0\0SE",r10
!   _temp_3228 = &freeList
	set	83288,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-24]
!   Send message Remove
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=th  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-44]
! ASSIGNMENT STATEMENT...
	mov	750,r13		! source line 750
	mov	"\0\0AS",r10
!   if intIsZero (th) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3229 = th + 76
	load	[r14+-44],r1
	add	r1,76,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_3229 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	751,r13		! source line 751
	mov	"\0\0SE",r10
!   _temp_3230 = &threadManagerMtx
	set	83300,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-16]
!   Send message Unlock
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	752,r13		! source line 752
	mov	"\0\0RE",r10
!   ReturnResult: th  (sizeInBytes=4)
	load	[r14+-44],r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ThreadManager_3:
	.word	_sourceFileName
	.word	_Label_3231
	.word	4		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_3232
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3233
	.word	-16
	.word	4
	.word	_Label_3234
	.word	-20
	.word	4
	.word	_Label_3235
	.word	-24
	.word	4
	.word	_Label_3236
	.word	-28
	.word	4
	.word	_Label_3237
	.word	-32
	.word	4
	.word	_Label_3238
	.word	-9
	.word	1
	.word	_Label_3239
	.word	-36
	.word	4
	.word	_Label_3240
	.word	-10
	.word	1
	.word	_Label_3241
	.word	-40
	.word	4
	.word	_Label_3242
	.word	-44
	.word	4
	.word	0
_Label_3231:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"GetANewThread\0"
	.align
_Label_3232:
	.ascii	"Pself\0"
	.align
_Label_3233:
	.byte	'?'
	.ascii	"_temp_3230\0"
	.align
_Label_3234:
	.byte	'?'
	.ascii	"_temp_3229\0"
	.align
_Label_3235:
	.byte	'?'
	.ascii	"_temp_3228\0"
	.align
_Label_3236:
	.byte	'?'
	.ascii	"_temp_3227\0"
	.align
_Label_3237:
	.byte	'?'
	.ascii	"_temp_3226\0"
	.align
_Label_3238:
	.byte	'C'
	.ascii	"_temp_3225\0"
	.align
_Label_3239:
	.byte	'?'
	.ascii	"_temp_3224\0"
	.align
_Label_3240:
	.byte	'C'
	.ascii	"_temp_3223\0"
	.align
_Label_3241:
	.byte	'?'
	.ascii	"_temp_3219\0"
	.align
_Label_3242:
	.byte	'P'
	.ascii	"th\0"
	.align
! 
! ===============  METHOD FreeThread  ===============
! 
_Method_P_Kernel_ThreadManager_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ThreadManager_4,r1
	push	r1
	mov	8,r1
_Label_7843:
	push	r0
	sub	r1,1,r1
	bne	_Label_7843
	mov	757,r13		! source line 757
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	762,r13		! source line 762
	mov	"\0\0SE",r10
!   _temp_3243 = &threadManagerMtx
	set	83300,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-32]
!   Send message Lock
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	763,r13		! source line 763
	mov	"\0\0AS",r10
!   if intIsZero (th) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3244 = th + 76
	load	[r14+12],r1
	add	r1,76,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_3244 = 5  (sizeInBytes=4)
	mov	5,r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	764,r13		! source line 764
	mov	"\0\0SE",r10
!   _temp_3245 = &freeList
	set	83288,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=th  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	765,r13		! source line 765
	mov	"\0\0SE",r10
!   _temp_3246 = &threadManagerMtx
	set	83300,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-20]
!   _temp_3247 = &aThreadIsFree
	set	83320,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_3246  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Send message Signal
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	766,r13		! source line 766
	mov	"\0\0SE",r10
!   _temp_3248 = &threadManagerMtx
	set	83300,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-12]
!   Send message Unlock
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	766,r13		! source line 766
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ThreadManager_4:
	.word	_sourceFileName
	.word	_Label_3249
	.word	8		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_3250
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3251
	.word	12
	.word	4
	.word	_Label_3252
	.word	-12
	.word	4
	.word	_Label_3253
	.word	-16
	.word	4
	.word	_Label_3254
	.word	-20
	.word	4
	.word	_Label_3255
	.word	-24
	.word	4
	.word	_Label_3256
	.word	-28
	.word	4
	.word	_Label_3257
	.word	-32
	.word	4
	.word	0
_Label_3249:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"FreeThread\0"
	.align
_Label_3250:
	.ascii	"Pself\0"
	.align
_Label_3251:
	.byte	'P'
	.ascii	"th\0"
	.align
_Label_3252:
	.byte	'?'
	.ascii	"_temp_3248\0"
	.align
_Label_3253:
	.byte	'?'
	.ascii	"_temp_3247\0"
	.align
_Label_3254:
	.byte	'?'
	.ascii	"_temp_3246\0"
	.align
_Label_3255:
	.byte	'?'
	.ascii	"_temp_3245\0"
	.align
_Label_3256:
	.byte	'?'
	.ascii	"_temp_3244\0"
	.align
_Label_3257:
	.byte	'?'
	.ascii	"_temp_3243\0"
	.align
! 
! ===============  CLASS ProcessControlBlock  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ProcessControlBlock:
	.word	_Label_3258
	jmp	_Method_P_Kernel_ProcessControlBlock_1	! 4:	Init
	jmp	_Method_P_Kernel_ProcessControlBlock_2	! 8:	Print
	jmp	_Method_P_Kernel_ProcessControlBlock_3	! 12:	PrintShort
	.word	0
! 
! Class descriptor:
! 
_Label_3258:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_3259
	.word	_sourceFileName
	.word	225		! line number
	.word	288		! size of instances, in bytes
	.word	_P_Kernel_ProcessControlBlock
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_3259:
	.ascii	"ProcessControlBlock\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_ProcessControlBlock_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessControlBlock_1,r1
	push	r1
	mov	18,r1
_Label_7844:
	push	r0
	sub	r1,1,r1
	bne	_Label_7844
	mov	779,r13		! source line 779
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	780,r13		! source line 780
	mov	"\0\0AS",r10
!   status = 3		(4 bytes)
	mov	3,r1
	load	[r14+8],r2
	store	r1,[r2+20]
! ASSIGNMENT STATEMENT...
	mov	781,r13		! source line 781
	mov	"\0\0AS",r10
!   lastError = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+236]
! ASSIGNMENT STATEMENT...
	mov	782,r13		! source line 782
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: addrSpace = zeros  (sizeInBytes=204)
	load	[r14+8],r4
	add	r4,32,r4
	mov	51,r3
_Label_7845:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_7845
!   addrSpace = _P_Kernel_AddrSpace
	set	_P_Kernel_AddrSpace,r1
	load	[r14+8],r2
	store	r1,[r2+32]
! SEND STATEMENT...
	mov	783,r13		! source line 783
	mov	"\0\0SE",r10
!   _temp_3261 = &addrSpace
	load	[r14+8],r1
	add	r1,32,r1
	store	r1,[r14+-72]
!   Send message Init
	load	[r14+-72],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	784,r13		! source line 784
	mov	"\0\0AS",r10
!   parentsPid = -1		(4 bytes)
	mov	-1,r1
	load	[r14+8],r2
	store	r1,[r2+16]
! ASSIGNMENT STATEMENT...
	mov	786,r13		! source line 786
	mov	"\0\0AS",r10
!   _temp_3262 = &fileDescriptor
	load	[r14+8],r1
	add	r1,244,r1
	store	r1,[r14+-68]
!   NEW ARRAY Constructor...
!   _temp_3264 = &_temp_3263
	add	r14,-64,r1
	store	r1,[r14+-20]
!   _temp_3264 = _temp_3264 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Next value...
	mov	10,r1
	store	r1,[r14+-16]
_Label_3266:
!   Data Move: *_temp_3264 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-20],r2
	store	r1,[r2]
!   _temp_3264 = _temp_3264 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_3265 = _temp_3265 + -1
	load	[r14+-16],r1
	add	r1,-1,r1
	store	r1,[r14+-16]
!   if intNotZero (_temp_3265) then goto _Label_3266
	load	[r14+-16],r1
	cmp	r1,r0
	bne	_Label_3266
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-64]
!   _temp_3267 = &_temp_3263
	add	r14,-64,r1
	store	r1,[r14+-12]
!   make sure array has size 10
	load	[r14+-68],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_7846
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_7846:
!   make sure array has size 10
	load	[r14+-12],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_3262 = *_temp_3267  (sizeInBytes=44)
	load	[r14+-12],r5
	load	[r14+-68],r4
	mov	11,r3
_Label_7847:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_7847
! RETURN STATEMENT...
	mov	786,r13		! source line 786
	mov	"\0\0RE",r10
	add	r15,76,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessControlBlock_1:
	.word	_sourceFileName
	.word	_Label_3268
	.word	4		! total size of parameters
	.word	72		! frame size = 72
	.word	_Label_3269
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3270
	.word	-12
	.word	4
	.word	_Label_3271
	.word	-16
	.word	4
	.word	_Label_3272
	.word	-20
	.word	4
	.word	_Label_3273
	.word	-64
	.word	44
	.word	_Label_3274
	.word	-68
	.word	4
	.word	_Label_3275
	.word	-72
	.word	4
	.word	_Label_3276
	.word	-76
	.word	4
	.word	0
_Label_3268:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_3269:
	.ascii	"Pself\0"
	.align
_Label_3270:
	.byte	'?'
	.ascii	"_temp_3267\0"
	.align
_Label_3271:
	.byte	'?'
	.ascii	"_temp_3265\0"
	.align
_Label_3272:
	.byte	'?'
	.ascii	"_temp_3264\0"
	.align
_Label_3273:
	.byte	'?'
	.ascii	"_temp_3263\0"
	.align
_Label_3274:
	.byte	'?'
	.ascii	"_temp_3262\0"
	.align
_Label_3275:
	.byte	'?'
	.ascii	"_temp_3261\0"
	.align
_Label_3276:
	.byte	'?'
	.ascii	"_temp_3260\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_ProcessControlBlock_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessControlBlock_2,r1
	push	r1
	mov	16,r1
_Label_7848:
	push	r0
	sub	r1,1,r1
	bne	_Label_7848
	mov	792,r13		! source line 792
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	797,r13		! source line 797
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-64]
!   if intIsZero (_temp_3277) then goto _runtimeErrorNullPointer
	load	[r14+-64],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message PrintShort
	load	[r14+-64],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	798,r13		! source line 798
	mov	"\0\0SE",r10
!   _temp_3278 = &addrSpace
	load	[r14+8],r1
	add	r1,32,r1
	store	r1,[r14+-60]
!   Send message Print
	load	[r14+-60],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! CALL STATEMENT...
!   _temp_3279 = _StringConst_88
	set	_StringConst_88,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_3279  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	799,r13		! source line 799
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=myThread  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+24],r1
	store	r1,[r15+0]
!   Call the function
	mov	800,r13		! source line 800
	mov	"\0\0CA",r10
	call	_function_246_ThreadPrintShort
! CALL STATEMENT...
!   _temp_3280 = _StringConst_89
	set	_StringConst_89,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_3280  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	801,r13		! source line 801
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	802,r13		! source line 802
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_3285 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-48]
!   Calculate and save the FOR-LOOP ending value
!   _temp_3286 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-44]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_3285  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+-68]
_Label_3281:
!   Perform the FOR-LOOP termination test
!   if i > _temp_3286 then goto _Label_3284		
	load	[r14+-68],r1
	load	[r14+-44],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3284
_Label_3282:
	mov	802,r13		! source line 802
	mov	"\0\0FB",r10
! IF STATEMENT...
	mov	803,r13		! source line 803
	mov	"\0\0IF",r10
!   _temp_3290 = &fileDescriptor
	load	[r14+8],r1
	add	r1,244,r1
	store	r1,[r14+-36]
!   Move address of _temp_3290 [i ] into _temp_3291
!     make sure index expr is >= 0
	load	[r14+-68],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-36],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-32]
!   Data Move: _temp_3289 = *_temp_3291  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if _temp_3289 == 0 then goto _Label_3288		(int)
	load	[r14+-40],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_3288
!	_Label_3287	jmp	_Label_3287
_Label_3287:
! THEN...
	mov	804,r13		! source line 804
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	804,r13		! source line 804
	mov	"\0\0SE",r10
!   _temp_3293 = &fileDescriptor
	load	[r14+8],r1
	add	r1,244,r1
	store	r1,[r14+-24]
!   Move address of _temp_3293 [i ] into _temp_3294
!     make sure index expr is >= 0
	load	[r14+-68],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-24],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-20]
!   Data Move: _temp_3292 = *_temp_3294  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_3292) then goto _runtimeErrorNullPointer
	load	[r14+-28],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Print
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
	jmp	_Label_3295
_Label_3288:
! ELSE...
	mov	806,r13		! source line 806
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_3296 = _StringConst_90
	set	_StringConst_90,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_3296  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	806,r13		! source line 806
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_3295:
!   Increment the FOR-LOOP index variable and jump back
_Label_3283:
!   i = i + 1
	load	[r14+-68],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-68]
	jmp	_Label_3281
! END FOR
_Label_3284:
! CALL STATEMENT...
!   _temp_3297 = _StringConst_91
	set	_StringConst_91,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_3297  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	809,r13		! source line 809
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	809,r13		! source line 809
	mov	"\0\0SE",r10
!   if intIsZero (workingDir) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+240],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Print
	load	[r14+8],r1
	load	[r1+240],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! RETURN STATEMENT...
	mov	809,r13		! source line 809
	mov	"\0\0RE",r10
	add	r15,68,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessControlBlock_2:
	.word	_sourceFileName
	.word	_Label_3298
	.word	4		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_3299
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3300
	.word	-12
	.word	4
	.word	_Label_3301
	.word	-16
	.word	4
	.word	_Label_3302
	.word	-20
	.word	4
	.word	_Label_3303
	.word	-24
	.word	4
	.word	_Label_3304
	.word	-28
	.word	4
	.word	_Label_3305
	.word	-32
	.word	4
	.word	_Label_3306
	.word	-36
	.word	4
	.word	_Label_3307
	.word	-40
	.word	4
	.word	_Label_3308
	.word	-44
	.word	4
	.word	_Label_3309
	.word	-48
	.word	4
	.word	_Label_3310
	.word	-52
	.word	4
	.word	_Label_3311
	.word	-56
	.word	4
	.word	_Label_3312
	.word	-60
	.word	4
	.word	_Label_3313
	.word	-64
	.word	4
	.word	_Label_3314
	.word	-68
	.word	4
	.word	0
_Label_3298:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_3299:
	.ascii	"Pself\0"
	.align
_Label_3300:
	.byte	'?'
	.ascii	"_temp_3297\0"
	.align
_Label_3301:
	.byte	'?'
	.ascii	"_temp_3296\0"
	.align
_Label_3302:
	.byte	'?'
	.ascii	"_temp_3294\0"
	.align
_Label_3303:
	.byte	'?'
	.ascii	"_temp_3293\0"
	.align
_Label_3304:
	.byte	'?'
	.ascii	"_temp_3292\0"
	.align
_Label_3305:
	.byte	'?'
	.ascii	"_temp_3291\0"
	.align
_Label_3306:
	.byte	'?'
	.ascii	"_temp_3290\0"
	.align
_Label_3307:
	.byte	'?'
	.ascii	"_temp_3289\0"
	.align
_Label_3308:
	.byte	'?'
	.ascii	"_temp_3286\0"
	.align
_Label_3309:
	.byte	'?'
	.ascii	"_temp_3285\0"
	.align
_Label_3310:
	.byte	'?'
	.ascii	"_temp_3280\0"
	.align
_Label_3311:
	.byte	'?'
	.ascii	"_temp_3279\0"
	.align
_Label_3312:
	.byte	'?'
	.ascii	"_temp_3278\0"
	.align
_Label_3313:
	.byte	'?'
	.ascii	"_temp_3277\0"
	.align
_Label_3314:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  METHOD PrintShort  ===============
! 
_Method_P_Kernel_ProcessControlBlock_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessControlBlock_3,r1
	push	r1
	mov	11,r1
_Label_7849:
	push	r0
	sub	r1,1,r1
	bne	_Label_7849
	mov	814,r13		! source line 814
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_3315 = _StringConst_92
	set	_StringConst_92,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_3315  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	818,r13		! source line 818
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	load	[r14+8],r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_3316  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	819,r13		! source line 819
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_3317 = _StringConst_93
	set	_StringConst_93,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_3317  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	820,r13		! source line 820
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=pid  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	821,r13		! source line 821
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_3318 = _StringConst_94
	set	_StringConst_94,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_3318  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	822,r13		! source line 822
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	823,r13		! source line 823
	mov	"\0\0IF",r10
!   if status != 1 then goto _Label_3320		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_3320
!	_Label_3319	jmp	_Label_3319
_Label_3319:
! THEN...
	mov	824,r13		! source line 824
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3321 = _StringConst_95
	set	_StringConst_95,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_3321  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	824,r13		! source line 824
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_3322
_Label_3320:
! ELSE...
	mov	825,r13		! source line 825
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	825,r13		! source line 825
	mov	"\0\0IF",r10
!   if status != 2 then goto _Label_3324		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	2,r2
	cmp	r1,r2
	bne	_Label_3324
!	_Label_3323	jmp	_Label_3323
_Label_3323:
! THEN...
	mov	826,r13		! source line 826
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3325 = _StringConst_96
	set	_StringConst_96,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_3325  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	826,r13		! source line 826
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_3326
_Label_3324:
! ELSE...
	mov	827,r13		! source line 827
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	827,r13		! source line 827
	mov	"\0\0IF",r10
!   if status != 3 then goto _Label_3328		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	3,r2
	cmp	r1,r2
	bne	_Label_3328
!	_Label_3327	jmp	_Label_3327
_Label_3327:
! THEN...
	mov	828,r13		! source line 828
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3329 = _StringConst_97
	set	_StringConst_97,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_3329  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	828,r13		! source line 828
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_3330
_Label_3328:
! ELSE...
	mov	830,r13		! source line 830
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_3331 = _StringConst_98
	set	_StringConst_98,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_3331  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	830,r13		! source line 830
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_3330:
! END IF...
_Label_3326:
! END IF...
_Label_3322:
! CALL STATEMENT...
!   _temp_3332 = _StringConst_99
	set	_StringConst_99,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_3332  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	832,r13		! source line 832
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=parentsPid  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r15+0]
!   Call the function
	mov	833,r13		! source line 833
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_3333 = _StringConst_100
	set	_StringConst_100,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_3333  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	834,r13		! source line 834
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=exitStatus  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+28],r1
	store	r1,[r15+0]
!   Call the function
	mov	835,r13		! source line 835
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	836,r13		! source line 836
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	836,r13		! source line 836
	mov	"\0\0RE",r10
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessControlBlock_3:
	.word	_sourceFileName
	.word	_Label_3334
	.word	4		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_3335
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3336
	.word	-12
	.word	4
	.word	_Label_3337
	.word	-16
	.word	4
	.word	_Label_3338
	.word	-20
	.word	4
	.word	_Label_3339
	.word	-24
	.word	4
	.word	_Label_3340
	.word	-28
	.word	4
	.word	_Label_3341
	.word	-32
	.word	4
	.word	_Label_3342
	.word	-36
	.word	4
	.word	_Label_3343
	.word	-40
	.word	4
	.word	_Label_3344
	.word	-44
	.word	4
	.word	_Label_3345
	.word	-48
	.word	4
	.word	0
_Label_3334:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"PrintShort\0"
	.align
_Label_3335:
	.ascii	"Pself\0"
	.align
_Label_3336:
	.byte	'?'
	.ascii	"_temp_3333\0"
	.align
_Label_3337:
	.byte	'?'
	.ascii	"_temp_3332\0"
	.align
_Label_3338:
	.byte	'?'
	.ascii	"_temp_3331\0"
	.align
_Label_3339:
	.byte	'?'
	.ascii	"_temp_3329\0"
	.align
_Label_3340:
	.byte	'?'
	.ascii	"_temp_3325\0"
	.align
_Label_3341:
	.byte	'?'
	.ascii	"_temp_3321\0"
	.align
_Label_3342:
	.byte	'?'
	.ascii	"_temp_3318\0"
	.align
_Label_3343:
	.byte	'?'
	.ascii	"_temp_3317\0"
	.align
_Label_3344:
	.byte	'?'
	.ascii	"_temp_3316\0"
	.align
_Label_3345:
	.byte	'?'
	.ascii	"_temp_3315\0"
	.align
! 
! ===============  CLASS ProcessManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ProcessManager:
	.word	_Label_3346
	jmp	_Method_P_Kernel_ProcessManager_1	! 4:	Init
	jmp	_Method_P_Kernel_ProcessManager_2	! 8:	Print
	jmp	_Method_P_Kernel_ProcessManager_3	! 12:	PrintShort
	jmp	_Method_P_Kernel_ProcessManager_4	! 16:	GetANewProcess
	jmp	_Method_P_Kernel_ProcessManager_8	! 20:	FreeProcess
	jmp	_Method_P_Kernel_ProcessManager_7	! 24:	FindProcess
	jmp	_Method_P_Kernel_ProcessManager_5	! 28:	TurnIntoZombie
	jmp	_Method_P_Kernel_ProcessManager_6	! 32:	WaitForZombie
	.word	0
! 
! Class descriptor:
! 
_Label_3346:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_3347
	.word	_sourceFileName
	.word	247		! line number
	.word	5840		! size of instances, in bytes
	.word	_P_Kernel_ProcessManager
	.word	_P_System_Object
	.word	0
_Label_3347:
	.ascii	"ProcessManager\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_ProcessManager_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessManager_1,r1
	push	r1
	mov	1540,r1
_Label_7850:
	push	r0
	sub	r1,1,r1
	bne	_Label_7850
	mov	847,r13		! source line 847
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_3348 = _StringConst_101
	set	_StringConst_101,r1
	store	r1,[r14+-6156]
!   Prepare Argument: offset=8  value=_temp_3348  sizeInBytes=4
	load	[r14+-6156],r1
	store	r1,[r15+0]
!   Call the function
	mov	853,r13		! source line 853
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	854,r13		! source line 854
	mov	"\0\0AS",r10
!   nextPid = 1		(4 bytes)
	mov	1,r1
	load	[r14+8],r2
	store	r1,[r2+5832]
! ASSIGNMENT STATEMENT...
	mov	855,r13		! source line 855
	mov	"\0\0AS",r10
!   processesInQueue = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+5836]
! ASSIGNMENT STATEMENT...
	mov	856,r13		! source line 856
	mov	"\0\0AS",r10
!   _temp_3349 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-6152]
!   NEW ARRAY Constructor...
!   _temp_3351 = &_temp_3350
	add	r14,-6148,r1
	store	r1,[r14+-384]
!   _temp_3351 = _temp_3351 + 4
	load	[r14+-384],r1
	add	r1,4,r1
	store	r1,[r14+-384]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_3353 = zeros  (sizeInBytes=288)
	add	r14,-376,r4
	mov	72,r3
_Label_7851:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_7851
!   _temp_3353 = _P_Kernel_ProcessControlBlock
	set	_P_Kernel_ProcessControlBlock,r1
	store	r1,[r14+-376]
	mov	20,r1
	store	r1,[r14+-380]
_Label_3355:
!   Data Move: *_temp_3351 = _temp_3353  (sizeInBytes=288)
	add	r14,-376,r5
	load	[r14+-384],r4
	mov	72,r3
_Label_7852:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_7852
!   _temp_3351 = _temp_3351 + 288
	load	[r14+-384],r1
	add	r1,288,r1
	store	r1,[r14+-384]
!   _temp_3352 = _temp_3352 + -1
	load	[r14+-380],r1
	add	r1,-1,r1
	store	r1,[r14+-380]
!   if intNotZero (_temp_3352) then goto _Label_3355
	load	[r14+-380],r1
	cmp	r1,r0
	bne	_Label_3355
!   Initialize the array size...
	mov	20,r1
	store	r1,[r14+-6148]
!   _temp_3356 = &_temp_3350
	add	r14,-6148,r1
	store	r1,[r14+-84]
!   make sure array has size 20
	load	[r14+-6152],r1
	load	[r1],r1
	set	20, r2
	cmp	r1,0
	be	_Label_7853
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_7853:
!   make sure array has size 20
	load	[r14+-84],r1
	load	[r1],r1
	set	20, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_3349 = *_temp_3356  (sizeInBytes=5764)
	load	[r14+-84],r5
	load	[r14+-6152],r4
	mov	1441,r3
_Label_7854:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_7854
! ASSIGNMENT STATEMENT...
	mov	857,r13		! source line 857
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: freeList = zeros  (sizeInBytes=12)
	load	[r14+8],r4
	add	r4,5804,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   freeList = _P_List_List
	set	_P_List_List,r1
	load	[r14+8],r2
	store	r1,[r2+5804]
! ASSIGNMENT STATEMENT...
	mov	858,r13		! source line 858
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: processManagerLock = zeros  (sizeInBytes=20)
	load	[r14+8],r4
	add	r4,5768,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   processManagerLock = _P_Kernel_Mutex
	set	_P_Kernel_Mutex,r1
	load	[r14+8],r2
	store	r1,[r2+5768]
! ASSIGNMENT STATEMENT...
	mov	859,r13		! source line 859
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: aProcessBecameFree = zeros  (sizeInBytes=16)
	load	[r14+8],r4
	add	r4,5788,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
!   aProcessBecameFree = _P_Kernel_Condition
	set	_P_Kernel_Condition,r1
	load	[r14+8],r2
	store	r1,[r2+5788]
! ASSIGNMENT STATEMENT...
	mov	860,r13		! source line 860
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: aProcessDied = zeros  (sizeInBytes=16)
	load	[r14+8],r4
	add	r4,5816,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
!   aProcessDied = _P_Kernel_Condition
	set	_P_Kernel_Condition,r1
	load	[r14+8],r2
	store	r1,[r2+5816]
! SEND STATEMENT...
	mov	861,r13		! source line 861
	mov	"\0\0SE",r10
!   _temp_3361 = &processManagerLock
	load	[r14+8],r1
	add	r1,5768,r1
	store	r1,[r14+-64]
!   Send message Init
	load	[r14+-64],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	862,r13		! source line 862
	mov	"\0\0SE",r10
!   _temp_3362 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,5788,r1
	store	r1,[r14+-60]
!   Send message Init
	load	[r14+-60],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	863,r13		! source line 863
	mov	"\0\0SE",r10
!   _temp_3363 = &aProcessDied
	load	[r14+8],r1
	add	r1,5816,r1
	store	r1,[r14+-56]
!   Send message Init
	load	[r14+-56],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! FOR STATEMENT...
	mov	864,r13		! source line 864
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_3368 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-52]
!   Calculate and save the FOR-LOOP ending value
!   _temp_3369 = 19		(4 bytes)
	mov	19,r1
	store	r1,[r14+-48]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_3368  (sizeInBytes=4)
	load	[r14+-52],r1
	store	r1,[r14+-6160]
_Label_3364:
!   Perform the FOR-LOOP termination test
!   if i > _temp_3369 then goto _Label_3367		
	load	[r14+-6160],r1
	load	[r14+-48],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3367
_Label_3365:
	mov	864,r13		! source line 864
	mov	"\0\0FB",r10
! SEND STATEMENT...
	mov	865,r13		! source line 865
	mov	"\0\0SE",r10
!   _temp_3370 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-44]
!   Move address of _temp_3370 [i ] into _temp_3371
!     make sure index expr is >= 0
	load	[r14+-6160],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-44],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	288,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-40]
!   Send message Init
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	866,r13		! source line 866
	mov	"\0\0AS",r10
!   _temp_3372 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-36]
!   Move address of _temp_3372 [i ] into _temp_3373
!     make sure index expr is >= 0
	load	[r14+-6160],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-36],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	288,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-32]
!   _temp_3374 = _temp_3373 + 20
	load	[r14+-32],r1
	add	r1,20,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_3374 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	867,r13		! source line 867
	mov	"\0\0SE",r10
!   _temp_3376 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Move address of _temp_3376 [i ] into _temp_3377
!     make sure index expr is >= 0
	load	[r14+-6160],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-20],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	288,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   _temp_3375 = _temp_3377		(4 bytes)
	load	[r14+-16],r1
	store	r1,[r14+-24]
!   _temp_3378 = &freeList
	load	[r14+8],r1
	add	r1,5804,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_3375  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_3366:
!   i = i + 1
	load	[r14+-6160],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-6160]
	jmp	_Label_3364
! END FOR
_Label_3367:
! RETURN STATEMENT...
	mov	864,r13		! source line 864
	mov	"\0\0RE",r10
	add	r15,6164,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessManager_1:
	.word	_sourceFileName
	.word	_Label_3379
	.word	4		! total size of parameters
	.word	6160		! frame size = 6160
	.word	_Label_3380
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3381
	.word	-12
	.word	4
	.word	_Label_3382
	.word	-16
	.word	4
	.word	_Label_3383
	.word	-20
	.word	4
	.word	_Label_3384
	.word	-24
	.word	4
	.word	_Label_3385
	.word	-28
	.word	4
	.word	_Label_3386
	.word	-32
	.word	4
	.word	_Label_3387
	.word	-36
	.word	4
	.word	_Label_3388
	.word	-40
	.word	4
	.word	_Label_3389
	.word	-44
	.word	4
	.word	_Label_3390
	.word	-48
	.word	4
	.word	_Label_3391
	.word	-52
	.word	4
	.word	_Label_3392
	.word	-56
	.word	4
	.word	_Label_3393
	.word	-60
	.word	4
	.word	_Label_3394
	.word	-64
	.word	4
	.word	_Label_3395
	.word	-68
	.word	4
	.word	_Label_3396
	.word	-72
	.word	4
	.word	_Label_3397
	.word	-76
	.word	4
	.word	_Label_3398
	.word	-80
	.word	4
	.word	_Label_3399
	.word	-84
	.word	4
	.word	_Label_3400
	.word	-88
	.word	4
	.word	_Label_3401
	.word	-376
	.word	288
	.word	_Label_3402
	.word	-380
	.word	4
	.word	_Label_3403
	.word	-384
	.word	4
	.word	_Label_3404
	.word	-6148
	.word	5764
	.word	_Label_3405
	.word	-6152
	.word	4
	.word	_Label_3406
	.word	-6156
	.word	4
	.word	_Label_3407
	.word	-6160
	.word	4
	.word	0
_Label_3379:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_3380:
	.ascii	"Pself\0"
	.align
_Label_3381:
	.byte	'?'
	.ascii	"_temp_3378\0"
	.align
_Label_3382:
	.byte	'?'
	.ascii	"_temp_3377\0"
	.align
_Label_3383:
	.byte	'?'
	.ascii	"_temp_3376\0"
	.align
_Label_3384:
	.byte	'?'
	.ascii	"_temp_3375\0"
	.align
_Label_3385:
	.byte	'?'
	.ascii	"_temp_3374\0"
	.align
_Label_3386:
	.byte	'?'
	.ascii	"_temp_3373\0"
	.align
_Label_3387:
	.byte	'?'
	.ascii	"_temp_3372\0"
	.align
_Label_3388:
	.byte	'?'
	.ascii	"_temp_3371\0"
	.align
_Label_3389:
	.byte	'?'
	.ascii	"_temp_3370\0"
	.align
_Label_3390:
	.byte	'?'
	.ascii	"_temp_3369\0"
	.align
_Label_3391:
	.byte	'?'
	.ascii	"_temp_3368\0"
	.align
_Label_3392:
	.byte	'?'
	.ascii	"_temp_3363\0"
	.align
_Label_3393:
	.byte	'?'
	.ascii	"_temp_3362\0"
	.align
_Label_3394:
	.byte	'?'
	.ascii	"_temp_3361\0"
	.align
_Label_3395:
	.byte	'?'
	.ascii	"_temp_3360\0"
	.align
_Label_3396:
	.byte	'?'
	.ascii	"_temp_3359\0"
	.align
_Label_3397:
	.byte	'?'
	.ascii	"_temp_3358\0"
	.align
_Label_3398:
	.byte	'?'
	.ascii	"_temp_3357\0"
	.align
_Label_3399:
	.byte	'?'
	.ascii	"_temp_3356\0"
	.align
_Label_3400:
	.byte	'?'
	.ascii	"_temp_3354\0"
	.align
_Label_3401:
	.byte	'?'
	.ascii	"_temp_3353\0"
	.align
_Label_3402:
	.byte	'?'
	.ascii	"_temp_3352\0"
	.align
_Label_3403:
	.byte	'?'
	.ascii	"_temp_3351\0"
	.align
_Label_3404:
	.byte	'?'
	.ascii	"_temp_3350\0"
	.align
_Label_3405:
	.byte	'?'
	.ascii	"_temp_3349\0"
	.align
_Label_3406:
	.byte	'?'
	.ascii	"_temp_3348\0"
	.align
_Label_3407:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_ProcessManager_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessManager_2,r1
	push	r1
	mov	14,r1
_Label_7855:
	push	r0
	sub	r1,1,r1
	bne	_Label_7855
	mov	873,r13		! source line 873
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	880,r13		! source line 880
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	880,r13		! source line 880
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-56]
! CALL STATEMENT...
!   _temp_3408 = _StringConst_102
	set	_StringConst_102,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_3408  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	881,r13		! source line 881
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	882,r13		! source line 882
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_3413 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-44]
!   Calculate and save the FOR-LOOP ending value
!   _temp_3414 = 19		(4 bytes)
	mov	19,r1
	store	r1,[r14+-40]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_3413  (sizeInBytes=4)
	load	[r14+-44],r1
	store	r1,[r14+-52]
_Label_3409:
!   Perform the FOR-LOOP termination test
!   if i > _temp_3414 then goto _Label_3412		
	load	[r14+-52],r1
	load	[r14+-40],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3412
_Label_3410:
	mov	882,r13		! source line 882
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_3415 = _StringConst_103
	set	_StringConst_103,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_3415  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	883,r13		! source line 883
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	884,r13		! source line 884
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_3416 = _StringConst_104
	set	_StringConst_104,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_3416  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	885,r13		! source line 885
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	886,r13		! source line 886
	mov	"\0\0SE",r10
!   _temp_3417 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Move address of _temp_3417 [i ] into _temp_3418
!     make sure index expr is >= 0
	load	[r14+-52],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-28],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	288,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-24]
!   Send message Print
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_3411:
!   i = i + 1
	load	[r14+-52],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-52]
	jmp	_Label_3409
! END FOR
_Label_3412:
! CALL STATEMENT...
!   _temp_3419 = _StringConst_105
	set	_StringConst_105,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_3419  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	888,r13		! source line 888
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	889,r13		! source line 889
	mov	"\0\0SE",r10
!   _temp_3420 = _function_245_PrintObjectAddr
	set	_function_245_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_3421 = &freeList
	load	[r14+8],r1
	add	r1,5804,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_3420  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Send message ApplyToEach
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! CALL STATEMENT...
!   Call the function
	mov	890,r13		! source line 890
	mov	"\0\0CA",r10
	call	_P_System_nl
! ASSIGNMENT STATEMENT...
	mov	891,r13		! source line 891
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	891,r13		! source line 891
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-56]
! RETURN STATEMENT...
	mov	891,r13		! source line 891
	mov	"\0\0RE",r10
	add	r15,60,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessManager_2:
	.word	_sourceFileName
	.word	_Label_3422
	.word	4		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_3423
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3424
	.word	-12
	.word	4
	.word	_Label_3425
	.word	-16
	.word	4
	.word	_Label_3426
	.word	-20
	.word	4
	.word	_Label_3427
	.word	-24
	.word	4
	.word	_Label_3428
	.word	-28
	.word	4
	.word	_Label_3429
	.word	-32
	.word	4
	.word	_Label_3430
	.word	-36
	.word	4
	.word	_Label_3431
	.word	-40
	.word	4
	.word	_Label_3432
	.word	-44
	.word	4
	.word	_Label_3433
	.word	-48
	.word	4
	.word	_Label_3434
	.word	-52
	.word	4
	.word	_Label_3435
	.word	-56
	.word	4
	.word	0
_Label_3422:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_3423:
	.ascii	"Pself\0"
	.align
_Label_3424:
	.byte	'?'
	.ascii	"_temp_3421\0"
	.align
_Label_3425:
	.byte	'?'
	.ascii	"_temp_3420\0"
	.align
_Label_3426:
	.byte	'?'
	.ascii	"_temp_3419\0"
	.align
_Label_3427:
	.byte	'?'
	.ascii	"_temp_3418\0"
	.align
_Label_3428:
	.byte	'?'
	.ascii	"_temp_3417\0"
	.align
_Label_3429:
	.byte	'?'
	.ascii	"_temp_3416\0"
	.align
_Label_3430:
	.byte	'?'
	.ascii	"_temp_3415\0"
	.align
_Label_3431:
	.byte	'?'
	.ascii	"_temp_3414\0"
	.align
_Label_3432:
	.byte	'?'
	.ascii	"_temp_3413\0"
	.align
_Label_3433:
	.byte	'?'
	.ascii	"_temp_3408\0"
	.align
_Label_3434:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_3435:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  METHOD PrintShort  ===============
! 
_Method_P_Kernel_ProcessManager_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessManager_3,r1
	push	r1
	mov	13,r1
_Label_7856:
	push	r0
	sub	r1,1,r1
	bne	_Label_7856
	mov	896,r13		! source line 896
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	903,r13		! source line 903
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	903,r13		! source line 903
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-52]
! CALL STATEMENT...
!   _temp_3436 = _StringConst_106
	set	_StringConst_106,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_3436  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	904,r13		! source line 904
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	905,r13		! source line 905
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_3441 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-40]
!   Calculate and save the FOR-LOOP ending value
!   _temp_3442 = 19		(4 bytes)
	mov	19,r1
	store	r1,[r14+-36]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_3441  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+-48]
_Label_3437:
!   Perform the FOR-LOOP termination test
!   if i > _temp_3442 then goto _Label_3440		
	load	[r14+-48],r1
	load	[r14+-36],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3440
_Label_3438:
	mov	905,r13		! source line 905
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_3443 = _StringConst_107
	set	_StringConst_107,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_3443  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	906,r13		! source line 906
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	907,r13		! source line 907
	mov	"\0\0CE",r10
	call	printInt
! SEND STATEMENT...
	mov	908,r13		! source line 908
	mov	"\0\0SE",r10
!   _temp_3444 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Move address of _temp_3444 [i ] into _temp_3445
!     make sure index expr is >= 0
	load	[r14+-48],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-28],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	288,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-24]
!   Send message PrintShort
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_3439:
!   i = i + 1
	load	[r14+-48],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
	jmp	_Label_3437
! END FOR
_Label_3440:
! CALL STATEMENT...
!   _temp_3446 = _StringConst_108
	set	_StringConst_108,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_3446  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	910,r13		! source line 910
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	911,r13		! source line 911
	mov	"\0\0SE",r10
!   _temp_3447 = _function_245_PrintObjectAddr
	set	_function_245_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_3448 = &freeList
	load	[r14+8],r1
	add	r1,5804,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_3447  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Send message ApplyToEach
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! CALL STATEMENT...
!   Call the function
	mov	912,r13		! source line 912
	mov	"\0\0CA",r10
	call	_P_System_nl
! ASSIGNMENT STATEMENT...
	mov	913,r13		! source line 913
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	913,r13		! source line 913
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-52]
! RETURN STATEMENT...
	mov	913,r13		! source line 913
	mov	"\0\0RE",r10
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessManager_3:
	.word	_sourceFileName
	.word	_Label_3449
	.word	4		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_3450
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3451
	.word	-12
	.word	4
	.word	_Label_3452
	.word	-16
	.word	4
	.word	_Label_3453
	.word	-20
	.word	4
	.word	_Label_3454
	.word	-24
	.word	4
	.word	_Label_3455
	.word	-28
	.word	4
	.word	_Label_3456
	.word	-32
	.word	4
	.word	_Label_3457
	.word	-36
	.word	4
	.word	_Label_3458
	.word	-40
	.word	4
	.word	_Label_3459
	.word	-44
	.word	4
	.word	_Label_3460
	.word	-48
	.word	4
	.word	_Label_3461
	.word	-52
	.word	4
	.word	0
_Label_3449:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"PrintShort\0"
	.align
_Label_3450:
	.ascii	"Pself\0"
	.align
_Label_3451:
	.byte	'?'
	.ascii	"_temp_3448\0"
	.align
_Label_3452:
	.byte	'?'
	.ascii	"_temp_3447\0"
	.align
_Label_3453:
	.byte	'?'
	.ascii	"_temp_3446\0"
	.align
_Label_3454:
	.byte	'?'
	.ascii	"_temp_3445\0"
	.align
_Label_3455:
	.byte	'?'
	.ascii	"_temp_3444\0"
	.align
_Label_3456:
	.byte	'?'
	.ascii	"_temp_3443\0"
	.align
_Label_3457:
	.byte	'?'
	.ascii	"_temp_3442\0"
	.align
_Label_3458:
	.byte	'?'
	.ascii	"_temp_3441\0"
	.align
_Label_3459:
	.byte	'?'
	.ascii	"_temp_3436\0"
	.align
_Label_3460:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_3461:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  METHOD GetANewProcess  ===============
! 
_Method_P_Kernel_ProcessManager_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessManager_4,r1
	push	r1
	mov	13,r1
_Label_7857:
	push	r0
	sub	r1,1,r1
	bne	_Label_7857
	mov	918,r13		! source line 918
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	924,r13		! source line 924
	mov	"\0\0SE",r10
!   _temp_3462 = &processManagerLock
	load	[r14+8],r1
	add	r1,5768,r1
	store	r1,[r14+-48]
!   Send message Lock
	load	[r14+-48],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! IF STATEMENT...
	mov	925,r13		! source line 925
	mov	"\0\0IF",r10
	mov	925,r13		! source line 925
	mov	"\0\0SE",r10
!   _temp_3467 = &freeList
	load	[r14+8],r1
	add	r1,5804,r1
	store	r1,[r14+-44]
!   Send message IsEmpty
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_3466  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   _temp_3468 = _temp_3466 XOR 1		(bool)
	loadb	[r14+-10],r1
	mov	1,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-9]
!   if _temp_3468 then goto _Label_3465 else goto _Label_3463
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_3463
	jmp	_Label_3465
_Label_3465:
!   if processesInQueue <= 0 then goto _Label_3464		(int)
	load	[r14+8],r1
	load	[r1+5836],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_3464
!	_Label_3463	jmp	_Label_3463
_Label_3463:
! THEN...
	mov	926,r13		! source line 926
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	926,r13		! source line 926
	mov	"\0\0AS",r10
!   processesInQueue = processesInQueue + 1		(int)
	load	[r14+8],r1
	load	[r1+5836],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+5836]
! SEND STATEMENT...
	mov	927,r13		! source line 927
	mov	"\0\0SE",r10
!   _temp_3469 = &processManagerLock
	load	[r14+8],r1
	add	r1,5768,r1
	store	r1,[r14+-40]
!   _temp_3470 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,5788,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=12  value=_temp_3469  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+4]
!   Send message Wait
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	928,r13		! source line 928
	mov	"\0\0AS",r10
!   processesInQueue = processesInQueue - 1		(int)
	load	[r14+8],r1
	load	[r1+5836],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+5836]
! END IF...
_Label_3464:
! ASSIGNMENT STATEMENT...
	mov	930,r13		! source line 930
	mov	"\0\0AS",r10
	mov	930,r13		! source line 930
	mov	"\0\0SE",r10
!   _temp_3471 = &freeList
	load	[r14+8],r1
	add	r1,5804,r1
	store	r1,[r14+-32]
!   Send message Remove
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=pcb  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-52]
! ASSIGNMENT STATEMENT...
	mov	931,r13		! source line 931
	mov	"\0\0AS",r10
!   if intIsZero (pcb) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3472 = pcb + 20
	load	[r14+-52],r1
	add	r1,20,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_3472 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-28],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	932,r13		! source line 932
	mov	"\0\0AS",r10
!   if intIsZero (pcb) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3473 = pcb + 12
	load	[r14+-52],r1
	add	r1,12,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_3473 = nextPid  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r1+5832],r1
	load	[r14+-24],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	933,r13		! source line 933
	mov	"\0\0AS",r10
!   nextPid = nextPid + 1		(int)
	load	[r14+8],r1
	load	[r1+5832],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+5832]
! ASSIGNMENT STATEMENT...
	mov	934,r13		! source line 934
	mov	"\0\0AS",r10
!   if intIsZero (pcb) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3474 = pcb + 16
	load	[r14+-52],r1
	add	r1,16,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_3474 = -1  (sizeInBytes=4)
	mov	-1,r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	935,r13		! source line 935
	mov	"\0\0SE",r10
!   _temp_3475 = &processManagerLock
	load	[r14+8],r1
	add	r1,5768,r1
	store	r1,[r14+-16]
!   Send message Unlock
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	936,r13		! source line 936
	mov	"\0\0RE",r10
!   ReturnResult: pcb  (sizeInBytes=4)
	load	[r14+-52],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessManager_4:
	.word	_sourceFileName
	.word	_Label_3476
	.word	4		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_3477
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3478
	.word	-16
	.word	4
	.word	_Label_3479
	.word	-20
	.word	4
	.word	_Label_3480
	.word	-24
	.word	4
	.word	_Label_3481
	.word	-28
	.word	4
	.word	_Label_3482
	.word	-32
	.word	4
	.word	_Label_3483
	.word	-36
	.word	4
	.word	_Label_3484
	.word	-40
	.word	4
	.word	_Label_3485
	.word	-9
	.word	1
	.word	_Label_3486
	.word	-44
	.word	4
	.word	_Label_3487
	.word	-10
	.word	1
	.word	_Label_3488
	.word	-48
	.word	4
	.word	_Label_3489
	.word	-52
	.word	4
	.word	0
_Label_3476:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"GetANewProcess\0"
	.align
_Label_3477:
	.ascii	"Pself\0"
	.align
_Label_3478:
	.byte	'?'
	.ascii	"_temp_3475\0"
	.align
_Label_3479:
	.byte	'?'
	.ascii	"_temp_3474\0"
	.align
_Label_3480:
	.byte	'?'
	.ascii	"_temp_3473\0"
	.align
_Label_3481:
	.byte	'?'
	.ascii	"_temp_3472\0"
	.align
_Label_3482:
	.byte	'?'
	.ascii	"_temp_3471\0"
	.align
_Label_3483:
	.byte	'?'
	.ascii	"_temp_3470\0"
	.align
_Label_3484:
	.byte	'?'
	.ascii	"_temp_3469\0"
	.align
_Label_3485:
	.byte	'C'
	.ascii	"_temp_3468\0"
	.align
_Label_3486:
	.byte	'?'
	.ascii	"_temp_3467\0"
	.align
_Label_3487:
	.byte	'C'
	.ascii	"_temp_3466\0"
	.align
_Label_3488:
	.byte	'?'
	.ascii	"_temp_3462\0"
	.align
_Label_3489:
	.byte	'P'
	.ascii	"pcb\0"
	.align
! 
! ===============  METHOD TurnIntoZombie  ===============
! 
_Method_P_Kernel_ProcessManager_5:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessManager_5,r1
	push	r1
	mov	44,r1
_Label_7858:
	push	r0
	sub	r1,1,r1
	bne	_Label_7858
	mov	942,r13		! source line 942
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! myPid
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3490 = p + 12
	load	[r14+12],r1
	add	r1,12,r1
	store	r1,[r14+-164]
!   Data Move: myPid = *_temp_3490  (sizeInBytes=4)
	load	[r14+-164],r1
	load	[r1],r1
	store	r1,[r14+-172]
! SEND STATEMENT...
	mov	946,r13		! source line 946
	mov	"\0\0SE",r10
!   _temp_3491 = &processManagerLock
	load	[r14+8],r1
	add	r1,5768,r1
	store	r1,[r14+-160]
!   Send message Lock
	load	[r14+-160],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! FOR STATEMENT...
	mov	948,r13		! source line 948
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_3496 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-156]
!   Calculate and save the FOR-LOOP ending value
!   _temp_3497 = 19		(4 bytes)
	mov	19,r1
	store	r1,[r14+-152]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_3496  (sizeInBytes=4)
	load	[r14+-156],r1
	store	r1,[r14+-168]
_Label_3492:
!   Perform the FOR-LOOP termination test
!   if i > _temp_3497 then goto _Label_3495		
	load	[r14+-168],r1
	load	[r14+-152],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3495
_Label_3493:
	mov	948,r13		! source line 948
	mov	"\0\0FB",r10
! IF STATEMENT...
	mov	949,r13		! source line 949
	mov	"\0\0IF",r10
!   _temp_3502 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-144]
!   Move address of _temp_3502 [i ] into _temp_3503
!     make sure index expr is >= 0
	load	[r14+-168],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-144],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	288,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-140]
!   _temp_3504 = _temp_3503 + 16
	load	[r14+-140],r1
	add	r1,16,r1
	store	r1,[r14+-136]
!   Data Move: _temp_3501 = *_temp_3504  (sizeInBytes=4)
	load	[r14+-136],r1
	load	[r1],r1
	store	r1,[r14+-148]
!   if _temp_3501 != myPid then goto _Label_3499		(int)
	load	[r14+-148],r1
	load	[r14+-172],r2
	cmp	r1,r2
	bne	_Label_3499
!	_Label_3500	jmp	_Label_3500
_Label_3500:
!   _temp_3506 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-128]
!   Move address of _temp_3506 [i ] into _temp_3507
!     make sure index expr is >= 0
	load	[r14+-168],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-128],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	288,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-124]
!   _temp_3508 = _temp_3507 + 20
	load	[r14+-124],r1
	add	r1,20,r1
	store	r1,[r14+-120]
!   Data Move: _temp_3505 = *_temp_3508  (sizeInBytes=4)
	load	[r14+-120],r1
	load	[r1],r1
	store	r1,[r14+-132]
!   if _temp_3505 != 2 then goto _Label_3499		(int)
	load	[r14+-132],r1
	mov	2,r2
	cmp	r1,r2
	bne	_Label_3499
!	_Label_3498	jmp	_Label_3498
_Label_3498:
! THEN...
	mov	950,r13		! source line 950
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	950,r13		! source line 950
	mov	"\0\0AS",r10
!   _temp_3509 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-116]
!   Move address of _temp_3509 [i ] into _temp_3510
!     make sure index expr is >= 0
	load	[r14+-168],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-116],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	288,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-112]
!   _temp_3511 = _temp_3510 + 20
	load	[r14+-112],r1
	add	r1,20,r1
	store	r1,[r14+-108]
!   Data Move: *_temp_3511 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-108],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	951,r13		! source line 951
	mov	"\0\0SE",r10
!   _temp_3513 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-100]
!   Move address of _temp_3513 [i ] into _temp_3514
!     make sure index expr is >= 0
	load	[r14+-168],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-100],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	288,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-96]
!   _temp_3512 = _temp_3514		(4 bytes)
	load	[r14+-96],r1
	store	r1,[r14+-104]
!   _temp_3515 = &freeList
	load	[r14+8],r1
	add	r1,5804,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=12  value=_temp_3512  sizeInBytes=4
	load	[r14+-104],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-92],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	952,r13		! source line 952
	mov	"\0\0SE",r10
!   _temp_3516 = &processManagerLock
	load	[r14+8],r1
	add	r1,5768,r1
	store	r1,[r14+-88]
!   _temp_3517 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,5788,r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=12  value=_temp_3516  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+4]
!   Send message Signal
	load	[r14+-84],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! END IF...
_Label_3499:
! IF STATEMENT...
	mov	955,r13		! source line 955
	mov	"\0\0IF",r10
!   _temp_3521 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-76]
!   Move address of _temp_3521 [i ] into _temp_3522
!     make sure index expr is >= 0
	load	[r14+-168],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-76],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	288,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-72]
!   _temp_3523 = _temp_3522 + 12
	load	[r14+-72],r1
	add	r1,12,r1
	store	r1,[r14+-68]
!   Data Move: _temp_3520 = *_temp_3523  (sizeInBytes=4)
	load	[r14+-68],r1
	load	[r1],r1
	store	r1,[r14+-80]
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3525 = p + 16
	load	[r14+12],r1
	add	r1,16,r1
	store	r1,[r14+-60]
!   Data Move: _temp_3524 = *_temp_3525  (sizeInBytes=4)
	load	[r14+-60],r1
	load	[r1],r1
	store	r1,[r14+-64]
!   if _temp_3520 != _temp_3524 then goto _Label_3519		(int)
	load	[r14+-80],r1
	load	[r14+-64],r2
	cmp	r1,r2
	bne	_Label_3519
!	_Label_3518	jmp	_Label_3518
_Label_3518:
! THEN...
	mov	956,r13		! source line 956
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	956,r13		! source line 956
	mov	"\0\0AS",r10
!   _temp_3526 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-56]
!   Move address of _temp_3526 [i ] into _temp_3527
!     make sure index expr is >= 0
	load	[r14+-168],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-56],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	288,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-52]
!   myParent = _temp_3527		(4 bytes)
	load	[r14+-52],r1
	store	r1,[r14+-176]
! END IF...
_Label_3519:
!   Increment the FOR-LOOP index variable and jump back
_Label_3494:
!   i = i + 1
	load	[r14+-168],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-168]
	jmp	_Label_3492
! END FOR
_Label_3495:
! IF STATEMENT...
	mov	960,r13		! source line 960
	mov	"\0\0IF",r10
!   if intIsZero (myParent) then goto _Label_3529
	load	[r14+-176],r1
	cmp	r1,r0
	be	_Label_3529
!	_Label_3530	jmp	_Label_3530
_Label_3530:
!   if intIsZero (myParent) then goto _runtimeErrorNullPointer
	load	[r14+-176],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3532 = myParent + 20
	load	[r14+-176],r1
	add	r1,20,r1
	store	r1,[r14+-44]
!   Data Move: _temp_3531 = *_temp_3532  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r1],r1
	store	r1,[r14+-48]
!   if _temp_3531 != 1 then goto _Label_3529		(int)
	load	[r14+-48],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_3529
!	_Label_3528	jmp	_Label_3528
_Label_3528:
! THEN...
	mov	961,r13		! source line 961
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	961,r13		! source line 961
	mov	"\0\0AS",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3533 = p + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-40]
!   Data Move: *_temp_3533 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-40],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	962,r13		! source line 962
	mov	"\0\0SE",r10
!   _temp_3534 = &processManagerLock
	load	[r14+8],r1
	add	r1,5768,r1
	store	r1,[r14+-36]
!   _temp_3535 = &aProcessDied
	load	[r14+8],r1
	add	r1,5816,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_3534  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Send message Broadcast
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
	jmp	_Label_3536
_Label_3529:
! ELSE...
	mov	964,r13		! source line 964
	mov	"\0\0EL",r10
! ASSIGNMENT STATEMENT...
	mov	964,r13		! source line 964
	mov	"\0\0AS",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3537 = p + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_3537 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	965,r13		! source line 965
	mov	"\0\0SE",r10
!   _temp_3538 = &freeList
	load	[r14+8],r1
	add	r1,5804,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	966,r13		! source line 966
	mov	"\0\0SE",r10
!   _temp_3539 = &processManagerLock
	load	[r14+8],r1
	add	r1,5768,r1
	store	r1,[r14+-20]
!   _temp_3540 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,5788,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_3539  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Send message Signal
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! END IF...
_Label_3536:
! SEND STATEMENT...
	mov	969,r13		! source line 969
	mov	"\0\0SE",r10
!   _temp_3541 = &processManagerLock
	load	[r14+8],r1
	add	r1,5768,r1
	store	r1,[r14+-12]
!   Send message Unlock
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	969,r13		! source line 969
	mov	"\0\0RE",r10
	add	r15,180,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessManager_5:
	.word	_sourceFileName
	.word	_Label_3542
	.word	8		! total size of parameters
	.word	176		! frame size = 176
	.word	_Label_3543
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3544
	.word	12
	.word	4
	.word	_Label_3545
	.word	-12
	.word	4
	.word	_Label_3546
	.word	-16
	.word	4
	.word	_Label_3547
	.word	-20
	.word	4
	.word	_Label_3548
	.word	-24
	.word	4
	.word	_Label_3549
	.word	-28
	.word	4
	.word	_Label_3550
	.word	-32
	.word	4
	.word	_Label_3551
	.word	-36
	.word	4
	.word	_Label_3552
	.word	-40
	.word	4
	.word	_Label_3553
	.word	-44
	.word	4
	.word	_Label_3554
	.word	-48
	.word	4
	.word	_Label_3555
	.word	-52
	.word	4
	.word	_Label_3556
	.word	-56
	.word	4
	.word	_Label_3557
	.word	-60
	.word	4
	.word	_Label_3558
	.word	-64
	.word	4
	.word	_Label_3559
	.word	-68
	.word	4
	.word	_Label_3560
	.word	-72
	.word	4
	.word	_Label_3561
	.word	-76
	.word	4
	.word	_Label_3562
	.word	-80
	.word	4
	.word	_Label_3563
	.word	-84
	.word	4
	.word	_Label_3564
	.word	-88
	.word	4
	.word	_Label_3565
	.word	-92
	.word	4
	.word	_Label_3566
	.word	-96
	.word	4
	.word	_Label_3567
	.word	-100
	.word	4
	.word	_Label_3568
	.word	-104
	.word	4
	.word	_Label_3569
	.word	-108
	.word	4
	.word	_Label_3570
	.word	-112
	.word	4
	.word	_Label_3571
	.word	-116
	.word	4
	.word	_Label_3572
	.word	-120
	.word	4
	.word	_Label_3573
	.word	-124
	.word	4
	.word	_Label_3574
	.word	-128
	.word	4
	.word	_Label_3575
	.word	-132
	.word	4
	.word	_Label_3576
	.word	-136
	.word	4
	.word	_Label_3577
	.word	-140
	.word	4
	.word	_Label_3578
	.word	-144
	.word	4
	.word	_Label_3579
	.word	-148
	.word	4
	.word	_Label_3580
	.word	-152
	.word	4
	.word	_Label_3581
	.word	-156
	.word	4
	.word	_Label_3582
	.word	-160
	.word	4
	.word	_Label_3583
	.word	-164
	.word	4
	.word	_Label_3584
	.word	-168
	.word	4
	.word	_Label_3585
	.word	-172
	.word	4
	.word	_Label_3586
	.word	-176
	.word	4
	.word	0
_Label_3542:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"TurnIntoZombie\0"
	.align
_Label_3543:
	.ascii	"Pself\0"
	.align
_Label_3544:
	.byte	'P'
	.ascii	"p\0"
	.align
_Label_3545:
	.byte	'?'
	.ascii	"_temp_3541\0"
	.align
_Label_3546:
	.byte	'?'
	.ascii	"_temp_3540\0"
	.align
_Label_3547:
	.byte	'?'
	.ascii	"_temp_3539\0"
	.align
_Label_3548:
	.byte	'?'
	.ascii	"_temp_3538\0"
	.align
_Label_3549:
	.byte	'?'
	.ascii	"_temp_3537\0"
	.align
_Label_3550:
	.byte	'?'
	.ascii	"_temp_3535\0"
	.align
_Label_3551:
	.byte	'?'
	.ascii	"_temp_3534\0"
	.align
_Label_3552:
	.byte	'?'
	.ascii	"_temp_3533\0"
	.align
_Label_3553:
	.byte	'?'
	.ascii	"_temp_3532\0"
	.align
_Label_3554:
	.byte	'?'
	.ascii	"_temp_3531\0"
	.align
_Label_3555:
	.byte	'?'
	.ascii	"_temp_3527\0"
	.align
_Label_3556:
	.byte	'?'
	.ascii	"_temp_3526\0"
	.align
_Label_3557:
	.byte	'?'
	.ascii	"_temp_3525\0"
	.align
_Label_3558:
	.byte	'?'
	.ascii	"_temp_3524\0"
	.align
_Label_3559:
	.byte	'?'
	.ascii	"_temp_3523\0"
	.align
_Label_3560:
	.byte	'?'
	.ascii	"_temp_3522\0"
	.align
_Label_3561:
	.byte	'?'
	.ascii	"_temp_3521\0"
	.align
_Label_3562:
	.byte	'?'
	.ascii	"_temp_3520\0"
	.align
_Label_3563:
	.byte	'?'
	.ascii	"_temp_3517\0"
	.align
_Label_3564:
	.byte	'?'
	.ascii	"_temp_3516\0"
	.align
_Label_3565:
	.byte	'?'
	.ascii	"_temp_3515\0"
	.align
_Label_3566:
	.byte	'?'
	.ascii	"_temp_3514\0"
	.align
_Label_3567:
	.byte	'?'
	.ascii	"_temp_3513\0"
	.align
_Label_3568:
	.byte	'?'
	.ascii	"_temp_3512\0"
	.align
_Label_3569:
	.byte	'?'
	.ascii	"_temp_3511\0"
	.align
_Label_3570:
	.byte	'?'
	.ascii	"_temp_3510\0"
	.align
_Label_3571:
	.byte	'?'
	.ascii	"_temp_3509\0"
	.align
_Label_3572:
	.byte	'?'
	.ascii	"_temp_3508\0"
	.align
_Label_3573:
	.byte	'?'
	.ascii	"_temp_3507\0"
	.align
_Label_3574:
	.byte	'?'
	.ascii	"_temp_3506\0"
	.align
_Label_3575:
	.byte	'?'
	.ascii	"_temp_3505\0"
	.align
_Label_3576:
	.byte	'?'
	.ascii	"_temp_3504\0"
	.align
_Label_3577:
	.byte	'?'
	.ascii	"_temp_3503\0"
	.align
_Label_3578:
	.byte	'?'
	.ascii	"_temp_3502\0"
	.align
_Label_3579:
	.byte	'?'
	.ascii	"_temp_3501\0"
	.align
_Label_3580:
	.byte	'?'
	.ascii	"_temp_3497\0"
	.align
_Label_3581:
	.byte	'?'
	.ascii	"_temp_3496\0"
	.align
_Label_3582:
	.byte	'?'
	.ascii	"_temp_3491\0"
	.align
_Label_3583:
	.byte	'?'
	.ascii	"_temp_3490\0"
	.align
_Label_3584:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_3585:
	.byte	'I'
	.ascii	"myPid\0"
	.align
_Label_3586:
	.byte	'P'
	.ascii	"myParent\0"
	.align
! 
! ===============  METHOD WaitForZombie  ===============
! 
_Method_P_Kernel_ProcessManager_6:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessManager_6,r1
	push	r1
	mov	14,r1
_Label_7859:
	push	r0
	sub	r1,1,r1
	bne	_Label_7859
	mov	975,r13		! source line 975
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	977,r13		! source line 977
	mov	"\0\0SE",r10
!   _temp_3587 = &processManagerLock
	load	[r14+8],r1
	add	r1,5768,r1
	store	r1,[r14+-52]
!   Send message Lock
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! WHILE STATEMENT...
	mov	978,r13		! source line 978
	mov	"\0\0WH",r10
_Label_3588:
!   if intIsZero (proc) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3592 = proc + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-44]
!   Data Move: _temp_3591 = *_temp_3592  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r1],r1
	store	r1,[r14+-48]
!   if _temp_3591 == 2 then goto _Label_3590		(int)
	load	[r14+-48],r1
	mov	2,r2
	cmp	r1,r2
	be	_Label_3590
!	_Label_3589	jmp	_Label_3589
_Label_3589:
	mov	978,r13		! source line 978
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	979,r13		! source line 979
	mov	"\0\0SE",r10
!   _temp_3593 = &processManagerLock
	load	[r14+8],r1
	add	r1,5768,r1
	store	r1,[r14+-40]
!   _temp_3594 = &aProcessDied
	load	[r14+8],r1
	add	r1,5816,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=12  value=_temp_3593  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+4]
!   Send message Wait
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END WHILE...
	jmp	_Label_3588
_Label_3590:
! ASSIGNMENT STATEMENT...
	mov	981,r13		! source line 981
	mov	"\0\0AS",r10
!   if intIsZero (proc) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3595 = proc + 28
	load	[r14+12],r1
	add	r1,28,r1
	store	r1,[r14+-32]
!   Data Move: retStatus = *_temp_3595  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-56]
! ASSIGNMENT STATEMENT...
	mov	983,r13		! source line 983
	mov	"\0\0AS",r10
!   if intIsZero (proc) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3596 = proc + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_3596 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	984,r13		! source line 984
	mov	"\0\0SE",r10
!   _temp_3597 = &freeList
	load	[r14+8],r1
	add	r1,5804,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=proc  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	985,r13		! source line 985
	mov	"\0\0SE",r10
!   _temp_3598 = &processManagerLock
	load	[r14+8],r1
	add	r1,5768,r1
	store	r1,[r14+-20]
!   _temp_3599 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,5788,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_3598  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Send message Signal
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	986,r13		! source line 986
	mov	"\0\0SE",r10
!   _temp_3600 = &processManagerLock
	load	[r14+8],r1
	add	r1,5768,r1
	store	r1,[r14+-12]
!   Send message Unlock
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	988,r13		! source line 988
	mov	"\0\0RE",r10
!   ReturnResult: retStatus  (sizeInBytes=4)
	load	[r14+-56],r1
	store	r1,[r14+8]
	add	r15,60,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessManager_6:
	.word	_sourceFileName
	.word	_Label_3601
	.word	8		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_3602
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3603
	.word	12
	.word	4
	.word	_Label_3604
	.word	-12
	.word	4
	.word	_Label_3605
	.word	-16
	.word	4
	.word	_Label_3606
	.word	-20
	.word	4
	.word	_Label_3607
	.word	-24
	.word	4
	.word	_Label_3608
	.word	-28
	.word	4
	.word	_Label_3609
	.word	-32
	.word	4
	.word	_Label_3610
	.word	-36
	.word	4
	.word	_Label_3611
	.word	-40
	.word	4
	.word	_Label_3612
	.word	-44
	.word	4
	.word	_Label_3613
	.word	-48
	.word	4
	.word	_Label_3614
	.word	-52
	.word	4
	.word	_Label_3615
	.word	-56
	.word	4
	.word	0
_Label_3601:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"WaitForZombie\0"
	.align
_Label_3602:
	.ascii	"Pself\0"
	.align
_Label_3603:
	.byte	'P'
	.ascii	"proc\0"
	.align
_Label_3604:
	.byte	'?'
	.ascii	"_temp_3600\0"
	.align
_Label_3605:
	.byte	'?'
	.ascii	"_temp_3599\0"
	.align
_Label_3606:
	.byte	'?'
	.ascii	"_temp_3598\0"
	.align
_Label_3607:
	.byte	'?'
	.ascii	"_temp_3597\0"
	.align
_Label_3608:
	.byte	'?'
	.ascii	"_temp_3596\0"
	.align
_Label_3609:
	.byte	'?'
	.ascii	"_temp_3595\0"
	.align
_Label_3610:
	.byte	'?'
	.ascii	"_temp_3594\0"
	.align
_Label_3611:
	.byte	'?'
	.ascii	"_temp_3593\0"
	.align
_Label_3612:
	.byte	'?'
	.ascii	"_temp_3592\0"
	.align
_Label_3613:
	.byte	'?'
	.ascii	"_temp_3591\0"
	.align
_Label_3614:
	.byte	'?'
	.ascii	"_temp_3587\0"
	.align
_Label_3615:
	.byte	'I'
	.ascii	"retStatus\0"
	.align
! 
! ===============  METHOD FindProcess  ===============
! 
_Method_P_Kernel_ProcessManager_7:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessManager_7,r1
	push	r1
	mov	10,r1
_Label_7860:
	push	r0
	sub	r1,1,r1
	bne	_Label_7860
	mov	993,r13		! source line 993
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! FOR STATEMENT...
	mov	996,r13		! source line 996
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_3620 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-40]
!   Calculate and save the FOR-LOOP ending value
!   _temp_3621 = 19		(4 bytes)
	mov	19,r1
	store	r1,[r14+-36]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_3620  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+-48]
_Label_3616:
!   Perform the FOR-LOOP termination test
!   if i > _temp_3621 then goto _Label_3619		
	load	[r14+-48],r1
	load	[r14+-36],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3619
_Label_3617:
	mov	996,r13		! source line 996
	mov	"\0\0FB",r10
! IF STATEMENT...
	mov	997,r13		! source line 997
	mov	"\0\0IF",r10
!   _temp_3625 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Move address of _temp_3625 [i ] into _temp_3626
!     make sure index expr is >= 0
	load	[r14+-48],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-28],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	288,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-24]
!   _temp_3627 = _temp_3626 + 12
	load	[r14+-24],r1
	add	r1,12,r1
	store	r1,[r14+-20]
!   Data Move: _temp_3624 = *_temp_3627  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   if _temp_3624 != pid then goto _Label_3623		(int)
	load	[r14+-32],r1
	load	[r14+12],r2
	cmp	r1,r2
	bne	_Label_3623
!	_Label_3622	jmp	_Label_3622
_Label_3622:
! THEN...
	mov	998,r13		! source line 998
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	998,r13		! source line 998
	mov	"\0\0AS",r10
!   _temp_3628 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-16]
!   Move address of _temp_3628 [i ] into _temp_3629
!     make sure index expr is >= 0
	load	[r14+-48],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	288,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   retPcb = _temp_3629		(4 bytes)
	load	[r14+-12],r1
	store	r1,[r14+-44]
! END IF...
_Label_3623:
!   Increment the FOR-LOOP index variable and jump back
_Label_3618:
!   i = i + 1
	load	[r14+-48],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
	jmp	_Label_3616
! END FOR
_Label_3619:
! RETURN STATEMENT...
	mov	1001,r13		! source line 1001
	mov	"\0\0RE",r10
!   ReturnResult: retPcb  (sizeInBytes=4)
	load	[r14+-44],r1
	store	r1,[r14+8]
	add	r15,44,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessManager_7:
	.word	_sourceFileName
	.word	_Label_3630
	.word	8		! total size of parameters
	.word	40		! frame size = 40
	.word	_Label_3631
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3632
	.word	12
	.word	4
	.word	_Label_3633
	.word	-12
	.word	4
	.word	_Label_3634
	.word	-16
	.word	4
	.word	_Label_3635
	.word	-20
	.word	4
	.word	_Label_3636
	.word	-24
	.word	4
	.word	_Label_3637
	.word	-28
	.word	4
	.word	_Label_3638
	.word	-32
	.word	4
	.word	_Label_3639
	.word	-36
	.word	4
	.word	_Label_3640
	.word	-40
	.word	4
	.word	_Label_3641
	.word	-44
	.word	4
	.word	_Label_3642
	.word	-48
	.word	4
	.word	0
_Label_3630:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"FindProcess\0"
	.align
_Label_3631:
	.ascii	"Pself\0"
	.align
_Label_3632:
	.byte	'I'
	.ascii	"pid\0"
	.align
_Label_3633:
	.byte	'?'
	.ascii	"_temp_3629\0"
	.align
_Label_3634:
	.byte	'?'
	.ascii	"_temp_3628\0"
	.align
_Label_3635:
	.byte	'?'
	.ascii	"_temp_3627\0"
	.align
_Label_3636:
	.byte	'?'
	.ascii	"_temp_3626\0"
	.align
_Label_3637:
	.byte	'?'
	.ascii	"_temp_3625\0"
	.align
_Label_3638:
	.byte	'?'
	.ascii	"_temp_3624\0"
	.align
_Label_3639:
	.byte	'?'
	.ascii	"_temp_3621\0"
	.align
_Label_3640:
	.byte	'?'
	.ascii	"_temp_3620\0"
	.align
_Label_3641:
	.byte	'P'
	.ascii	"retPcb\0"
	.align
_Label_3642:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  METHOD FreeProcess  ===============
! 
_Method_P_Kernel_ProcessManager_8:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessManager_8,r1
	push	r1
	mov	9,r1
_Label_7861:
	push	r0
	sub	r1,1,r1
	bne	_Label_7861
	mov	1006,r13		! source line 1006
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_3643 = _StringConst_109
	set	_StringConst_109,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_3643  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1007,r13		! source line 1007
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! SEND STATEMENT...
	mov	1012,r13		! source line 1012
	mov	"\0\0SE",r10
!   _temp_3644 = &processManagerLock
	load	[r14+8],r1
	add	r1,5768,r1
	store	r1,[r14+-32]
!   Send message Lock
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1013,r13		! source line 1013
	mov	"\0\0AS",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3645 = p + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_3645 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1014,r13		! source line 1014
	mov	"\0\0SE",r10
!   _temp_3646 = &freeList
	load	[r14+8],r1
	add	r1,5804,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	1015,r13		! source line 1015
	mov	"\0\0SE",r10
!   _temp_3647 = &processManagerLock
	load	[r14+8],r1
	add	r1,5768,r1
	store	r1,[r14+-20]
!   _temp_3648 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,5788,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_3647  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Send message Signal
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	1016,r13		! source line 1016
	mov	"\0\0SE",r10
!   _temp_3649 = &processManagerLock
	load	[r14+8],r1
	add	r1,5768,r1
	store	r1,[r14+-12]
!   Send message Unlock
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	1016,r13		! source line 1016
	mov	"\0\0RE",r10
	add	r15,40,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessManager_8:
	.word	_sourceFileName
	.word	_Label_3650
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_3651
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3652
	.word	12
	.word	4
	.word	_Label_3653
	.word	-12
	.word	4
	.word	_Label_3654
	.word	-16
	.word	4
	.word	_Label_3655
	.word	-20
	.word	4
	.word	_Label_3656
	.word	-24
	.word	4
	.word	_Label_3657
	.word	-28
	.word	4
	.word	_Label_3658
	.word	-32
	.word	4
	.word	_Label_3659
	.word	-36
	.word	4
	.word	0
_Label_3650:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"FreeProcess\0"
	.align
_Label_3651:
	.ascii	"Pself\0"
	.align
_Label_3652:
	.byte	'P'
	.ascii	"p\0"
	.align
_Label_3653:
	.byte	'?'
	.ascii	"_temp_3649\0"
	.align
_Label_3654:
	.byte	'?'
	.ascii	"_temp_3648\0"
	.align
_Label_3655:
	.byte	'?'
	.ascii	"_temp_3647\0"
	.align
_Label_3656:
	.byte	'?'
	.ascii	"_temp_3646\0"
	.align
_Label_3657:
	.byte	'?'
	.ascii	"_temp_3645\0"
	.align
_Label_3658:
	.byte	'?'
	.ascii	"_temp_3644\0"
	.align
_Label_3659:
	.byte	'?'
	.ascii	"_temp_3643\0"
	.align
! 
! ===============  CLASS FrameManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_FrameManager:
	.word	_Label_3660
	jmp	_Method_P_Kernel_FrameManager_1	! 4:	Init
	jmp	_Method_P_Kernel_FrameManager_2	! 8:	Print
	jmp	_Method_P_Kernel_FrameManager_3	! 12:	GetAFrame
	jmp	_Method_P_Kernel_FrameManager_4	! 16:	PutAFrame
	jmp	_Method_P_Kernel_FrameManager_5	! 20:	GetNewFrames
	jmp	_Method_P_Kernel_FrameManager_6	! 24:	ReturnAllFrames
	.word	0
! 
! Class descriptor:
! 
_Label_3660:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_3661
	.word	_sourceFileName
	.word	272		! line number
	.word	72		! size of instances, in bytes
	.word	_P_Kernel_FrameManager
	.word	_P_System_Object
	.word	0
_Label_3661:
	.ascii	"FrameManager\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_FrameManager_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FrameManager_1,r1
	push	r1
	mov	15,r1
_Label_7862:
	push	r0
	sub	r1,1,r1
	bne	_Label_7862
	mov	1124,r13		! source line 1124
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_3662 = _StringConst_110
	set	_StringConst_110,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_3662  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	1130,r13		! source line 1130
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	1131,r13		! source line 1131
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: framesInUse = zeros  (sizeInBytes=12)
	load	[r14+8],r4
	add	r4,4,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   framesInUse = _P_BitMap_BitMap
	set	_P_BitMap_BitMap,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! SEND STATEMENT...
	mov	1132,r13		! source line 1132
	mov	"\0\0SE",r10
!   _temp_3664 = &framesInUse
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=12  value=512  sizeInBytes=4
	mov	512,r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-48],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1133,r13		! source line 1133
	mov	"\0\0AS",r10
!   numberFreeFrames = 512		(4 bytes)
	mov	512,r1
	load	[r14+8],r2
	store	r1,[r2+16]
! ASSIGNMENT STATEMENT...
	mov	1134,r13		! source line 1134
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: frameManagerLock = zeros  (sizeInBytes=20)
	load	[r14+8],r4
	add	r4,36,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   frameManagerLock = _P_Kernel_Mutex
	set	_P_Kernel_Mutex,r1
	load	[r14+8],r2
	store	r1,[r2+36]
! SEND STATEMENT...
	mov	1135,r13		! source line 1135
	mov	"\0\0SE",r10
!   _temp_3666 = &frameManagerLock
	load	[r14+8],r1
	add	r1,36,r1
	store	r1,[r14+-40]
!   Send message Init
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1136,r13		! source line 1136
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: newFramesAvailable = zeros  (sizeInBytes=16)
	load	[r14+8],r4
	add	r4,56,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
!   newFramesAvailable = _P_Kernel_Condition
	set	_P_Kernel_Condition,r1
	load	[r14+8],r2
	store	r1,[r2+56]
! SEND STATEMENT...
	mov	1137,r13		! source line 1137
	mov	"\0\0SE",r10
!   _temp_3668 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,56,r1
	store	r1,[r14+-32]
!   Send message Init
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1138,r13		! source line 1138
	mov	"\0\0AS",r10
!   framesNeededQueue = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+20]
! ASSIGNMENT STATEMENT...
	mov	1139,r13		! source line 1139
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: numFramesNeededQueue = zeros  (sizeInBytes=12)
	load	[r14+8],r4
	add	r4,24,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   numFramesNeededQueue = _P_List_List
	set	_P_List_List,r1
	load	[r14+8],r2
	store	r1,[r2+24]
! FOR STATEMENT...
	mov	1145,r13		! source line 1145
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_3674 = 1048576		(4 bytes)
	set	1048576,r1
	store	r1,[r14+-24]
!   Calculate and save the FOR-LOOP ending value
!   _temp_3675 = 1048876		(4 bytes)
	set	1048876,r1
	store	r1,[r14+-20]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_3674  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+-60]
_Label_3670:
!   Perform the FOR-LOOP termination test
!   if i > _temp_3675 then goto _Label_3673		
	load	[r14+-60],r1
	load	[r14+-20],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3673
_Label_3671:
	mov	1145,r13		! source line 1145
	mov	"\0\0FB",r10
! IF STATEMENT...
	mov	1148,r13		! source line 1148
	mov	"\0\0IF",r10
!   if intIsZero (i) then goto _runtimeErrorNullPointer
	load	[r14+-60],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_3678 = *i  (sizeInBytes=4)
	load	[r14+-60],r1
	load	[r1],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_3678) then goto _Label_3677
	load	[r14+-16],r1
	cmp	r1,r0
	be	_Label_3677
!	_Label_3676	jmp	_Label_3676
_Label_3676:
! THEN...
	mov	1149,r13		! source line 1149
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3679 = _StringConst_111
	set	_StringConst_111,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_3679  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1149,r13		! source line 1149
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_3677:
!   Increment the FOR-LOOP index variable and jump back
_Label_3672:
!   i = i + 4
	load	[r14+-60],r1
	add	r1,4,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-60]
	jmp	_Label_3670
! END FOR
_Label_3673:
! RETURN STATEMENT...
	mov	1145,r13		! source line 1145
	mov	"\0\0RE",r10
	add	r15,64,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FrameManager_1:
	.word	_sourceFileName
	.word	_Label_3680
	.word	4		! total size of parameters
	.word	60		! frame size = 60
	.word	_Label_3681
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3682
	.word	-12
	.word	4
	.word	_Label_3683
	.word	-16
	.word	4
	.word	_Label_3684
	.word	-20
	.word	4
	.word	_Label_3685
	.word	-24
	.word	4
	.word	_Label_3686
	.word	-28
	.word	4
	.word	_Label_3687
	.word	-32
	.word	4
	.word	_Label_3688
	.word	-36
	.word	4
	.word	_Label_3689
	.word	-40
	.word	4
	.word	_Label_3690
	.word	-44
	.word	4
	.word	_Label_3691
	.word	-48
	.word	4
	.word	_Label_3692
	.word	-52
	.word	4
	.word	_Label_3693
	.word	-56
	.word	4
	.word	_Label_3694
	.word	-60
	.word	4
	.word	0
_Label_3680:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_3681:
	.ascii	"Pself\0"
	.align
_Label_3682:
	.byte	'?'
	.ascii	"_temp_3679\0"
	.align
_Label_3683:
	.byte	'?'
	.ascii	"_temp_3678\0"
	.align
_Label_3684:
	.byte	'?'
	.ascii	"_temp_3675\0"
	.align
_Label_3685:
	.byte	'?'
	.ascii	"_temp_3674\0"
	.align
_Label_3686:
	.byte	'?'
	.ascii	"_temp_3669\0"
	.align
_Label_3687:
	.byte	'?'
	.ascii	"_temp_3668\0"
	.align
_Label_3688:
	.byte	'?'
	.ascii	"_temp_3667\0"
	.align
_Label_3689:
	.byte	'?'
	.ascii	"_temp_3666\0"
	.align
_Label_3690:
	.byte	'?'
	.ascii	"_temp_3665\0"
	.align
_Label_3691:
	.byte	'?'
	.ascii	"_temp_3664\0"
	.align
_Label_3692:
	.byte	'?'
	.ascii	"_temp_3663\0"
	.align
_Label_3693:
	.byte	'?'
	.ascii	"_temp_3662\0"
	.align
_Label_3694:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_FrameManager_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FrameManager_2,r1
	push	r1
	mov	8,r1
_Label_7863:
	push	r0
	sub	r1,1,r1
	bne	_Label_7863
	mov	1156,r13		! source line 1156
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1160,r13		! source line 1160
	mov	"\0\0SE",r10
!   _temp_3695 = &frameManagerLock
	load	[r14+8],r1
	add	r1,36,r1
	store	r1,[r14+-32]
!   Send message Lock
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! CALL STATEMENT...
!   _temp_3696 = _StringConst_112
	set	_StringConst_112,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_3696  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1161,r13		! source line 1161
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_3697 = _StringConst_113
	set	_StringConst_113,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_3697  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=numberFreeFrames  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r15+4]
!   Call the function
	mov	1162,r13		! source line 1162
	mov	"\0\0CA",r10
	call	_P_System_printIntVar
! CALL STATEMENT...
!   _temp_3698 = _StringConst_114
	set	_StringConst_114,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_3698  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1163,r13		! source line 1163
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	1164,r13		! source line 1164
	mov	"\0\0SE",r10
!   _temp_3699 = &framesInUse
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-16]
!   Send message Print
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,24,r2
	call	r2
! SEND STATEMENT...
	mov	1165,r13		! source line 1165
	mov	"\0\0SE",r10
!   _temp_3700 = &frameManagerLock
	load	[r14+8],r1
	add	r1,36,r1
	store	r1,[r14+-12]
!   Send message Unlock
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	1165,r13		! source line 1165
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FrameManager_2:
	.word	_sourceFileName
	.word	_Label_3701
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_3702
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3703
	.word	-12
	.word	4
	.word	_Label_3704
	.word	-16
	.word	4
	.word	_Label_3705
	.word	-20
	.word	4
	.word	_Label_3706
	.word	-24
	.word	4
	.word	_Label_3707
	.word	-28
	.word	4
	.word	_Label_3708
	.word	-32
	.word	4
	.word	0
_Label_3701:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_3702:
	.ascii	"Pself\0"
	.align
_Label_3703:
	.byte	'?'
	.ascii	"_temp_3700\0"
	.align
_Label_3704:
	.byte	'?'
	.ascii	"_temp_3699\0"
	.align
_Label_3705:
	.byte	'?'
	.ascii	"_temp_3698\0"
	.align
_Label_3706:
	.byte	'?'
	.ascii	"_temp_3697\0"
	.align
_Label_3707:
	.byte	'?'
	.ascii	"_temp_3696\0"
	.align
_Label_3708:
	.byte	'?'
	.ascii	"_temp_3695\0"
	.align
! 
! ===============  METHOD GetAFrame  ===============
! 
_Method_P_Kernel_FrameManager_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FrameManager_3,r1
	push	r1
	mov	10,r1
_Label_7864:
	push	r0
	sub	r1,1,r1
	bne	_Label_7864
	mov	1170,r13		! source line 1170
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1178,r13		! source line 1178
	mov	"\0\0SE",r10
!   _temp_3709 = &frameManagerLock
	load	[r14+8],r1
	add	r1,36,r1
	store	r1,[r14+-32]
!   Send message Lock
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! WHILE STATEMENT...
	mov	1181,r13		! source line 1181
	mov	"\0\0WH",r10
_Label_3710:
!   if numberFreeFrames >= 1 then goto _Label_3712		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	mov	1,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_3712
!	_Label_3711	jmp	_Label_3711
_Label_3711:
	mov	1181,r13		! source line 1181
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	1182,r13		! source line 1182
	mov	"\0\0SE",r10
!   _temp_3713 = &frameManagerLock
	load	[r14+8],r1
	add	r1,36,r1
	store	r1,[r14+-28]
!   _temp_3714 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,56,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=_temp_3713  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+4]
!   Send message Wait
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END WHILE...
	jmp	_Label_3710
_Label_3712:
! ASSIGNMENT STATEMENT...
	mov	1186,r13		! source line 1186
	mov	"\0\0AS",r10
	mov	1186,r13		! source line 1186
	mov	"\0\0SE",r10
!   _temp_3715 = &framesInUse
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Send message FindZeroAndSet
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,36,r2
	call	r2
!   Retrieve Result: targetName=f  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
! ASSIGNMENT STATEMENT...
	mov	1187,r13		! source line 1187
	mov	"\0\0AS",r10
!   numberFreeFrames = numberFreeFrames - 1		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+16]
! SEND STATEMENT...
	mov	1190,r13		! source line 1190
	mov	"\0\0SE",r10
!   _temp_3716 = &frameManagerLock
	load	[r14+8],r1
	add	r1,36,r1
	store	r1,[r14+-16]
!   Send message Unlock
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1193,r13		! source line 1193
	mov	"\0\0AS",r10
!   _temp_3717 = f * 8192		(int)
	load	[r14+-36],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-12]
!   frameAddr = 1048576 + _temp_3717		(int)
	set	1048576,r1
	load	[r14+-12],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! RETURN STATEMENT...
	mov	1195,r13		! source line 1195
	mov	"\0\0RE",r10
!   ReturnResult: frameAddr  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+8]
	add	r15,44,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FrameManager_3:
	.word	_sourceFileName
	.word	_Label_3718
	.word	4		! total size of parameters
	.word	40		! frame size = 40
	.word	_Label_3719
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3720
	.word	-12
	.word	4
	.word	_Label_3721
	.word	-16
	.word	4
	.word	_Label_3722
	.word	-20
	.word	4
	.word	_Label_3723
	.word	-24
	.word	4
	.word	_Label_3724
	.word	-28
	.word	4
	.word	_Label_3725
	.word	-32
	.word	4
	.word	_Label_3726
	.word	-36
	.word	4
	.word	_Label_3727
	.word	-40
	.word	4
	.word	0
_Label_3718:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"GetAFrame\0"
	.align
_Label_3719:
	.ascii	"Pself\0"
	.align
_Label_3720:
	.byte	'?'
	.ascii	"_temp_3717\0"
	.align
_Label_3721:
	.byte	'?'
	.ascii	"_temp_3716\0"
	.align
_Label_3722:
	.byte	'?'
	.ascii	"_temp_3715\0"
	.align
_Label_3723:
	.byte	'?'
	.ascii	"_temp_3714\0"
	.align
_Label_3724:
	.byte	'?'
	.ascii	"_temp_3713\0"
	.align
_Label_3725:
	.byte	'?'
	.ascii	"_temp_3709\0"
	.align
_Label_3726:
	.byte	'I'
	.ascii	"f\0"
	.align
_Label_3727:
	.byte	'I'
	.ascii	"frameAddr\0"
	.align
! 
! ===============  METHOD PutAFrame  ===============
! 
_Method_P_Kernel_FrameManager_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FrameManager_4,r1
	push	r1
	mov	9,r1
_Label_7865:
	push	r0
	sub	r1,1,r1
	bne	_Label_7865
	mov	1200,r13		! source line 1200
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1202,r13		! source line 1202
	mov	"\0\0SE",r10
!   _temp_3728 = &frameManagerLock
	load	[r14+8],r1
	add	r1,36,r1
	store	r1,[r14+-32]
!   Send message Lock
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1203,r13		! source line 1203
	mov	"\0\0AS",r10
!   _temp_3729 = frameAddr - 1048576		(int)
	load	[r14+12],r1
	set	1048576,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-28]
!   bitNum = _temp_3729 div 8192		(int)
	load	[r14+-28],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
! SEND STATEMENT...
	mov	1204,r13		! source line 1204
	mov	"\0\0SE",r10
!   _temp_3730 = &framesInUse
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=bitNum  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Send message ClearBit
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1205,r13		! source line 1205
	mov	"\0\0AS",r10
!   numberFreeFrames = numberFreeFrames + 1		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+16]
! SEND STATEMENT...
	mov	1206,r13		! source line 1206
	mov	"\0\0SE",r10
!   _temp_3731 = &frameManagerLock
	load	[r14+8],r1
	add	r1,36,r1
	store	r1,[r14+-20]
!   _temp_3732 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,56,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_3731  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Send message Signal
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	1207,r13		! source line 1207
	mov	"\0\0SE",r10
!   _temp_3733 = &frameManagerLock
	load	[r14+8],r1
	add	r1,36,r1
	store	r1,[r14+-12]
!   Send message Unlock
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	1207,r13		! source line 1207
	mov	"\0\0RE",r10
	add	r15,40,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FrameManager_4:
	.word	_sourceFileName
	.word	_Label_3734
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_3735
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3736
	.word	12
	.word	4
	.word	_Label_3737
	.word	-12
	.word	4
	.word	_Label_3738
	.word	-16
	.word	4
	.word	_Label_3739
	.word	-20
	.word	4
	.word	_Label_3740
	.word	-24
	.word	4
	.word	_Label_3741
	.word	-28
	.word	4
	.word	_Label_3742
	.word	-32
	.word	4
	.word	_Label_3743
	.word	-36
	.word	4
	.word	0
_Label_3734:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"PutAFrame\0"
	.align
_Label_3735:
	.ascii	"Pself\0"
	.align
_Label_3736:
	.byte	'I'
	.ascii	"frameAddr\0"
	.align
_Label_3737:
	.byte	'?'
	.ascii	"_temp_3733\0"
	.align
_Label_3738:
	.byte	'?'
	.ascii	"_temp_3732\0"
	.align
_Label_3739:
	.byte	'?'
	.ascii	"_temp_3731\0"
	.align
_Label_3740:
	.byte	'?'
	.ascii	"_temp_3730\0"
	.align
_Label_3741:
	.byte	'?'
	.ascii	"_temp_3729\0"
	.align
_Label_3742:
	.byte	'?'
	.ascii	"_temp_3728\0"
	.align
_Label_3743:
	.byte	'I'
	.ascii	"bitNum\0"
	.align
! 
! ===============  METHOD GetNewFrames  ===============
! 
_Method_P_Kernel_FrameManager_5:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FrameManager_5,r1
	push	r1
	mov	15,r1
_Label_7866:
	push	r0
	sub	r1,1,r1
	bne	_Label_7866
	mov	1213,r13		! source line 1213
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1219,r13		! source line 1219
	mov	"\0\0SE",r10
!   _temp_3744 = &frameManagerLock
	load	[r14+8],r1
	add	r1,36,r1
	store	r1,[r14+-44]
!   Send message Lock
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! WHILE STATEMENT...
	mov	1220,r13		! source line 1220
	mov	"\0\0WH",r10
_Label_3745:
!   if numberFreeFrames >= numFramesNeeded then goto _Label_3747		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	load	[r14+16],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_3747
!	_Label_3746	jmp	_Label_3746
_Label_3746:
	mov	1220,r13		! source line 1220
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	1221,r13		! source line 1221
	mov	"\0\0SE",r10
!   _temp_3748 = &frameManagerLock
	load	[r14+8],r1
	add	r1,36,r1
	store	r1,[r14+-40]
!   _temp_3749 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,56,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=12  value=_temp_3748  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+4]
!   Send message Wait
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END WHILE...
	jmp	_Label_3745
_Label_3747:
! FOR STATEMENT...
	mov	1224,r13		! source line 1224
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_3754 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-32]
!   Calculate and save the FOR-LOOP ending value
!   _temp_3755 = numFramesNeeded - 1		(int)
	load	[r14+16],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-28]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_3754  (sizeInBytes=4)
	load	[r14+-32],r1
	store	r1,[r14+-48]
_Label_3750:
!   Perform the FOR-LOOP termination test
!   if i > _temp_3755 then goto _Label_3753		
	load	[r14+-48],r1
	load	[r14+-28],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3753
_Label_3751:
	mov	1224,r13		! source line 1224
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	1225,r13		! source line 1225
	mov	"\0\0AS",r10
	mov	1225,r13		! source line 1225
	mov	"\0\0SE",r10
!   _temp_3756 = &framesInUse
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-24]
!   Send message FindZeroAndSet
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,36,r2
	call	r2
!   Retrieve Result: targetName=index  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-56]
! ASSIGNMENT STATEMENT...
	mov	1226,r13		! source line 1226
	mov	"\0\0AS",r10
!   _temp_3757 = index * 8192		(int)
	load	[r14+-56],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-20]
!   frameAddr = 1048576 + _temp_3757		(int)
	set	1048576,r1
	load	[r14+-20],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-52]
! SEND STATEMENT...
	mov	1227,r13		! source line 1227
	mov	"\0\0SE",r10
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=frameAddr  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+8]
!   Send message SetFrameAddr
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_3752:
!   i = i + 1
	load	[r14+-48],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
	jmp	_Label_3750
! END FOR
_Label_3753:
! ASSIGNMENT STATEMENT...
	mov	1229,r13		! source line 1229
	mov	"\0\0AS",r10
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3758 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_3758 = numFramesNeeded  (sizeInBytes=4)
	load	[r14+16],r1
	load	[r14+-16],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1230,r13		! source line 1230
	mov	"\0\0AS",r10
!   numberFreeFrames = numberFreeFrames - numFramesNeeded		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	load	[r14+16],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+16]
! SEND STATEMENT...
	mov	1231,r13		! source line 1231
	mov	"\0\0SE",r10
!   _temp_3759 = &frameManagerLock
	load	[r14+8],r1
	add	r1,36,r1
	store	r1,[r14+-12]
!   Send message Unlock
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	1231,r13		! source line 1231
	mov	"\0\0RE",r10
	add	r15,64,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FrameManager_5:
	.word	_sourceFileName
	.word	_Label_3760
	.word	12		! total size of parameters
	.word	60		! frame size = 60
	.word	_Label_3761
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3762
	.word	12
	.word	4
	.word	_Label_3763
	.word	16
	.word	4
	.word	_Label_3764
	.word	-12
	.word	4
	.word	_Label_3765
	.word	-16
	.word	4
	.word	_Label_3766
	.word	-20
	.word	4
	.word	_Label_3767
	.word	-24
	.word	4
	.word	_Label_3768
	.word	-28
	.word	4
	.word	_Label_3769
	.word	-32
	.word	4
	.word	_Label_3770
	.word	-36
	.word	4
	.word	_Label_3771
	.word	-40
	.word	4
	.word	_Label_3772
	.word	-44
	.word	4
	.word	_Label_3773
	.word	-48
	.word	4
	.word	_Label_3774
	.word	-52
	.word	4
	.word	_Label_3775
	.word	-56
	.word	4
	.word	0
_Label_3760:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"GetNewFrames\0"
	.align
_Label_3761:
	.ascii	"Pself\0"
	.align
_Label_3762:
	.byte	'P'
	.ascii	"aPageTable\0"
	.align
_Label_3763:
	.byte	'I'
	.ascii	"numFramesNeeded\0"
	.align
_Label_3764:
	.byte	'?'
	.ascii	"_temp_3759\0"
	.align
_Label_3765:
	.byte	'?'
	.ascii	"_temp_3758\0"
	.align
_Label_3766:
	.byte	'?'
	.ascii	"_temp_3757\0"
	.align
_Label_3767:
	.byte	'?'
	.ascii	"_temp_3756\0"
	.align
_Label_3768:
	.byte	'?'
	.ascii	"_temp_3755\0"
	.align
_Label_3769:
	.byte	'?'
	.ascii	"_temp_3754\0"
	.align
_Label_3770:
	.byte	'?'
	.ascii	"_temp_3749\0"
	.align
_Label_3771:
	.byte	'?'
	.ascii	"_temp_3748\0"
	.align
_Label_3772:
	.byte	'?'
	.ascii	"_temp_3744\0"
	.align
_Label_3773:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_3774:
	.byte	'I'
	.ascii	"frameAddr\0"
	.align
_Label_3775:
	.byte	'I'
	.ascii	"index\0"
	.align
! 
! ===============  METHOD ReturnAllFrames  ===============
! 
_Method_P_Kernel_FrameManager_6:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FrameManager_6,r1
	push	r1
	mov	15,r1
_Label_7867:
	push	r0
	sub	r1,1,r1
	bne	_Label_7867
	mov	1236,r13		! source line 1236
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! numFramesReturned
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3776 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-44]
!   Data Move: numFramesReturned = *_temp_3776  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r1],r1
	store	r1,[r14+-52]
! SEND STATEMENT...
	mov	1242,r13		! source line 1242
	mov	"\0\0SE",r10
!   _temp_3777 = &frameManagerLock
	load	[r14+8],r1
	add	r1,36,r1
	store	r1,[r14+-40]
!   Send message Lock
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! FOR STATEMENT...
	mov	1243,r13		! source line 1243
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_3782 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-36]
!   Calculate and save the FOR-LOOP ending value
!   _temp_3783 = numFramesReturned - 1		(int)
	load	[r14+-52],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-32]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_3782  (sizeInBytes=4)
	load	[r14+-36],r1
	store	r1,[r14+-48]
_Label_3778:
!   Perform the FOR-LOOP termination test
!   if i > _temp_3783 then goto _Label_3781		
	load	[r14+-48],r1
	load	[r14+-32],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3781
_Label_3779:
	mov	1243,r13		! source line 1243
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	1244,r13		! source line 1244
	mov	"\0\0AS",r10
	mov	1244,r13		! source line 1244
	mov	"\0\0SE",r10
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=frameAddr  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-56]
! ASSIGNMENT STATEMENT...
	mov	1245,r13		! source line 1245
	mov	"\0\0AS",r10
!   _temp_3784 = frameAddr - 1048576		(int)
	load	[r14+-56],r1
	set	1048576,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-28]
!   bitNum = _temp_3784 div 8192		(int)
	load	[r14+-28],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-60]
! SEND STATEMENT...
	mov	1246,r13		! source line 1246
	mov	"\0\0SE",r10
!   _temp_3785 = &framesInUse
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=bitNum  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+4]
!   Send message ClearBit
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_3780:
!   i = i + 1
	load	[r14+-48],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
	jmp	_Label_3778
! END FOR
_Label_3781:
! ASSIGNMENT STATEMENT...
	mov	1248,r13		! source line 1248
	mov	"\0\0AS",r10
!   numberFreeFrames = numberFreeFrames + numFramesReturned		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	load	[r14+-52],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+16]
! SEND STATEMENT...
	mov	1249,r13		! source line 1249
	mov	"\0\0SE",r10
!   _temp_3786 = &frameManagerLock
	load	[r14+8],r1
	add	r1,36,r1
	store	r1,[r14+-20]
!   _temp_3787 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,56,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_3786  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Send message Broadcast
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! SEND STATEMENT...
	mov	1250,r13		! source line 1250
	mov	"\0\0SE",r10
!   _temp_3788 = &frameManagerLock
	load	[r14+8],r1
	add	r1,36,r1
	store	r1,[r14+-12]
!   Send message Unlock
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	1250,r13		! source line 1250
	mov	"\0\0RE",r10
	add	r15,64,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FrameManager_6:
	.word	_sourceFileName
	.word	_Label_3789
	.word	8		! total size of parameters
	.word	60		! frame size = 60
	.word	_Label_3790
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3791
	.word	12
	.word	4
	.word	_Label_3792
	.word	-12
	.word	4
	.word	_Label_3793
	.word	-16
	.word	4
	.word	_Label_3794
	.word	-20
	.word	4
	.word	_Label_3795
	.word	-24
	.word	4
	.word	_Label_3796
	.word	-28
	.word	4
	.word	_Label_3797
	.word	-32
	.word	4
	.word	_Label_3798
	.word	-36
	.word	4
	.word	_Label_3799
	.word	-40
	.word	4
	.word	_Label_3800
	.word	-44
	.word	4
	.word	_Label_3801
	.word	-48
	.word	4
	.word	_Label_3802
	.word	-52
	.word	4
	.word	_Label_3803
	.word	-56
	.word	4
	.word	_Label_3804
	.word	-60
	.word	4
	.word	0
_Label_3789:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"ReturnAllFrames\0"
	.align
_Label_3790:
	.ascii	"Pself\0"
	.align
_Label_3791:
	.byte	'P'
	.ascii	"aPageTable\0"
	.align
_Label_3792:
	.byte	'?'
	.ascii	"_temp_3788\0"
	.align
_Label_3793:
	.byte	'?'
	.ascii	"_temp_3787\0"
	.align
_Label_3794:
	.byte	'?'
	.ascii	"_temp_3786\0"
	.align
_Label_3795:
	.byte	'?'
	.ascii	"_temp_3785\0"
	.align
_Label_3796:
	.byte	'?'
	.ascii	"_temp_3784\0"
	.align
_Label_3797:
	.byte	'?'
	.ascii	"_temp_3783\0"
	.align
_Label_3798:
	.byte	'?'
	.ascii	"_temp_3782\0"
	.align
_Label_3799:
	.byte	'?'
	.ascii	"_temp_3777\0"
	.align
_Label_3800:
	.byte	'?'
	.ascii	"_temp_3776\0"
	.align
_Label_3801:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_3802:
	.byte	'I'
	.ascii	"numFramesReturned\0"
	.align
_Label_3803:
	.byte	'I'
	.ascii	"frameAddr\0"
	.align
_Label_3804:
	.byte	'I'
	.ascii	"bitNum\0"
	.align
! 
! ===============  CLASS AddrSpace  ===============
! 
! Dispatch Table:
! 
_P_Kernel_AddrSpace:
	.word	_Label_3805
	jmp	_Method_P_Kernel_AddrSpace_1	! 4:	Init
	jmp	_Method_P_Kernel_AddrSpace_2	! 8:	Print
	jmp	_Method_P_Kernel_AddrSpace_3	! 12:	ExtractFrameAddr
	jmp	_Method_P_Kernel_AddrSpace_4	! 16:	ExtractUndefinedBits
	jmp	_Method_P_Kernel_AddrSpace_5	! 20:	SetFrameAddr
	jmp	_Method_P_Kernel_AddrSpace_6	! 24:	IsDirty
	jmp	_Method_P_Kernel_AddrSpace_7	! 28:	IsReferenced
	jmp	_Method_P_Kernel_AddrSpace_8	! 32:	IsWritable
	jmp	_Method_P_Kernel_AddrSpace_9	! 36:	IsValid
	jmp	_Method_P_Kernel_AddrSpace_10	! 40:	SetDirty
	jmp	_Method_P_Kernel_AddrSpace_11	! 44:	SetReferenced
	jmp	_Method_P_Kernel_AddrSpace_12	! 48:	SetWritable
	jmp	_Method_P_Kernel_AddrSpace_13	! 52:	SetValid
	jmp	_Method_P_Kernel_AddrSpace_14	! 56:	ClearDirty
	jmp	_Method_P_Kernel_AddrSpace_15	! 60:	ClearReferenced
	jmp	_Method_P_Kernel_AddrSpace_16	! 64:	ClearWritable
	jmp	_Method_P_Kernel_AddrSpace_17	! 68:	ClearValid
	jmp	_Method_P_Kernel_AddrSpace_18	! 72:	SetToThisPageTable
	jmp	_Method_P_Kernel_AddrSpace_19	! 76:	CopyBytesFromVirtual
	jmp	_Method_P_Kernel_AddrSpace_20	! 80:	CopyBytesToVirtual
	jmp	_Method_P_Kernel_AddrSpace_21	! 84:	GetStringFromVirtual
	.word	0
! 
! Class descriptor:
! 
_Label_3805:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_3806
	.word	_sourceFileName
	.word	294		! line number
	.word	204		! size of instances, in bytes
	.word	_P_Kernel_AddrSpace
	.word	_P_System_Object
	.word	0
_Label_3806:
	.ascii	"AddrSpace\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_AddrSpace_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_1,r1
	push	r1
	mov	53,r1
_Label_7868:
	push	r0
	sub	r1,1,r1
	bne	_Label_7868
	mov	1261,r13		! source line 1261
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1265,r13		! source line 1265
	mov	"\0\0AS",r10
!   numberOfPages = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! ASSIGNMENT STATEMENT...
	mov	1266,r13		! source line 1266
	mov	"\0\0AS",r10
!   _temp_3807 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-220]
!   NEW ARRAY Constructor...
!   _temp_3809 = &_temp_3808
	add	r14,-216,r1
	store	r1,[r14+-20]
!   _temp_3809 = _temp_3809 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Next value...
	mov	48,r1
	store	r1,[r14+-16]
_Label_3811:
!   Data Move: *_temp_3809 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-20],r2
	store	r1,[r2]
!   _temp_3809 = _temp_3809 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_3810 = _temp_3810 + -1
	load	[r14+-16],r1
	add	r1,-1,r1
	store	r1,[r14+-16]
!   if intNotZero (_temp_3810) then goto _Label_3811
	load	[r14+-16],r1
	cmp	r1,r0
	bne	_Label_3811
!   Initialize the array size...
	mov	48,r1
	store	r1,[r14+-216]
!   _temp_3812 = &_temp_3808
	add	r14,-216,r1
	store	r1,[r14+-12]
!   make sure array has size 48
	load	[r14+-220],r1
	load	[r1],r1
	set	48, r2
	cmp	r1,0
	be	_Label_7869
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_7869:
!   make sure array has size 48
	load	[r14+-12],r1
	load	[r1],r1
	set	48, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_3807 = *_temp_3812  (sizeInBytes=196)
	load	[r14+-12],r5
	load	[r14+-220],r4
	mov	49,r3
_Label_7870:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_7870
! RETURN STATEMENT...
	mov	1266,r13		! source line 1266
	mov	"\0\0RE",r10
	add	r15,216,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_1:
	.word	_sourceFileName
	.word	_Label_3813
	.word	4		! total size of parameters
	.word	212		! frame size = 212
	.word	_Label_3814
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3815
	.word	-12
	.word	4
	.word	_Label_3816
	.word	-16
	.word	4
	.word	_Label_3817
	.word	-20
	.word	4
	.word	_Label_3818
	.word	-216
	.word	196
	.word	_Label_3819
	.word	-220
	.word	4
	.word	0
_Label_3813:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_3814:
	.ascii	"Pself\0"
	.align
_Label_3815:
	.byte	'?'
	.ascii	"_temp_3812\0"
	.align
_Label_3816:
	.byte	'?'
	.ascii	"_temp_3810\0"
	.align
_Label_3817:
	.byte	'?'
	.ascii	"_temp_3809\0"
	.align
_Label_3818:
	.byte	'?'
	.ascii	"_temp_3808\0"
	.align
_Label_3819:
	.byte	'?'
	.ascii	"_temp_3807\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_AddrSpace_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_2,r1
	push	r1
	mov	42,r1
_Label_7871:
	push	r0
	sub	r1,1,r1
	bne	_Label_7871
	mov	1271,r13		! source line 1271
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_3820 = _StringConst_115
	set	_StringConst_115,r1
	store	r1,[r14+-164]
!   Prepare Argument: offset=8  value=_temp_3820  sizeInBytes=4
	load	[r14+-164],r1
	store	r1,[r15+0]
!   Call the function
	mov	1276,r13		! source line 1276
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_3821 = _StringConst_116
	set	_StringConst_116,r1
	store	r1,[r14+-160]
!   Prepare Argument: offset=8  value=_temp_3821  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+0]
!   Call the function
	mov	1277,r13		! source line 1277
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	1278,r13		! source line 1278
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_3826 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-156]
!   Calculate and save the FOR-LOOP ending value
!   _temp_3827 = numberOfPages - 1		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-152]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_3826  (sizeInBytes=4)
	load	[r14+-156],r1
	store	r1,[r14+-168]
_Label_3822:
!   Perform the FOR-LOOP termination test
!   if i > _temp_3827 then goto _Label_3825		
	load	[r14+-168],r1
	load	[r14+-152],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3825
_Label_3823:
	mov	1278,r13		! source line 1278
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_3828 = _StringConst_117
	set	_StringConst_117,r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_3828  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+0]
!   Call the function
	mov	1279,r13		! source line 1279
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_3830 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-140]
!   Move address of _temp_3830 [i ] into _temp_3831
!     make sure index expr is >= 0
	load	[r14+-168],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-140],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-136]
!   _temp_3829 = _temp_3831		(4 bytes)
	load	[r14+-136],r1
	store	r1,[r14+-144]
!   Prepare Argument: offset=8  value=_temp_3829  sizeInBytes=4
	load	[r14+-144],r1
	store	r1,[r15+0]
!   Call the function
	mov	1280,r13		! source line 1280
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_3832 = _StringConst_118
	set	_StringConst_118,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_3832  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	1281,r13		! source line 1281
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_3834 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-124]
!   Move address of _temp_3834 [i ] into _temp_3835
!     make sure index expr is >= 0
	load	[r14+-168],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-124],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-120]
!   Data Move: _temp_3833 = *_temp_3835  (sizeInBytes=4)
	load	[r14+-120],r1
	load	[r1],r1
	store	r1,[r14+-128]
!   Prepare Argument: offset=8  value=_temp_3833  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+0]
!   Call the function
	mov	1282,r13		! source line 1282
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_3836 = _StringConst_119
	set	_StringConst_119,r1
	store	r1,[r14+-116]
!   Prepare Argument: offset=8  value=_temp_3836  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	1283,r13		! source line 1283
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_3837 = i * 8192		(int)
	load	[r14+-168],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_3837  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+0]
!   Call the function
	mov	1284,r13		! source line 1284
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_3838 = _StringConst_120
	set	_StringConst_120,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=_temp_3838  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Call the function
	mov	1285,r13		! source line 1285
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	mov	1286,r13		! source line 1286
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-100]
!   if intIsZero (_temp_3840) then goto _runtimeErrorNullPointer
	load	[r14+-100],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+-100],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_3839  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=8  value=_temp_3839  sizeInBytes=4
	load	[r14+-104],r1
	store	r1,[r15+0]
!   Call the function
	mov	1286,r13		! source line 1286
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_3841 = _StringConst_121
	set	_StringConst_121,r1
	store	r1,[r14+-96]
!   Prepare Argument: offset=8  value=_temp_3841  sizeInBytes=4
	load	[r14+-96],r1
	store	r1,[r15+0]
!   Call the function
	mov	1287,r13		! source line 1287
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1288,r13		! source line 1288
	mov	"\0\0IF",r10
	mov	1288,r13		! source line 1288
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-88]
!   if intIsZero (_temp_3845) then goto _runtimeErrorNullPointer
	load	[r14+-88],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+4]
!   Send message ExtractUndefinedBits
	load	[r14+-88],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_3844  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_3844) then goto _Label_3843
	load	[r14+-92],r1
	cmp	r1,r0
	be	_Label_3843
!	_Label_3842	jmp	_Label_3842
_Label_3842:
! THEN...
	mov	1289,r13		! source line 1289
	mov	"\0\0TN",r10
! CALL STATEMENT...
	mov	1289,r13		! source line 1289
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-80]
!   if intIsZero (_temp_3847) then goto _runtimeErrorNullPointer
	load	[r14+-80],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+4]
!   Send message ExtractUndefinedBits
	load	[r14+-80],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_3846  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=8  value=_temp_3846  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+0]
!   Call the function
	mov	1289,r13		! source line 1289
	mov	"\0\0CE",r10
	call	printHex
	jmp	_Label_3848
_Label_3843:
! ELSE...
	mov	1291,r13		! source line 1291
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_3849 = _StringConst_122
	set	_StringConst_122,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_3849  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	1291,r13		! source line 1291
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_3848:
! CALL STATEMENT...
!   _temp_3850 = _StringConst_123
	set	_StringConst_123,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_3850  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   Call the function
	mov	1293,r13		! source line 1293
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1294,r13		! source line 1294
	mov	"\0\0IF",r10
	mov	1294,r13		! source line 1294
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-68]
!   if intIsZero (_temp_3853) then goto _runtimeErrorNullPointer
	load	[r14+-68],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+4]
!   Send message IsDirty
	load	[r14+-68],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,24,r2
	call	r2
!   if result==true then goto _Label_3851 else goto _Label_3852
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_3852
	jmp	_Label_3851
_Label_3851:
! THEN...
	mov	1295,r13		! source line 1295
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3854 = _StringConst_124
	set	_StringConst_124,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=8  value=_temp_3854  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+0]
!   Call the function
	mov	1295,r13		! source line 1295
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_3855
_Label_3852:
! ELSE...
	mov	1297,r13		! source line 1297
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_3856 = _StringConst_125
	set	_StringConst_125,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_3856  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	1297,r13		! source line 1297
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_3855:
! CALL STATEMENT...
!   _temp_3857 = _StringConst_126
	set	_StringConst_126,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_3857  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	1299,r13		! source line 1299
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1300,r13		! source line 1300
	mov	"\0\0IF",r10
	mov	1300,r13		! source line 1300
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-52]
!   if intIsZero (_temp_3860) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+4]
!   Send message IsReferenced
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,28,r2
	call	r2
!   if result==true then goto _Label_3858 else goto _Label_3859
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_3859
	jmp	_Label_3858
_Label_3858:
! THEN...
	mov	1301,r13		! source line 1301
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3861 = _StringConst_127
	set	_StringConst_127,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_3861  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	1301,r13		! source line 1301
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_3862
_Label_3859:
! ELSE...
	mov	1303,r13		! source line 1303
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_3863 = _StringConst_128
	set	_StringConst_128,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_3863  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	1303,r13		! source line 1303
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_3862:
! CALL STATEMENT...
!   _temp_3864 = _StringConst_129
	set	_StringConst_129,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_3864  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	1305,r13		! source line 1305
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1306,r13		! source line 1306
	mov	"\0\0IF",r10
	mov	1306,r13		! source line 1306
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-36]
!   if intIsZero (_temp_3867) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+4]
!   Send message IsWritable
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   if result==true then goto _Label_3865 else goto _Label_3866
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_3866
	jmp	_Label_3865
_Label_3865:
! THEN...
	mov	1307,r13		! source line 1307
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3868 = _StringConst_130
	set	_StringConst_130,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_3868  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1307,r13		! source line 1307
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_3869
_Label_3866:
! ELSE...
	mov	1309,r13		! source line 1309
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_3870 = _StringConst_131
	set	_StringConst_131,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_3870  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1309,r13		! source line 1309
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_3869:
! CALL STATEMENT...
!   _temp_3871 = _StringConst_132
	set	_StringConst_132,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_3871  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	1311,r13		! source line 1311
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1312,r13		! source line 1312
	mov	"\0\0IF",r10
	mov	1312,r13		! source line 1312
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_3874) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+4]
!   Send message IsValid
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,36,r2
	call	r2
!   if result==true then goto _Label_3872 else goto _Label_3873
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_3873
	jmp	_Label_3872
_Label_3872:
! THEN...
	mov	1313,r13		! source line 1313
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3875 = _StringConst_133
	set	_StringConst_133,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_3875  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1313,r13		! source line 1313
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_3876
_Label_3873:
! ELSE...
	mov	1315,r13		! source line 1315
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_3877 = _StringConst_134
	set	_StringConst_134,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_3877  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1315,r13		! source line 1315
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_3876:
! CALL STATEMENT...
!   Call the function
	mov	1317,r13		! source line 1317
	mov	"\0\0CA",r10
	call	_P_System_nl
!   Increment the FOR-LOOP index variable and jump back
_Label_3824:
!   i = i + 1
	load	[r14+-168],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-168]
	jmp	_Label_3822
! END FOR
_Label_3825:
! RETURN STATEMENT...
	mov	1278,r13		! source line 1278
	mov	"\0\0RE",r10
	add	r15,172,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_2:
	.word	_sourceFileName
	.word	_Label_3878
	.word	4		! total size of parameters
	.word	168		! frame size = 168
	.word	_Label_3879
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3880
	.word	-12
	.word	4
	.word	_Label_3881
	.word	-16
	.word	4
	.word	_Label_3882
	.word	-20
	.word	4
	.word	_Label_3883
	.word	-24
	.word	4
	.word	_Label_3884
	.word	-28
	.word	4
	.word	_Label_3885
	.word	-32
	.word	4
	.word	_Label_3886
	.word	-36
	.word	4
	.word	_Label_3887
	.word	-40
	.word	4
	.word	_Label_3888
	.word	-44
	.word	4
	.word	_Label_3889
	.word	-48
	.word	4
	.word	_Label_3890
	.word	-52
	.word	4
	.word	_Label_3891
	.word	-56
	.word	4
	.word	_Label_3892
	.word	-60
	.word	4
	.word	_Label_3893
	.word	-64
	.word	4
	.word	_Label_3894
	.word	-68
	.word	4
	.word	_Label_3895
	.word	-72
	.word	4
	.word	_Label_3896
	.word	-76
	.word	4
	.word	_Label_3897
	.word	-80
	.word	4
	.word	_Label_3898
	.word	-84
	.word	4
	.word	_Label_3899
	.word	-88
	.word	4
	.word	_Label_3900
	.word	-92
	.word	4
	.word	_Label_3901
	.word	-96
	.word	4
	.word	_Label_3902
	.word	-100
	.word	4
	.word	_Label_3903
	.word	-104
	.word	4
	.word	_Label_3904
	.word	-108
	.word	4
	.word	_Label_3905
	.word	-112
	.word	4
	.word	_Label_3906
	.word	-116
	.word	4
	.word	_Label_3907
	.word	-120
	.word	4
	.word	_Label_3908
	.word	-124
	.word	4
	.word	_Label_3909
	.word	-128
	.word	4
	.word	_Label_3910
	.word	-132
	.word	4
	.word	_Label_3911
	.word	-136
	.word	4
	.word	_Label_3912
	.word	-140
	.word	4
	.word	_Label_3913
	.word	-144
	.word	4
	.word	_Label_3914
	.word	-148
	.word	4
	.word	_Label_3915
	.word	-152
	.word	4
	.word	_Label_3916
	.word	-156
	.word	4
	.word	_Label_3917
	.word	-160
	.word	4
	.word	_Label_3918
	.word	-164
	.word	4
	.word	_Label_3919
	.word	-168
	.word	4
	.word	0
_Label_3878:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_3879:
	.ascii	"Pself\0"
	.align
_Label_3880:
	.byte	'?'
	.ascii	"_temp_3877\0"
	.align
_Label_3881:
	.byte	'?'
	.ascii	"_temp_3875\0"
	.align
_Label_3882:
	.byte	'?'
	.ascii	"_temp_3874\0"
	.align
_Label_3883:
	.byte	'?'
	.ascii	"_temp_3871\0"
	.align
_Label_3884:
	.byte	'?'
	.ascii	"_temp_3870\0"
	.align
_Label_3885:
	.byte	'?'
	.ascii	"_temp_3868\0"
	.align
_Label_3886:
	.byte	'?'
	.ascii	"_temp_3867\0"
	.align
_Label_3887:
	.byte	'?'
	.ascii	"_temp_3864\0"
	.align
_Label_3888:
	.byte	'?'
	.ascii	"_temp_3863\0"
	.align
_Label_3889:
	.byte	'?'
	.ascii	"_temp_3861\0"
	.align
_Label_3890:
	.byte	'?'
	.ascii	"_temp_3860\0"
	.align
_Label_3891:
	.byte	'?'
	.ascii	"_temp_3857\0"
	.align
_Label_3892:
	.byte	'?'
	.ascii	"_temp_3856\0"
	.align
_Label_3893:
	.byte	'?'
	.ascii	"_temp_3854\0"
	.align
_Label_3894:
	.byte	'?'
	.ascii	"_temp_3853\0"
	.align
_Label_3895:
	.byte	'?'
	.ascii	"_temp_3850\0"
	.align
_Label_3896:
	.byte	'?'
	.ascii	"_temp_3849\0"
	.align
_Label_3897:
	.byte	'?'
	.ascii	"_temp_3847\0"
	.align
_Label_3898:
	.byte	'?'
	.ascii	"_temp_3846\0"
	.align
_Label_3899:
	.byte	'?'
	.ascii	"_temp_3845\0"
	.align
_Label_3900:
	.byte	'?'
	.ascii	"_temp_3844\0"
	.align
_Label_3901:
	.byte	'?'
	.ascii	"_temp_3841\0"
	.align
_Label_3902:
	.byte	'?'
	.ascii	"_temp_3840\0"
	.align
_Label_3903:
	.byte	'?'
	.ascii	"_temp_3839\0"
	.align
_Label_3904:
	.byte	'?'
	.ascii	"_temp_3838\0"
	.align
_Label_3905:
	.byte	'?'
	.ascii	"_temp_3837\0"
	.align
_Label_3906:
	.byte	'?'
	.ascii	"_temp_3836\0"
	.align
_Label_3907:
	.byte	'?'
	.ascii	"_temp_3835\0"
	.align
_Label_3908:
	.byte	'?'
	.ascii	"_temp_3834\0"
	.align
_Label_3909:
	.byte	'?'
	.ascii	"_temp_3833\0"
	.align
_Label_3910:
	.byte	'?'
	.ascii	"_temp_3832\0"
	.align
_Label_3911:
	.byte	'?'
	.ascii	"_temp_3831\0"
	.align
_Label_3912:
	.byte	'?'
	.ascii	"_temp_3830\0"
	.align
_Label_3913:
	.byte	'?'
	.ascii	"_temp_3829\0"
	.align
_Label_3914:
	.byte	'?'
	.ascii	"_temp_3828\0"
	.align
_Label_3915:
	.byte	'?'
	.ascii	"_temp_3827\0"
	.align
_Label_3916:
	.byte	'?'
	.ascii	"_temp_3826\0"
	.align
_Label_3917:
	.byte	'?'
	.ascii	"_temp_3821\0"
	.align
_Label_3918:
	.byte	'?'
	.ascii	"_temp_3820\0"
	.align
_Label_3919:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  METHOD ExtractFrameAddr  ===============
! 
_Method_P_Kernel_AddrSpace_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_3,r1
	push	r1
	mov	4,r1
_Label_7872:
	push	r0
	sub	r1,1,r1
	bne	_Label_7872
	mov	1323,r13		! source line 1323
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1328,r13		! source line 1328
	mov	"\0\0RE",r10
!   _temp_3922 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_3922 [entry ] into _temp_3923
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_3921 = *_temp_3923  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_3920 = _temp_3921 AND -8192		(int)
	load	[r14+-20],r1
	mov	-8192,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_3920  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+8]
	add	r15,20,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_3:
	.word	_sourceFileName
	.word	_Label_3924
	.word	8		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_3925
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3926
	.word	12
	.word	4
	.word	_Label_3927
	.word	-12
	.word	4
	.word	_Label_3928
	.word	-16
	.word	4
	.word	_Label_3929
	.word	-20
	.word	4
	.word	_Label_3930
	.word	-24
	.word	4
	.word	0
_Label_3924:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ExtractFrameAddr\0"
	.align
_Label_3925:
	.ascii	"Pself\0"
	.align
_Label_3926:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_3927:
	.byte	'?'
	.ascii	"_temp_3923\0"
	.align
_Label_3928:
	.byte	'?'
	.ascii	"_temp_3922\0"
	.align
_Label_3929:
	.byte	'?'
	.ascii	"_temp_3921\0"
	.align
_Label_3930:
	.byte	'?'
	.ascii	"_temp_3920\0"
	.align
! 
! ===============  METHOD ExtractUndefinedBits  ===============
! 
_Method_P_Kernel_AddrSpace_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_4,r1
	push	r1
	mov	4,r1
_Label_7873:
	push	r0
	sub	r1,1,r1
	bne	_Label_7873
	mov	1333,r13		! source line 1333
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1337,r13		! source line 1337
	mov	"\0\0RE",r10
!   _temp_3933 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_3933 [entry ] into _temp_3934
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_3932 = *_temp_3934  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_3931 = _temp_3932 AND 8176		(int)
	load	[r14+-20],r1
	mov	8176,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_3931  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+8]
	add	r15,20,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_4:
	.word	_sourceFileName
	.word	_Label_3935
	.word	8		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_3936
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3937
	.word	12
	.word	4
	.word	_Label_3938
	.word	-12
	.word	4
	.word	_Label_3939
	.word	-16
	.word	4
	.word	_Label_3940
	.word	-20
	.word	4
	.word	_Label_3941
	.word	-24
	.word	4
	.word	0
_Label_3935:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ExtractUndefinedBits\0"
	.align
_Label_3936:
	.ascii	"Pself\0"
	.align
_Label_3937:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_3938:
	.byte	'?'
	.ascii	"_temp_3934\0"
	.align
_Label_3939:
	.byte	'?'
	.ascii	"_temp_3933\0"
	.align
_Label_3940:
	.byte	'?'
	.ascii	"_temp_3932\0"
	.align
_Label_3941:
	.byte	'?'
	.ascii	"_temp_3931\0"
	.align
! 
! ===============  METHOD SetFrameAddr  ===============
! 
_Method_P_Kernel_AddrSpace_5:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_5,r1
	push	r1
	mov	7,r1
_Label_7874:
	push	r0
	sub	r1,1,r1
	bne	_Label_7874
	mov	1342,r13		! source line 1342
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1347,r13		! source line 1347
	mov	"\0\0AS",r10
!   _temp_3942 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-36]
!   Move address of _temp_3942 [entry ] into _temp_3943
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-36],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-32]
!   _temp_3947 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_3947 [entry ] into _temp_3948
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_3946 = *_temp_3948  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_3945 = _temp_3946 AND 8191		(int)
	load	[r14+-20],r1
	mov	8191,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   _temp_3944 = _temp_3945 OR frameAddr		(int)
	load	[r14+-24],r1
	load	[r14+16],r2
	or	r1,r2,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_3943 = _temp_3944  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r14+-32],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1347,r13		! source line 1347
	mov	"\0\0RE",r10
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_5:
	.word	_sourceFileName
	.word	_Label_3949
	.word	12		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_3950
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3951
	.word	12
	.word	4
	.word	_Label_3952
	.word	16
	.word	4
	.word	_Label_3953
	.word	-12
	.word	4
	.word	_Label_3954
	.word	-16
	.word	4
	.word	_Label_3955
	.word	-20
	.word	4
	.word	_Label_3956
	.word	-24
	.word	4
	.word	_Label_3957
	.word	-28
	.word	4
	.word	_Label_3958
	.word	-32
	.word	4
	.word	_Label_3959
	.word	-36
	.word	4
	.word	0
_Label_3949:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetFrameAddr\0"
	.align
_Label_3950:
	.ascii	"Pself\0"
	.align
_Label_3951:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_3952:
	.byte	'I'
	.ascii	"frameAddr\0"
	.align
_Label_3953:
	.byte	'?'
	.ascii	"_temp_3948\0"
	.align
_Label_3954:
	.byte	'?'
	.ascii	"_temp_3947\0"
	.align
_Label_3955:
	.byte	'?'
	.ascii	"_temp_3946\0"
	.align
_Label_3956:
	.byte	'?'
	.ascii	"_temp_3945\0"
	.align
_Label_3957:
	.byte	'?'
	.ascii	"_temp_3944\0"
	.align
_Label_3958:
	.byte	'?'
	.ascii	"_temp_3943\0"
	.align
_Label_3959:
	.byte	'?'
	.ascii	"_temp_3942\0"
	.align
! 
! ===============  METHOD IsDirty  ===============
! 
_Method_P_Kernel_AddrSpace_6:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_6,r1
	push	r1
	mov	5,r1
_Label_7875:
	push	r0
	sub	r1,1,r1
	bne	_Label_7875
	mov	1352,r13		! source line 1352
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1356,r13		! source line 1356
	mov	"\0\0RE",r10
!   _temp_3963 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_3963 [entry ] into _temp_3964
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-20],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   Data Move: _temp_3962 = *_temp_3964  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_3961 = _temp_3962 AND 8		(int)
	load	[r14+-24],r1
	mov	8,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_3961) then goto _Label_3965
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_3965
!   _temp_3960 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_3966
_Label_3965:
!   _temp_3960 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_3966:
!   ReturnResult: _temp_3960  (sizeInBytes=1)
	loadb	[r14+-9],r1
	storeb	r1,[r14+8]
	add	r15,24,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_6:
	.word	_sourceFileName
	.word	_Label_3967
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_3968
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3969
	.word	12
	.word	4
	.word	_Label_3970
	.word	-16
	.word	4
	.word	_Label_3971
	.word	-20
	.word	4
	.word	_Label_3972
	.word	-24
	.word	4
	.word	_Label_3973
	.word	-28
	.word	4
	.word	_Label_3974
	.word	-9
	.word	1
	.word	0
_Label_3967:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsDirty\0"
	.align
_Label_3968:
	.ascii	"Pself\0"
	.align
_Label_3969:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_3970:
	.byte	'?'
	.ascii	"_temp_3964\0"
	.align
_Label_3971:
	.byte	'?'
	.ascii	"_temp_3963\0"
	.align
_Label_3972:
	.byte	'?'
	.ascii	"_temp_3962\0"
	.align
_Label_3973:
	.byte	'?'
	.ascii	"_temp_3961\0"
	.align
_Label_3974:
	.byte	'C'
	.ascii	"_temp_3960\0"
	.align
! 
! ===============  METHOD IsReferenced  ===============
! 
_Method_P_Kernel_AddrSpace_7:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_7,r1
	push	r1
	mov	5,r1
_Label_7876:
	push	r0
	sub	r1,1,r1
	bne	_Label_7876
	mov	1361,r13		! source line 1361
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1365,r13		! source line 1365
	mov	"\0\0RE",r10
!   _temp_3978 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_3978 [entry ] into _temp_3979
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-20],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   Data Move: _temp_3977 = *_temp_3979  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_3976 = _temp_3977 AND 4		(int)
	load	[r14+-24],r1
	mov	4,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_3976) then goto _Label_3980
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_3980
!   _temp_3975 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_3981
_Label_3980:
!   _temp_3975 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_3981:
!   ReturnResult: _temp_3975  (sizeInBytes=1)
	loadb	[r14+-9],r1
	storeb	r1,[r14+8]
	add	r15,24,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_7:
	.word	_sourceFileName
	.word	_Label_3982
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_3983
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3984
	.word	12
	.word	4
	.word	_Label_3985
	.word	-16
	.word	4
	.word	_Label_3986
	.word	-20
	.word	4
	.word	_Label_3987
	.word	-24
	.word	4
	.word	_Label_3988
	.word	-28
	.word	4
	.word	_Label_3989
	.word	-9
	.word	1
	.word	0
_Label_3982:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsReferenced\0"
	.align
_Label_3983:
	.ascii	"Pself\0"
	.align
_Label_3984:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_3985:
	.byte	'?'
	.ascii	"_temp_3979\0"
	.align
_Label_3986:
	.byte	'?'
	.ascii	"_temp_3978\0"
	.align
_Label_3987:
	.byte	'?'
	.ascii	"_temp_3977\0"
	.align
_Label_3988:
	.byte	'?'
	.ascii	"_temp_3976\0"
	.align
_Label_3989:
	.byte	'C'
	.ascii	"_temp_3975\0"
	.align
! 
! ===============  METHOD IsWritable  ===============
! 
_Method_P_Kernel_AddrSpace_8:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_8,r1
	push	r1
	mov	5,r1
_Label_7877:
	push	r0
	sub	r1,1,r1
	bne	_Label_7877
	mov	1370,r13		! source line 1370
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1374,r13		! source line 1374
	mov	"\0\0RE",r10
!   _temp_3993 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_3993 [entry ] into _temp_3994
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-20],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   Data Move: _temp_3992 = *_temp_3994  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_3991 = _temp_3992 AND 2		(int)
	load	[r14+-24],r1
	mov	2,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_3991) then goto _Label_3995
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_3995
!   _temp_3990 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_3996
_Label_3995:
!   _temp_3990 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_3996:
!   ReturnResult: _temp_3990  (sizeInBytes=1)
	loadb	[r14+-9],r1
	storeb	r1,[r14+8]
	add	r15,24,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_8:
	.word	_sourceFileName
	.word	_Label_3997
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_3998
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3999
	.word	12
	.word	4
	.word	_Label_4000
	.word	-16
	.word	4
	.word	_Label_4001
	.word	-20
	.word	4
	.word	_Label_4002
	.word	-24
	.word	4
	.word	_Label_4003
	.word	-28
	.word	4
	.word	_Label_4004
	.word	-9
	.word	1
	.word	0
_Label_3997:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsWritable\0"
	.align
_Label_3998:
	.ascii	"Pself\0"
	.align
_Label_3999:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_4000:
	.byte	'?'
	.ascii	"_temp_3994\0"
	.align
_Label_4001:
	.byte	'?'
	.ascii	"_temp_3993\0"
	.align
_Label_4002:
	.byte	'?'
	.ascii	"_temp_3992\0"
	.align
_Label_4003:
	.byte	'?'
	.ascii	"_temp_3991\0"
	.align
_Label_4004:
	.byte	'C'
	.ascii	"_temp_3990\0"
	.align
! 
! ===============  METHOD IsValid  ===============
! 
_Method_P_Kernel_AddrSpace_9:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_9,r1
	push	r1
	mov	5,r1
_Label_7878:
	push	r0
	sub	r1,1,r1
	bne	_Label_7878
	mov	1379,r13		! source line 1379
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1383,r13		! source line 1383
	mov	"\0\0RE",r10
!   _temp_4008 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_4008 [entry ] into _temp_4009
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-20],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   Data Move: _temp_4007 = *_temp_4009  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_4006 = _temp_4007 AND 1		(int)
	load	[r14+-24],r1
	mov	1,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_4006) then goto _Label_4010
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_4010
!   _temp_4005 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_4011
_Label_4010:
!   _temp_4005 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_4011:
!   ReturnResult: _temp_4005  (sizeInBytes=1)
	loadb	[r14+-9],r1
	storeb	r1,[r14+8]
	add	r15,24,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_9:
	.word	_sourceFileName
	.word	_Label_4012
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_4013
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_4014
	.word	12
	.word	4
	.word	_Label_4015
	.word	-16
	.word	4
	.word	_Label_4016
	.word	-20
	.word	4
	.word	_Label_4017
	.word	-24
	.word	4
	.word	_Label_4018
	.word	-28
	.word	4
	.word	_Label_4019
	.word	-9
	.word	1
	.word	0
_Label_4012:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsValid\0"
	.align
_Label_4013:
	.ascii	"Pself\0"
	.align
_Label_4014:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_4015:
	.byte	'?'
	.ascii	"_temp_4009\0"
	.align
_Label_4016:
	.byte	'?'
	.ascii	"_temp_4008\0"
	.align
_Label_4017:
	.byte	'?'
	.ascii	"_temp_4007\0"
	.align
_Label_4018:
	.byte	'?'
	.ascii	"_temp_4006\0"
	.align
_Label_4019:
	.byte	'C'
	.ascii	"_temp_4005\0"
	.align
! 
! ===============  METHOD SetDirty  ===============
! 
_Method_P_Kernel_AddrSpace_10:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_10,r1
	push	r1
	mov	6,r1
_Label_7879:
	push	r0
	sub	r1,1,r1
	bne	_Label_7879
	mov	1388,r13		! source line 1388
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1392,r13		! source line 1392
	mov	"\0\0AS",r10
!   _temp_4020 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_4020 [entry ] into _temp_4021
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-32],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   _temp_4024 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_4024 [entry ] into _temp_4025
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_4023 = *_temp_4025  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_4022 = _temp_4023 OR 8		(int)
	load	[r14+-20],r1
	mov	8,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_4021 = _temp_4022  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1392,r13		! source line 1392
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_10:
	.word	_sourceFileName
	.word	_Label_4026
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_4027
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_4028
	.word	12
	.word	4
	.word	_Label_4029
	.word	-12
	.word	4
	.word	_Label_4030
	.word	-16
	.word	4
	.word	_Label_4031
	.word	-20
	.word	4
	.word	_Label_4032
	.word	-24
	.word	4
	.word	_Label_4033
	.word	-28
	.word	4
	.word	_Label_4034
	.word	-32
	.word	4
	.word	0
_Label_4026:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetDirty\0"
	.align
_Label_4027:
	.ascii	"Pself\0"
	.align
_Label_4028:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_4029:
	.byte	'?'
	.ascii	"_temp_4025\0"
	.align
_Label_4030:
	.byte	'?'
	.ascii	"_temp_4024\0"
	.align
_Label_4031:
	.byte	'?'
	.ascii	"_temp_4023\0"
	.align
_Label_4032:
	.byte	'?'
	.ascii	"_temp_4022\0"
	.align
_Label_4033:
	.byte	'?'
	.ascii	"_temp_4021\0"
	.align
_Label_4034:
	.byte	'?'
	.ascii	"_temp_4020\0"
	.align
! 
! ===============  METHOD SetReferenced  ===============
! 
_Method_P_Kernel_AddrSpace_11:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_11,r1
	push	r1
	mov	6,r1
_Label_7880:
	push	r0
	sub	r1,1,r1
	bne	_Label_7880
	mov	1397,r13		! source line 1397
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1401,r13		! source line 1401
	mov	"\0\0AS",r10
!   _temp_4035 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_4035 [entry ] into _temp_4036
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-32],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   _temp_4039 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_4039 [entry ] into _temp_4040
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_4038 = *_temp_4040  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_4037 = _temp_4038 OR 4		(int)
	load	[r14+-20],r1
	mov	4,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_4036 = _temp_4037  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1401,r13		! source line 1401
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_11:
	.word	_sourceFileName
	.word	_Label_4041
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_4042
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_4043
	.word	12
	.word	4
	.word	_Label_4044
	.word	-12
	.word	4
	.word	_Label_4045
	.word	-16
	.word	4
	.word	_Label_4046
	.word	-20
	.word	4
	.word	_Label_4047
	.word	-24
	.word	4
	.word	_Label_4048
	.word	-28
	.word	4
	.word	_Label_4049
	.word	-32
	.word	4
	.word	0
_Label_4041:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetReferenced\0"
	.align
_Label_4042:
	.ascii	"Pself\0"
	.align
_Label_4043:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_4044:
	.byte	'?'
	.ascii	"_temp_4040\0"
	.align
_Label_4045:
	.byte	'?'
	.ascii	"_temp_4039\0"
	.align
_Label_4046:
	.byte	'?'
	.ascii	"_temp_4038\0"
	.align
_Label_4047:
	.byte	'?'
	.ascii	"_temp_4037\0"
	.align
_Label_4048:
	.byte	'?'
	.ascii	"_temp_4036\0"
	.align
_Label_4049:
	.byte	'?'
	.ascii	"_temp_4035\0"
	.align
! 
! ===============  METHOD SetWritable  ===============
! 
_Method_P_Kernel_AddrSpace_12:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_12,r1
	push	r1
	mov	6,r1
_Label_7881:
	push	r0
	sub	r1,1,r1
	bne	_Label_7881
	mov	1406,r13		! source line 1406
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1410,r13		! source line 1410
	mov	"\0\0AS",r10
!   _temp_4050 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_4050 [entry ] into _temp_4051
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-32],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   _temp_4054 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_4054 [entry ] into _temp_4055
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_4053 = *_temp_4055  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_4052 = _temp_4053 OR 2		(int)
	load	[r14+-20],r1
	mov	2,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_4051 = _temp_4052  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1410,r13		! source line 1410
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_12:
	.word	_sourceFileName
	.word	_Label_4056
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_4057
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_4058
	.word	12
	.word	4
	.word	_Label_4059
	.word	-12
	.word	4
	.word	_Label_4060
	.word	-16
	.word	4
	.word	_Label_4061
	.word	-20
	.word	4
	.word	_Label_4062
	.word	-24
	.word	4
	.word	_Label_4063
	.word	-28
	.word	4
	.word	_Label_4064
	.word	-32
	.word	4
	.word	0
_Label_4056:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetWritable\0"
	.align
_Label_4057:
	.ascii	"Pself\0"
	.align
_Label_4058:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_4059:
	.byte	'?'
	.ascii	"_temp_4055\0"
	.align
_Label_4060:
	.byte	'?'
	.ascii	"_temp_4054\0"
	.align
_Label_4061:
	.byte	'?'
	.ascii	"_temp_4053\0"
	.align
_Label_4062:
	.byte	'?'
	.ascii	"_temp_4052\0"
	.align
_Label_4063:
	.byte	'?'
	.ascii	"_temp_4051\0"
	.align
_Label_4064:
	.byte	'?'
	.ascii	"_temp_4050\0"
	.align
! 
! ===============  METHOD SetValid  ===============
! 
_Method_P_Kernel_AddrSpace_13:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_13,r1
	push	r1
	mov	6,r1
_Label_7882:
	push	r0
	sub	r1,1,r1
	bne	_Label_7882
	mov	1415,r13		! source line 1415
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1419,r13		! source line 1419
	mov	"\0\0AS",r10
!   _temp_4065 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_4065 [entry ] into _temp_4066
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-32],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   _temp_4069 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_4069 [entry ] into _temp_4070
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_4068 = *_temp_4070  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_4067 = _temp_4068 OR 1		(int)
	load	[r14+-20],r1
	mov	1,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_4066 = _temp_4067  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1419,r13		! source line 1419
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_13:
	.word	_sourceFileName
	.word	_Label_4071
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_4072
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_4073
	.word	12
	.word	4
	.word	_Label_4074
	.word	-12
	.word	4
	.word	_Label_4075
	.word	-16
	.word	4
	.word	_Label_4076
	.word	-20
	.word	4
	.word	_Label_4077
	.word	-24
	.word	4
	.word	_Label_4078
	.word	-28
	.word	4
	.word	_Label_4079
	.word	-32
	.word	4
	.word	0
_Label_4071:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetValid\0"
	.align
_Label_4072:
	.ascii	"Pself\0"
	.align
_Label_4073:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_4074:
	.byte	'?'
	.ascii	"_temp_4070\0"
	.align
_Label_4075:
	.byte	'?'
	.ascii	"_temp_4069\0"
	.align
_Label_4076:
	.byte	'?'
	.ascii	"_temp_4068\0"
	.align
_Label_4077:
	.byte	'?'
	.ascii	"_temp_4067\0"
	.align
_Label_4078:
	.byte	'?'
	.ascii	"_temp_4066\0"
	.align
_Label_4079:
	.byte	'?'
	.ascii	"_temp_4065\0"
	.align
! 
! ===============  METHOD ClearDirty  ===============
! 
_Method_P_Kernel_AddrSpace_14:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_14,r1
	push	r1
	mov	6,r1
_Label_7883:
	push	r0
	sub	r1,1,r1
	bne	_Label_7883
	mov	1424,r13		! source line 1424
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1428,r13		! source line 1428
	mov	"\0\0AS",r10
!   _temp_4080 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_4080 [entry ] into _temp_4081
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-32],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   _temp_4084 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_4084 [entry ] into _temp_4085
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_4083 = *_temp_4085  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_4082 = _temp_4083 AND -9		(int)
	load	[r14+-20],r1
	mov	-9,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_4081 = _temp_4082  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1428,r13		! source line 1428
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_14:
	.word	_sourceFileName
	.word	_Label_4086
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_4087
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_4088
	.word	12
	.word	4
	.word	_Label_4089
	.word	-12
	.word	4
	.word	_Label_4090
	.word	-16
	.word	4
	.word	_Label_4091
	.word	-20
	.word	4
	.word	_Label_4092
	.word	-24
	.word	4
	.word	_Label_4093
	.word	-28
	.word	4
	.word	_Label_4094
	.word	-32
	.word	4
	.word	0
_Label_4086:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearDirty\0"
	.align
_Label_4087:
	.ascii	"Pself\0"
	.align
_Label_4088:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_4089:
	.byte	'?'
	.ascii	"_temp_4085\0"
	.align
_Label_4090:
	.byte	'?'
	.ascii	"_temp_4084\0"
	.align
_Label_4091:
	.byte	'?'
	.ascii	"_temp_4083\0"
	.align
_Label_4092:
	.byte	'?'
	.ascii	"_temp_4082\0"
	.align
_Label_4093:
	.byte	'?'
	.ascii	"_temp_4081\0"
	.align
_Label_4094:
	.byte	'?'
	.ascii	"_temp_4080\0"
	.align
! 
! ===============  METHOD ClearReferenced  ===============
! 
_Method_P_Kernel_AddrSpace_15:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_15,r1
	push	r1
	mov	6,r1
_Label_7884:
	push	r0
	sub	r1,1,r1
	bne	_Label_7884
	mov	1433,r13		! source line 1433
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1437,r13		! source line 1437
	mov	"\0\0AS",r10
!   _temp_4095 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_4095 [entry ] into _temp_4096
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-32],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   _temp_4099 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_4099 [entry ] into _temp_4100
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_4098 = *_temp_4100  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_4097 = _temp_4098 AND -5		(int)
	load	[r14+-20],r1
	mov	-5,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_4096 = _temp_4097  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1437,r13		! source line 1437
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_15:
	.word	_sourceFileName
	.word	_Label_4101
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_4102
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_4103
	.word	12
	.word	4
	.word	_Label_4104
	.word	-12
	.word	4
	.word	_Label_4105
	.word	-16
	.word	4
	.word	_Label_4106
	.word	-20
	.word	4
	.word	_Label_4107
	.word	-24
	.word	4
	.word	_Label_4108
	.word	-28
	.word	4
	.word	_Label_4109
	.word	-32
	.word	4
	.word	0
_Label_4101:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearReferenced\0"
	.align
_Label_4102:
	.ascii	"Pself\0"
	.align
_Label_4103:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_4104:
	.byte	'?'
	.ascii	"_temp_4100\0"
	.align
_Label_4105:
	.byte	'?'
	.ascii	"_temp_4099\0"
	.align
_Label_4106:
	.byte	'?'
	.ascii	"_temp_4098\0"
	.align
_Label_4107:
	.byte	'?'
	.ascii	"_temp_4097\0"
	.align
_Label_4108:
	.byte	'?'
	.ascii	"_temp_4096\0"
	.align
_Label_4109:
	.byte	'?'
	.ascii	"_temp_4095\0"
	.align
! 
! ===============  METHOD ClearWritable  ===============
! 
_Method_P_Kernel_AddrSpace_16:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_16,r1
	push	r1
	mov	6,r1
_Label_7885:
	push	r0
	sub	r1,1,r1
	bne	_Label_7885
	mov	1442,r13		! source line 1442
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1446,r13		! source line 1446
	mov	"\0\0AS",r10
!   _temp_4110 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_4110 [entry ] into _temp_4111
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-32],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   _temp_4114 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_4114 [entry ] into _temp_4115
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_4113 = *_temp_4115  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_4112 = _temp_4113 AND -3		(int)
	load	[r14+-20],r1
	mov	-3,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_4111 = _temp_4112  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1446,r13		! source line 1446
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_16:
	.word	_sourceFileName
	.word	_Label_4116
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_4117
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_4118
	.word	12
	.word	4
	.word	_Label_4119
	.word	-12
	.word	4
	.word	_Label_4120
	.word	-16
	.word	4
	.word	_Label_4121
	.word	-20
	.word	4
	.word	_Label_4122
	.word	-24
	.word	4
	.word	_Label_4123
	.word	-28
	.word	4
	.word	_Label_4124
	.word	-32
	.word	4
	.word	0
_Label_4116:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearWritable\0"
	.align
_Label_4117:
	.ascii	"Pself\0"
	.align
_Label_4118:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_4119:
	.byte	'?'
	.ascii	"_temp_4115\0"
	.align
_Label_4120:
	.byte	'?'
	.ascii	"_temp_4114\0"
	.align
_Label_4121:
	.byte	'?'
	.ascii	"_temp_4113\0"
	.align
_Label_4122:
	.byte	'?'
	.ascii	"_temp_4112\0"
	.align
_Label_4123:
	.byte	'?'
	.ascii	"_temp_4111\0"
	.align
_Label_4124:
	.byte	'?'
	.ascii	"_temp_4110\0"
	.align
! 
! ===============  METHOD ClearValid  ===============
! 
_Method_P_Kernel_AddrSpace_17:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_17,r1
	push	r1
	mov	6,r1
_Label_7886:
	push	r0
	sub	r1,1,r1
	bne	_Label_7886
	mov	1451,r13		! source line 1451
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1455,r13		! source line 1455
	mov	"\0\0AS",r10
!   _temp_4125 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_4125 [entry ] into _temp_4126
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-32],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   _temp_4129 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_4129 [entry ] into _temp_4130
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_4128 = *_temp_4130  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_4127 = _temp_4128 AND -2		(int)
	load	[r14+-20],r1
	mov	-2,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_4126 = _temp_4127  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1455,r13		! source line 1455
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_17:
	.word	_sourceFileName
	.word	_Label_4131
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_4132
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_4133
	.word	12
	.word	4
	.word	_Label_4134
	.word	-12
	.word	4
	.word	_Label_4135
	.word	-16
	.word	4
	.word	_Label_4136
	.word	-20
	.word	4
	.word	_Label_4137
	.word	-24
	.word	4
	.word	_Label_4138
	.word	-28
	.word	4
	.word	_Label_4139
	.word	-32
	.word	4
	.word	0
_Label_4131:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearValid\0"
	.align
_Label_4132:
	.ascii	"Pself\0"
	.align
_Label_4133:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_4134:
	.byte	'?'
	.ascii	"_temp_4130\0"
	.align
_Label_4135:
	.byte	'?'
	.ascii	"_temp_4129\0"
	.align
_Label_4136:
	.byte	'?'
	.ascii	"_temp_4128\0"
	.align
_Label_4137:
	.byte	'?'
	.ascii	"_temp_4127\0"
	.align
_Label_4138:
	.byte	'?'
	.ascii	"_temp_4126\0"
	.align
_Label_4139:
	.byte	'?'
	.ascii	"_temp_4125\0"
	.align
! 
! ===============  METHOD SetToThisPageTable  ===============
! 
_Method_P_Kernel_AddrSpace_18:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_18,r1
	push	r1
	mov	6,r1
_Label_7887:
	push	r0
	sub	r1,1,r1
	bne	_Label_7887
	mov	1460,r13		! source line 1460
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_4141 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_4141 [0 ] into _temp_4142
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-20],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   _temp_4140 = _temp_4142		(4 bytes)
	load	[r14+-16],r1
	store	r1,[r14+-24]
!   _temp_4143 = numberOfPages * 4		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	4,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_4140  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_4143  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+4]
!   Call the function
	mov	1466,r13		! source line 1466
	mov	"\0\0CE",r10
	call	LoadPageTableRegs
! RETURN STATEMENT...
	mov	1466,r13		! source line 1466
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_18:
	.word	_sourceFileName
	.word	_Label_4144
	.word	4		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_4145
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_4146
	.word	-12
	.word	4
	.word	_Label_4147
	.word	-16
	.word	4
	.word	_Label_4148
	.word	-20
	.word	4
	.word	_Label_4149
	.word	-24
	.word	4
	.word	0
_Label_4144:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetToThisPageTable\0"
	.align
_Label_4145:
	.ascii	"Pself\0"
	.align
_Label_4146:
	.byte	'?'
	.ascii	"_temp_4143\0"
	.align
_Label_4147:
	.byte	'?'
	.ascii	"_temp_4142\0"
	.align
_Label_4148:
	.byte	'?'
	.ascii	"_temp_4141\0"
	.align
_Label_4149:
	.byte	'?'
	.ascii	"_temp_4140\0"
	.align
! 
! ===============  METHOD CopyBytesFromVirtual  ===============
! 
_Method_P_Kernel_AddrSpace_19:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_19,r1
	push	r1
	mov	21,r1
_Label_7888:
	push	r0
	sub	r1,1,r1
	bne	_Label_7888
	mov	1471,r13		! source line 1471
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1486,r13		! source line 1486
	mov	"\0\0IF",r10
!   if intIsZero (numBytes) then goto _Label_4150
	load	[r14+20],r1
	cmp	r1,r0
	be	_Label_4150
	jmp	_Label_4151
_Label_4150:
! THEN...
	mov	1487,r13		! source line 1487
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1487,r13		! source line 1487
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,88,r15
	pop	r13
	pop	r14
	ret
	jmp	_Label_4152
_Label_4151:
! ELSE...
	mov	1488,r13		! source line 1488
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	1488,r13		! source line 1488
	mov	"\0\0IF",r10
!   if numBytes >= 0 then goto _Label_4154		(int)
	load	[r14+20],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_4154
!	_Label_4153	jmp	_Label_4153
_Label_4153:
! THEN...
	mov	1489,r13		! source line 1489
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	1489,r13		! source line 1489
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_4156 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-64]
!   Data Move: _temp_4155 = *_temp_4156  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   if intIsZero (_temp_4155) then goto _runtimeErrorNullPointer
	load	[r14+-68],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_4157 = _temp_4155 + 236
	load	[r14+-68],r1
	add	r1,236,r1
	store	r1,[r14+-60]
!   Data Move: *_temp_4157 = 8  (sizeInBytes=4)
	mov	8,r1
	load	[r14+-60],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1490,r13		! source line 1490
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,88,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_4154:
! END IF...
_Label_4152:
! ASSIGNMENT STATEMENT...
	mov	1492,r13		! source line 1492
	mov	"\0\0AS",r10
!   virtPage = virtAddr div 8192		(int)
	load	[r14+16],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-76]
! ASSIGNMENT STATEMENT...
	mov	1493,r13		! source line 1493
	mov	"\0\0AS",r10
!   offset = virtAddr rem 8192		(int)
	load	[r14+16],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-80]
! WHILE STATEMENT...
	mov	1496,r13		! source line 1496
	mov	"\0\0WH",r10
_Label_4158:
!	_Label_4159	jmp	_Label_4159
_Label_4159:
	mov	1496,r13		! source line 1496
	mov	"\0\0WB",r10
! IF STATEMENT...
	mov	1497,r13		! source line 1497
	mov	"\0\0IF",r10
!   if virtPage < numberOfPages then goto _Label_4162		(int)
	load	[r14+-76],r1
	load	[r14+8],r2
	load	[r2+4],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_4162
!	_Label_4161	jmp	_Label_4161
_Label_4161:
! THEN...
	mov	1498,r13		! source line 1498
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_4163 = _StringConst_135
	set	_StringConst_135,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_4163  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	1498,r13		! source line 1498
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	1499,r13		! source line 1499
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_4165 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-48]
!   Data Move: _temp_4164 = *_temp_4165  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r1],r1
	store	r1,[r14+-52]
!   if intIsZero (_temp_4164) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_4166 = _temp_4164 + 236
	load	[r14+-52],r1
	add	r1,236,r1
	store	r1,[r14+-44]
!   Data Move: *_temp_4166 = 8  (sizeInBytes=4)
	mov	8,r1
	load	[r14+-44],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1500,r13		! source line 1500
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,88,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_4162:
! IF STATEMENT...
	mov	1502,r13		! source line 1502
	mov	"\0\0IF",r10
	mov	1502,r13		! source line 1502
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-40]
!   if intIsZero (_temp_4170) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+4]
!   Send message IsValid
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,36,r2
	call	r2
!   Retrieve Result: targetName=_temp_4169  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_4169 then goto _Label_4168 else goto _Label_4167
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_4167
	jmp	_Label_4168
_Label_4167:
! THEN...
	mov	1503,r13		! source line 1503
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_4171 = _StringConst_136
	set	_StringConst_136,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_4171  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	1503,r13		! source line 1503
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	1504,r13		! source line 1504
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_4173 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-28]
!   Data Move: _temp_4172 = *_temp_4173  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   if intIsZero (_temp_4172) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_4174 = _temp_4172 + 236
	load	[r14+-32],r1
	add	r1,236,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_4174 = 8  (sizeInBytes=4)
	mov	8,r1
	load	[r14+-24],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1505,r13		! source line 1505
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,88,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_4168:
! ASSIGNMENT STATEMENT...
	mov	1507,r13		! source line 1507
	mov	"\0\0AS",r10
	mov	1507,r13		! source line 1507
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_4176) then goto _runtimeErrorNullPointer
	load	[r14+-16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_4175  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   fromAddr = _temp_4175 + offset		(int)
	load	[r14+-20],r1
	load	[r14+-80],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-84]
! WHILE STATEMENT...
	mov	1509,r13		! source line 1509
	mov	"\0\0WH",r10
_Label_4177:
!   if offset >= 8192 then goto _Label_4179		(int)
	load	[r14+-80],r1
	mov	8192,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_4179
!	_Label_4178	jmp	_Label_4178
_Label_4178:
	mov	1509,r13		! source line 1509
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	1512,r13		! source line 1512
	mov	"\0\0AS",r10
!   if intIsZero (kernelAddr) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   if intIsZero (fromAddr) then goto _runtimeErrorNullPointer
	load	[r14+-84],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_4180 = *fromAddr  (sizeInBytes=1)
	load	[r14+-84],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *kernelAddr = _temp_4180  (sizeInBytes=1)
	loadb	[r14+-9],r1
	load	[r14+12],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1513,r13		! source line 1513
	mov	"\0\0AS",r10
!   offset = offset + 1		(int)
	load	[r14+-80],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-80]
! ASSIGNMENT STATEMENT...
	mov	1514,r13		! source line 1514
	mov	"\0\0AS",r10
!   kernelAddr = kernelAddr + 1		(int)
	load	[r14+12],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+12]
! ASSIGNMENT STATEMENT...
	mov	1515,r13		! source line 1515
	mov	"\0\0AS",r10
!   fromAddr = fromAddr + 1		(int)
	load	[r14+-84],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-84]
! ASSIGNMENT STATEMENT...
	mov	1516,r13		! source line 1516
	mov	"\0\0AS",r10
!   copiedSoFar = copiedSoFar + 1		(int)
	load	[r14+-72],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-72]
! IF STATEMENT...
	mov	1517,r13		! source line 1517
	mov	"\0\0IF",r10
!   if copiedSoFar != numBytes then goto _Label_4182		(int)
	load	[r14+-72],r1
	load	[r14+20],r2
	cmp	r1,r2
	bne	_Label_4182
!	_Label_4181	jmp	_Label_4181
_Label_4181:
! THEN...
	mov	1518,r13		! source line 1518
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1518,r13		! source line 1518
	mov	"\0\0RE",r10
!   ReturnResult: copiedSoFar  (sizeInBytes=4)
	load	[r14+-72],r1
	store	r1,[r14+8]
	add	r15,88,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_4182:
! END WHILE...
	jmp	_Label_4177
_Label_4179:
! ASSIGNMENT STATEMENT...
	mov	1521,r13		! source line 1521
	mov	"\0\0AS",r10
!   virtPage = virtPage + 1		(int)
	load	[r14+-76],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-76]
! ASSIGNMENT STATEMENT...
	mov	1522,r13		! source line 1522
	mov	"\0\0AS",r10
!   offset = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-80]
! END WHILE...
	jmp	_Label_4158
_Label_4160:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_19:
	.word	_sourceFileName
	.word	_Label_4183
	.word	16		! total size of parameters
	.word	84		! frame size = 84
	.word	_Label_4184
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_4185
	.word	12
	.word	4
	.word	_Label_4186
	.word	16
	.word	4
	.word	_Label_4187
	.word	20
	.word	4
	.word	_Label_4188
	.word	-9
	.word	1
	.word	_Label_4189
	.word	-16
	.word	4
	.word	_Label_4190
	.word	-20
	.word	4
	.word	_Label_4191
	.word	-24
	.word	4
	.word	_Label_4192
	.word	-28
	.word	4
	.word	_Label_4193
	.word	-32
	.word	4
	.word	_Label_4194
	.word	-36
	.word	4
	.word	_Label_4195
	.word	-40
	.word	4
	.word	_Label_4196
	.word	-10
	.word	1
	.word	_Label_4197
	.word	-44
	.word	4
	.word	_Label_4198
	.word	-48
	.word	4
	.word	_Label_4199
	.word	-52
	.word	4
	.word	_Label_4200
	.word	-56
	.word	4
	.word	_Label_4201
	.word	-60
	.word	4
	.word	_Label_4202
	.word	-64
	.word	4
	.word	_Label_4203
	.word	-68
	.word	4
	.word	_Label_4204
	.word	-72
	.word	4
	.word	_Label_4205
	.word	-76
	.word	4
	.word	_Label_4206
	.word	-80
	.word	4
	.word	_Label_4207
	.word	-84
	.word	4
	.word	0
_Label_4183:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"CopyBytesFromVirtual\0"
	.align
_Label_4184:
	.ascii	"Pself\0"
	.align
_Label_4185:
	.byte	'I'
	.ascii	"kernelAddr\0"
	.align
_Label_4186:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_4187:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_4188:
	.byte	'C'
	.ascii	"_temp_4180\0"
	.align
_Label_4189:
	.byte	'?'
	.ascii	"_temp_4176\0"
	.align
_Label_4190:
	.byte	'?'
	.ascii	"_temp_4175\0"
	.align
_Label_4191:
	.byte	'?'
	.ascii	"_temp_4174\0"
	.align
_Label_4192:
	.byte	'?'
	.ascii	"_temp_4173\0"
	.align
_Label_4193:
	.byte	'?'
	.ascii	"_temp_4172\0"
	.align
_Label_4194:
	.byte	'?'
	.ascii	"_temp_4171\0"
	.align
_Label_4195:
	.byte	'?'
	.ascii	"_temp_4170\0"
	.align
_Label_4196:
	.byte	'C'
	.ascii	"_temp_4169\0"
	.align
_Label_4197:
	.byte	'?'
	.ascii	"_temp_4166\0"
	.align
_Label_4198:
	.byte	'?'
	.ascii	"_temp_4165\0"
	.align
_Label_4199:
	.byte	'?'
	.ascii	"_temp_4164\0"
	.align
_Label_4200:
	.byte	'?'
	.ascii	"_temp_4163\0"
	.align
_Label_4201:
	.byte	'?'
	.ascii	"_temp_4157\0"
	.align
_Label_4202:
	.byte	'?'
	.ascii	"_temp_4156\0"
	.align
_Label_4203:
	.byte	'?'
	.ascii	"_temp_4155\0"
	.align
_Label_4204:
	.byte	'I'
	.ascii	"copiedSoFar\0"
	.align
_Label_4205:
	.byte	'I'
	.ascii	"virtPage\0"
	.align
_Label_4206:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_4207:
	.byte	'I'
	.ascii	"fromAddr\0"
	.align
! 
! ===============  METHOD CopyBytesToVirtual  ===============
! 
_Method_P_Kernel_AddrSpace_20:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_20,r1
	push	r1
	mov	17,r1
_Label_7889:
	push	r0
	sub	r1,1,r1
	bne	_Label_7889
	mov	1528,r13		! source line 1528
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1539,r13		! source line 1539
	mov	"\0\0IF",r10
!   if intIsZero (numBytes) then goto _Label_4208
	load	[r14+20],r1
	cmp	r1,r0
	be	_Label_4208
	jmp	_Label_4209
_Label_4208:
! THEN...
	mov	1540,r13		! source line 1540
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1540,r13		! source line 1540
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,72,r15
	pop	r13
	pop	r14
	ret
	jmp	_Label_4210
_Label_4209:
! ELSE...
	mov	1541,r13		! source line 1541
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	1541,r13		! source line 1541
	mov	"\0\0IF",r10
!   if numBytes >= 0 then goto _Label_4212		(int)
	load	[r14+20],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_4212
!	_Label_4211	jmp	_Label_4211
_Label_4211:
! THEN...
	mov	1542,r13		! source line 1542
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	1542,r13		! source line 1542
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_4214 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-48]
!   Data Move: _temp_4213 = *_temp_4214  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r1],r1
	store	r1,[r14+-52]
!   if intIsZero (_temp_4213) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_4215 = _temp_4213 + 236
	load	[r14+-52],r1
	add	r1,236,r1
	store	r1,[r14+-44]
!   Data Move: *_temp_4215 = 8  (sizeInBytes=4)
	mov	8,r1
	load	[r14+-44],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1543,r13		! source line 1543
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,72,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_4212:
! END IF...
_Label_4210:
! ASSIGNMENT STATEMENT...
	mov	1545,r13		! source line 1545
	mov	"\0\0AS",r10
!   virtPage = virtAddr div 8192		(int)
	load	[r14+12],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-60]
! ASSIGNMENT STATEMENT...
	mov	1546,r13		! source line 1546
	mov	"\0\0AS",r10
!   offset = virtAddr rem 8192		(int)
	load	[r14+12],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-64]
! WHILE STATEMENT...
	mov	1547,r13		! source line 1547
	mov	"\0\0WH",r10
_Label_4216:
!	_Label_4217	jmp	_Label_4217
_Label_4217:
	mov	1547,r13		! source line 1547
	mov	"\0\0WB",r10
! IF STATEMENT...
	mov	1548,r13		! source line 1548
	mov	"\0\0IF",r10
!   if virtPage < numberOfPages then goto _Label_4222		(int)
	load	[r14+-60],r1
	load	[r14+8],r2
	load	[r2+4],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_4222
	jmp	_Label_4219
_Label_4222:
	mov	1549,r13		! source line 1549
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-40]
!   if intIsZero (_temp_4224) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+4]
!   Send message IsValid
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,36,r2
	call	r2
!   Retrieve Result: targetName=_temp_4223  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-11]
!   if _temp_4223 then goto _Label_4221 else goto _Label_4219
	loadb	[r14+-11],r1
	cmp	r1,0
	be	_Label_4219
	jmp	_Label_4221
_Label_4221:
	mov	1550,r13		! source line 1550
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-36]
!   if intIsZero (_temp_4226) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+4]
!   Send message IsWritable
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   Retrieve Result: targetName=_temp_4225  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_4225 then goto _Label_4220 else goto _Label_4219
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_4219
	jmp	_Label_4220
_Label_4219:
! THEN...
	mov	1551,r13		! source line 1551
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	1551,r13		! source line 1551
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_4228 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-28]
!   Data Move: _temp_4227 = *_temp_4228  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   if intIsZero (_temp_4227) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_4229 = _temp_4227 + 236
	load	[r14+-32],r1
	add	r1,236,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_4229 = 8  (sizeInBytes=4)
	mov	8,r1
	load	[r14+-24],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1552,r13		! source line 1552
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,72,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_4220:
! ASSIGNMENT STATEMENT...
	mov	1554,r13		! source line 1554
	mov	"\0\0AS",r10
	mov	1554,r13		! source line 1554
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_4231) then goto _runtimeErrorNullPointer
	load	[r14+-16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_4230  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   destAddr = _temp_4230 + offset		(int)
	load	[r14+-20],r1
	load	[r14+-64],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-68]
! WHILE STATEMENT...
	mov	1555,r13		! source line 1555
	mov	"\0\0WH",r10
_Label_4232:
!   if offset >= 8192 then goto _Label_4234		(int)
	load	[r14+-64],r1
	mov	8192,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_4234
!	_Label_4233	jmp	_Label_4233
_Label_4233:
	mov	1555,r13		! source line 1555
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	1556,r13		! source line 1556
	mov	"\0\0AS",r10
!   if intIsZero (destAddr) then goto _runtimeErrorNullPointer
	load	[r14+-68],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   if intIsZero (kernelAddr) then goto _runtimeErrorNullPointer
	load	[r14+16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_4235 = *kernelAddr  (sizeInBytes=1)
	load	[r14+16],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *destAddr = _temp_4235  (sizeInBytes=1)
	loadb	[r14+-9],r1
	load	[r14+-68],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1557,r13		! source line 1557
	mov	"\0\0AS",r10
!   offset = offset + 1		(int)
	load	[r14+-64],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-64]
! ASSIGNMENT STATEMENT...
	mov	1558,r13		! source line 1558
	mov	"\0\0AS",r10
!   kernelAddr = kernelAddr + 1		(int)
	load	[r14+16],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+16]
! ASSIGNMENT STATEMENT...
	mov	1559,r13		! source line 1559
	mov	"\0\0AS",r10
!   destAddr = destAddr + 1		(int)
	load	[r14+-68],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-68]
! ASSIGNMENT STATEMENT...
	mov	1560,r13		! source line 1560
	mov	"\0\0AS",r10
!   copiedSoFar = copiedSoFar + 1		(int)
	load	[r14+-56],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-56]
! IF STATEMENT...
	mov	1561,r13		! source line 1561
	mov	"\0\0IF",r10
!   if copiedSoFar != numBytes then goto _Label_4237		(int)
	load	[r14+-56],r1
	load	[r14+20],r2
	cmp	r1,r2
	bne	_Label_4237
!	_Label_4236	jmp	_Label_4236
_Label_4236:
! THEN...
	mov	1562,r13		! source line 1562
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1562,r13		! source line 1562
	mov	"\0\0RE",r10
!   ReturnResult: copiedSoFar  (sizeInBytes=4)
	load	[r14+-56],r1
	store	r1,[r14+8]
	add	r15,72,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_4237:
! END WHILE...
	jmp	_Label_4232
_Label_4234:
! ASSIGNMENT STATEMENT...
	mov	1565,r13		! source line 1565
	mov	"\0\0AS",r10
!   virtPage = virtPage + 1		(int)
	load	[r14+-60],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-60]
! ASSIGNMENT STATEMENT...
	mov	1566,r13		! source line 1566
	mov	"\0\0AS",r10
!   offset = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-64]
! END WHILE...
	jmp	_Label_4216
_Label_4218:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_20:
	.word	_sourceFileName
	.word	_Label_4238
	.word	16		! total size of parameters
	.word	68		! frame size = 68
	.word	_Label_4239
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_4240
	.word	12
	.word	4
	.word	_Label_4241
	.word	16
	.word	4
	.word	_Label_4242
	.word	20
	.word	4
	.word	_Label_4243
	.word	-9
	.word	1
	.word	_Label_4244
	.word	-16
	.word	4
	.word	_Label_4245
	.word	-20
	.word	4
	.word	_Label_4246
	.word	-24
	.word	4
	.word	_Label_4247
	.word	-28
	.word	4
	.word	_Label_4248
	.word	-32
	.word	4
	.word	_Label_4249
	.word	-36
	.word	4
	.word	_Label_4250
	.word	-10
	.word	1
	.word	_Label_4251
	.word	-40
	.word	4
	.word	_Label_4252
	.word	-11
	.word	1
	.word	_Label_4253
	.word	-44
	.word	4
	.word	_Label_4254
	.word	-48
	.word	4
	.word	_Label_4255
	.word	-52
	.word	4
	.word	_Label_4256
	.word	-56
	.word	4
	.word	_Label_4257
	.word	-60
	.word	4
	.word	_Label_4258
	.word	-64
	.word	4
	.word	_Label_4259
	.word	-68
	.word	4
	.word	0
_Label_4238:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"CopyBytesToVirtual\0"
	.align
_Label_4239:
	.ascii	"Pself\0"
	.align
_Label_4240:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_4241:
	.byte	'I'
	.ascii	"kernelAddr\0"
	.align
_Label_4242:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_4243:
	.byte	'C'
	.ascii	"_temp_4235\0"
	.align
_Label_4244:
	.byte	'?'
	.ascii	"_temp_4231\0"
	.align
_Label_4245:
	.byte	'?'
	.ascii	"_temp_4230\0"
	.align
_Label_4246:
	.byte	'?'
	.ascii	"_temp_4229\0"
	.align
_Label_4247:
	.byte	'?'
	.ascii	"_temp_4228\0"
	.align
_Label_4248:
	.byte	'?'
	.ascii	"_temp_4227\0"
	.align
_Label_4249:
	.byte	'?'
	.ascii	"_temp_4226\0"
	.align
_Label_4250:
	.byte	'C'
	.ascii	"_temp_4225\0"
	.align
_Label_4251:
	.byte	'?'
	.ascii	"_temp_4224\0"
	.align
_Label_4252:
	.byte	'C'
	.ascii	"_temp_4223\0"
	.align
_Label_4253:
	.byte	'?'
	.ascii	"_temp_4215\0"
	.align
_Label_4254:
	.byte	'?'
	.ascii	"_temp_4214\0"
	.align
_Label_4255:
	.byte	'?'
	.ascii	"_temp_4213\0"
	.align
_Label_4256:
	.byte	'I'
	.ascii	"copiedSoFar\0"
	.align
_Label_4257:
	.byte	'I'
	.ascii	"virtPage\0"
	.align
_Label_4258:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_4259:
	.byte	'I'
	.ascii	"destAddr\0"
	.align
! 
! ===============  METHOD GetStringFromVirtual  ===============
! 
_Method_P_Kernel_AddrSpace_21:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_21,r1
	push	r1
	mov	16,r1
_Label_7890:
	push	r0
	sub	r1,1,r1
	bne	_Label_7890
	mov	1572,r13		! source line 1572
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1596,r13		! source line 1596
	mov	"\0\0IF",r10
	mov	1596,r13		! source line 1596
	mov	"\0\0SE",r10
!   _temp_4263 = &sourceSize
	add	r14,-56,r1
	store	r1,[r14+-48]
	load	[r14+8],r1
	store	r1,[r14+-44]
!   if intIsZero (_temp_4264) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_4263  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=virtAddr  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=4  sizeInBytes=4
	mov	4,r1
	store	r1,[r15+12]
!   Send message CopyBytesFromVirtual
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,76,r2
	call	r2
!   Retrieve Result: targetName=_temp_4262  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-52]
!   if _temp_4262 >= 4 then goto _Label_4261		(int)
	load	[r14+-52],r1
	mov	4,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_4261
!	_Label_4260	jmp	_Label_4260
_Label_4260:
! THEN...
	mov	1599,r13		! source line 1599
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1599,r13		! source line 1599
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,68,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_4261:
! IF STATEMENT...
	mov	1603,r13		! source line 1603
	mov	"\0\0IF",r10
!   if sourceSize <= maxSize then goto _Label_4266		(int)
	load	[r14+-56],r1
	load	[r14+20],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_4266
!	_Label_4265	jmp	_Label_4265
_Label_4265:
! THEN...
	mov	1604,r13		! source line 1604
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	1604,r13		! source line 1604
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_4268 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-36]
!   Data Move: _temp_4267 = *_temp_4268  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if intIsZero (_temp_4267) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_4269 = _temp_4267 + 236
	load	[r14+-40],r1
	add	r1,236,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_4269 = 8  (sizeInBytes=4)
	mov	8,r1
	load	[r14+-32],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1605,r13		! source line 1605
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,68,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_4266:
! ASSIGNMENT STATEMENT...
	mov	1608,r13		! source line 1608
	mov	"\0\0AS",r10
!   if intIsZero (kernelAddr) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *kernelAddr = sourceSize  (sizeInBytes=4)
	load	[r14+-56],r1
	load	[r14+12],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1610,r13		! source line 1610
	mov	"\0\0RE",r10
	mov	1610,r13		! source line 1610
	mov	"\0\0SE",r10
!   _temp_4272 = kernelAddr		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-20]
!   _temp_4271 = _temp_4272 + 4		(int)
	load	[r14+-20],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-24]
!   _temp_4273 = virtAddr + 4		(int)
	load	[r14+16],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-16]
	load	[r14+8],r1
	store	r1,[r14+-12]
!   if intIsZero (_temp_4274) then goto _runtimeErrorNullPointer
	load	[r14+-12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_4271  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_4273  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=sourceSize  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+12]
!   Send message CopyBytesFromVirtual
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,76,r2
	call	r2
!   Retrieve Result: targetName=_temp_4270  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
!   ReturnResult: _temp_4270  (sizeInBytes=4)
	load	[r14+-28],r1
	store	r1,[r14+8]
	add	r15,68,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_21:
	.word	_sourceFileName
	.word	_Label_4275
	.word	16		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_4276
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_4277
	.word	12
	.word	4
	.word	_Label_4278
	.word	16
	.word	4
	.word	_Label_4279
	.word	20
	.word	4
	.word	_Label_4280
	.word	-12
	.word	4
	.word	_Label_4281
	.word	-16
	.word	4
	.word	_Label_4282
	.word	-20
	.word	4
	.word	_Label_4283
	.word	-24
	.word	4
	.word	_Label_4284
	.word	-28
	.word	4
	.word	_Label_4285
	.word	-32
	.word	4
	.word	_Label_4286
	.word	-36
	.word	4
	.word	_Label_4287
	.word	-40
	.word	4
	.word	_Label_4288
	.word	-44
	.word	4
	.word	_Label_4289
	.word	-48
	.word	4
	.word	_Label_4290
	.word	-52
	.word	4
	.word	_Label_4291
	.word	-56
	.word	4
	.word	0
_Label_4275:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"GetStringFromVirtual\0"
	.align
_Label_4276:
	.ascii	"Pself\0"
	.align
_Label_4277:
	.byte	'P'
	.ascii	"kernelAddr\0"
	.align
_Label_4278:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_4279:
	.byte	'I'
	.ascii	"maxSize\0"
	.align
_Label_4280:
	.byte	'?'
	.ascii	"_temp_4274\0"
	.align
_Label_4281:
	.byte	'?'
	.ascii	"_temp_4273\0"
	.align
_Label_4282:
	.byte	'?'
	.ascii	"_temp_4272\0"
	.align
_Label_4283:
	.byte	'?'
	.ascii	"_temp_4271\0"
	.align
_Label_4284:
	.byte	'?'
	.ascii	"_temp_4270\0"
	.align
_Label_4285:
	.byte	'?'
	.ascii	"_temp_4269\0"
	.align
_Label_4286:
	.byte	'?'
	.ascii	"_temp_4268\0"
	.align
_Label_4287:
	.byte	'?'
	.ascii	"_temp_4267\0"
	.align
_Label_4288:
	.byte	'?'
	.ascii	"_temp_4264\0"
	.align
_Label_4289:
	.byte	'?'
	.ascii	"_temp_4263\0"
	.align
_Label_4290:
	.byte	'?'
	.ascii	"_temp_4262\0"
	.align
_Label_4291:
	.byte	'I'
	.ascii	"sourceSize\0"
	.align
! 
! ===============  CLASS DiskDriver  ===============
! 
! Dispatch Table:
! 
_P_Kernel_DiskDriver:
	.word	_Label_4292
	jmp	_Method_P_Kernel_DiskDriver_1	! 4:	Init
	jmp	_Method_P_Kernel_DiskDriver_2	! 8:	SynchReadSector
	jmp	_Method_P_Kernel_DiskDriver_3	! 12:	StartReadSector
	jmp	_Method_P_Kernel_DiskDriver_4	! 16:	SynchWriteSector
	jmp	_Method_P_Kernel_DiskDriver_5	! 20:	StartWriteSector
	.word	0
! 
! Class descriptor:
! 
_Label_4292:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_4293
	.word	_sourceFileName
	.word	327		! line number
	.word	68		! size of instances, in bytes
	.word	_P_Kernel_DiskDriver
	.word	_P_System_Object
	.word	0
_Label_4293:
	.ascii	"DiskDriver\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_DiskDriver_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_DiskDriver_1,r1
	push	r1
	mov	7,r1
_Label_7891:
	push	r0
	sub	r1,1,r1
	bne	_Label_7891
	mov	2762,r13		! source line 2762
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_4294 = _StringConst_137
	set	_StringConst_137,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_4294  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	2763,r13		! source line 2763
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	2764,r13		! source line 2764
	mov	"\0\0AS",r10
!   DISK_STATUS_WORD_ADDRESS = 16776968		(4 bytes)
	set	16776968,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! ASSIGNMENT STATEMENT...
	mov	2765,r13		! source line 2765
	mov	"\0\0AS",r10
!   DISK_COMMAND_WORD_ADDRESS = 16776968		(4 bytes)
	set	16776968,r1
	load	[r14+8],r2
	store	r1,[r2+8]
! ASSIGNMENT STATEMENT...
	mov	2766,r13		! source line 2766
	mov	"\0\0AS",r10
!   DISK_MEMORY_ADDRESS_REGISTER = 16776972		(4 bytes)
	set	16776972,r1
	load	[r14+8],r2
	store	r1,[r2+12]
! ASSIGNMENT STATEMENT...
	mov	2767,r13		! source line 2767
	mov	"\0\0AS",r10
!   DISK_SECTOR_NUMBER_REGISTER = 16776976		(4 bytes)
	set	16776976,r1
	load	[r14+8],r2
	store	r1,[r2+16]
! ASSIGNMENT STATEMENT...
	mov	2768,r13		! source line 2768
	mov	"\0\0AS",r10
!   DISK_SECTOR_COUNT_REGISTER = 16776980		(4 bytes)
	set	16776980,r1
	load	[r14+8],r2
	store	r1,[r2+20]
! ASSIGNMENT STATEMENT...
	mov	2769,r13		! source line 2769
	mov	"\0\0AS",r10
!   semToSignalOnCompletion = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+24]
! ASSIGNMENT STATEMENT...
	mov	2770,r13		! source line 2770
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: semUsedInSynchMethods = zeros  (sizeInBytes=20)
	load	[r14+8],r4
	add	r4,28,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   semUsedInSynchMethods = _P_Kernel_Semaphore
	set	_P_Kernel_Semaphore,r1
	load	[r14+8],r2
	store	r1,[r2+28]
! SEND STATEMENT...
	mov	2771,r13		! source line 2771
	mov	"\0\0SE",r10
!   _temp_4296 = &semUsedInSynchMethods
	load	[r14+8],r1
	add	r1,28,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2772,r13		! source line 2772
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: diskBusy = zeros  (sizeInBytes=20)
	load	[r14+8],r4
	add	r4,48,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   diskBusy = _P_Kernel_Mutex
	set	_P_Kernel_Mutex,r1
	load	[r14+8],r2
	store	r1,[r2+48]
! SEND STATEMENT...
	mov	2773,r13		! source line 2773
	mov	"\0\0SE",r10
!   _temp_4298 = &diskBusy
	load	[r14+8],r1
	add	r1,48,r1
	store	r1,[r14+-12]
!   Send message Init
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! RETURN STATEMENT...
	mov	2773,r13		! source line 2773
	mov	"\0\0RE",r10
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_DiskDriver_1:
	.word	_sourceFileName
	.word	_Label_4299
	.word	4		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_4300
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_4301
	.word	-12
	.word	4
	.word	_Label_4302
	.word	-16
	.word	4
	.word	_Label_4303
	.word	-20
	.word	4
	.word	_Label_4304
	.word	-24
	.word	4
	.word	_Label_4305
	.word	-28
	.word	4
	.word	0
_Label_4299:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_4300:
	.ascii	"Pself\0"
	.align
_Label_4301:
	.byte	'?'
	.ascii	"_temp_4298\0"
	.align
_Label_4302:
	.byte	'?'
	.ascii	"_temp_4297\0"
	.align
_Label_4303:
	.byte	'?'
	.ascii	"_temp_4296\0"
	.align
_Label_4304:
	.byte	'?'
	.ascii	"_temp_4295\0"
	.align
_Label_4305:
	.byte	'?'
	.ascii	"_temp_4294\0"
	.align
! 
! ===============  METHOD SynchReadSector  ===============
! 
_Method_P_Kernel_DiskDriver_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_DiskDriver_2,r1
	push	r1
	mov	16,r1
_Label_7892:
	push	r0
	sub	r1,1,r1
	bne	_Label_7892
	mov	2778,r13		! source line 2778
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2791,r13		! source line 2791
	mov	"\0\0SE",r10
!   _temp_4306 = &diskBusy
	load	[r14+8],r1
	add	r1,48,r1
	store	r1,[r14+-52]
!   Send message Lock
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! WHILE STATEMENT...
	mov	2792,r13		! source line 2792
	mov	"\0\0WH",r10
_Label_4307:
!	_Label_4308	jmp	_Label_4308
_Label_4308:
	mov	2792,r13		! source line 2792
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2794,r13		! source line 2794
	mov	"\0\0SE",r10
!   _temp_4310 = &semUsedInSynchMethods
	load	[r14+8],r1
	add	r1,28,r1
	store	r1,[r14+-48]
	load	[r14+8],r1
	store	r1,[r14+-44]
!   if intIsZero (_temp_4311) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=sectorAddr  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=numberOfSectors  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=memoryAddr  sizeInBytes=4
	load	[r14+20],r1
	store	r1,[r15+12]
!   Prepare Argument: offset=24  value=_temp_4310  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+16]
!   Send message StartReadSector
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	2796,r13		! source line 2796
	mov	"\0\0SE",r10
!   _temp_4312 = &semUsedInSynchMethods
	load	[r14+8],r1
	add	r1,28,r1
	store	r1,[r14+-40]
!   Send message Down
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SWITCH STATEMENT (using series of tests)...
	mov	2799,r13		! source line 2799
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   if intIsZero (DISK_STATUS_WORD_ADDRESS) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+4],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_4321 = *DISK_STATUS_WORD_ADDRESS  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r1+4],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   Branch to the right case label
	load	[r14+-36],r1
	cmp	r1,1
	be	_Label_4315
	cmp	r1,2
	be	_Label_4316
	cmp	r1,3
	be	_Label_4317
	cmp	r1,4
	be	_Label_4318
	cmp	r1,5
	be	_Label_4319
	cmp	r1,6
	be	_Label_4320
	jmp	_Label_4313
! CASE 1...
_Label_4315:
! SEND STATEMENT...
	mov	2801,r13		! source line 2801
	mov	"\0\0SE",r10
!   _temp_4322 = &diskBusy
	load	[r14+8],r1
	add	r1,48,r1
	store	r1,[r14+-32]
!   Send message Unlock
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	2802,r13		! source line 2802
	mov	"\0\0RE",r10
	add	r15,68,r15
	pop	r13
	pop	r14
	ret
! CASE 2...
_Label_4316:
! CALL STATEMENT...
!   _temp_4323 = _StringConst_138
	set	_StringConst_138,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_4323  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2804,r13		! source line 2804
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 3...
_Label_4317:
! CALL STATEMENT...
!   _temp_4324 = _StringConst_139
	set	_StringConst_139,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_4324  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2806,r13		! source line 2806
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 4...
_Label_4318:
! CALL STATEMENT...
!   _temp_4325 = _StringConst_140
	set	_StringConst_140,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_4325  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2808,r13		! source line 2808
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 5...
_Label_4319:
! BREAK STATEMENT...
	mov	2812,r13		! source line 2812
	mov	"\0\0BR",r10
	jmp	_Label_4314
! CASE 6...
_Label_4320:
! CALL STATEMENT...
!   _temp_4326 = _StringConst_141
	set	_StringConst_141,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_4326  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2814,r13		! source line 2814
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! DEFAULT CASE...
_Label_4313:
! CALL STATEMENT...
!   _temp_4327 = _StringConst_142
	set	_StringConst_142,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_4327  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2816,r13		! source line 2816
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_4314:
! END WHILE...
	jmp	_Label_4307
_Label_4309:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_DiskDriver_2:
	.word	_sourceFileName
	.word	_Label_4328
	.word	16		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_4329
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_4330
	.word	12
	.word	4
	.word	_Label_4331
	.word	16
	.word	4
	.word	_Label_4332
	.word	20
	.word	4
	.word	_Label_4333
	.word	-12
	.word	4
	.word	_Label_4334
	.word	-16
	.word	4
	.word	_Label_4335
	.word	-20
	.word	4
	.word	_Label_4336
	.word	-24
	.word	4
	.word	_Label_4337
	.word	-28
	.word	4
	.word	_Label_4338
	.word	-32
	.word	4
	.word	_Label_4339
	.word	-36
	.word	4
	.word	_Label_4340
	.word	-40
	.word	4
	.word	_Label_4341
	.word	-44
	.word	4
	.word	_Label_4342
	.word	-48
	.word	4
	.word	_Label_4343
	.word	-52
	.word	4
	.word	0
_Label_4328:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"SynchReadSector\0"
	.align
_Label_4329:
	.ascii	"Pself\0"
	.align
_Label_4330:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_4331:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_4332:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_4333:
	.byte	'?'
	.ascii	"_temp_4327\0"
	.align
_Label_4334:
	.byte	'?'
	.ascii	"_temp_4326\0"
	.align
_Label_4335:
	.byte	'?'
	.ascii	"_temp_4325\0"
	.align
_Label_4336:
	.byte	'?'
	.ascii	"_temp_4324\0"
	.align
_Label_4337:
	.byte	'?'
	.ascii	"_temp_4323\0"
	.align
_Label_4338:
	.byte	'?'
	.ascii	"_temp_4322\0"
	.align
_Label_4339:
	.byte	'?'
	.ascii	"_temp_4321\0"
	.align
_Label_4340:
	.byte	'?'
	.ascii	"_temp_4312\0"
	.align
_Label_4341:
	.byte	'?'
	.ascii	"_temp_4311\0"
	.align
_Label_4342:
	.byte	'?'
	.ascii	"_temp_4310\0"
	.align
_Label_4343:
	.byte	'?'
	.ascii	"_temp_4306\0"
	.align
! 
! ===============  METHOD StartReadSector  ===============
! 
_Method_P_Kernel_DiskDriver_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_DiskDriver_3,r1
	push	r1
	mov	2825,r13		! source line 2825
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2840,r13		! source line 2840
	mov	"\0\0AS",r10
!   semToSignalOnCompletion = whoCares		(4 bytes)
	load	[r14+24],r1
	load	[r14+8],r2
	store	r1,[r2+24]
! ASSIGNMENT STATEMENT...
	mov	2843,r13		! source line 2843
	mov	"\0\0AS",r10
!   if intIsZero (DISK_MEMORY_ADDRESS_REGISTER) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *DISK_MEMORY_ADDRESS_REGISTER = memoryAddr  (sizeInBytes=4)
	load	[r14+20],r1
	load	[r14+8],r2
	load	[r2+12],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2844,r13		! source line 2844
	mov	"\0\0AS",r10
!   if intIsZero (DISK_SECTOR_NUMBER_REGISTER) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *DISK_SECTOR_NUMBER_REGISTER = sectorAddr  (sizeInBytes=4)
	load	[r14+12],r1
	load	[r14+8],r2
	load	[r2+16],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2845,r13		! source line 2845
	mov	"\0\0AS",r10
!   if intIsZero (DISK_SECTOR_COUNT_REGISTER) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *DISK_SECTOR_COUNT_REGISTER = numberOfSectors  (sizeInBytes=4)
	load	[r14+16],r1
	load	[r14+8],r2
	load	[r2+20],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2846,r13		! source line 2846
	mov	"\0\0AS",r10
!   if intIsZero (DISK_COMMAND_WORD_ADDRESS) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *DISK_COMMAND_WORD_ADDRESS = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+8],r2
	load	[r2+8],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	2846,r13		! source line 2846
	mov	"\0\0RE",r10
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_DiskDriver_3:
	.word	_sourceFileName
	.word	_Label_4344
	.word	20		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_4345
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_4346
	.word	12
	.word	4
	.word	_Label_4347
	.word	16
	.word	4
	.word	_Label_4348
	.word	20
	.word	4
	.word	_Label_4349
	.word	24
	.word	4
	.word	0
_Label_4344:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"StartReadSector\0"
	.align
_Label_4345:
	.ascii	"Pself\0"
	.align
_Label_4346:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_4347:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_4348:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_4349:
	.byte	'P'
	.ascii	"whoCares\0"
	.align
! 
! ===============  METHOD SynchWriteSector  ===============
! 
_Method_P_Kernel_DiskDriver_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_DiskDriver_4,r1
	push	r1
	mov	16,r1
_Label_7893:
	push	r0
	sub	r1,1,r1
	bne	_Label_7893
	mov	2851,r13		! source line 2851
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2863,r13		! source line 2863
	mov	"\0\0SE",r10
!   _temp_4350 = &diskBusy
	load	[r14+8],r1
	add	r1,48,r1
	store	r1,[r14+-52]
!   Send message Lock
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! WHILE STATEMENT...
	mov	2864,r13		! source line 2864
	mov	"\0\0WH",r10
_Label_4351:
!	_Label_4352	jmp	_Label_4352
_Label_4352:
	mov	2864,r13		! source line 2864
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2865,r13		! source line 2865
	mov	"\0\0SE",r10
!   _temp_4354 = &semUsedInSynchMethods
	load	[r14+8],r1
	add	r1,28,r1
	store	r1,[r14+-48]
	load	[r14+8],r1
	store	r1,[r14+-44]
!   if intIsZero (_temp_4355) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=sectorAddr  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=numberOfSectors  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=memoryAddr  sizeInBytes=4
	load	[r14+20],r1
	store	r1,[r15+12]
!   Prepare Argument: offset=24  value=_temp_4354  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+16]
!   Send message StartWriteSector
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! SEND STATEMENT...
	mov	2867,r13		! source line 2867
	mov	"\0\0SE",r10
!   _temp_4356 = &semUsedInSynchMethods
	load	[r14+8],r1
	add	r1,28,r1
	store	r1,[r14+-40]
!   Send message Down
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SWITCH STATEMENT (using series of tests)...
	mov	2870,r13		! source line 2870
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   if intIsZero (DISK_STATUS_WORD_ADDRESS) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+4],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_4365 = *DISK_STATUS_WORD_ADDRESS  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r1+4],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   Branch to the right case label
	load	[r14+-36],r1
	cmp	r1,1
	be	_Label_4359
	cmp	r1,2
	be	_Label_4360
	cmp	r1,3
	be	_Label_4361
	cmp	r1,4
	be	_Label_4362
	cmp	r1,5
	be	_Label_4363
	cmp	r1,6
	be	_Label_4364
	jmp	_Label_4357
! CASE 1...
_Label_4359:
! SEND STATEMENT...
	mov	2872,r13		! source line 2872
	mov	"\0\0SE",r10
!   _temp_4366 = &diskBusy
	load	[r14+8],r1
	add	r1,48,r1
	store	r1,[r14+-32]
!   Send message Unlock
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	2873,r13		! source line 2873
	mov	"\0\0RE",r10
	add	r15,68,r15
	pop	r13
	pop	r14
	ret
! CASE 2...
_Label_4360:
! CALL STATEMENT...
!   _temp_4367 = _StringConst_143
	set	_StringConst_143,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_4367  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2875,r13		! source line 2875
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 3...
_Label_4361:
! CALL STATEMENT...
!   _temp_4368 = _StringConst_144
	set	_StringConst_144,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_4368  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2877,r13		! source line 2877
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 4...
_Label_4362:
! CALL STATEMENT...
!   _temp_4369 = _StringConst_145
	set	_StringConst_145,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_4369  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2879,r13		! source line 2879
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 5...
_Label_4363:
! BREAK STATEMENT...
	mov	2883,r13		! source line 2883
	mov	"\0\0BR",r10
	jmp	_Label_4358
! CASE 6...
_Label_4364:
! CALL STATEMENT...
!   _temp_4370 = _StringConst_146
	set	_StringConst_146,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_4370  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2885,r13		! source line 2885
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! DEFAULT CASE...
_Label_4357:
! CALL STATEMENT...
!   _temp_4371 = _StringConst_147
	set	_StringConst_147,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_4371  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2887,r13		! source line 2887
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_4358:
! END WHILE...
	jmp	_Label_4351
_Label_4353:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_DiskDriver_4:
	.word	_sourceFileName
	.word	_Label_4372
	.word	16		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_4373
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_4374
	.word	12
	.word	4
	.word	_Label_4375
	.word	16
	.word	4
	.word	_Label_4376
	.word	20
	.word	4
	.word	_Label_4377
	.word	-12
	.word	4
	.word	_Label_4378
	.word	-16
	.word	4
	.word	_Label_4379
	.word	-20
	.word	4
	.word	_Label_4380
	.word	-24
	.word	4
	.word	_Label_4381
	.word	-28
	.word	4
	.word	_Label_4382
	.word	-32
	.word	4
	.word	_Label_4383
	.word	-36
	.word	4
	.word	_Label_4384
	.word	-40
	.word	4
	.word	_Label_4385
	.word	-44
	.word	4
	.word	_Label_4386
	.word	-48
	.word	4
	.word	_Label_4387
	.word	-52
	.word	4
	.word	0
_Label_4372:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"SynchWriteSector\0"
	.align
_Label_4373:
	.ascii	"Pself\0"
	.align
_Label_4374:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_4375:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_4376:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_4377:
	.byte	'?'
	.ascii	"_temp_4371\0"
	.align
_Label_4378:
	.byte	'?'
	.ascii	"_temp_4370\0"
	.align
_Label_4379:
	.byte	'?'
	.ascii	"_temp_4369\0"
	.align
_Label_4380:
	.byte	'?'
	.ascii	"_temp_4368\0"
	.align
_Label_4381:
	.byte	'?'
	.ascii	"_temp_4367\0"
	.align
_Label_4382:
	.byte	'?'
	.ascii	"_temp_4366\0"
	.align
_Label_4383:
	.byte	'?'
	.ascii	"_temp_4365\0"
	.align
_Label_4384:
	.byte	'?'
	.ascii	"_temp_4356\0"
	.align
_Label_4385:
	.byte	'?'
	.ascii	"_temp_4355\0"
	.align
_Label_4386:
	.byte	'?'
	.ascii	"_temp_4354\0"
	.align
_Label_4387:
	.byte	'?'
	.ascii	"_temp_4350\0"
	.align
! 
! ===============  METHOD StartWriteSector  ===============
! 
_Method_P_Kernel_DiskDriver_5:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_DiskDriver_5,r1
	push	r1
	mov	2896,r13		! source line 2896
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2911,r13		! source line 2911
	mov	"\0\0AS",r10
!   semToSignalOnCompletion = whoCares		(4 bytes)
	load	[r14+24],r1
	load	[r14+8],r2
	store	r1,[r2+24]
! ASSIGNMENT STATEMENT...
	mov	2913,r13		! source line 2913
	mov	"\0\0AS",r10
!   if intIsZero (DISK_MEMORY_ADDRESS_REGISTER) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *DISK_MEMORY_ADDRESS_REGISTER = memoryAddr  (sizeInBytes=4)
	load	[r14+20],r1
	load	[r14+8],r2
	load	[r2+12],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2914,r13		! source line 2914
	mov	"\0\0AS",r10
!   if intIsZero (DISK_SECTOR_NUMBER_REGISTER) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *DISK_SECTOR_NUMBER_REGISTER = sectorAddr  (sizeInBytes=4)
	load	[r14+12],r1
	load	[r14+8],r2
	load	[r2+16],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2915,r13		! source line 2915
	mov	"\0\0AS",r10
!   if intIsZero (DISK_SECTOR_COUNT_REGISTER) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *DISK_SECTOR_COUNT_REGISTER = numberOfSectors  (sizeInBytes=4)
	load	[r14+16],r1
	load	[r14+8],r2
	load	[r2+20],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2916,r13		! source line 2916
	mov	"\0\0AS",r10
!   if intIsZero (DISK_COMMAND_WORD_ADDRESS) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *DISK_COMMAND_WORD_ADDRESS = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+8],r2
	load	[r2+8],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	2916,r13		! source line 2916
	mov	"\0\0RE",r10
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_DiskDriver_5:
	.word	_sourceFileName
	.word	_Label_4388
	.word	20		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_4389
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_4390
	.word	12
	.word	4
	.word	_Label_4391
	.word	16
	.word	4
	.word	_Label_4392
	.word	20
	.word	4
	.word	_Label_4393
	.word	24
	.word	4
	.word	0
_Label_4388:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"StartWriteSector\0"
	.align
_Label_4389:
	.ascii	"Pself\0"
	.align
_Label_4390:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_4391:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_4392:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_4393:
	.byte	'P'
	.ascii	"whoCares\0"
	.align
! 
! ===============  CLASS FileManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_FileManager:
	.word	_Label_4394
	jmp	_Method_P_Kernel_FileManager_1	! 4:	Init
	jmp	_Method_P_Kernel_FileManager_2	! 8:	Print
	jmp	_Method_P_Kernel_FileManager_5	! 12:	LookupFCB
	jmp	_Method_P_Kernel_FileManager_6	! 16:	GetFCB
	jmp	_Method_P_Kernel_FileManager_4	! 20:	GetAnOpenFile
	jmp	_Method_P_Kernel_FileManager_9	! 24:	GetAPipe
	jmp	_Method_P_Kernel_FileManager_10	! 28:	ReturnPipe
	jmp	_Method_P_Kernel_FileManager_8	! 32:	ClosePipe
	jmp	_Method_P_Kernel_FileManager_3	! 36:	Open
	jmp	_Method_P_Kernel_FileManager_7	! 40:	Close
	jmp	_Method_P_Kernel_FileManager_11	! 44:	SynchRead
	jmp	_Method_P_Kernel_FileManager_12	! 48:	SynchWrite
	.word	0
! 
! Class descriptor:
! 
_Label_4394:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_4395
	.word	_sourceFileName
	.word	350		! line number
	.word	8080		! size of instances, in bytes
	.word	_P_Kernel_FileManager
	.word	_P_System_Object
	.word	0
_Label_4395:
	.ascii	"FileManager\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_FileManager_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileManager_1,r1
	push	r1
	mov	2107,r1
_Label_7894:
	push	r0
	sub	r1,1,r1
	bne	_Label_7894
	mov	2927,r13		! source line 2927
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_4396 = _StringConst_148
	set	_StringConst_148,r1
	store	r1,[r14+-8424]
!   Prepare Argument: offset=8  value=_temp_4396  sizeInBytes=4
	load	[r14+-8424],r1
	store	r1,[r15+0]
!   Call the function
	mov	2935,r13		! source line 2935
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	2936,r13		! source line 2936
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: fileManagerLock = zeros  (sizeInBytes=20)
	load	[r14+8],r4
	add	r4,4,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   fileManagerLock = _P_Kernel_Mutex
	set	_P_Kernel_Mutex,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! SEND STATEMENT...
	mov	2937,r13		! source line 2937
	mov	"\0\0SE",r10
!   _temp_4398 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-8416]
!   Send message Init
	load	[r14+-8416],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2940,r13		! source line 2940
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: fcbFreeList = zeros  (sizeInBytes=12)
	load	[r14+8],r4
	add	r4,5420,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   fcbFreeList = _P_List_List
	set	_P_List_List,r1
	load	[r14+8],r2
	store	r1,[r2+5420]
! ASSIGNMENT STATEMENT...
	mov	2941,r13		! source line 2941
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: anFCBBecameFree = zeros  (sizeInBytes=16)
	load	[r14+8],r4
	add	r4,5404,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
!   anFCBBecameFree = _P_Kernel_Condition
	set	_P_Kernel_Condition,r1
	load	[r14+8],r2
	store	r1,[r2+5404]
! SEND STATEMENT...
	mov	2942,r13		! source line 2942
	mov	"\0\0SE",r10
!   _temp_4401 = &anFCBBecameFree
	load	[r14+8],r1
	add	r1,5404,r1
	store	r1,[r14+-8404]
!   Send message Init
	load	[r14+-8404],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2943,r13		! source line 2943
	mov	"\0\0AS",r10
!   _temp_4402 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-8400]
!   NEW ARRAY Constructor...
!   _temp_4404 = &_temp_4403
	add	r14,-8396,r1
	store	r1,[r14+-3016]
!   _temp_4404 = _temp_4404 + 4
	load	[r14+-3016],r1
	add	r1,4,r1
	store	r1,[r14+-3016]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_4406 = zeros  (sizeInBytes=112)
	add	r14,-3008,r4
	mov	28,r3
_Label_7895:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_7895
!   _temp_4406 = _P_Kernel_FileControlBlock
	set	_P_Kernel_FileControlBlock,r1
	store	r1,[r14+-3008]
	mov	48,r1
	store	r1,[r14+-3012]
_Label_4408:
!   Data Move: *_temp_4404 = _temp_4406  (sizeInBytes=112)
	add	r14,-3008,r5
	load	[r14+-3016],r4
	mov	28,r3
_Label_7896:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_7896
!   _temp_4404 = _temp_4404 + 112
	load	[r14+-3016],r1
	add	r1,112,r1
	store	r1,[r14+-3016]
!   _temp_4405 = _temp_4405 + -1
	load	[r14+-3012],r1
	add	r1,-1,r1
	store	r1,[r14+-3012]
!   if intNotZero (_temp_4405) then goto _Label_4408
	load	[r14+-3012],r1
	cmp	r1,r0
	bne	_Label_4408
!   Initialize the array size...
	mov	48,r1
	store	r1,[r14+-8396]
!   _temp_4409 = &_temp_4403
	add	r14,-8396,r1
	store	r1,[r14+-2892]
!   make sure array has size 48
	load	[r14+-8400],r1
	load	[r1],r1
	set	48, r2
	cmp	r1,0
	be	_Label_7897
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_7897:
!   make sure array has size 48
	load	[r14+-2892],r1
	load	[r1],r1
	set	48, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_4402 = *_temp_4409  (sizeInBytes=5380)
	load	[r14+-2892],r5
	load	[r14+-8400],r4
	mov	1345,r3
_Label_7898:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_7898
! FOR STATEMENT...
	mov	2945,r13		! source line 2945
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_4414 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-2888]
!   Calculate and save the FOR-LOOP ending value
!   _temp_4415 = 47		(4 bytes)
	mov	47,r1
	store	r1,[r14+-2884]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_4414  (sizeInBytes=4)
	load	[r14+-2888],r1
	store	r1,[r14+-8428]
_Label_4410:
!   Perform the FOR-LOOP termination test
!   if i > _temp_4415 then goto _Label_4413		
	load	[r14+-8428],r1
	load	[r14+-2884],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_4413
_Label_4411:
	mov	2945,r13		! source line 2945
	mov	"\0\0FB",r10
! SEND STATEMENT...
	mov	2946,r13		! source line 2946
	mov	"\0\0SE",r10
!   _temp_4416 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-2880]
!   Move address of _temp_4416 [i ] into _temp_4417
!     make sure index expr is >= 0
	load	[r14+-8428],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-2880],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	112,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-2876]
!   Send message Init
	load	[r14+-2876],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	2947,r13		! source line 2947
	mov	"\0\0SE",r10
!   _temp_4418 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-2872]
!   Move address of _temp_4418 [i ] into _temp_4419
!     make sure index expr is >= 0
	load	[r14+-8428],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-2872],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	112,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-2868]
!   _temp_4420 = _temp_4419 + 12
	load	[r14+-2868],r1
	add	r1,12,r1
	store	r1,[r14+-2864]
!   Send message Init
	load	[r14+-2864],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	2948,r13		! source line 2948
	mov	"\0\0SE",r10
!   _temp_4422 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-2856]
!   Move address of _temp_4422 [i ] into _temp_4423
!     make sure index expr is >= 0
	load	[r14+-8428],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-2856],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	112,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-2852]
!   _temp_4421 = _temp_4423		(4 bytes)
	load	[r14+-2852],r1
	store	r1,[r14+-2860]
!   _temp_4424 = &fcbFreeList
	load	[r14+8],r1
	add	r1,5420,r1
	store	r1,[r14+-2848]
!   Prepare Argument: offset=12  value=_temp_4421  sizeInBytes=4
	load	[r14+-2860],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-2848],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_4412:
!   i = i + 1
	load	[r14+-8428],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-8428]
	jmp	_Label_4410
! END FOR
_Label_4413:
! ASSIGNMENT STATEMENT...
	mov	2952,r13		! source line 2952
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: openFileFreeList = zeros  (sizeInBytes=12)
	load	[r14+8],r4
	add	r4,7372,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   openFileFreeList = _P_List_List
	set	_P_List_List,r1
	load	[r14+8],r2
	store	r1,[r2+7372]
! ASSIGNMENT STATEMENT...
	mov	2953,r13		! source line 2953
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: anOpenFileBecameFree = zeros  (sizeInBytes=16)
	load	[r14+8],r4
	add	r4,7356,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
!   anOpenFileBecameFree = _P_Kernel_Condition
	set	_P_Kernel_Condition,r1
	load	[r14+8],r2
	store	r1,[r2+7356]
! SEND STATEMENT...
	mov	2954,r13		! source line 2954
	mov	"\0\0SE",r10
!   _temp_4427 = &anOpenFileBecameFree
	load	[r14+8],r1
	add	r1,7356,r1
	store	r1,[r14+-2836]
!   Send message Init
	load	[r14+-2836],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2955,r13		! source line 2955
	mov	"\0\0AS",r10
!   _temp_4428 = &openFileTable
	load	[r14+8],r1
	add	r1,5432,r1
	store	r1,[r14+-2832]
!   NEW ARRAY Constructor...
!   _temp_4430 = &_temp_4429
	add	r14,-2828,r1
	store	r1,[r14+-904]
!   _temp_4430 = _temp_4430 + 4
	load	[r14+-904],r1
	add	r1,4,r1
	store	r1,[r14+-904]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_4432 = zeros  (sizeInBytes=40)
	add	r14,-896,r4
	mov	10,r3
_Label_7899:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_7899
!   _temp_4432 = _P_Kernel_OpenFile
	set	_P_Kernel_OpenFile,r1
	store	r1,[r14+-896]
	mov	48,r1
	store	r1,[r14+-900]
_Label_4434:
!   Data Move: *_temp_4430 = _temp_4432  (sizeInBytes=40)
	add	r14,-896,r5
	load	[r14+-904],r4
	mov	10,r3
_Label_7900:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_7900
!   _temp_4430 = _temp_4430 + 40
	load	[r14+-904],r1
	add	r1,40,r1
	store	r1,[r14+-904]
!   _temp_4431 = _temp_4431 + -1
	load	[r14+-900],r1
	add	r1,-1,r1
	store	r1,[r14+-900]
!   if intNotZero (_temp_4431) then goto _Label_4434
	load	[r14+-900],r1
	cmp	r1,r0
	bne	_Label_4434
!   Initialize the array size...
	mov	48,r1
	store	r1,[r14+-2828]
!   _temp_4435 = &_temp_4429
	add	r14,-2828,r1
	store	r1,[r14+-852]
!   make sure array has size 48
	load	[r14+-2832],r1
	load	[r1],r1
	set	48, r2
	cmp	r1,0
	be	_Label_7901
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_7901:
!   make sure array has size 48
	load	[r14+-852],r1
	load	[r1],r1
	set	48, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_4428 = *_temp_4435  (sizeInBytes=1924)
	load	[r14+-852],r5
	load	[r14+-2832],r4
	mov	481,r3
_Label_7902:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_7902
! FOR STATEMENT...
	mov	2957,r13		! source line 2957
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_4440 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-848]
!   Calculate and save the FOR-LOOP ending value
!   _temp_4441 = 47		(4 bytes)
	mov	47,r1
	store	r1,[r14+-844]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_4440  (sizeInBytes=4)
	load	[r14+-848],r1
	store	r1,[r14+-8428]
_Label_4436:
!   Perform the FOR-LOOP termination test
!   if i > _temp_4441 then goto _Label_4439		
	load	[r14+-8428],r1
	load	[r14+-844],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_4439
_Label_4437:
	mov	2957,r13		! source line 2957
	mov	"\0\0FB",r10
! SEND STATEMENT...
	mov	2958,r13		! source line 2958
	mov	"\0\0SE",r10
!   _temp_4443 = &openFileTable
	load	[r14+8],r1
	add	r1,5432,r1
	store	r1,[r14+-836]
!   Move address of _temp_4443 [i ] into _temp_4444
!     make sure index expr is >= 0
	load	[r14+-8428],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-836],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	40,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-832]
!   _temp_4442 = _temp_4444		(4 bytes)
	load	[r14+-832],r1
	store	r1,[r14+-840]
!   _temp_4445 = &openFileFreeList
	load	[r14+8],r1
	add	r1,7372,r1
	store	r1,[r14+-828]
!   Prepare Argument: offset=12  value=_temp_4442  sizeInBytes=4
	load	[r14+-840],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-828],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_4438:
!   i = i + 1
	load	[r14+-8428],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-8428]
	jmp	_Label_4436
! END FOR
_Label_4439:
! ASSIGNMENT STATEMENT...
	mov	2962,r13		! source line 2962
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: serialTerminalFile = zeros  (sizeInBytes=40)
	load	[r14+8],r4
	add	r4,7384,r4
	mov	10,r3
_Label_7903:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_7903
!   serialTerminalFile = _P_Kernel_OpenFile
	set	_P_Kernel_OpenFile,r1
	load	[r14+8],r2
	store	r1,[r2+7384]
! ASSIGNMENT STATEMENT...
	mov	2963,r13		! source line 2963
	mov	"\0\0AS",r10
!   _temp_4447 = &serialTerminalFile
	load	[r14+8],r1
	add	r1,7384,r1
	store	r1,[r14+-820]
!   _temp_4448 = _temp_4447 + 12
	load	[r14+-820],r1
	add	r1,12,r1
	store	r1,[r14+-816]
!   Data Move: *_temp_4448 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-816],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2964,r13		! source line 2964
	mov	"\0\0AS",r10
!   _temp_4449 = &serialTerminalFile
	load	[r14+8],r1
	add	r1,7384,r1
	store	r1,[r14+-812]
!   _temp_4450 = _temp_4449 + 32
	load	[r14+-812],r1
	add	r1,32,r1
	store	r1,[r14+-808]
!   Data Move: *_temp_4450 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-808],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2966,r13		! source line 2966
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: pipeBecameFree = zeros  (sizeInBytes=16)
	load	[r14+8],r4
	add	r4,8064,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
!   pipeBecameFree = _P_Kernel_Condition
	set	_P_Kernel_Condition,r1
	load	[r14+8],r2
	store	r1,[r2+8064]
! SEND STATEMENT...
	mov	2967,r13		! source line 2967
	mov	"\0\0SE",r10
!   _temp_4452 = &pipeBecameFree
	load	[r14+8],r1
	add	r1,8064,r1
	store	r1,[r14+-800]
!   Send message Init
	load	[r14+-800],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2968,r13		! source line 2968
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: pipeFreeList = zeros  (sizeInBytes=12)
	load	[r14+8],r4
	add	r4,8052,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   pipeFreeList = _P_List_List
	set	_P_List_List,r1
	load	[r14+8],r2
	store	r1,[r2+8052]
! ASSIGNMENT STATEMENT...
	mov	2970,r13		! source line 2970
	mov	"\0\0AS",r10
!   _temp_4454 = &pipeTable
	load	[r14+8],r1
	add	r1,7424,r1
	store	r1,[r14+-792]
!   NEW ARRAY Constructor...
!   _temp_4456 = &_temp_4455
	add	r14,-788,r1
	store	r1,[r14+-160]
!   _temp_4456 = _temp_4456 + 4
	load	[r14+-160],r1
	add	r1,4,r1
	store	r1,[r14+-160]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_4458 = zeros  (sizeInBytes=104)
	add	r14,-152,r4
	mov	26,r3
_Label_7904:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_7904
!   _temp_4458 = _P_Kernel_Pipe
	set	_P_Kernel_Pipe,r1
	store	r1,[r14+-152]
	mov	6,r1
	store	r1,[r14+-156]
_Label_4460:
!   Data Move: *_temp_4456 = _temp_4458  (sizeInBytes=104)
	add	r14,-152,r5
	load	[r14+-160],r4
	mov	26,r3
_Label_7905:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_7905
!   _temp_4456 = _temp_4456 + 104
	load	[r14+-160],r1
	add	r1,104,r1
	store	r1,[r14+-160]
!   _temp_4457 = _temp_4457 + -1
	load	[r14+-156],r1
	add	r1,-1,r1
	store	r1,[r14+-156]
!   if intNotZero (_temp_4457) then goto _Label_4460
	load	[r14+-156],r1
	cmp	r1,r0
	bne	_Label_4460
!   Initialize the array size...
	mov	6,r1
	store	r1,[r14+-788]
!   _temp_4461 = &_temp_4455
	add	r14,-788,r1
	store	r1,[r14+-44]
!   make sure array has size 6
	load	[r14+-792],r1
	load	[r1],r1
	set	6, r2
	cmp	r1,0
	be	_Label_7906
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_7906:
!   make sure array has size 6
	load	[r14+-44],r1
	load	[r1],r1
	set	6, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_4454 = *_temp_4461  (sizeInBytes=628)
	load	[r14+-44],r5
	load	[r14+-792],r4
	mov	157,r3
_Label_7907:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_7907
! FOR STATEMENT...
	mov	2972,r13		! source line 2972
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_4466 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-40]
!   Calculate and save the FOR-LOOP ending value
!   _temp_4467 = 5		(4 bytes)
	mov	5,r1
	store	r1,[r14+-36]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_4466  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+-8428]
_Label_4462:
!   Perform the FOR-LOOP termination test
!   if i > _temp_4467 then goto _Label_4465		
	load	[r14+-8428],r1
	load	[r14+-36],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_4465
_Label_4463:
	mov	2972,r13		! source line 2972
	mov	"\0\0FB",r10
! SEND STATEMENT...
	mov	2973,r13		! source line 2973
	mov	"\0\0SE",r10
!   _temp_4468 = &pipeTable
	load	[r14+8],r1
	add	r1,7424,r1
	store	r1,[r14+-32]
!   Move address of _temp_4468 [i ] into _temp_4469
!     make sure index expr is >= 0
	load	[r14+-8428],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-32],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	104,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   Send message Init
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	2974,r13		! source line 2974
	mov	"\0\0SE",r10
!   _temp_4471 = &pipeTable
	load	[r14+8],r1
	add	r1,7424,r1
	store	r1,[r14+-20]
!   Move address of _temp_4471 [i ] into _temp_4472
!     make sure index expr is >= 0
	load	[r14+-8428],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-20],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	104,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   _temp_4470 = _temp_4472		(4 bytes)
	load	[r14+-16],r1
	store	r1,[r14+-24]
!   _temp_4473 = &pipeFreeList
	load	[r14+8],r1
	add	r1,8052,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_4470  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_4464:
!   i = i + 1
	load	[r14+-8428],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-8428]
	jmp	_Label_4462
! END FOR
_Label_4465:
! RETURN STATEMENT...
	mov	2972,r13		! source line 2972
	mov	"\0\0RE",r10
	add	r15,8432,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileManager_1:
	.word	_sourceFileName
	.word	_Label_4474
	.word	4		! total size of parameters
	.word	8428		! frame size = 8428
	.word	_Label_4475
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_4476
	.word	-12
	.word	4
	.word	_Label_4477
	.word	-16
	.word	4
	.word	_Label_4478
	.word	-20
	.word	4
	.word	_Label_4479
	.word	-24
	.word	4
	.word	_Label_4480
	.word	-28
	.word	4
	.word	_Label_4481
	.word	-32
	.word	4
	.word	_Label_4482
	.word	-36
	.word	4
	.word	_Label_4483
	.word	-40
	.word	4
	.word	_Label_4484
	.word	-44
	.word	4
	.word	_Label_4485
	.word	-48
	.word	4
	.word	_Label_4486
	.word	-152
	.word	104
	.word	_Label_4487
	.word	-156
	.word	4
	.word	_Label_4488
	.word	-160
	.word	4
	.word	_Label_4489
	.word	-788
	.word	628
	.word	_Label_4490
	.word	-792
	.word	4
	.word	_Label_4491
	.word	-796
	.word	4
	.word	_Label_4492
	.word	-800
	.word	4
	.word	_Label_4493
	.word	-804
	.word	4
	.word	_Label_4494
	.word	-808
	.word	4
	.word	_Label_4495
	.word	-812
	.word	4
	.word	_Label_4496
	.word	-816
	.word	4
	.word	_Label_4497
	.word	-820
	.word	4
	.word	_Label_4498
	.word	-824
	.word	4
	.word	_Label_4499
	.word	-828
	.word	4
	.word	_Label_4500
	.word	-832
	.word	4
	.word	_Label_4501
	.word	-836
	.word	4
	.word	_Label_4502
	.word	-840
	.word	4
	.word	_Label_4503
	.word	-844
	.word	4
	.word	_Label_4504
	.word	-848
	.word	4
	.word	_Label_4505
	.word	-852
	.word	4
	.word	_Label_4506
	.word	-856
	.word	4
	.word	_Label_4507
	.word	-896
	.word	40
	.word	_Label_4508
	.word	-900
	.word	4
	.word	_Label_4509
	.word	-904
	.word	4
	.word	_Label_4510
	.word	-2828
	.word	1924
	.word	_Label_4511
	.word	-2832
	.word	4
	.word	_Label_4512
	.word	-2836
	.word	4
	.word	_Label_4513
	.word	-2840
	.word	4
	.word	_Label_4514
	.word	-2844
	.word	4
	.word	_Label_4515
	.word	-2848
	.word	4
	.word	_Label_4516
	.word	-2852
	.word	4
	.word	_Label_4517
	.word	-2856
	.word	4
	.word	_Label_4518
	.word	-2860
	.word	4
	.word	_Label_4519
	.word	-2864
	.word	4
	.word	_Label_4520
	.word	-2868
	.word	4
	.word	_Label_4521
	.word	-2872
	.word	4
	.word	_Label_4522
	.word	-2876
	.word	4
	.word	_Label_4523
	.word	-2880
	.word	4
	.word	_Label_4524
	.word	-2884
	.word	4
	.word	_Label_4525
	.word	-2888
	.word	4
	.word	_Label_4526
	.word	-2892
	.word	4
	.word	_Label_4527
	.word	-2896
	.word	4
	.word	_Label_4528
	.word	-3008
	.word	112
	.word	_Label_4529
	.word	-3012
	.word	4
	.word	_Label_4530
	.word	-3016
	.word	4
	.word	_Label_4531
	.word	-8396
	.word	5380
	.word	_Label_4532
	.word	-8400
	.word	4
	.word	_Label_4533
	.word	-8404
	.word	4
	.word	_Label_4534
	.word	-8408
	.word	4
	.word	_Label_4535
	.word	-8412
	.word	4
	.word	_Label_4536
	.word	-8416
	.word	4
	.word	_Label_4537
	.word	-8420
	.word	4
	.word	_Label_4538
	.word	-8424
	.word	4
	.word	_Label_4539
	.word	-8428
	.word	4
	.word	0
_Label_4474:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_4475:
	.ascii	"Pself\0"
	.align
_Label_4476:
	.byte	'?'
	.ascii	"_temp_4473\0"
	.align
_Label_4477:
	.byte	'?'
	.ascii	"_temp_4472\0"
	.align
_Label_4478:
	.byte	'?'
	.ascii	"_temp_4471\0"
	.align
_Label_4479:
	.byte	'?'
	.ascii	"_temp_4470\0"
	.align
_Label_4480:
	.byte	'?'
	.ascii	"_temp_4469\0"
	.align
_Label_4481:
	.byte	'?'
	.ascii	"_temp_4468\0"
	.align
_Label_4482:
	.byte	'?'
	.ascii	"_temp_4467\0"
	.align
_Label_4483:
	.byte	'?'
	.ascii	"_temp_4466\0"
	.align
_Label_4484:
	.byte	'?'
	.ascii	"_temp_4461\0"
	.align
_Label_4485:
	.byte	'?'
	.ascii	"_temp_4459\0"
	.align
_Label_4486:
	.byte	'?'
	.ascii	"_temp_4458\0"
	.align
_Label_4487:
	.byte	'?'
	.ascii	"_temp_4457\0"
	.align
_Label_4488:
	.byte	'?'
	.ascii	"_temp_4456\0"
	.align
_Label_4489:
	.byte	'?'
	.ascii	"_temp_4455\0"
	.align
_Label_4490:
	.byte	'?'
	.ascii	"_temp_4454\0"
	.align
_Label_4491:
	.byte	'?'
	.ascii	"_temp_4453\0"
	.align
_Label_4492:
	.byte	'?'
	.ascii	"_temp_4452\0"
	.align
_Label_4493:
	.byte	'?'
	.ascii	"_temp_4451\0"
	.align
_Label_4494:
	.byte	'?'
	.ascii	"_temp_4450\0"
	.align
_Label_4495:
	.byte	'?'
	.ascii	"_temp_4449\0"
	.align
_Label_4496:
	.byte	'?'
	.ascii	"_temp_4448\0"
	.align
_Label_4497:
	.byte	'?'
	.ascii	"_temp_4447\0"
	.align
_Label_4498:
	.byte	'?'
	.ascii	"_temp_4446\0"
	.align
_Label_4499:
	.byte	'?'
	.ascii	"_temp_4445\0"
	.align
_Label_4500:
	.byte	'?'
	.ascii	"_temp_4444\0"
	.align
_Label_4501:
	.byte	'?'
	.ascii	"_temp_4443\0"
	.align
_Label_4502:
	.byte	'?'
	.ascii	"_temp_4442\0"
	.align
_Label_4503:
	.byte	'?'
	.ascii	"_temp_4441\0"
	.align
_Label_4504:
	.byte	'?'
	.ascii	"_temp_4440\0"
	.align
_Label_4505:
	.byte	'?'
	.ascii	"_temp_4435\0"
	.align
_Label_4506:
	.byte	'?'
	.ascii	"_temp_4433\0"
	.align
_Label_4507:
	.byte	'?'
	.ascii	"_temp_4432\0"
	.align
_Label_4508:
	.byte	'?'
	.ascii	"_temp_4431\0"
	.align
_Label_4509:
	.byte	'?'
	.ascii	"_temp_4430\0"
	.align
_Label_4510:
	.byte	'?'
	.ascii	"_temp_4429\0"
	.align
_Label_4511:
	.byte	'?'
	.ascii	"_temp_4428\0"
	.align
_Label_4512:
	.byte	'?'
	.ascii	"_temp_4427\0"
	.align
_Label_4513:
	.byte	'?'
	.ascii	"_temp_4426\0"
	.align
_Label_4514:
	.byte	'?'
	.ascii	"_temp_4425\0"
	.align
_Label_4515:
	.byte	'?'
	.ascii	"_temp_4424\0"
	.align
_Label_4516:
	.byte	'?'
	.ascii	"_temp_4423\0"
	.align
_Label_4517:
	.byte	'?'
	.ascii	"_temp_4422\0"
	.align
_Label_4518:
	.byte	'?'
	.ascii	"_temp_4421\0"
	.align
_Label_4519:
	.byte	'?'
	.ascii	"_temp_4420\0"
	.align
_Label_4520:
	.byte	'?'
	.ascii	"_temp_4419\0"
	.align
_Label_4521:
	.byte	'?'
	.ascii	"_temp_4418\0"
	.align
_Label_4522:
	.byte	'?'
	.ascii	"_temp_4417\0"
	.align
_Label_4523:
	.byte	'?'
	.ascii	"_temp_4416\0"
	.align
_Label_4524:
	.byte	'?'
	.ascii	"_temp_4415\0"
	.align
_Label_4525:
	.byte	'?'
	.ascii	"_temp_4414\0"
	.align
_Label_4526:
	.byte	'?'
	.ascii	"_temp_4409\0"
	.align
_Label_4527:
	.byte	'?'
	.ascii	"_temp_4407\0"
	.align
_Label_4528:
	.byte	'?'
	.ascii	"_temp_4406\0"
	.align
_Label_4529:
	.byte	'?'
	.ascii	"_temp_4405\0"
	.align
_Label_4530:
	.byte	'?'
	.ascii	"_temp_4404\0"
	.align
_Label_4531:
	.byte	'?'
	.ascii	"_temp_4403\0"
	.align
_Label_4532:
	.byte	'?'
	.ascii	"_temp_4402\0"
	.align
_Label_4533:
	.byte	'?'
	.ascii	"_temp_4401\0"
	.align
_Label_4534:
	.byte	'?'
	.ascii	"_temp_4400\0"
	.align
_Label_4535:
	.byte	'?'
	.ascii	"_temp_4399\0"
	.align
_Label_4536:
	.byte	'?'
	.ascii	"_temp_4398\0"
	.align
_Label_4537:
	.byte	'?'
	.ascii	"_temp_4397\0"
	.align
_Label_4538:
	.byte	'?'
	.ascii	"_temp_4396\0"
	.align
_Label_4539:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_FileManager_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileManager_2,r1
	push	r1
	mov	29,r1
_Label_7908:
	push	r0
	sub	r1,1,r1
	bne	_Label_7908
	mov	2981,r13		! source line 2981
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2983,r13		! source line 2983
	mov	"\0\0SE",r10
!   _temp_4540 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-112]
!   Send message Lock
	load	[r14+-112],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! CALL STATEMENT...
!   _temp_4541 = _StringConst_149
	set	_StringConst_149,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=_temp_4541  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Call the function
	mov	2984,r13		! source line 2984
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	2985,r13		! source line 2985
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_4546 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-104]
!   Calculate and save the FOR-LOOP ending value
!   _temp_4547 = 47		(4 bytes)
	mov	47,r1
	store	r1,[r14+-100]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_4546  (sizeInBytes=4)
	load	[r14+-104],r1
	store	r1,[r14+-116]
_Label_4542:
!   Perform the FOR-LOOP termination test
!   if i > _temp_4547 then goto _Label_4545		
	load	[r14+-116],r1
	load	[r14+-100],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_4545
_Label_4543:
	mov	2985,r13		! source line 2985
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_4548 = _StringConst_150
	set	_StringConst_150,r1
	store	r1,[r14+-96]
!   Prepare Argument: offset=8  value=_temp_4548  sizeInBytes=4
	load	[r14+-96],r1
	store	r1,[r15+0]
!   Call the function
	mov	2986,r13		! source line 2986
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	2987,r13		! source line 2987
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_4549 = _StringConst_151
	set	_StringConst_151,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_4549  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	2988,r13		! source line 2988
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2989,r13		! source line 2989
	mov	"\0\0SE",r10
!   _temp_4550 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-88]
!   Move address of _temp_4550 [i ] into _temp_4551
!     make sure index expr is >= 0
	load	[r14+-116],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-88],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	112,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-84]
!   Send message Print
	load	[r14+-84],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_4544:
!   i = i + 1
	load	[r14+-116],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-116]
	jmp	_Label_4542
! END FOR
_Label_4545:
! CALL STATEMENT...
!   _temp_4552 = _StringConst_152
	set	_StringConst_152,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_4552  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	2991,r13		! source line 2991
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2992,r13		! source line 2992
	mov	"\0\0SE",r10
!   _temp_4553 = _function_229_printFCB
	set	_function_229_printFCB,r1
	store	r1,[r14+-76]
!   _temp_4554 = &fcbFreeList
	load	[r14+8],r1
	add	r1,5420,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=12  value=_temp_4553  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+4]
!   Send message ApplyToEach
	load	[r14+-72],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! CALL STATEMENT...
!   Call the function
	mov	2993,r13		! source line 2993
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_4555 = _StringConst_153
	set	_StringConst_153,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_4555  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	2994,r13		! source line 2994
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	2995,r13		! source line 2995
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_4560 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-64]
!   Calculate and save the FOR-LOOP ending value
!   _temp_4561 = 47		(4 bytes)
	mov	47,r1
	store	r1,[r14+-60]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_4560  (sizeInBytes=4)
	load	[r14+-64],r1
	store	r1,[r14+-116]
_Label_4556:
!   Perform the FOR-LOOP termination test
!   if i > _temp_4561 then goto _Label_4559		
	load	[r14+-116],r1
	load	[r14+-60],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_4559
_Label_4557:
	mov	2995,r13		! source line 2995
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_4562 = _StringConst_154
	set	_StringConst_154,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_4562  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	2996,r13		! source line 2996
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	2997,r13		! source line 2997
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_4563 = _StringConst_155
	set	_StringConst_155,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_4563  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	2998,r13		! source line 2998
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_4565 = &openFileTable
	load	[r14+8],r1
	add	r1,5432,r1
	store	r1,[r14+-44]
!   Move address of _temp_4565 [i ] into _temp_4566
!     make sure index expr is >= 0
	load	[r14+-116],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-44],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	40,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-40]
!   _temp_4564 = _temp_4566		(4 bytes)
	load	[r14+-40],r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_4564  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	2999,r13		! source line 2999
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_4567 = _StringConst_156
	set	_StringConst_156,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_4567  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	3000,r13		! source line 3000
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	3001,r13		! source line 3001
	mov	"\0\0SE",r10
!   _temp_4568 = &openFileTable
	load	[r14+8],r1
	add	r1,5432,r1
	store	r1,[r14+-32]
!   Move address of _temp_4568 [i ] into _temp_4569
!     make sure index expr is >= 0
	load	[r14+-116],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-32],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	40,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   Send message Print
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_4558:
!   i = i + 1
	load	[r14+-116],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-116]
	jmp	_Label_4556
! END FOR
_Label_4559:
! CALL STATEMENT...
!   _temp_4570 = _StringConst_157
	set	_StringConst_157,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_4570  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	3003,r13		! source line 3003
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	3004,r13		! source line 3004
	mov	"\0\0SE",r10
!   _temp_4571 = _function_228_printOpen
	set	_function_228_printOpen,r1
	store	r1,[r14+-20]
!   _temp_4572 = &openFileFreeList
	load	[r14+8],r1
	add	r1,7372,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_4571  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Send message ApplyToEach
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! SEND STATEMENT...
	mov	3005,r13		! source line 3005
	mov	"\0\0SE",r10
!   _temp_4573 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-12]
!   Send message Unlock
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	3005,r13		! source line 3005
	mov	"\0\0RE",r10
	add	r15,120,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileManager_2:
	.word	_sourceFileName
	.word	_Label_4574
	.word	4		! total size of parameters
	.word	116		! frame size = 116
	.word	_Label_4575
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_4576
	.word	-12
	.word	4
	.word	_Label_4577
	.word	-16
	.word	4
	.word	_Label_4578
	.word	-20
	.word	4
	.word	_Label_4579
	.word	-24
	.word	4
	.word	_Label_4580
	.word	-28
	.word	4
	.word	_Label_4581
	.word	-32
	.word	4
	.word	_Label_4582
	.word	-36
	.word	4
	.word	_Label_4583
	.word	-40
	.word	4
	.word	_Label_4584
	.word	-44
	.word	4
	.word	_Label_4585
	.word	-48
	.word	4
	.word	_Label_4586
	.word	-52
	.word	4
	.word	_Label_4587
	.word	-56
	.word	4
	.word	_Label_4588
	.word	-60
	.word	4
	.word	_Label_4589
	.word	-64
	.word	4
	.word	_Label_4590
	.word	-68
	.word	4
	.word	_Label_4591
	.word	-72
	.word	4
	.word	_Label_4592
	.word	-76
	.word	4
	.word	_Label_4593
	.word	-80
	.word	4
	.word	_Label_4594
	.word	-84
	.word	4
	.word	_Label_4595
	.word	-88
	.word	4
	.word	_Label_4596
	.word	-92
	.word	4
	.word	_Label_4597
	.word	-96
	.word	4
	.word	_Label_4598
	.word	-100
	.word	4
	.word	_Label_4599
	.word	-104
	.word	4
	.word	_Label_4600
	.word	-108
	.word	4
	.word	_Label_4601
	.word	-112
	.word	4
	.word	_Label_4602
	.word	-116
	.word	4
	.word	0
_Label_4574:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_4575:
	.ascii	"Pself\0"
	.align
_Label_4576:
	.byte	'?'
	.ascii	"_temp_4573\0"
	.align
_Label_4577:
	.byte	'?'
	.ascii	"_temp_4572\0"
	.align
_Label_4578:
	.byte	'?'
	.ascii	"_temp_4571\0"
	.align
_Label_4579:
	.byte	'?'
	.ascii	"_temp_4570\0"
	.align
_Label_4580:
	.byte	'?'
	.ascii	"_temp_4569\0"
	.align
_Label_4581:
	.byte	'?'
	.ascii	"_temp_4568\0"
	.align
_Label_4582:
	.byte	'?'
	.ascii	"_temp_4567\0"
	.align
_Label_4583:
	.byte	'?'
	.ascii	"_temp_4566\0"
	.align
_Label_4584:
	.byte	'?'
	.ascii	"_temp_4565\0"
	.align
_Label_4585:
	.byte	'?'
	.ascii	"_temp_4564\0"
	.align
_Label_4586:
	.byte	'?'
	.ascii	"_temp_4563\0"
	.align
_Label_4587:
	.byte	'?'
	.ascii	"_temp_4562\0"
	.align
_Label_4588:
	.byte	'?'
	.ascii	"_temp_4561\0"
	.align
_Label_4589:
	.byte	'?'
	.ascii	"_temp_4560\0"
	.align
_Label_4590:
	.byte	'?'
	.ascii	"_temp_4555\0"
	.align
_Label_4591:
	.byte	'?'
	.ascii	"_temp_4554\0"
	.align
_Label_4592:
	.byte	'?'
	.ascii	"_temp_4553\0"
	.align
_Label_4593:
	.byte	'?'
	.ascii	"_temp_4552\0"
	.align
_Label_4594:
	.byte	'?'
	.ascii	"_temp_4551\0"
	.align
_Label_4595:
	.byte	'?'
	.ascii	"_temp_4550\0"
	.align
_Label_4596:
	.byte	'?'
	.ascii	"_temp_4549\0"
	.align
_Label_4597:
	.byte	'?'
	.ascii	"_temp_4548\0"
	.align
_Label_4598:
	.byte	'?'
	.ascii	"_temp_4547\0"
	.align
_Label_4599:
	.byte	'?'
	.ascii	"_temp_4546\0"
	.align
_Label_4600:
	.byte	'?'
	.ascii	"_temp_4541\0"
	.align
_Label_4601:
	.byte	'?'
	.ascii	"_temp_4540\0"
	.align
_Label_4602:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  METHOD Open  ===============
! 
_Method_P_Kernel_FileManager_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileManager_3,r1
	push	r1
	mov	73,r1
_Label_7909:
	push	r0
	sub	r1,1,r1
	bne	_Label_7909
	mov	3010,r13		! source line 3010
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! rwFlags
!   rwFlags = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-276]
! ASSIGNMENT STATEMENT...
	mov	3027,r13		! source line 3027
	mov	"\0\0AS",r10
!   _temp_4604 = _StringConst_158
	set	_StringConst_158,r1
	store	r1,[r14+-260]
!   Prepare Argument: offset=8  value=filename  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_4604  sizeInBytes=4
	load	[r14+-260],r1
	store	r1,[r15+4]
!   Call the function
	mov	3027,r13		! source line 3027
	mov	"\0\0CA",r10
	call	_P_System_StrCmp
!   Retrieve Result: targetName=_temp_4603  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-264]
!   if intIsZero (_temp_4603) then goto _Label_4605
	load	[r14+-264],r1
	cmp	r1,r0
	be	_Label_4605
!   isRoot = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
	jmp	_Label_4606
_Label_4605:
!   isRoot = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
_Label_4606:
! IF STATEMENT...
	mov	3030,r13		! source line 3030
	mov	"\0\0IF",r10
!   _temp_4611 = &_P_Kernel_fileSystem
	set	_P_Kernel_fileSystem,r1
	store	r1,[r14+-252]
!   _temp_4612 = _temp_4611 + 4
	load	[r14+-252],r1
	add	r1,4,r1
	store	r1,[r14+-248]
!   Data Move: _temp_4610 = *_temp_4612  (sizeInBytes=4)
	load	[r14+-248],r1
	load	[r1],r1
	store	r1,[r14+-256]
!   if intIsZero (_temp_4610) then goto _Label_4609
	load	[r14+-256],r1
	cmp	r1,r0
	be	_Label_4609
	jmp	_Label_4608
_Label_4609:
!   if isRoot then goto _Label_4608 else goto _Label_4607
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_4607
	jmp	_Label_4608
_Label_4607:
! THEN...
	mov	3031,r13		! source line 3031
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	3031,r13		! source line 3031
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_4614 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-240]
!   Data Move: _temp_4613 = *_temp_4614  (sizeInBytes=4)
	load	[r14+-240],r1
	load	[r1],r1
	store	r1,[r14+-244]
!   if intIsZero (_temp_4613) then goto _runtimeErrorNullPointer
	load	[r14+-244],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_4615 = _temp_4613 + 236
	load	[r14+-244],r1
	add	r1,236,r1
	store	r1,[r14+-236]
!   Data Move: *_temp_4615 = 6  (sizeInBytes=4)
	mov	6,r1
	load	[r14+-236],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	3032,r13		! source line 3032
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,296,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_4608:
! ASSIGNMENT STATEMENT...
	mov	3035,r13		! source line 3035
	mov	"\0\0AS",r10
	mov	3035,r13		! source line 3035
	mov	"\0\0SE",r10
!   _temp_4616 = &_P_Kernel_fileSystem
	set	_P_Kernel_fileSystem,r1
	store	r1,[r14+-232]
!   Prepare Argument: offset=12  value=filename  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=dir  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+8]
!   Send message NameToInodeNum
	load	[r14+-232],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=iNum  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-280]
! IF STATEMENT...
	mov	3036,r13		! source line 3036
	mov	"\0\0IF",r10
!   if iNum >= 0 then goto _Label_4618		(int)
	load	[r14+-280],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_4618
!	_Label_4617	jmp	_Label_4617
_Label_4617:
! THEN...
	mov	3037,r13		! source line 3037
	mov	"\0\0TN",r10
! IF STATEMENT...
	mov	3037,r13		! source line 3037
	mov	"\0\0IF",r10
!   _temp_4622 = flags AND 4		(int)
	load	[r14+20],r1
	mov	4,r2
	and	r1,r2,r1
	store	r1,[r14+-228]
!   if _temp_4622 != 4 then goto _Label_4621		(int)
	load	[r14+-228],r1
	mov	4,r2
	cmp	r1,r2
	bne	_Label_4621
	jmp	_Label_4619
_Label_4621:
!   _temp_4623 = flags AND 8		(int)
	load	[r14+20],r1
	mov	8,r2
	and	r1,r2,r1
	store	r1,[r14+-224]
!   if _temp_4623 != 8 then goto _Label_4620		(int)
	load	[r14+-224],r1
	mov	8,r2
	cmp	r1,r2
	bne	_Label_4620
!	_Label_4619	jmp	_Label_4619
_Label_4619:
! THEN...
	mov	3038,r13		! source line 3038
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	3038,r13		! source line 3038
	mov	"\0\0AS",r10
	mov	3038,r13		! source line 3038
	mov	"\0\0SE",r10
!   _temp_4624 = &_P_Kernel_fileSystem
	set	_P_Kernel_fileSystem,r1
	store	r1,[r14+-220]
!   Prepare Argument: offset=12  value=dir  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=filename  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=flags  sizeInBytes=4
	load	[r14+20],r1
	store	r1,[r15+12]
!   Prepare Argument: offset=24  value=mode  sizeInBytes=4
	load	[r14+24],r1
	store	r1,[r15+16]
!   Send message CreateFile
	load	[r14+-220],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,44,r2
	call	r2
!   Retrieve Result: targetName=open  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-268]
! RETURN STATEMENT...
	mov	3039,r13		! source line 3039
	mov	"\0\0RE",r10
!   ReturnResult: open  (sizeInBytes=4)
	load	[r14+-268],r1
	store	r1,[r14+8]
	add	r15,296,r15
	pop	r13
	pop	r14
	ret
	jmp	_Label_4625
_Label_4620:
! ELSE...
	mov	3041,r13		! source line 3041
	mov	"\0\0EL",r10
! ASSIGNMENT STATEMENT...
	mov	3041,r13		! source line 3041
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_4627 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-212]
!   Data Move: _temp_4626 = *_temp_4627  (sizeInBytes=4)
	load	[r14+-212],r1
	load	[r1],r1
	store	r1,[r14+-216]
!   if intIsZero (_temp_4626) then goto _runtimeErrorNullPointer
	load	[r14+-216],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_4628 = _temp_4626 + 236
	load	[r14+-216],r1
	add	r1,236,r1
	store	r1,[r14+-208]
!   Data Move: *_temp_4628 = 9  (sizeInBytes=4)
	mov	9,r1
	load	[r14+-208],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	3042,r13		! source line 3042
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,296,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_4625:
! END IF...
_Label_4618:
! ASSIGNMENT STATEMENT...
	mov	3048,r13		! source line 3048
	mov	"\0\0AS",r10
	mov	3048,r13		! source line 3048
	mov	"\0\0SE",r10
!   _temp_4629 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-204]
!   Prepare Argument: offset=12  value=iNum  sizeInBytes=4
	load	[r14+-280],r1
	store	r1,[r15+4]
!   Send message GetFCB
	load	[r14+-204],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=fcb  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-272]
! IF STATEMENT...
	mov	3049,r13		! source line 3049
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _Label_4630
	load	[r14+-272],r1
	cmp	r1,r0
	be	_Label_4630
	jmp	_Label_4631
_Label_4630:
! THEN...
	mov	3050,r13		! source line 3050
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	3050,r13		! source line 3050
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_4633 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-196]
!   Data Move: _temp_4632 = *_temp_4633  (sizeInBytes=4)
	load	[r14+-196],r1
	load	[r1],r1
	store	r1,[r14+-200]
!   if intIsZero (_temp_4632) then goto _runtimeErrorNullPointer
	load	[r14+-200],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_4634 = _temp_4632 + 236
	load	[r14+-200],r1
	add	r1,236,r1
	store	r1,[r14+-192]
!   Data Move: *_temp_4634 = 4  (sizeInBytes=4)
	mov	4,r1
	load	[r14+-192],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	3051,r13		! source line 3051
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,296,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_4631:
! IF STATEMENT...
	mov	3055,r13		! source line 3055
	mov	"\0\0IF",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_4638 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-184]
!   Data Move: _temp_4637 = *_temp_4638  (sizeInBytes=4)
	load	[r14+-184],r1
	load	[r1],r1
	store	r1,[r14+-188]
!   if intIsZero (_temp_4637) then goto _Label_4636
	load	[r14+-188],r1
	cmp	r1,r0
	be	_Label_4636
!	_Label_4635	jmp	_Label_4635
_Label_4635:
! THEN...
	mov	3056,r13		! source line 3056
	mov	"\0\0TN",r10
! IF STATEMENT...
	mov	3056,r13		! source line 3056
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-272],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_4643 = fcb + 12
	load	[r14+-272],r1
	add	r1,12,r1
	store	r1,[r14+-172]
!   _temp_4644 = _temp_4643 + 12
	load	[r14+-172],r1
	add	r1,12,r1
	store	r1,[r14+-168]
!   Data Move: _temp_4642 = *_temp_4644  (sizeInBytes=4)
	load	[r14+-168],r1
	load	[r1],r1
	store	r1,[r14+-176]
!   _temp_4641 = _temp_4642 AND mode		(int)
	load	[r14+-176],r1
	load	[r14+24],r2
	and	r1,r2,r1
	store	r1,[r14+-180]
!   if _temp_4641 == mode then goto _Label_4640		(int)
	load	[r14+-180],r1
	load	[r14+24],r2
	cmp	r1,r2
	be	_Label_4640
!	_Label_4639	jmp	_Label_4639
_Label_4639:
! THEN...
	mov	3057,r13		! source line 3057
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	3057,r13		! source line 3057
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_4646 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-160]
!   Data Move: _temp_4645 = *_temp_4646  (sizeInBytes=4)
	load	[r14+-160],r1
	load	[r1],r1
	store	r1,[r14+-164]
!   if intIsZero (_temp_4645) then goto _runtimeErrorNullPointer
	load	[r14+-164],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_4647 = _temp_4645 + 236
	load	[r14+-164],r1
	add	r1,236,r1
	store	r1,[r14+-156]
!   Data Move: *_temp_4647 = 9  (sizeInBytes=4)
	mov	9,r1
	load	[r14+-156],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	3058,r13		! source line 3058
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,296,r15
	pop	r13
	pop	r14
	ret
	jmp	_Label_4648
_Label_4640:
! ELSE...
	mov	3060,r13		! source line 3060
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	3060,r13		! source line 3060
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-272],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_4654 = fcb + 12
	load	[r14+-272],r1
	add	r1,12,r1
	store	r1,[r14+-144]
!   _temp_4655 = _temp_4654 + 12
	load	[r14+-144],r1
	add	r1,12,r1
	store	r1,[r14+-140]
!   Data Move: _temp_4653 = *_temp_4655  (sizeInBytes=4)
	load	[r14+-140],r1
	load	[r1],r1
	store	r1,[r14+-148]
!   _temp_4652 = _temp_4653 AND 4		(int)
	load	[r14+-148],r1
	mov	4,r2
	and	r1,r2,r1
	store	r1,[r14+-152]
!   if _temp_4652 != 4 then goto _Label_4650		(int)
	load	[r14+-152],r1
	mov	4,r2
	cmp	r1,r2
	bne	_Label_4650
!	_Label_4651	jmp	_Label_4651
_Label_4651:
!   if flags != 1 then goto _Label_4650		(int)
	load	[r14+20],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_4650
!	_Label_4649	jmp	_Label_4649
_Label_4649:
! THEN...
	mov	3061,r13		! source line 3061
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	3061,r13		! source line 3061
	mov	"\0\0AS",r10
!   rwFlags = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-276]
! END IF...
_Label_4650:
! IF STATEMENT...
	mov	3063,r13		! source line 3063
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-272],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_4661 = fcb + 12
	load	[r14+-272],r1
	add	r1,12,r1
	store	r1,[r14+-128]
!   _temp_4662 = _temp_4661 + 12
	load	[r14+-128],r1
	add	r1,12,r1
	store	r1,[r14+-124]
!   Data Move: _temp_4660 = *_temp_4662  (sizeInBytes=4)
	load	[r14+-124],r1
	load	[r1],r1
	store	r1,[r14+-132]
!   _temp_4659 = _temp_4660 AND 2		(int)
	load	[r14+-132],r1
	mov	2,r2
	and	r1,r2,r1
	store	r1,[r14+-136]
!   if _temp_4659 != 2 then goto _Label_4657		(int)
	load	[r14+-136],r1
	mov	2,r2
	cmp	r1,r2
	bne	_Label_4657
!	_Label_4658	jmp	_Label_4658
_Label_4658:
!   if flags != 2 then goto _Label_4657		(int)
	load	[r14+20],r1
	mov	2,r2
	cmp	r1,r2
	bne	_Label_4657
!	_Label_4656	jmp	_Label_4656
_Label_4656:
! THEN...
	mov	3064,r13		! source line 3064
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	3064,r13		! source line 3064
	mov	"\0\0AS",r10
!   rwFlags = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-276]
! END IF...
_Label_4657:
! IF STATEMENT...
	mov	3066,r13		! source line 3066
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-272],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_4668 = fcb + 12
	load	[r14+-272],r1
	add	r1,12,r1
	store	r1,[r14+-112]
!   _temp_4669 = _temp_4668 + 12
	load	[r14+-112],r1
	add	r1,12,r1
	store	r1,[r14+-108]
!   Data Move: _temp_4667 = *_temp_4669  (sizeInBytes=4)
	load	[r14+-108],r1
	load	[r1],r1
	store	r1,[r14+-116]
!   _temp_4666 = _temp_4667 AND 6		(int)
	load	[r14+-116],r1
	mov	6,r2
	and	r1,r2,r1
	store	r1,[r14+-120]
!   if _temp_4666 != 6 then goto _Label_4664		(int)
	load	[r14+-120],r1
	mov	6,r2
	cmp	r1,r2
	bne	_Label_4664
!	_Label_4665	jmp	_Label_4665
_Label_4665:
!   _temp_4670 = flags AND 3		(int)
	load	[r14+20],r1
	mov	3,r2
	and	r1,r2,r1
	store	r1,[r14+-104]
!   if _temp_4670 != 3 then goto _Label_4664		(int)
	load	[r14+-104],r1
	mov	3,r2
	cmp	r1,r2
	bne	_Label_4664
!	_Label_4663	jmp	_Label_4663
_Label_4663:
! THEN...
	mov	3068,r13		! source line 3068
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	3068,r13		! source line 3068
	mov	"\0\0AS",r10
!   rwFlags = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-276]
! END IF...
_Label_4664:
! IF STATEMENT...
	mov	3070,r13		! source line 3070
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-272],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_4676 = fcb + 12
	load	[r14+-272],r1
	add	r1,12,r1
	store	r1,[r14+-92]
!   _temp_4677 = _temp_4676 + 12
	load	[r14+-92],r1
	add	r1,12,r1
	store	r1,[r14+-88]
!   Data Move: _temp_4675 = *_temp_4677  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-96]
!   _temp_4674 = _temp_4675 AND 1		(int)
	load	[r14+-96],r1
	mov	1,r2
	and	r1,r2,r1
	store	r1,[r14+-100]
!   if _temp_4674 != 1 then goto _Label_4672		(int)
	load	[r14+-100],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_4672
!	_Label_4673	jmp	_Label_4673
_Label_4673:
!   _temp_4678 = flags AND 1		(int)
	load	[r14+20],r1
	mov	1,r2
	and	r1,r2,r1
	store	r1,[r14+-84]
!   if _temp_4678 != 1 then goto _Label_4672		(int)
	load	[r14+-84],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_4672
!	_Label_4671	jmp	_Label_4671
_Label_4671:
! THEN...
	mov	3071,r13		! source line 3071
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	3071,r13		! source line 3071
	mov	"\0\0AS",r10
!   rwFlags = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-276]
! END IF...
_Label_4672:
! IF STATEMENT...
	mov	3073,r13		! source line 3073
	mov	"\0\0IF",r10
!   _temp_4681 = flags AND 8		(int)
	load	[r14+20],r1
	mov	8,r2
	and	r1,r2,r1
	store	r1,[r14+-80]
!   if _temp_4681 != 8 then goto _Label_4680		(int)
	load	[r14+-80],r1
	mov	8,r2
	cmp	r1,r2
	bne	_Label_4680
!	_Label_4679	jmp	_Label_4679
_Label_4679:
! THEN...
	mov	3074,r13		! source line 3074
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	3074,r13		! source line 3074
	mov	"\0\0AS",r10
!   rwFlags = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-276]
! END IF...
_Label_4680:
! IF STATEMENT...
	mov	3077,r13		! source line 3077
	mov	"\0\0IF",r10
!   _temp_4684 = flags AND 4		(int)
	load	[r14+20],r1
	mov	4,r2
	and	r1,r2,r1
	store	r1,[r14+-76]
!   if _temp_4684 != 4 then goto _Label_4683		(int)
	load	[r14+-76],r1
	mov	4,r2
	cmp	r1,r2
	bne	_Label_4683
!	_Label_4682	jmp	_Label_4682
_Label_4682:
! THEN...
	mov	3078,r13		! source line 3078
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	3078,r13		! source line 3078
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_4686 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-68]
!   Data Move: _temp_4685 = *_temp_4686  (sizeInBytes=4)
	load	[r14+-68],r1
	load	[r1],r1
	store	r1,[r14+-72]
!   if intIsZero (_temp_4685) then goto _runtimeErrorNullPointer
	load	[r14+-72],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_4687 = _temp_4685 + 236
	load	[r14+-72],r1
	add	r1,236,r1
	store	r1,[r14+-64]
!   Data Move: *_temp_4687 = 10  (sizeInBytes=4)
	mov	10,r1
	load	[r14+-64],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	3079,r13		! source line 3079
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,296,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_4683:
! IF STATEMENT...
	mov	3082,r13		! source line 3082
	mov	"\0\0IF",r10
!   if intIsZero (rwFlags) then goto _Label_4688
	load	[r14+-276],r1
	cmp	r1,r0
	be	_Label_4688
	jmp	_Label_4689
_Label_4688:
! THEN...
	mov	3083,r13		! source line 3083
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	3083,r13		! source line 3083
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_4691 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-56]
!   Data Move: _temp_4690 = *_temp_4691  (sizeInBytes=4)
	load	[r14+-56],r1
	load	[r1],r1
	store	r1,[r14+-60]
!   if intIsZero (_temp_4690) then goto _runtimeErrorNullPointer
	load	[r14+-60],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_4692 = _temp_4690 + 236
	load	[r14+-60],r1
	add	r1,236,r1
	store	r1,[r14+-52]
!   Data Move: *_temp_4692 = 9  (sizeInBytes=4)
	mov	9,r1
	load	[r14+-52],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	3084,r13		! source line 3084
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,296,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_4689:
! END IF...
_Label_4648:
! END IF...
_Label_4636:
! ASSIGNMENT STATEMENT...
	mov	3090,r13		! source line 3090
	mov	"\0\0AS",r10
	mov	3090,r13		! source line 3090
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-48]
!   if intIsZero (_temp_4693) then goto _runtimeErrorNullPointer
	load	[r14+-48],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=1  sizeInBytes=1
	mov	1,r1
	storeb	r1,[r15+4]
!   Send message GetAnOpenFile
	load	[r14+-48],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
!   Retrieve Result: targetName=open  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-268]
! SEND STATEMENT...
	mov	3093,r13		! source line 3093
	mov	"\0\0SE",r10
!   _temp_4694 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-44]
!   Send message Lock
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! IF STATEMENT...
	mov	3094,r13		! source line 3094
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-272],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_4699 = fcb + 12
	load	[r14+-272],r1
	add	r1,12,r1
	store	r1,[r14+-32]
!   _temp_4700 = _temp_4699 + 12
	load	[r14+-32],r1
	add	r1,12,r1
	store	r1,[r14+-28]
!   Data Move: _temp_4698 = *_temp_4700  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   _temp_4697 = _temp_4698 AND 16		(int)
	load	[r14+-36],r1
	mov	16,r2
	and	r1,r2,r1
	store	r1,[r14+-40]
!   if _temp_4697 != 16 then goto _Label_4696		(int)
	load	[r14+-40],r1
	mov	16,r2
	cmp	r1,r2
	bne	_Label_4696
!	_Label_4695	jmp	_Label_4695
_Label_4695:
! THEN...
	mov	3095,r13		! source line 3095
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	3095,r13		! source line 3095
	mov	"\0\0SE",r10
!   _temp_4701 = flags AND 3		(int)
	load	[r14+20],r1
	mov	3,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+-268],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=fcb  sizeInBytes=4
	load	[r14+-272],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_4701  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+12]
!   Send message Init
	load	[r14+-268],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
	jmp	_Label_4702
_Label_4696:
! ELSE...
	mov	3097,r13		! source line 3097
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	3097,r13		! source line 3097
	mov	"\0\0SE",r10
!   _temp_4703 = flags AND 3		(int)
	load	[r14+20],r1
	mov	3,r2
	and	r1,r2,r1
	store	r1,[r14+-20]
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+-268],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=4  sizeInBytes=4
	mov	4,r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=fcb  sizeInBytes=4
	load	[r14+-272],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_4703  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+12]
!   Send message Init
	load	[r14+-268],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END IF...
_Label_4702:
! SEND STATEMENT...
	mov	3101,r13		! source line 3101
	mov	"\0\0SE",r10
!   _temp_4704 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-16]
!   Send message Unlock
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	3105,r13		! source line 3105
	mov	"\0\0RE",r10
!   ReturnResult: open  (sizeInBytes=4)
	load	[r14+-268],r1
	store	r1,[r14+8]
	add	r15,296,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileManager_3:
	.word	_sourceFileName
	.word	_Label_4705
	.word	20		! total size of parameters
	.word	292		! frame size = 292
	.word	_Label_4706
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_4707
	.word	12
	.word	4
	.word	_Label_4708
	.word	16
	.word	4
	.word	_Label_4709
	.word	20
	.word	4
	.word	_Label_4710
	.word	24
	.word	4
	.word	_Label_4711
	.word	-16
	.word	4
	.word	_Label_4712
	.word	-20
	.word	4
	.word	_Label_4713
	.word	-24
	.word	4
	.word	_Label_4714
	.word	-28
	.word	4
	.word	_Label_4715
	.word	-32
	.word	4
	.word	_Label_4716
	.word	-36
	.word	4
	.word	_Label_4717
	.word	-40
	.word	4
	.word	_Label_4718
	.word	-44
	.word	4
	.word	_Label_4719
	.word	-48
	.word	4
	.word	_Label_4720
	.word	-52
	.word	4
	.word	_Label_4721
	.word	-56
	.word	4
	.word	_Label_4722
	.word	-60
	.word	4
	.word	_Label_4723
	.word	-64
	.word	4
	.word	_Label_4724
	.word	-68
	.word	4
	.word	_Label_4725
	.word	-72
	.word	4
	.word	_Label_4726
	.word	-76
	.word	4
	.word	_Label_4727
	.word	-80
	.word	4
	.word	_Label_4728
	.word	-84
	.word	4
	.word	_Label_4729
	.word	-88
	.word	4
	.word	_Label_4730
	.word	-92
	.word	4
	.word	_Label_4731
	.word	-96
	.word	4
	.word	_Label_4732
	.word	-100
	.word	4
	.word	_Label_4733
	.word	-104
	.word	4
	.word	_Label_4734
	.word	-108
	.word	4
	.word	_Label_4735
	.word	-112
	.word	4
	.word	_Label_4736
	.word	-116
	.word	4
	.word	_Label_4737
	.word	-120
	.word	4
	.word	_Label_4738
	.word	-124
	.word	4
	.word	_Label_4739
	.word	-128
	.word	4
	.word	_Label_4740
	.word	-132
	.word	4
	.word	_Label_4741
	.word	-136
	.word	4
	.word	_Label_4742
	.word	-140
	.word	4
	.word	_Label_4743
	.word	-144
	.word	4
	.word	_Label_4744
	.word	-148
	.word	4
	.word	_Label_4745
	.word	-152
	.word	4
	.word	_Label_4746
	.word	-156
	.word	4
	.word	_Label_4747
	.word	-160
	.word	4
	.word	_Label_4748
	.word	-164
	.word	4
	.word	_Label_4749
	.word	-168
	.word	4
	.word	_Label_4750
	.word	-172
	.word	4
	.word	_Label_4751
	.word	-176
	.word	4
	.word	_Label_4752
	.word	-180
	.word	4
	.word	_Label_4753
	.word	-184
	.word	4
	.word	_Label_4754
	.word	-188
	.word	4
	.word	_Label_4755
	.word	-192
	.word	4
	.word	_Label_4756
	.word	-196
	.word	4
	.word	_Label_4757
	.word	-200
	.word	4
	.word	_Label_4758
	.word	-204
	.word	4
	.word	_Label_4759
	.word	-208
	.word	4
	.word	_Label_4760
	.word	-212
	.word	4
	.word	_Label_4761
	.word	-216
	.word	4
	.word	_Label_4762
	.word	-220
	.word	4
	.word	_Label_4763
	.word	-224
	.word	4
	.word	_Label_4764
	.word	-228
	.word	4
	.word	_Label_4765
	.word	-232
	.word	4
	.word	_Label_4766
	.word	-236
	.word	4
	.word	_Label_4767
	.word	-240
	.word	4
	.word	_Label_4768
	.word	-244
	.word	4
	.word	_Label_4769
	.word	-248
	.word	4
	.word	_Label_4770
	.word	-252
	.word	4
	.word	_Label_4771
	.word	-256
	.word	4
	.word	_Label_4772
	.word	-260
	.word	4
	.word	_Label_4773
	.word	-264
	.word	4
	.word	_Label_4774
	.word	-268
	.word	4
	.word	_Label_4775
	.word	-272
	.word	4
	.word	_Label_4776
	.word	-276
	.word	4
	.word	_Label_4777
	.word	-280
	.word	4
	.word	_Label_4778
	.word	-9
	.word	1
	.word	0
_Label_4705:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Open\0"
	.align
_Label_4706:
	.ascii	"Pself\0"
	.align
_Label_4707:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_4708:
	.byte	'P'
	.ascii	"dir\0"
	.align
_Label_4709:
	.byte	'I'
	.ascii	"flags\0"
	.align
_Label_4710:
	.byte	'I'
	.ascii	"mode\0"
	.align
_Label_4711:
	.byte	'?'
	.ascii	"_temp_4704\0"
	.align
_Label_4712:
	.byte	'?'
	.ascii	"_temp_4703\0"
	.align
_Label_4713:
	.byte	'?'
	.ascii	"_temp_4701\0"
	.align
_Label_4714:
	.byte	'?'
	.ascii	"_temp_4700\0"
	.align
_Label_4715:
	.byte	'?'
	.ascii	"_temp_4699\0"
	.align
_Label_4716:
	.byte	'?'
	.ascii	"_temp_4698\0"
	.align
_Label_4717:
	.byte	'?'
	.ascii	"_temp_4697\0"
	.align
_Label_4718:
	.byte	'?'
	.ascii	"_temp_4694\0"
	.align
_Label_4719:
	.byte	'?'
	.ascii	"_temp_4693\0"
	.align
_Label_4720:
	.byte	'?'
	.ascii	"_temp_4692\0"
	.align
_Label_4721:
	.byte	'?'
	.ascii	"_temp_4691\0"
	.align
_Label_4722:
	.byte	'?'
	.ascii	"_temp_4690\0"
	.align
_Label_4723:
	.byte	'?'
	.ascii	"_temp_4687\0"
	.align
_Label_4724:
	.byte	'?'
	.ascii	"_temp_4686\0"
	.align
_Label_4725:
	.byte	'?'
	.ascii	"_temp_4685\0"
	.align
_Label_4726:
	.byte	'?'
	.ascii	"_temp_4684\0"
	.align
_Label_4727:
	.byte	'?'
	.ascii	"_temp_4681\0"
	.align
_Label_4728:
	.byte	'?'
	.ascii	"_temp_4678\0"
	.align
_Label_4729:
	.byte	'?'
	.ascii	"_temp_4677\0"
	.align
_Label_4730:
	.byte	'?'
	.ascii	"_temp_4676\0"
	.align
_Label_4731:
	.byte	'?'
	.ascii	"_temp_4675\0"
	.align
_Label_4732:
	.byte	'?'
	.ascii	"_temp_4674\0"
	.align
_Label_4733:
	.byte	'?'
	.ascii	"_temp_4670\0"
	.align
_Label_4734:
	.byte	'?'
	.ascii	"_temp_4669\0"
	.align
_Label_4735:
	.byte	'?'
	.ascii	"_temp_4668\0"
	.align
_Label_4736:
	.byte	'?'
	.ascii	"_temp_4667\0"
	.align
_Label_4737:
	.byte	'?'
	.ascii	"_temp_4666\0"
	.align
_Label_4738:
	.byte	'?'
	.ascii	"_temp_4662\0"
	.align
_Label_4739:
	.byte	'?'
	.ascii	"_temp_4661\0"
	.align
_Label_4740:
	.byte	'?'
	.ascii	"_temp_4660\0"
	.align
_Label_4741:
	.byte	'?'
	.ascii	"_temp_4659\0"
	.align
_Label_4742:
	.byte	'?'
	.ascii	"_temp_4655\0"
	.align
_Label_4743:
	.byte	'?'
	.ascii	"_temp_4654\0"
	.align
_Label_4744:
	.byte	'?'
	.ascii	"_temp_4653\0"
	.align
_Label_4745:
	.byte	'?'
	.ascii	"_temp_4652\0"
	.align
_Label_4746:
	.byte	'?'
	.ascii	"_temp_4647\0"
	.align
_Label_4747:
	.byte	'?'
	.ascii	"_temp_4646\0"
	.align
_Label_4748:
	.byte	'?'
	.ascii	"_temp_4645\0"
	.align
_Label_4749:
	.byte	'?'
	.ascii	"_temp_4644\0"
	.align
_Label_4750:
	.byte	'?'
	.ascii	"_temp_4643\0"
	.align
_Label_4751:
	.byte	'?'
	.ascii	"_temp_4642\0"
	.align
_Label_4752:
	.byte	'?'
	.ascii	"_temp_4641\0"
	.align
_Label_4753:
	.byte	'?'
	.ascii	"_temp_4638\0"
	.align
_Label_4754:
	.byte	'?'
	.ascii	"_temp_4637\0"
	.align
_Label_4755:
	.byte	'?'
	.ascii	"_temp_4634\0"
	.align
_Label_4756:
	.byte	'?'
	.ascii	"_temp_4633\0"
	.align
_Label_4757:
	.byte	'?'
	.ascii	"_temp_4632\0"
	.align
_Label_4758:
	.byte	'?'
	.ascii	"_temp_4629\0"
	.align
_Label_4759:
	.byte	'?'
	.ascii	"_temp_4628\0"
	.align
_Label_4760:
	.byte	'?'
	.ascii	"_temp_4627\0"
	.align
_Label_4761:
	.byte	'?'
	.ascii	"_temp_4626\0"
	.align
_Label_4762:
	.byte	'?'
	.ascii	"_temp_4624\0"
	.align
_Label_4763:
	.byte	'?'
	.ascii	"_temp_4623\0"
	.align
_Label_4764:
	.byte	'?'
	.ascii	"_temp_4622\0"
	.align
_Label_4765:
	.byte	'?'
	.ascii	"_temp_4616\0"
	.align
_Label_4766:
	.byte	'?'
	.ascii	"_temp_4615\0"
	.align
_Label_4767:
	.byte	'?'
	.ascii	"_temp_4614\0"
	.align
_Label_4768:
	.byte	'?'
	.ascii	"_temp_4613\0"
	.align
_Label_4769:
	.byte	'?'
	.ascii	"_temp_4612\0"
	.align
_Label_4770:
	.byte	'?'
	.ascii	"_temp_4611\0"
	.align
_Label_4771:
	.byte	'?'
	.ascii	"_temp_4610\0"
	.align
_Label_4772:
	.byte	'?'
	.ascii	"_temp_4604\0"
	.align
_Label_4773:
	.byte	'?'
	.ascii	"_temp_4603\0"
	.align
_Label_4774:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_4775:
	.byte	'P'
	.ascii	"fcb\0"
	.align
_Label_4776:
	.byte	'I'
	.ascii	"rwFlags\0"
	.align
_Label_4777:
	.byte	'I'
	.ascii	"iNum\0"
	.align
_Label_4778:
	.byte	'B'
	.ascii	"isRoot\0"
	.align
! 
! ===============  METHOD GetAnOpenFile  ===============
! 
_Method_P_Kernel_FileManager_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileManager_4,r1
	push	r1
	mov	11,r1
_Label_7910:
	push	r0
	sub	r1,1,r1
	bne	_Label_7910
	mov	3109,r13		! source line 3109
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	3111,r13		! source line 3111
	mov	"\0\0SE",r10
!   _temp_4779 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-40]
!   Send message Lock
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! IF STATEMENT...
	mov	3112,r13		! source line 3112
	mov	"\0\0IF",r10
	mov	3112,r13		! source line 3112
	mov	"\0\0SE",r10
!   _temp_4783 = &openFileFreeList
	load	[r14+8],r1
	add	r1,7372,r1
	store	r1,[r14+-36]
!   Send message IsEmpty
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   if result==true then goto _Label_4782 else goto _Label_4781
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_4781
	jmp	_Label_4782
_Label_4782:
!   if block then goto _Label_4781 else goto _Label_4780
	loadb	[r14+12],r1
	cmp	r1,0
	be	_Label_4780
	jmp	_Label_4781
_Label_4780:
! THEN...
	mov	3113,r13		! source line 3113
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	3113,r13		! source line 3113
	mov	"\0\0SE",r10
!   _temp_4784 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-32]
!   Send message Unlock
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	3114,r13		! source line 3114
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_4781:
! WHILE STATEMENT...
	mov	3116,r13		! source line 3116
	mov	"\0\0WH",r10
_Label_4785:
	mov	3116,r13		! source line 3116
	mov	"\0\0SE",r10
!   _temp_4788 = &openFileFreeList
	load	[r14+8],r1
	add	r1,7372,r1
	store	r1,[r14+-28]
!   Send message IsEmpty
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   if result==true then goto _Label_4786 else goto _Label_4787
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_4787
	jmp	_Label_4786
_Label_4786:
	mov	3116,r13		! source line 3116
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	3117,r13		! source line 3117
	mov	"\0\0SE",r10
!   _temp_4789 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-24]
!   _temp_4790 = &anOpenFileBecameFree
	load	[r14+8],r1
	add	r1,7356,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=_temp_4789  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+4]
!   Send message Wait
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END WHILE...
	jmp	_Label_4785
_Label_4787:
! ASSIGNMENT STATEMENT...
	mov	3119,r13		! source line 3119
	mov	"\0\0AS",r10
	mov	3119,r13		! source line 3119
	mov	"\0\0SE",r10
!   _temp_4791 = &openFileFreeList
	load	[r14+8],r1
	add	r1,7372,r1
	store	r1,[r14+-16]
!   Send message Remove
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=open  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-44]
! SEND STATEMENT...
	mov	3120,r13		! source line 3120
	mov	"\0\0SE",r10
!   _temp_4792 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-12]
!   Send message Unlock
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	3121,r13		! source line 3121
	mov	"\0\0RE",r10
!   ReturnResult: open  (sizeInBytes=4)
	load	[r14+-44],r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileManager_4:
	.word	_sourceFileName
	.word	_Label_4793
	.word	8		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_4794
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_4795
	.word	12
	.word	1
	.word	_Label_4796
	.word	-12
	.word	4
	.word	_Label_4797
	.word	-16
	.word	4
	.word	_Label_4798
	.word	-20
	.word	4
	.word	_Label_4799
	.word	-24
	.word	4
	.word	_Label_4800
	.word	-28
	.word	4
	.word	_Label_4801
	.word	-32
	.word	4
	.word	_Label_4802
	.word	-36
	.word	4
	.word	_Label_4803
	.word	-40
	.word	4
	.word	_Label_4804
	.word	-44
	.word	4
	.word	0
_Label_4793:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"GetAnOpenFile\0"
	.align
_Label_4794:
	.ascii	"Pself\0"
	.align
_Label_4795:
	.byte	'B'
	.ascii	"block\0"
	.align
_Label_4796:
	.byte	'?'
	.ascii	"_temp_4792\0"
	.align
_Label_4797:
	.byte	'?'
	.ascii	"_temp_4791\0"
	.align
_Label_4798:
	.byte	'?'
	.ascii	"_temp_4790\0"
	.align
_Label_4799:
	.byte	'?'
	.ascii	"_temp_4789\0"
	.align
_Label_4800:
	.byte	'?'
	.ascii	"_temp_4788\0"
	.align
_Label_4801:
	.byte	'?'
	.ascii	"_temp_4784\0"
	.align
_Label_4802:
	.byte	'?'
	.ascii	"_temp_4783\0"
	.align
_Label_4803:
	.byte	'?'
	.ascii	"_temp_4779\0"
	.align
_Label_4804:
	.byte	'P'
	.ascii	"open\0"
	.align
! 
! ===============  METHOD LookupFCB  ===============
! 
_Method_P_Kernel_FileManager_5:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileManager_5,r1
	push	r1
	mov	11,r1
_Label_7911:
	push	r0
	sub	r1,1,r1
	bne	_Label_7911
	mov	3126,r13		! source line 3126
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! FOR STATEMENT...
	mov	3130,r13		! source line 3130
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_4809 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-48]
!   Calculate and save the FOR-LOOP ending value
!   _temp_4810 = 47		(4 bytes)
	mov	47,r1
	store	r1,[r14+-44]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_4809  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+-52]
_Label_4805:
!   Perform the FOR-LOOP termination test
!   if i > _temp_4810 then goto _Label_4808		
	load	[r14+-52],r1
	load	[r14+-44],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_4808
_Label_4806:
	mov	3130,r13		! source line 3130
	mov	"\0\0FB",r10
! IF STATEMENT...
	mov	3131,r13		! source line 3131
	mov	"\0\0IF",r10
!   _temp_4814 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-36]
!   Move address of _temp_4814 [i ] into _temp_4815
!     make sure index expr is >= 0
	load	[r14+-52],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-36],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	112,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-32]
!   _temp_4816 = _temp_4815 + 12
	load	[r14+-32],r1
	add	r1,12,r1
	store	r1,[r14+-28]
!   _temp_4817 = _temp_4816 + 4
	load	[r14+-28],r1
	add	r1,4,r1
	store	r1,[r14+-24]
!   Data Move: _temp_4813 = *_temp_4817  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if _temp_4813 != inodeNum then goto _Label_4812		(int)
	load	[r14+-40],r1
	load	[r14+12],r2
	cmp	r1,r2
	bne	_Label_4812
!	_Label_4811	jmp	_Label_4811
_Label_4811:
! THEN...
	mov	3132,r13		! source line 3132
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	3132,r13		! source line 3132
	mov	"\0\0RE",r10
!   _temp_4819 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-16]
!   Move address of _temp_4819 [i ] into _temp_4820
!     make sure index expr is >= 0
	load	[r14+-52],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	112,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   _temp_4818 = _temp_4820		(4 bytes)
	load	[r14+-12],r1
	store	r1,[r14+-20]
!   ReturnResult: _temp_4818  (sizeInBytes=4)
	load	[r14+-20],r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_4812:
!   Increment the FOR-LOOP index variable and jump back
_Label_4807:
!   i = i + 1
	load	[r14+-52],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-52]
	jmp	_Label_4805
! END FOR
_Label_4808:
! RETURN STATEMENT...
	mov	3135,r13		! source line 3135
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileManager_5:
	.word	_sourceFileName
	.word	_Label_4821
	.word	8		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_4822
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_4823
	.word	12
	.word	4
	.word	_Label_4824
	.word	-12
	.word	4
	.word	_Label_4825
	.word	-16
	.word	4
	.word	_Label_4826
	.word	-20
	.word	4
	.word	_Label_4827
	.word	-24
	.word	4
	.word	_Label_4828
	.word	-28
	.word	4
	.word	_Label_4829
	.word	-32
	.word	4
	.word	_Label_4830
	.word	-36
	.word	4
	.word	_Label_4831
	.word	-40
	.word	4
	.word	_Label_4832
	.word	-44
	.word	4
	.word	_Label_4833
	.word	-48
	.word	4
	.word	_Label_4834
	.word	-52
	.word	4
	.word	0
_Label_4821:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"LookupFCB\0"
	.align
_Label_4822:
	.ascii	"Pself\0"
	.align
_Label_4823:
	.byte	'I'
	.ascii	"inodeNum\0"
	.align
_Label_4824:
	.byte	'?'
	.ascii	"_temp_4820\0"
	.align
_Label_4825:
	.byte	'?'
	.ascii	"_temp_4819\0"
	.align
_Label_4826:
	.byte	'?'
	.ascii	"_temp_4818\0"
	.align
_Label_4827:
	.byte	'?'
	.ascii	"_temp_4817\0"
	.align
_Label_4828:
	.byte	'?'
	.ascii	"_temp_4816\0"
	.align
_Label_4829:
	.byte	'?'
	.ascii	"_temp_4815\0"
	.align
_Label_4830:
	.byte	'?'
	.ascii	"_temp_4814\0"
	.align
_Label_4831:
	.byte	'?'
	.ascii	"_temp_4813\0"
	.align
_Label_4832:
	.byte	'?'
	.ascii	"_temp_4810\0"
	.align
_Label_4833:
	.byte	'?'
	.ascii	"_temp_4809\0"
	.align
_Label_4834:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  METHOD GetFCB  ===============
! 
_Method_P_Kernel_FileManager_6:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileManager_6,r1
	push	r1
	mov	21,r1
_Label_7912:
	push	r0
	sub	r1,1,r1
	bne	_Label_7912
	mov	3140,r13		! source line 3140
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	3158,r13		! source line 3158
	mov	"\0\0SE",r10
!   _temp_4835 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-80]
!   Send message Lock
	load	[r14+-80],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	3161,r13		! source line 3161
	mov	"\0\0AS",r10
	mov	3161,r13		! source line 3161
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-76]
!   if intIsZero (_temp_4836) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=inodeNum  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message LookupFCB
	load	[r14+-76],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=fcb  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-84]
! IF STATEMENT...
	mov	3162,r13		! source line 3162
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _Label_4838
	load	[r14+-84],r1
	cmp	r1,r0
	be	_Label_4838
!	_Label_4837	jmp	_Label_4837
_Label_4837:
! THEN...
	mov	3163,r13		! source line 3163
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	3163,r13		! source line 3163
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-84],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_4839 = fcb + 96
	load	[r14+-84],r1
	add	r1,96,r1
	store	r1,[r14+-72]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-84],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_4842 = fcb + 96
	load	[r14+-84],r1
	add	r1,96,r1
	store	r1,[r14+-60]
!   Data Move: _temp_4841 = *_temp_4842  (sizeInBytes=4)
	load	[r14+-60],r1
	load	[r1],r1
	store	r1,[r14+-64]
!   _temp_4840 = _temp_4841 + 1		(int)
	load	[r14+-64],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-68]
!   Data Move: *_temp_4839 = _temp_4840  (sizeInBytes=4)
	load	[r14+-68],r1
	load	[r14+-72],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	3164,r13		! source line 3164
	mov	"\0\0SE",r10
!   _temp_4843 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-56]
!   Send message Unlock
	load	[r14+-56],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	3165,r13		! source line 3165
	mov	"\0\0RE",r10
!   ReturnResult: fcb  (sizeInBytes=4)
	load	[r14+-84],r1
	store	r1,[r14+8]
	add	r15,88,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_4838:
! WHILE STATEMENT...
	mov	3169,r13		! source line 3169
	mov	"\0\0WH",r10
_Label_4844:
	mov	3169,r13		! source line 3169
	mov	"\0\0SE",r10
!   _temp_4847 = &fcbFreeList
	load	[r14+8],r1
	add	r1,5420,r1
	store	r1,[r14+-52]
!   Send message IsEmpty
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   if result==true then goto _Label_4845 else goto _Label_4846
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_4846
	jmp	_Label_4845
_Label_4845:
	mov	3169,r13		! source line 3169
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	3170,r13		! source line 3170
	mov	"\0\0SE",r10
!   _temp_4848 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-48]
!   _temp_4849 = &anFCBBecameFree
	load	[r14+8],r1
	add	r1,5404,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=12  value=_temp_4848  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+4]
!   Send message Wait
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END WHILE...
	jmp	_Label_4844
_Label_4846:
! ASSIGNMENT STATEMENT...
	mov	3172,r13		! source line 3172
	mov	"\0\0AS",r10
	mov	3172,r13		! source line 3172
	mov	"\0\0SE",r10
!   _temp_4850 = &fcbFreeList
	load	[r14+8],r1
	add	r1,5420,r1
	store	r1,[r14+-40]
!   Send message Remove
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=fcb  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-84]
! ASSIGNMENT STATEMENT...
	mov	3174,r13		! source line 3174
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-84],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_4851 = fcb + 96
	load	[r14+-84],r1
	add	r1,96,r1
	store	r1,[r14+-36]
!   Data Move: *_temp_4851 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-36],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	3177,r13		! source line 3177
	mov	"\0\0SE",r10
!   _temp_4852 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-32]
!   Send message Unlock
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! IF STATEMENT...
	mov	3180,r13		! source line 3180
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-84],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_4857 = fcb + 104
	load	[r14+-84],r1
	add	r1,104,r1
	store	r1,[r14+-24]
!   Data Move: _temp_4856 = *_temp_4857  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   if _temp_4856 < 0 then goto _Label_4855		(int)
	load	[r14+-28],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_4855
	jmp	_Label_4853
_Label_4855:
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-84],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_4858 = fcb + 108
	load	[r14+-84],r1
	add	r1,108,r1
	store	r1,[r14+-20]
!   if boolIsZero (_temp_4858 ) then goto _Label_4854		(int)
	load	[r14+-20],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_4854
!	_Label_4853	jmp	_Label_4853
_Label_4853:
! THEN...
	mov	3181,r13		! source line 3181
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_4859 = _StringConst_159
	set	_StringConst_159,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_4859  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	3181,r13		! source line 3181
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_4854:
! SEND STATEMENT...
	mov	3186,r13		! source line 3186
	mov	"\0\0SE",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-84],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_4860 = fcb + 12
	load	[r14+-84],r1
	add	r1,12,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=inodeNum  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message GetInode
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	3189,r13		! source line 3189
	mov	"\0\0RE",r10
!   ReturnResult: fcb  (sizeInBytes=4)
	load	[r14+-84],r1
	store	r1,[r14+8]
	add	r15,88,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileManager_6:
	.word	_sourceFileName
	.word	_Label_4861
	.word	8		! total size of parameters
	.word	84		! frame size = 84
	.word	_Label_4862
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_4863
	.word	12
	.word	4
	.word	_Label_4864
	.word	-12
	.word	4
	.word	_Label_4865
	.word	-16
	.word	4
	.word	_Label_4866
	.word	-20
	.word	4
	.word	_Label_4867
	.word	-24
	.word	4
	.word	_Label_4868
	.word	-28
	.word	4
	.word	_Label_4869
	.word	-32
	.word	4
	.word	_Label_4870
	.word	-36
	.word	4
	.word	_Label_4871
	.word	-40
	.word	4
	.word	_Label_4872
	.word	-44
	.word	4
	.word	_Label_4873
	.word	-48
	.word	4
	.word	_Label_4874
	.word	-52
	.word	4
	.word	_Label_4875
	.word	-56
	.word	4
	.word	_Label_4876
	.word	-60
	.word	4
	.word	_Label_4877
	.word	-64
	.word	4
	.word	_Label_4878
	.word	-68
	.word	4
	.word	_Label_4879
	.word	-72
	.word	4
	.word	_Label_4880
	.word	-76
	.word	4
	.word	_Label_4881
	.word	-80
	.word	4
	.word	_Label_4882
	.word	-84
	.word	4
	.word	0
_Label_4861:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"GetFCB\0"
	.align
_Label_4862:
	.ascii	"Pself\0"
	.align
_Label_4863:
	.byte	'I'
	.ascii	"inodeNum\0"
	.align
_Label_4864:
	.byte	'?'
	.ascii	"_temp_4860\0"
	.align
_Label_4865:
	.byte	'?'
	.ascii	"_temp_4859\0"
	.align
_Label_4866:
	.byte	'?'
	.ascii	"_temp_4858\0"
	.align
_Label_4867:
	.byte	'?'
	.ascii	"_temp_4857\0"
	.align
_Label_4868:
	.byte	'?'
	.ascii	"_temp_4856\0"
	.align
_Label_4869:
	.byte	'?'
	.ascii	"_temp_4852\0"
	.align
_Label_4870:
	.byte	'?'
	.ascii	"_temp_4851\0"
	.align
_Label_4871:
	.byte	'?'
	.ascii	"_temp_4850\0"
	.align
_Label_4872:
	.byte	'?'
	.ascii	"_temp_4849\0"
	.align
_Label_4873:
	.byte	'?'
	.ascii	"_temp_4848\0"
	.align
_Label_4874:
	.byte	'?'
	.ascii	"_temp_4847\0"
	.align
_Label_4875:
	.byte	'?'
	.ascii	"_temp_4843\0"
	.align
_Label_4876:
	.byte	'?'
	.ascii	"_temp_4842\0"
	.align
_Label_4877:
	.byte	'?'
	.ascii	"_temp_4841\0"
	.align
_Label_4878:
	.byte	'?'
	.ascii	"_temp_4840\0"
	.align
_Label_4879:
	.byte	'?'
	.ascii	"_temp_4839\0"
	.align
_Label_4880:
	.byte	'?'
	.ascii	"_temp_4836\0"
	.align
_Label_4881:
	.byte	'?'
	.ascii	"_temp_4835\0"
	.align
_Label_4882:
	.byte	'P'
	.ascii	"fcb\0"
	.align
! 
! ===============  METHOD Close  ===============
! 
_Method_P_Kernel_FileManager_7:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileManager_7,r1
	push	r1
	mov	22,r1
_Label_7913:
	push	r0
	sub	r1,1,r1
	bne	_Label_7913
	mov	3202,r13		! source line 3202
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	3204,r13		! source line 3204
	mov	"\0\0IF",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_4886 = open + 12
	load	[r14+12],r1
	add	r1,12,r1
	store	r1,[r14+-80]
!   Data Move: _temp_4885 = *_temp_4886  (sizeInBytes=4)
	load	[r14+-80],r1
	load	[r1],r1
	store	r1,[r14+-84]
!   if _temp_4885 != 3 then goto _Label_4884		(int)
	load	[r14+-84],r1
	mov	3,r2
	cmp	r1,r2
	bne	_Label_4884
!	_Label_4883	jmp	_Label_4883
_Label_4883:
! THEN...
	mov	3205,r13		! source line 3205
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	3205,r13		! source line 3205
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-76]
!   if intIsZero (_temp_4887) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=open  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message ClosePipe
	load	[r14+-76],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
	jmp	_Label_4888
_Label_4884:
! ELSE...
	mov	3207,r13		! source line 3207
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	3207,r13		! source line 3207
	mov	"\0\0IF",r10
!   _temp_4891 = &serialTerminalFile
	load	[r14+8],r1
	add	r1,7384,r1
	store	r1,[r14+-72]
!   if open != _temp_4891 then goto _Label_4890		(int)
	load	[r14+12],r1
	load	[r14+-72],r2
	cmp	r1,r2
	bne	_Label_4890
!	_Label_4889	jmp	_Label_4889
_Label_4889:
! THEN...
	mov	3208,r13		! source line 3208
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	3208,r13		! source line 3208
	mov	"\0\0RE",r10
	add	r15,92,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_4890:
! SEND STATEMENT...
	mov	3210,r13		! source line 3210
	mov	"\0\0SE",r10
!   _temp_4892 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-68]
!   Send message Lock
	load	[r14+-68],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	3211,r13		! source line 3211
	mov	"\0\0SE",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_4894 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-60]
!   Data Move: _temp_4893 = *_temp_4894  (sizeInBytes=4)
	load	[r14+-60],r1
	load	[r1],r1
	store	r1,[r14+-64]
!   if intIsZero (_temp_4893) then goto _runtimeErrorNullPointer
	load	[r14+-64],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Flush
	load	[r14+-64],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	3212,r13		! source line 3212
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_4895 = open + 24
	load	[r14+12],r1
	add	r1,24,r1
	store	r1,[r14+-56]
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_4898 = open + 24
	load	[r14+12],r1
	add	r1,24,r1
	store	r1,[r14+-44]
!   Data Move: _temp_4897 = *_temp_4898  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r1],r1
	store	r1,[r14+-48]
!   _temp_4896 = _temp_4897 - 1		(int)
	load	[r14+-48],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-52]
!   Data Move: *_temp_4895 = _temp_4896  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r14+-56],r2
	store	r1,[r2]
! IF STATEMENT...
	mov	3213,r13		! source line 3213
	mov	"\0\0IF",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_4902 = open + 24
	load	[r14+12],r1
	add	r1,24,r1
	store	r1,[r14+-36]
!   Data Move: _temp_4901 = *_temp_4902  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if _temp_4901 > 0 then goto _Label_4900		(int)
	load	[r14+-40],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_4900
!	_Label_4899	jmp	_Label_4899
_Label_4899:
! THEN...
	mov	3214,r13		! source line 3214
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	3214,r13		! source line 3214
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_4903 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-32]
!   Data Move: fcb = *_temp_4903  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-88]
! SEND STATEMENT...
	mov	3215,r13		! source line 3215
	mov	"\0\0SE",r10
!   _temp_4904 = &openFileFreeList
	load	[r14+8],r1
	add	r1,7372,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=open  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	3216,r13		! source line 3216
	mov	"\0\0SE",r10
!   _temp_4905 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-24]
!   _temp_4906 = &anOpenFileBecameFree
	load	[r14+8],r1
	add	r1,7356,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=_temp_4905  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+4]
!   Send message Signal
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	3217,r13		! source line 3217
	mov	"\0\0SE",r10
!   _temp_4907 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-16]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-88],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_4907  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Send message Release
	load	[r14+-88],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! END IF...
_Label_4900:
! SEND STATEMENT...
	mov	3219,r13		! source line 3219
	mov	"\0\0SE",r10
!   _temp_4908 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-12]
!   Send message Unlock
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! END IF...
_Label_4888:
! RETURN STATEMENT...
	mov	3204,r13		! source line 3204
	mov	"\0\0RE",r10
	add	r15,92,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileManager_7:
	.word	_sourceFileName
	.word	_Label_4909
	.word	8		! total size of parameters
	.word	88		! frame size = 88
	.word	_Label_4910
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_4911
	.word	12
	.word	4
	.word	_Label_4912
	.word	-12
	.word	4
	.word	_Label_4913
	.word	-16
	.word	4
	.word	_Label_4914
	.word	-20
	.word	4
	.word	_Label_4915
	.word	-24
	.word	4
	.word	_Label_4916
	.word	-28
	.word	4
	.word	_Label_4917
	.word	-32
	.word	4
	.word	_Label_4918
	.word	-36
	.word	4
	.word	_Label_4919
	.word	-40
	.word	4
	.word	_Label_4920
	.word	-44
	.word	4
	.word	_Label_4921
	.word	-48
	.word	4
	.word	_Label_4922
	.word	-52
	.word	4
	.word	_Label_4923
	.word	-56
	.word	4
	.word	_Label_4924
	.word	-60
	.word	4
	.word	_Label_4925
	.word	-64
	.word	4
	.word	_Label_4926
	.word	-68
	.word	4
	.word	_Label_4927
	.word	-72
	.word	4
	.word	_Label_4928
	.word	-76
	.word	4
	.word	_Label_4929
	.word	-80
	.word	4
	.word	_Label_4930
	.word	-84
	.word	4
	.word	_Label_4931
	.word	-88
	.word	4
	.word	0
_Label_4909:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Close\0"
	.align
_Label_4910:
	.ascii	"Pself\0"
	.align
_Label_4911:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_4912:
	.byte	'?'
	.ascii	"_temp_4908\0"
	.align
_Label_4913:
	.byte	'?'
	.ascii	"_temp_4907\0"
	.align
_Label_4914:
	.byte	'?'
	.ascii	"_temp_4906\0"
	.align
_Label_4915:
	.byte	'?'
	.ascii	"_temp_4905\0"
	.align
_Label_4916:
	.byte	'?'
	.ascii	"_temp_4904\0"
	.align
_Label_4917:
	.byte	'?'
	.ascii	"_temp_4903\0"
	.align
_Label_4918:
	.byte	'?'
	.ascii	"_temp_4902\0"
	.align
_Label_4919:
	.byte	'?'
	.ascii	"_temp_4901\0"
	.align
_Label_4920:
	.byte	'?'
	.ascii	"_temp_4898\0"
	.align
_Label_4921:
	.byte	'?'
	.ascii	"_temp_4897\0"
	.align
_Label_4922:
	.byte	'?'
	.ascii	"_temp_4896\0"
	.align
_Label_4923:
	.byte	'?'
	.ascii	"_temp_4895\0"
	.align
_Label_4924:
	.byte	'?'
	.ascii	"_temp_4894\0"
	.align
_Label_4925:
	.byte	'?'
	.ascii	"_temp_4893\0"
	.align
_Label_4926:
	.byte	'?'
	.ascii	"_temp_4892\0"
	.align
_Label_4927:
	.byte	'?'
	.ascii	"_temp_4891\0"
	.align
_Label_4928:
	.byte	'?'
	.ascii	"_temp_4887\0"
	.align
_Label_4929:
	.byte	'?'
	.ascii	"_temp_4886\0"
	.align
_Label_4930:
	.byte	'?'
	.ascii	"_temp_4885\0"
	.align
_Label_4931:
	.byte	'P'
	.ascii	"fcb\0"
	.align
! 
! ===============  METHOD ClosePipe  ===============
! 
_Method_P_Kernel_FileManager_8:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileManager_8,r1
	push	r1
	mov	29,r1
_Label_7914:
	push	r0
	sub	r1,1,r1
	bne	_Label_7914
	mov	3225,r13		! source line 3225
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	3226,r13		! source line 3226
	mov	"\0\0IF",r10
!   _temp_4934 = &serialTerminalFile
	load	[r14+8],r1
	add	r1,7384,r1
	store	r1,[r14+-116]
!   if open != _temp_4934 then goto _Label_4933		(int)
	load	[r14+12],r1
	load	[r14+-116],r2
	cmp	r1,r2
	bne	_Label_4933
!	_Label_4932	jmp	_Label_4932
_Label_4932:
! THEN...
	mov	3227,r13		! source line 3227
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	3227,r13		! source line 3227
	mov	"\0\0RE",r10
	add	r15,120,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_4933:
! SEND STATEMENT...
	mov	3229,r13		! source line 3229
	mov	"\0\0SE",r10
!   _temp_4935 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-112]
!   Send message Lock
	load	[r14+-112],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	3230,r13		! source line 3230
	mov	"\0\0SE",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_4937 = open + 36
	load	[r14+12],r1
	add	r1,36,r1
	store	r1,[r14+-104]
!   Data Move: _temp_4936 = *_temp_4937  (sizeInBytes=4)
	load	[r14+-104],r1
	load	[r1],r1
	store	r1,[r14+-108]
!   if intIsZero (_temp_4936) then goto _runtimeErrorNullPointer
	load	[r14+-108],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_4938 = _temp_4936 + 28
	load	[r14+-108],r1
	add	r1,28,r1
	store	r1,[r14+-100]
!   Send message Lock
	load	[r14+-100],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	3231,r13		! source line 3231
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_4939 = open + 24
	load	[r14+12],r1
	add	r1,24,r1
	store	r1,[r14+-96]
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_4942 = open + 24
	load	[r14+12],r1
	add	r1,24,r1
	store	r1,[r14+-84]
!   Data Move: _temp_4941 = *_temp_4942  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r1],r1
	store	r1,[r14+-88]
!   _temp_4940 = _temp_4941 - 1		(int)
	load	[r14+-88],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-92]
!   Data Move: *_temp_4939 = _temp_4940  (sizeInBytes=4)
	load	[r14+-92],r1
	load	[r14+-96],r2
	store	r1,[r2]
! IF STATEMENT...
	mov	3232,r13		! source line 3232
	mov	"\0\0IF",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_4946 = open + 24
	load	[r14+12],r1
	add	r1,24,r1
	store	r1,[r14+-76]
!   Data Move: _temp_4945 = *_temp_4946  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-80]
!   if _temp_4945 > 0 then goto _Label_4944		(int)
	load	[r14+-80],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_4944
!	_Label_4943	jmp	_Label_4943
_Label_4943:
! THEN...
	mov	3233,r13		! source line 3233
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	3233,r13		! source line 3233
	mov	"\0\0SE",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_4948 = open + 36
	load	[r14+12],r1
	add	r1,36,r1
	store	r1,[r14+-68]
!   Data Move: _temp_4947 = *_temp_4948  (sizeInBytes=4)
	load	[r14+-68],r1
	load	[r1],r1
	store	r1,[r14+-72]
!   if intIsZero (_temp_4947) then goto _runtimeErrorNullPointer
	load	[r14+-72],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Close
	load	[r14+-72],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,24,r2
	call	r2
! IF STATEMENT...
	mov	3234,r13		! source line 3234
	mov	"\0\0IF",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_4953 = open + 36
	load	[r14+12],r1
	add	r1,36,r1
	store	r1,[r14+-56]
!   Data Move: _temp_4952 = *_temp_4953  (sizeInBytes=4)
	load	[r14+-56],r1
	load	[r1],r1
	store	r1,[r14+-60]
!   if intIsZero (_temp_4952) then goto _runtimeErrorNullPointer
	load	[r14+-60],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_4954 = _temp_4952 + 24
	load	[r14+-60],r1
	add	r1,24,r1
	store	r1,[r14+-52]
!   Data Move: _temp_4951 = *_temp_4954  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-64]
!   if intIsZero (_temp_4951) then goto _Label_4949
	load	[r14+-64],r1
	cmp	r1,r0
	be	_Label_4949
	jmp	_Label_4950
_Label_4949:
! THEN...
	mov	3235,r13		! source line 3235
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	3235,r13		! source line 3235
	mov	"\0\0SE",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_4956 = open + 36
	load	[r14+12],r1
	add	r1,36,r1
	store	r1,[r14+-44]
!   Data Move: _temp_4955 = *_temp_4956  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r1],r1
	store	r1,[r14+-48]
	load	[r14+8],r1
	store	r1,[r14+-40]
!   if intIsZero (_temp_4957) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_4955  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+4]
!   Send message ReturnPipe
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,28,r2
	call	r2
! END IF...
_Label_4950:
! SEND STATEMENT...
	mov	3237,r13		! source line 3237
	mov	"\0\0SE",r10
!   _temp_4958 = &openFileFreeList
	load	[r14+8],r1
	add	r1,7372,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=12  value=open  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	3238,r13		! source line 3238
	mov	"\0\0SE",r10
!   _temp_4959 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-32]
!   _temp_4960 = &anOpenFileBecameFree
	load	[r14+8],r1
	add	r1,7356,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=_temp_4959  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+4]
!   Send message Signal
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! END IF...
_Label_4944:
! SEND STATEMENT...
	mov	3240,r13		! source line 3240
	mov	"\0\0SE",r10
!   _temp_4961 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-24]
!   Send message Unlock
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	3241,r13		! source line 3241
	mov	"\0\0SE",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_4963 = open + 36
	load	[r14+12],r1
	add	r1,36,r1
	store	r1,[r14+-16]
!   Data Move: _temp_4962 = *_temp_4963  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_4962) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_4964 = _temp_4962 + 28
	load	[r14+-20],r1
	add	r1,28,r1
	store	r1,[r14+-12]
!   Send message Unlock
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	3241,r13		! source line 3241
	mov	"\0\0RE",r10
	add	r15,120,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileManager_8:
	.word	_sourceFileName
	.word	_Label_4965
	.word	8		! total size of parameters
	.word	116		! frame size = 116
	.word	_Label_4966
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_4967
	.word	12
	.word	4
	.word	_Label_4968
	.word	-12
	.word	4
	.word	_Label_4969
	.word	-16
	.word	4
	.word	_Label_4970
	.word	-20
	.word	4
	.word	_Label_4971
	.word	-24
	.word	4
	.word	_Label_4972
	.word	-28
	.word	4
	.word	_Label_4973
	.word	-32
	.word	4
	.word	_Label_4974
	.word	-36
	.word	4
	.word	_Label_4975
	.word	-40
	.word	4
	.word	_Label_4976
	.word	-44
	.word	4
	.word	_Label_4977
	.word	-48
	.word	4
	.word	_Label_4978
	.word	-52
	.word	4
	.word	_Label_4979
	.word	-56
	.word	4
	.word	_Label_4980
	.word	-60
	.word	4
	.word	_Label_4981
	.word	-64
	.word	4
	.word	_Label_4982
	.word	-68
	.word	4
	.word	_Label_4983
	.word	-72
	.word	4
	.word	_Label_4984
	.word	-76
	.word	4
	.word	_Label_4985
	.word	-80
	.word	4
	.word	_Label_4986
	.word	-84
	.word	4
	.word	_Label_4987
	.word	-88
	.word	4
	.word	_Label_4988
	.word	-92
	.word	4
	.word	_Label_4989
	.word	-96
	.word	4
	.word	_Label_4990
	.word	-100
	.word	4
	.word	_Label_4991
	.word	-104
	.word	4
	.word	_Label_4992
	.word	-108
	.word	4
	.word	_Label_4993
	.word	-112
	.word	4
	.word	_Label_4994
	.word	-116
	.word	4
	.word	0
_Label_4965:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"ClosePipe\0"
	.align
_Label_4966:
	.ascii	"Pself\0"
	.align
_Label_4967:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_4968:
	.byte	'?'
	.ascii	"_temp_4964\0"
	.align
_Label_4969:
	.byte	'?'
	.ascii	"_temp_4963\0"
	.align
_Label_4970:
	.byte	'?'
	.ascii	"_temp_4962\0"
	.align
_Label_4971:
	.byte	'?'
	.ascii	"_temp_4961\0"
	.align
_Label_4972:
	.byte	'?'
	.ascii	"_temp_4960\0"
	.align
_Label_4973:
	.byte	'?'
	.ascii	"_temp_4959\0"
	.align
_Label_4974:
	.byte	'?'
	.ascii	"_temp_4958\0"
	.align
_Label_4975:
	.byte	'?'
	.ascii	"_temp_4957\0"
	.align
_Label_4976:
	.byte	'?'
	.ascii	"_temp_4956\0"
	.align
_Label_4977:
	.byte	'?'
	.ascii	"_temp_4955\0"
	.align
_Label_4978:
	.byte	'?'
	.ascii	"_temp_4954\0"
	.align
_Label_4979:
	.byte	'?'
	.ascii	"_temp_4953\0"
	.align
_Label_4980:
	.byte	'?'
	.ascii	"_temp_4952\0"
	.align
_Label_4981:
	.byte	'?'
	.ascii	"_temp_4951\0"
	.align
_Label_4982:
	.byte	'?'
	.ascii	"_temp_4948\0"
	.align
_Label_4983:
	.byte	'?'
	.ascii	"_temp_4947\0"
	.align
_Label_4984:
	.byte	'?'
	.ascii	"_temp_4946\0"
	.align
_Label_4985:
	.byte	'?'
	.ascii	"_temp_4945\0"
	.align
_Label_4986:
	.byte	'?'
	.ascii	"_temp_4942\0"
	.align
_Label_4987:
	.byte	'?'
	.ascii	"_temp_4941\0"
	.align
_Label_4988:
	.byte	'?'
	.ascii	"_temp_4940\0"
	.align
_Label_4989:
	.byte	'?'
	.ascii	"_temp_4939\0"
	.align
_Label_4990:
	.byte	'?'
	.ascii	"_temp_4938\0"
	.align
_Label_4991:
	.byte	'?'
	.ascii	"_temp_4937\0"
	.align
_Label_4992:
	.byte	'?'
	.ascii	"_temp_4936\0"
	.align
_Label_4993:
	.byte	'?'
	.ascii	"_temp_4935\0"
	.align
_Label_4994:
	.byte	'?'
	.ascii	"_temp_4934\0"
	.align
! 
! ===============  METHOD GetAPipe  ===============
! 
_Method_P_Kernel_FileManager_9:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileManager_9,r1
	push	r1
	mov	13,r1
_Label_7915:
	push	r0
	sub	r1,1,r1
	bne	_Label_7915
	mov	3246,r13		! source line 3246
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	3255,r13		! source line 3255
	mov	"\0\0SE",r10
!   _temp_4995 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-48]
!   Send message Lock
	load	[r14+-48],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! WHILE STATEMENT...
	mov	3257,r13		! source line 3257
	mov	"\0\0WH",r10
_Label_4996:
	mov	3257,r13		! source line 3257
	mov	"\0\0SE",r10
!   _temp_4999 = &pipeFreeList
	load	[r14+8],r1
	add	r1,8052,r1
	store	r1,[r14+-44]
!   Send message IsEmpty
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   if result==true then goto _Label_4997 else goto _Label_4998
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_4998
	jmp	_Label_4997
_Label_4997:
	mov	3257,r13		! source line 3257
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	3258,r13		! source line 3258
	mov	"\0\0SE",r10
!   _temp_5000 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-40]
!   _temp_5001 = &pipeBecameFree
	load	[r14+8],r1
	add	r1,8064,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=12  value=_temp_5000  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+4]
!   Send message Wait
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END WHILE...
	jmp	_Label_4996
_Label_4998:
! ASSIGNMENT STATEMENT...
	mov	3261,r13		! source line 3261
	mov	"\0\0AS",r10
	mov	3261,r13		! source line 3261
	mov	"\0\0SE",r10
!   _temp_5002 = &pipeFreeList
	load	[r14+8],r1
	add	r1,8052,r1
	store	r1,[r14+-32]
!   Send message Remove
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=pipe  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-52]
! IF STATEMENT...
	mov	3263,r13		! source line 3263
	mov	"\0\0IF",r10
	mov	3263,r13		! source line 3263
	mov	"\0\0SE",r10
!   if intIsZero (pipe) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Open
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_5005  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_5005 then goto _Label_5004 else goto _Label_5003
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_5003
	jmp	_Label_5004
_Label_5003:
! THEN...
	mov	3264,r13		! source line 3264
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	3264,r13		! source line 3264
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_5007 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-24]
!   Data Move: _temp_5006 = *_temp_5007  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_5006) then goto _runtimeErrorNullPointer
	load	[r14+-28],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_5008 = _temp_5006 + 236
	load	[r14+-28],r1
	add	r1,236,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_5008 = 4  (sizeInBytes=4)
	mov	4,r1
	load	[r14+-20],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	3265,r13		! source line 3265
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_5004:
! SEND STATEMENT...
	mov	3269,r13		! source line 3269
	mov	"\0\0SE",r10
!   _temp_5009 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-16]
!   Send message Unlock
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	3272,r13		! source line 3272
	mov	"\0\0RE",r10
!   ReturnResult: pipe  (sizeInBytes=4)
	load	[r14+-52],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileManager_9:
	.word	_sourceFileName
	.word	_Label_5010
	.word	4		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_5011
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_5012
	.word	-16
	.word	4
	.word	_Label_5013
	.word	-20
	.word	4
	.word	_Label_5014
	.word	-24
	.word	4
	.word	_Label_5015
	.word	-28
	.word	4
	.word	_Label_5016
	.word	-9
	.word	1
	.word	_Label_5017
	.word	-32
	.word	4
	.word	_Label_5018
	.word	-36
	.word	4
	.word	_Label_5019
	.word	-40
	.word	4
	.word	_Label_5020
	.word	-44
	.word	4
	.word	_Label_5021
	.word	-48
	.word	4
	.word	_Label_5022
	.word	-52
	.word	4
	.word	0
_Label_5010:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"GetAPipe\0"
	.align
_Label_5011:
	.ascii	"Pself\0"
	.align
_Label_5012:
	.byte	'?'
	.ascii	"_temp_5009\0"
	.align
_Label_5013:
	.byte	'?'
	.ascii	"_temp_5008\0"
	.align
_Label_5014:
	.byte	'?'
	.ascii	"_temp_5007\0"
	.align
_Label_5015:
	.byte	'?'
	.ascii	"_temp_5006\0"
	.align
_Label_5016:
	.byte	'C'
	.ascii	"_temp_5005\0"
	.align
_Label_5017:
	.byte	'?'
	.ascii	"_temp_5002\0"
	.align
_Label_5018:
	.byte	'?'
	.ascii	"_temp_5001\0"
	.align
_Label_5019:
	.byte	'?'
	.ascii	"_temp_5000\0"
	.align
_Label_5020:
	.byte	'?'
	.ascii	"_temp_4999\0"
	.align
_Label_5021:
	.byte	'?'
	.ascii	"_temp_4995\0"
	.align
_Label_5022:
	.byte	'P'
	.ascii	"pipe\0"
	.align
! 
! ===============  METHOD ReturnPipe  ===============
! 
_Method_P_Kernel_FileManager_10:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileManager_10,r1
	push	r1
	mov	5,r1
_Label_7916:
	push	r0
	sub	r1,1,r1
	bne	_Label_7916
	mov	3279,r13		! source line 3279
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	3280,r13		! source line 3280
	mov	"\0\0SE",r10
!   _temp_5023 = &pipeFreeList
	load	[r14+8],r1
	add	r1,8052,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=pipe  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	3281,r13		! source line 3281
	mov	"\0\0SE",r10
!   _temp_5024 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-16]
!   _temp_5025 = &pipeBecameFree
	load	[r14+8],r1
	add	r1,8064,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_5024  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Send message Signal
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	3281,r13		! source line 3281
	mov	"\0\0RE",r10
	add	r15,24,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileManager_10:
	.word	_sourceFileName
	.word	_Label_5026
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_5027
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_5028
	.word	12
	.word	4
	.word	_Label_5029
	.word	-12
	.word	4
	.word	_Label_5030
	.word	-16
	.word	4
	.word	_Label_5031
	.word	-20
	.word	4
	.word	0
_Label_5026:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"ReturnPipe\0"
	.align
_Label_5027:
	.ascii	"Pself\0"
	.align
_Label_5028:
	.byte	'P'
	.ascii	"pipe\0"
	.align
_Label_5029:
	.byte	'?'
	.ascii	"_temp_5025\0"
	.align
_Label_5030:
	.byte	'?'
	.ascii	"_temp_5024\0"
	.align
_Label_5031:
	.byte	'?'
	.ascii	"_temp_5023\0"
	.align
! 
! ===============  METHOD SynchRead  ===============
! 
_Method_P_Kernel_FileManager_11:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileManager_11,r1
	push	r1
	mov	27,r1
_Label_7917:
	push	r0
	sub	r1,1,r1
	bne	_Label_7917
	mov	3286,r13		! source line 3286
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	3302,r13		! source line 3302
	mov	"\0\0SE",r10
!   _temp_5032 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-84]
!   Send message Lock
	load	[r14+-84],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! IF STATEMENT...
	mov	3303,r13		! source line 3303
	mov	"\0\0IF",r10
!   if open == 0 then goto _Label_5038		(int)
	load	[r14+12],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_5038
!   _temp_5037 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-11]
	jmp	_Label_5039
_Label_5038:
!   _temp_5037 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-11]
_Label_5039:
!   if _temp_5037 then goto _Label_5036 else goto _Label_5033
	loadb	[r14+-11],r1
	cmp	r1,0
	be	_Label_5033
	jmp	_Label_5036
_Label_5036:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_5042 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-76]
!   Data Move: _temp_5041 = *_temp_5042  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-80]
!   if _temp_5041 == 0 then goto _Label_5043		(int)
	load	[r14+-80],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_5043
!   _temp_5040 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-10]
	jmp	_Label_5044
_Label_5043:
!   _temp_5040 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-10]
_Label_5044:
!   if _temp_5040 then goto _Label_5035 else goto _Label_5033
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_5033
	jmp	_Label_5035
_Label_5035:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_5047 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-64]
!   Data Move: _temp_5046 = *_temp_5047  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   if intIsZero (_temp_5046) then goto _runtimeErrorNullPointer
	load	[r14+-68],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_5048 = _temp_5046 + 12
	load	[r14+-68],r1
	add	r1,12,r1
	store	r1,[r14+-60]
!   _temp_5049 = _temp_5048 + 4
	load	[r14+-60],r1
	add	r1,4,r1
	store	r1,[r14+-56]
!   Data Move: _temp_5045 = *_temp_5049  (sizeInBytes=4)
	load	[r14+-56],r1
	load	[r1],r1
	store	r1,[r14+-72]
!   if _temp_5045 >= 0 then goto _Label_5034		(int)
	load	[r14+-72],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_5034
!	_Label_5033	jmp	_Label_5033
_Label_5033:
! THEN...
	mov	3304,r13		! source line 3304
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_5050 = _StringConst_160
	set	_StringConst_160,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_5050  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	3304,r13		! source line 3304
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_5034:
! ASSIGNMENT STATEMENT...
	mov	3306,r13		! source line 3306
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_5051 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-48]
!   Data Move: fcb = *_temp_5051  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r1],r1
	store	r1,[r14+-104]
! WHILE STATEMENT...
	mov	3307,r13		! source line 3307
	mov	"\0\0WH",r10
_Label_5052:
!   if numBytes <= 0 then goto _Label_5054		(int)
	load	[r14+24],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_5054
!	_Label_5053	jmp	_Label_5053
_Label_5053:
	mov	3307,r13		! source line 3307
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	3315,r13		! source line 3315
	mov	"\0\0AS",r10
!   sector = bytePos div 8192		(int)
	load	[r14+20],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-88]
! ASSIGNMENT STATEMENT...
	mov	3316,r13		! source line 3316
	mov	"\0\0AS",r10
!   offset = bytePos rem 8192		(int)
	load	[r14+20],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-92]
! IF STATEMENT...
	mov	3320,r13		! source line 3320
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_5058 = fcb + 104
	load	[r14+-104],r1
	add	r1,104,r1
	store	r1,[r14+-40]
!   Data Move: _temp_5057 = *_temp_5058  (sizeInBytes=4)
	load	[r14+-40],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   if _temp_5057 == sector then goto _Label_5056		(int)
	load	[r14+-44],r1
	load	[r14+-88],r2
	cmp	r1,r2
	be	_Label_5056
!	_Label_5055	jmp	_Label_5055
_Label_5055:
! THEN...
	mov	3321,r13		! source line 3321
	mov	"\0\0TN",r10
! IF STATEMENT...
	mov	3321,r13		! source line 3321
	mov	"\0\0IF",r10
	mov	3321,r13		! source line 3321
	mov	"\0\0SE",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_5063 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-32]
!   Data Move: _temp_5062 = *_temp_5063  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   if intIsZero (_temp_5062) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=sector  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=0  sizeInBytes=1
	mov	0,r1
	storeb	r1,[r15+8]
!   Send message ReadSector
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_5061  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_5061 then goto _Label_5060 else goto _Label_5059
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_5059
	jmp	_Label_5060
_Label_5059:
! THEN...
	mov	3322,r13		! source line 3322
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	3322,r13		! source line 3322
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=1)
	mov	0,r1
	storeb	r1,[r14+8]
	add	r15,112,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_5060:
! END IF...
_Label_5056:
! ASSIGNMENT STATEMENT...
	mov	3325,r13		! source line 3325
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_5065 = fcb + 100
	load	[r14+-104],r1
	add	r1,100,r1
	store	r1,[r14+-24]
!   Data Move: _temp_5064 = *_temp_5065  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   posInBuffer = _temp_5064 + offset		(int)
	load	[r14+-28],r1
	load	[r14+-92],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-96]
! ASSIGNMENT STATEMENT...
	mov	3326,r13		! source line 3326
	mov	"\0\0AS",r10
!   _temp_5066 = 8192 - offset		(int)
	mov	8192,r1
	load	[r14+-92],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=numBytes  sizeInBytes=4
	load	[r14+24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_5066  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Call the function
	mov	3326,r13		! source line 3326
	mov	"\0\0CA",r10
	call	_P_System_Min
!   Retrieve Result: targetName=bytesToMove  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-100]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=targetAddr  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=posInBuffer  sizeInBytes=4
	load	[r14+-96],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=bytesToMove  sizeInBytes=4
	load	[r14+-100],r1
	store	r1,[r15+8]
!   Call the function
	mov	3330,r13		! source line 3330
	mov	"\0\0CE",r10
	call	MemoryCopy
! ASSIGNMENT STATEMENT...
	mov	3331,r13		! source line 3331
	mov	"\0\0AS",r10
!   targetAddr = targetAddr + bytesToMove		(int)
	load	[r14+16],r1
	load	[r14+-100],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+16]
! ASSIGNMENT STATEMENT...
	mov	3332,r13		! source line 3332
	mov	"\0\0AS",r10
!   bytePos = bytePos + bytesToMove		(int)
	load	[r14+20],r1
	load	[r14+-100],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+20]
! ASSIGNMENT STATEMENT...
	mov	3333,r13		! source line 3333
	mov	"\0\0AS",r10
!   numBytes = numBytes - bytesToMove		(int)
	load	[r14+24],r1
	load	[r14+-100],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+24]
! END WHILE...
	jmp	_Label_5052
_Label_5054:
! SEND STATEMENT...
	mov	3340,r13		! source line 3340
	mov	"\0\0SE",r10
!   _temp_5067 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-16]
!   Send message Unlock
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	call	r2
! 