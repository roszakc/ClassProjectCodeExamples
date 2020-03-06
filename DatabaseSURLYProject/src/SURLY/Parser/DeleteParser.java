/*
 * made by Jessica Avery and Corben Roszak for CSCI330
 */

package SURLY.Parser;

import SURLY.Database.Tuple;

import java.util.function.Predicate;

/*
 * Parses a DELETE command, provided in the constructor
 */
public class DeleteParser {
    private static final String DEFAULT_DELIMITER       = " ";

    private String input;
    private String[] tokens;

    /*
     * Sets up this DeleteParser with the provided string
     */
    public DeleteParser(String input){
        this.input = input;

        this.tokens = splitInput(this.input);
    }

    /*
     * Gets the name of the relation to delete from
     */
    public String parseRelationName() {
        if(this.tokens.length < 2){
            throw new IllegalArgumentException("could not parse name: " + input);
        }

        return this.tokens[1];
    }

    /*
     * Get the conditional part of this command (WHERE ...)
     */
    public Predicate<Tuple> parseConditional() {
        return new WhereParser(input, parseRelationName()).parseConditional();
    }

    /*
     * Splits the given command string into tokens, specialized for this parser
     *
     * Expected syntax: DELETE <relation name>
     */
    private String[] splitInput(String command) {
        return command.split("\\s*" + DEFAULT_DELIMITER + "\\s*");
    }
}
