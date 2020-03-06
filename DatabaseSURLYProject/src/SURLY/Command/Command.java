/*
 * made by Jessica Avery and Corben Roszak for CSCI330
 */

package SURLY.Command;

/*
 * The interface that all commands should follow
 */
public interface Command {
    /*
     * Run a command (input from String)
     *
     * Returns true if the command was successfully executed,
     * or false if any error occurred and the command failed.
     */
    boolean run(String command);

    /*
     * Determine if this command can handle the command provided
     */
    boolean handles(String command);
}
