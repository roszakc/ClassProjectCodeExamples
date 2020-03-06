package SURLY.Parser;

import static SURLY.CheckRegex.*;

/*
 * General conditional parsing for WhereParser and OnParser
 */
public abstract class ConditionalParser<T> {
    protected String input;
    protected String[] tokens;

    public ConditionalParser(String input) {
        this.input = input.trim();
        this.tokens = splitInput(this.input);
    }

    /*
     * Get the name of the "command" (i.e., WHERE or ON)
     */
    abstract String getCommandName();

    /*
     * Get the regex format of the first item in conditions
    */
    abstract String getFirstFormat();

    /*
     * Get the regex format of the second item in conditions
     */
    abstract String getSecondFormat();

    /*
     * Get a Predicate or BiPredicate that always returns true
     */
    abstract T getAlwaysTrue();

    /*
     * Join two Predicates/BiPredicates with and
     */
    abstract T and(T t1, T t2);

    /*
     * Join two Predicates/BiPredicates with or
     */
    abstract T or(T t1, T t2);

    /*
     * Parse a single condition into a Predicate/BiPredicate
     */
    abstract T parseCondition(String condition);

    /*
     * Public method for parsing this conditional
     */
    public T parseConditional() {
        if (!tokens[0].contains(getCommandName())) {
            return getAlwaysTrue();
        }

        return getTreePredicate(createConditionalTree());
    }

    /*
     * Parse this node and everything below into a single predicate
     * recursive - base case is when conditionalTreeNode.checkIsCondition()
     */
    protected T getTreePredicate(ConditionalTreeNode conditionalTreeNode) {
        if (conditionalTreeNode.checkIsAnd()) {
            T leftPredicate = getTreePredicate(conditionalTreeNode.left);
            T rightPredicate = getTreePredicate(conditionalTreeNode.right);

            return and(leftPredicate, rightPredicate);
        } else if (conditionalTreeNode.checkIsOr()) {
            T leftPredicate = getTreePredicate(conditionalTreeNode.left);
            T rightPredicate = getTreePredicate(conditionalTreeNode.right);

            return or(leftPredicate, rightPredicate);
        } else {
            return parseCondition(conditionalTreeNode.value);
        }
    }

    /*
     * Compare values using a given operator
     * If both are numbers, try to compare them as numbers.
     */
    protected boolean compareValues(String value1, String operator, String value2) {
        if (value1.matches(NUMBER_VALUE) && value2.matches(NUMBER_VALUE)) {
            try {
                return compareLongs(Long.parseLong(value1), operator, Long.parseLong(value2));
            } catch (NumberFormatException nfe) {
                // if either number is greater than max long, compare them as strings instead
                return compareStrings(value1, operator, value2);
            }
        } else {
            return compareStrings(value1, operator, value2);
        }
    }

    /*
     * Compare two strings with an operator in a string
     */
    protected boolean compareStrings(String string1, String operator, String string2) {
        switch (operator) {
            case "=":
                return string1.compareTo(string2) == 0;
            case "!=":
                return string1.compareTo(string2) != 0;
            case "<":
                return string1.compareTo(string2) < 0;
            case ">":
                return string1.compareTo(string2) > 0;
            case "<=":
                return string1.compareTo(string2) <= 0;
            case ">=":
                return string1.compareTo(string2) >= 0;
            default:
                throw new IllegalArgumentException("invalid operator: " + operator);
        }
    }

    /*
     * Compare two longs with an operator in a string
     */
    protected boolean compareLongs(long num1, String operator, long num2) {
        switch (operator) {
            case "=":
                return num1 == num2;
            case "!=":
                return num1 != num2;
            case "<":
                return num1 < num2;
            case ">":
                return num1 > num2;
            case "<=":
                return num1 <= num2;
            case ">=":
                return num1 >= num2;
            default:
                throw new IllegalArgumentException("invalid operator: " + operator);
        }
    }

    /*
     * Ensure the elements before and after the operator in a condition are valid
     */
    protected void checkConditionValues(String first, String operator, String second) {
        if (!first.matches(close(getFirstFormat()))) {
            throw new IllegalArgumentException("illegal character(s) in first: " + first);
        }

        if (!operator.matches(close(COMPARISON_OPERATOR))) {
            throw new IllegalArgumentException("bad operator");
        }

        if (!second.matches(close(getSecondFormat()))) {
            throw new IllegalArgumentException("illegal character(s) in second: " + second);
        }
    }

    /*
     * Creates a conditional tree to handle order of operations
     */
    protected ConditionalTreeNode createConditionalTree() {
        ConditionalTreeNode head = new ConditionalTreeNode(tokens[1]);

        for (int i = 2; i < tokens.length; i += 2) { // iterate across all AND/ORs
            if (i + 1 >= tokens.length) {
                // at a spot where there should be and/or, and there is no next condition
                throw new IllegalArgumentException("bad pairing in condition: " + i);
            }

            String connector = tokens[i];
            ConditionalTreeNode newConnectorNode = new ConditionalTreeNode(connector);
            newConnectorNode.right = new ConditionalTreeNode(tokens[i + 1]);

            if (connector.matches(close(INSENSITIVE_OR))) {
                newConnectorNode.left = head;
                head = newConnectorNode;
            } else if (connector.matches(close(INSENSITIVE_AND))) {
                if (head.checkIsOr()) {
                    newConnectorNode.left = head.right;
                    head.right = newConnectorNode;
                } else {
                    newConnectorNode.left = head;
                    head = newConnectorNode;
                }
            } else {
                throw new IllegalArgumentException("not AND/OR: " + connector);
            }
        }

        return head;
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
     * expected syntax: WHERE <conditional, composed of 3 elements: attribute, operator, value> <or/and another conditional>...
     */
    protected String[] splitInput(String where) {
        // split by a space around a WHERE, AND, or OR
        return where.split("(?i)(?<=" + getCommandName() + ") +|(?<=" + ANY_CONNECTOR + ") +| +(?=" + ANY_CONNECTOR + ")");
    }
    
    protected String[] splitCondition(String condition) {
        String[] split = condition.split(" ", 3);
        if (split.length != 3) {
            throw new IllegalArgumentException("condition does not have 3 elements: " + condition);
        }
        return split;
    }

    /*
     * Node for making conditional trees
     *
     * Used for proper order of operations
     */
    protected class ConditionalTreeNode {
        public String value;
        public ConditionalTreeNode left;
        public ConditionalTreeNode right;

        public ConditionalTreeNode(){
            this(null);
        }

        public ConditionalTreeNode(String value) {
            this(value, null, null);
        }

        public ConditionalTreeNode(String value, ConditionalTreeNode left, ConditionalTreeNode right) {
            this.value = value;
            this.left = left;
            this.right = right;
        }

        public boolean checkIsAnd() {
            return checkHasBranches() && value.matches(close(INSENSITIVE_AND));
        }

        public boolean checkIsOr() {
            return checkHasBranches() && value.matches(close(INSENSITIVE_OR));
        }

        public boolean checkHasBranches() {
            return left == null && right == null;
        }

        public String toString() {
            StringBuilder accumulator = new StringBuilder();
            accum(accumulator, this, 0);
            return accumulator.toString();
        }

        /*
         * recursively build string tree
         */
        protected void accum(StringBuilder builder, ConditionalTreeNode current, int offset) {
            if (current.left != null) {
                accum(builder, current.left, offset + 1);
            }

            for (int i = 0; i < offset; i++) {
                builder.append('\t');
            }

            builder.append(current.value);
            builder.append('\n');

            if (current.right != null) {
                accum(builder, current.right, offset + 1);
            }
        }
    }
}
