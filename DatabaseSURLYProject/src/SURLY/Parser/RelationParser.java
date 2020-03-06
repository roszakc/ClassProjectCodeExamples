/*
 * made by Jessica Avery and Corben Roszak for CSCI330
 */

package SURLY.Parser;

import static SURLY.CheckRegex.*;

import SURLY.Database.Attribute;
import SURLY.Database.Relation;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.LinkedList;
import java.util.List;

/*
 * Parses a RELATION command, provided in the constructor
 */
public class RelationParser {
    private static final String PLACEHOLDER = "#"; // should never appear in input
    private static final String DEFAULT_DELIMITER = " ";
    private static final String ATTRIBUTE_DELIMITER = ",";

    private String input;
    private String[] tokens;

    /*
     * Sets up this RelationParser with the provided string
     *
     * Expected syntax: RELATION <relation name> (<attribute name> <attribute type> <attribute length>, ...)
     */
    public RelationParser(String input) {
        this.input = input;

        this.tokens = splitCommand(this.input);
    }

    /*
     * Gets the name of the relation
     */
    public String parseRelationName() {
        String relationName;

        if (this.tokens.length < 2) {
            throw new IllegalArgumentException("invalid syntax");
        } else {
            relationName = this.tokens[1]; // 1 is the position of the relation name in the command
        }                             // should be RELATION <relationName> <attributes...>

        return relationName;
    }

    /*
     * Determines the number of attributes being inserted
     *
     * If there is a syntax error, INVALID_COUNT (= -1) will be returned
     */
    public int parseAttributeCount() {
        // 2 is the slot where the opening parenthesis should be
        // 3 is where the attributes start
        // ex. [RELATION, relationName, (, attr1, ..., attrN, )]
        //      0         1             2  3      ...  len-2  len-1
        if (!(this.tokens.length >= 3 && this.tokens[2].equals("("))) {
            //return INVALID_COUNT;
            throw new IllegalArgumentException("invalid syntax");
        }

        // loop counts valid attributes as it goes (- 3 on the return to take away the 3 it started at)
        for (int i = 3; i < this.tokens.length; i++) {
            if (this.tokens[i].equals(")")) {
                if (i == this.tokens.length - 1) {
                    return i - 3;
                } else {
                    break;
                }
            }

            // ensure the attribute matches the format "part1 part2 part3"
            // amount of whitespace in the spaces does not matter
            if (!this.tokens[i].matches(ATTRIBUTE_DEFINITION)) {
                break;
            }
        }

        // if the command didn't nicely end on a ')' (checked in loop) then the syntax was wrong
        throw new IllegalArgumentException("invalid syntax");
    }

    /*
     * Splits the given command string into tokens, specialized for this parser
     *
     * Expected syntax: RELATION <relation name> (<attribute name> <attribute type> <attribute length>, ...)
     */
    public String[] splitCommand(String command) {
        // Split at parentheses, keeping the parentheses separate (not removing them)
        // Uses PLACEHOLDER, assuming that PLACEHOLDER will not be found elsewhere in the command
        command = command.replace("(", PLACEHOLDER + "(" + PLACEHOLDER);
        command = command.replace(")", PLACEHOLDER + ")" + PLACEHOLDER);
        String[] parenSplit = command.split("\\s*" + PLACEHOLDER + "\\s*");

        List<String> fullSplit = new ArrayList<>();
        boolean parseAsAttributes = false;

        // Fully splits the rest after dividing into attribute sections and non-attribute sections
        // Uses a boolean that flips when it sees parentheses to know if it is at an attribute section
        for (String str : parenSplit) {
            if (str.equals(")")) {
                parseAsAttributes = false;
            }

            // if separating attributes: use commas, otherwise: use whitespace
            String delimiter = (parseAsAttributes ? ATTRIBUTE_DELIMITER : DEFAULT_DELIMITER);

            fullSplit.addAll(Arrays.asList(str.split("\\s*" + delimiter + "\\s*")));

            if (str.equals("(")) {
                parseAsAttributes = true;
            }
        }

        // new String[0] gives a template for the type
        return fullSplit.toArray(new String[0]);

        /*
         * The assignment document says parsing is graded based on
         * skipping comments, blanks, and commas, but I do not
         * ignore commas in my code.
         *
         * If I were to, I could probably just use a modulus to
         * verify that there's multiples of three where attributes
         * should be, and erase the commas while in LexicalAnalyzer's
         * function for removing junk.
         *
         * However, I feel that the commas are useful for keeping
         * attributes together for (hypothetical) future use.
         */
    }

    /*
     * Parses the arguments into a Relation
     *
     * may return INVALID_NAME, INVALID_ATTRIBUTE, INVALID_LENGTH, DUPLICATE_ATTRIBUTE, or INVALID_TYPE if an error occurs
     */
    public Relation parseRelation() {
        String relationName = parseRelationName();
        LinkedList<Attribute> attributes = new LinkedList<>();

        // process attributes from tokens - should start from tokens[3] and end before the last token, ')'
        for (int i = 3; i < this.tokens.length - 1; i++) {
            String[] attributeTokens = this.tokens[i].split("\\s*" + DEFAULT_DELIMITER + "\\s*");

            if (attributeTokens.length != 3) {// attributes should have exactly 3 tokens
                throw new IllegalArgumentException("invalid syntax in attribute defintion");
            }
            if (!attributeTokens[2].matches(close(ATTRIBUTE_LENGTH))) {
                throw new IllegalArgumentException("invalid syntax for attribute length");
            }

            String name = attributeTokens[0];
            String dataType = attributeTokens[1];
            int length = Integer.parseInt(attributeTokens[2]);

            for (Attribute attr : attributes) {
                if (attr.getName().equals(name)) {
                    throw new IllegalArgumentException("multiple attributes with the same name");
                }
            }
            if (!(dataType.matches(ATTRIBUTE_TYPE))) {
                throw new IllegalArgumentException("invalid attribute type: " + dataType);
            }

            attributes.add(new Attribute(name, dataType, length));
        }

        return new Relation(relationName, attributes, new LinkedList<>());
    }
}
