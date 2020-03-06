/*
 * made by Jessica Avery and Corben Roszak for CSCI330
 */

package SURLY;

import SURLY.Command.*;

import java.io.File;
import java.io.FileNotFoundException;
import java.util.Scanner;

/*
 * Takes the name of a file containing commands, then
 * parses commands using their respective parser and
 * prints the appropriate output.
 */
public class LexicalAnalyzer {
    private static final Command[] COMMANDS = new Command[]{
            new DeleteCommand(), new DestroyCommand(), new InsertCommand(), new JoinCommand(),
            new PrintCommand(), new ProjectCommand(), new RelationCommand(), new SelectCommand()
    };
    private static final String COMMAND_END = ";";

    /*
     * Creates a Scanner to read from the file specified by fileName
     *
     * If the file is not found, prints the file name that could not be found
     * and returns null.
     */
    private static Scanner getScannerOfFile(String fileName) {
        File file = new File(fileName);
        Scanner scanner = null;

        try {
            scanner = new Scanner(file);
        } catch (FileNotFoundException e) {
            System.out.println("The file \"" + fileName + "\" could not be found.");
            e.printStackTrace();
        }

        return scanner;
    }

    /*
     * Sets up the Scanner to read from a file, then shoves the work on readFile.
     *
     * If the Scanner is null (likely due to the file not being found) then
     * it returns without attempting to read it.
     */
    public void run(String fileName) {
        Scanner input = LexicalAnalyzer.getScannerOfFile(fileName);
        if (input == null) {
            return;
        }

        readFile(input);
    }

    /*
     * Extracts command strings from a file being scanned by the given scanner
     */
    private void readFile(Scanner input) {
        String processingString = ""; // empty string
        StringBuilder commandBuilder = new StringBuilder();

        // continue processing if there is no next line but there is more in processingString
        while (!processingString.isEmpty() || input.hasNextLine()) {
            if (processingString.isEmpty()) {
                processingString = input.nextLine();
            }

            /* separated from the processingString reset above
               in case there's more stuff on the line after a semicolon
               (I don't expect to see meaningful stuff after a semicolon,
               but I don't know for sure.) */
            processingString = removeJunk(processingString);

            if (processingString.contains(COMMAND_END)) {
                int ceIndex = processingString.indexOf(COMMAND_END);

                // + COMMAND_END.length() to avoid keeping it
                commandBuilder.append(processingString.substring(0, ceIndex));
                processingString = processingString.substring(ceIndex + COMMAND_END.length());

                // trims so that we don't pass commands with worthless whitespace
                processCommand(commandBuilder.toString().trim());
                commandBuilder.setLength(0); // reset
            } else {
                commandBuilder.append(processingString);
                processingString = ""; // empty string
            }
        }

        /*
         * I wasn't sure what string to pass to the parsers, but this seems reasonable to me.
         * the goal is to clear off any unusable stuff, and send a string of
         * the entire command, excluding the semicolon at the end.
         */
    }

    /*
     * Removes the unneeded junk from a string to process.
     */
    private String removeJunk(String str) {
        str = str.replaceFirst("#.*$", "");

        return str;
    }

    /*
     * Attempts to interpret which of the 3 known commands
     * the given command belongs to.
     *
     * If it can't determine which, prints the command that failed.
     */
    private void processCommand(String commandString) {
        boolean foundMatch = false;
        for (Command command : COMMANDS) {
            boolean canRun = command.handles(commandString);
            boolean didExecute;
            String commandName = command.getClass().getSimpleName();

            if (canRun) {
                foundMatch = true;

                try {
                    didExecute = command.run(commandString);
                } catch (IllegalArgumentException e) {
                    //e.printStackTrace();
                    failedRun("illegal argument thrown in " + commandName + ": " + e.getMessage(), commandString);
                    continue;
                }

                if (!didExecute) {
                    failedRun("failed to execute " + commandName, commandString);
                }
            }
        }

        if (!foundMatch) {
            failedRun("not a recognized command", commandString);
        }
    }

    /*
     * Prints an error message saying the run failed for the provided reason, and shows the command that caused it
     */
    private void failedRun(String reason, String command) {
        System.out.printf("Failed to run command for reason \"%s\".\n\tCommand: %s%s\n", reason, command, COMMAND_END);
        // adds a COMMAND_END at the end since no command strings carry that along with them,
        // but it may be useful to see the COMMAND_END for investigation
    }
}