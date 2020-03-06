/*
 * made by Jessica Avery and Corben Roszak for CSCI330
 */

package SURLY.Parser;

import static SURLY.CheckRegex.*;

import SURLY.Database.*;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.LinkedList;
import java.util.List;

/*
 * Parses an INSERT command, provided in the constructor
 */
public class InsertParser {
    private String input;
    private String[] tokens;
    private SurlyDatabase database;

    /*
     * Set up this InsertParser with the provided string
     */
    public InsertParser(String input) {
        this.input = input;
        this.database = SurlyDatabase.getInstance();
        this.tokens = splitInput(this.input);
    }

    /*
     * Get the name of the relation to insert into
     */
    public String parseRelationName() {
        String relationName;

        if (this.tokens.length < 2) {
            throw new IllegalArgumentException("invalid syntax");
        } else {
            relationName = this.tokens[1]; // 1 is the position of the relation name in the command
        }                             // should be INSERT <relationName> <attributes...>

        return relationName;
    }

    /*
     * Splits the given command string into tokens, specialized for this parser
     * keeps strings in single quotes together
     * (removes the quotes from quoted strings)
     *
     * the first split by single quotes separates non-quoted tokens
     * from quoted tokens. the array quoteSplit should alternate between
     * quoted and non-quoted tokens, starting with non-quoted because
     * the command name and relation name should not be quoted.
     *
     * behaves appropriately even if there are multiple quoted items in a row
     *
     * Expected syntax: INSERT <relation name> <attribute value> ...
     */
    private String[] splitInput(String input) {
        String[] quoteSplit = input.split("'");

        boolean split = true;
        List<String> fullSplit = new ArrayList<>();

        for (String str : quoteSplit) {
            if (split) {
                if (!str.matches("^\\s*$")) {
                    // don't process if the string is entirely whitespace
                    // expected to happen when there are multiple quoted tokens in a row

                    String[] smallSplit = str.trim().split("\\s+"); // trim off whitespace on the ends to avoid getting ""
                    fullSplit.addAll(Arrays.asList(smallSplit));
                }
            } else {
                fullSplit.add(str);
            }
            split = !split;
        }

        return fullSplit.toArray(new String[0]);
    }

    /*
     * Parses the arguments into a tuple
     *
     * may return MISMATCHED_SIZE, FAILED_LOOKUP, or MISMATCHED_TYPE if an error occurs
     */
    public Tuple parseTuple() {
        LinkedList<AttributeValue> attributeValues = new LinkedList<>();
        String[] rawValues;
        Relation relation = this.database.getRelation(this.parseRelationName());

        rawValues = Arrays.copyOfRange(this.tokens, 2, this.tokens.length);

        if (relation == null) {
            throw new IllegalArgumentException("relation does not exist");
        }
        if (relation.getSchema().size() != rawValues.length) {
            throw new IllegalArgumentException("invalid tuple size: expected: " + relation.getSchema().size() + ", actual: " + rawValues.length);
        }


        for (int i = 0; i < rawValues.length; i++) {
            Attribute attribute = relation.getSchema().get(i);

            String name = attribute.getName();
            int length = attribute.getLength();
            String dataType = attribute.getDataType();
            String value = rawValues[i];

            if (value.length() > length) {
                value = value.substring(0, length);
            }

            if (dataType.equals(Attribute.TYPE_NUM) && !value.matches(close(NUMBER_VALUE))) {
                throw new IllegalArgumentException("invalid attribute type (expected num, got " + value + ")");
            }

            attributeValues.add(new AttributeValue(name, value));
        }

        return new Tuple(attributeValues);
    }
}
