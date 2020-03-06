package SURLY.Parser;

import SURLY.Database.Tuple;

import java.util.function.BiPredicate;

import static SURLY.CheckRegex.*;

/*
 * Parser for ON clauses (used in JOIN)
 */
public class OnParser extends ConditionalParser<BiPredicate<Tuple, Tuple>> {
    private String[] targetRelationNames;

    public OnParser(String input, String[] targetRelationNames) {
        super(input);
        this.targetRelationNames = targetRelationNames;
    }

    String getCommandName() {
        return "ON";
    }

    String getFirstFormat() {
        return QUALIFIED_ATTRIBUTE;
    }

    String getSecondFormat() {
        return getFirstFormat();
    }

    BiPredicate<Tuple, Tuple> getAlwaysTrue() {
        return (Tuple t1, Tuple t2) -> true;
    }

    BiPredicate<Tuple, Tuple> and(BiPredicate<Tuple, Tuple> t1, BiPredicate<Tuple, Tuple> t2) {
        return t1.and(t2);
    }

    BiPredicate<Tuple, Tuple> or(BiPredicate<Tuple, Tuple> t1, BiPredicate<Tuple, Tuple> t2) {
        return t1.or(t2);
    }

    BiPredicate<Tuple, Tuple> parseCondition(String condition) {
        String attribute1, operator, attribute2;
        String[] split = splitCondition(condition);
        attribute1 = split[0];
        operator = split[1];
        attribute2 = split[2];

        if(attribute1.equals(attribute2)){
            throw new IllegalArgumentException(attribute1+" is ambiguous");
        }

        //Handle qualifiers and check ambiguity
        String[] attrSet;
        attrSet = handleQualifiersAndCheckAmbiguity(attribute1, attribute2);
        attrSet = handleQualifiersAndCheckAmbiguity(attrSet[1], attrSet[0]);
        attribute1 = attrSet[1];
        attribute2 = attrSet[0];


        final String attribute1Final = attribute1;
        final String attribute2Final = attribute2;

        checkConditionValues(attribute1, operator, attribute2);
        return (Tuple tuple1, Tuple tuple2) -> {
            String value1 = tuple1.getValue(attribute1Final);
            String value2 = tuple2.getValue(attribute2Final);

            if (value1 == null || value2 == null) {
                value1 = tuple2.getValue(attribute1Final);
                value2 = tuple1.getValue(attribute2Final);

                if (value1 == null || value2 == null) {
                    throw new IllegalArgumentException("attribute not found in tuple");
                }
            }

            return compareValues(value1, operator, value2);
        };
    }

    private String[] handleQualifiersAndCheckAmbiguity(String attr1, String attr2) {
        if(attr1.contains(".")){
            String[] tempSplit = attr1.split("\\.");
            if(!tempSplit[0].equals(targetRelationNames[0])){
                String tempName = attr2;
                attr2 = tempSplit[1];
                attr1 = tempName;
                if(attr1.contains(".")){
                    attr1 = attr1.split("\\.")[1];
                }
            }
        }

        return new String[]{attr1, attr2};
    }
}
