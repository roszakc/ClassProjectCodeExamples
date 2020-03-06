/*
 * made by Jessica Avery and Corben Roszak for CSCI330
 */

package SURLY.Parser;

/*
 * Parses a DESTROY command, provided in the constructor
 */
public class DestroyParser {
    private static final String DEFAULT_DELIMITER       = " ";

    private String input;
    private String[] tokens;

    /*
     * Sets up this DestroyParser with the provided string
     */
    public DestroyParser(String input){
        this.input = input;

        this.tokens = splitInput(this.input);
    }

    /*
     * Gets the name of the relation to destroy
     */
    public String parseRelationName() {
        if(this.tokens.length != 2){
            throw new IllegalArgumentException("could not parse name: " + input); // require proper syntax
        }

        return this.tokens[1];
    }

    /*
     * Splits the given command string into tokens, specialized for this parser
     *
     * Expected syntax: DESTROY <relation name>
     */
    private String[] splitInput(String command) {
        return command.split("\\s*" + DEFAULT_DELIMITER + "\\s*");
    }
}
