package SURLY.Parser;

import static SURLY.CheckRegex.*;

import SURLY.Database.SurlyDatabase;
import SURLY.Database.Tuple;

import java.util.function.Predicate;

/*
 * Parser for WHERE clauses (used in DELETE and SELECT)
 */
public class WhereParser extends ConditionalParser<Predicate<Tuple>> {
    private String targetName;
    private SurlyDatabase database = SurlyDatabase.getInstance();
    public WhereParser(String input, String targetName) {
        super(input);
        this.targetName = targetName;
    }

    String getCommandName() {
        return "WHERE";
    }

    String getFirstFormat() {
        return QUALIFIED_ATTRIBUTE;
    }

    String getSecondFormat() {
        return ANY_VALUE;
    }

    Predicate<Tuple> getAlwaysTrue() {
        return (Tuple t) -> true;
    }

    Predicate<Tuple> and(Predicate<Tuple> t1, Predicate<Tuple> t2) {
        return t1.and(t2);
    }

    Predicate<Tuple> or(Predicate<Tuple> t1, Predicate<Tuple> t2) {
        return t1.or(t2);
    }

    Predicate<Tuple> parseCondition(String condition) {
        String attribute, operator, desiredValue;
        String[] split = splitCondition(condition);
        attribute = split[0];
        operator = split[1];
        desiredValue = split[2];

        //in the case the schema is unqualified, remove the qualifier and move on:
        String schemaName = database.getRelation(targetName).getSchemaNames().get(0);
        if(!schemaName.contains(".") && attribute.contains(".")){
            String[] tempAttributeName = attribute.split("\\.");
            if(!tempAttributeName[0].equals(targetName)){
                throw new IllegalArgumentException("Qualifier does not match relation");
            }
            attribute = tempAttributeName[1];
        }



        checkConditionValues(attribute, operator, desiredValue);

        if (desiredValue.matches(close(QUOTED_VALUE))) {
            desiredValue = desiredValue.substring(1, desiredValue.length() - 1); // remove '
        }

        final String attributeFinal = attribute;
        final String desiredValueFinal = desiredValue;

        return (Tuple tuple) -> {
            String tupleValue = tuple.getValue(attributeFinal);
            if (tupleValue == null) {
                throw new IllegalArgumentException("attribute not found in tuple: " + attributeFinal);
            }
            return compareValues(tupleValue, operator, desiredValueFinal);
        };
    }
}
