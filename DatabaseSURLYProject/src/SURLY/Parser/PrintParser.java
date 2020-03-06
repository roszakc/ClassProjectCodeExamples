/*
 * made by Jessica Avery and Corben Roszak for CSCI330
 */

package SURLY.Parser;

import java.util.Arrays;

/*
 * Parses a PRINT command, provided in the constructor
 */
public class PrintParser {
    private static final String DEFAULT_DELIMITER = "[, ]";

    private String input;
    private String[] tokens;

    /*
     * Sets up this PrintParser with the provided string
     */
    public PrintParser(String input) {
        this.input = input;

        this.tokens = splitInput(this.input);
    }

    /*
     * Gets the relation names to print
     */
    public String[] parseRelationNames() {
        if (this.tokens.length < 1) {
            return this.tokens; // if array is empty, return as is to avoid exception
        }

        return Arrays.copyOfRange(this.tokens, 1, this.tokens.length);
    }

    /*
     * Splits the given command string into tokens, specialized for this parser
     *
     * Expected syntax: PRINT <relation name> ...
     */
    private String[] splitInput(String command) {
        return command.split("\\s*" + DEFAULT_DELIMITER + "\\s*");
    }
}
