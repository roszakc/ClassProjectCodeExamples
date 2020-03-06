package SURLY;

public class CheckRegex {
    // alphabet + underscore
    public static final String RELATION_NAME = "[A-Za-z0-9_]+";

    public static final String ATTRIBUTE_NAME = "[A-Za-z0-9_]+";
    public static final String ATTRIBUTE_TYPE = "(CHAR|NUM)";
    public static final String ATTRIBUTE_LENGTH = "[0-9]+";
    public static final String ATTRIBUTE_DEFINITION = ATTRIBUTE_NAME + " +" + ATTRIBUTE_TYPE + " +" + ATTRIBUTE_LENGTH;
    // may or may not have a qualifier
    public static final String QUALIFIED_ATTRIBUTE = "(" + CheckRegex.RELATION_NAME + "\\.)?" + CheckRegex.ATTRIBUTE_NAME;

    // alphabet, numbers, $%&:@"_
    public static final String STRING_VALUE = "[A-Za-z0-9$%&:@\"_]+";
    // alphabet, numbers, $%&:@"_, space - surrounded by single quotes
    public static final String QUOTED_VALUE = "'[A-Za-z0-9$%&:@\"_ ]+'";
    public static final String NUMBER_VALUE = "[+-]?[0-9]+";
    public static final String ANY_VALUE = "(" + QUOTED_VALUE + "|" + STRING_VALUE + "|" + NUMBER_VALUE + ")";

    // =, !=, <, <=, >, >=
    public static final String COMPARISON_OPERATOR = "(!?=|[<>]=?)";

    public static final String INSENSITIVE_AND = "(?i)and";
    public static final String INSENSITIVE_OR = "(?i)or";
    public static final String ANY_CONNECTOR = "(" + INSENSITIVE_AND + "|" + INSENSITIVE_OR + ")";

    public static final String ATTRIBUTE_TO_VALUE_CONDITION = QUALIFIED_ATTRIBUTE + " +" + COMPARISON_OPERATOR + " +" + ANY_VALUE;
    public static final String ATTRIBUTE_TO_ATTRIBUTE_CONDITION = QUALIFIED_ATTRIBUTE + " +" + COMPARISON_OPERATOR + " +" + QUALIFIED_ATTRIBUTE;
    public static final String WHERE_CLAUSE = "WHERE +" + ATTRIBUTE_TO_VALUE_CONDITION + "( +" + ANY_CONNECTOR + " +" + ATTRIBUTE_TO_VALUE_CONDITION + ")*";
    public static final String ON_CLAUSE = "ON +" + ATTRIBUTE_TO_ATTRIBUTE_CONDITION + "( +" + ANY_CONNECTOR + " +" + ATTRIBUTE_TO_ATTRIBUTE_CONDITION + ")*";

    /*
     * Convert the regex into regex that ensures nothing else is present
     */
    public static String close(String regex) {
        if (regex == null) {
            regex = "";
        }

        return '^' + regex + '$';
    }
}
