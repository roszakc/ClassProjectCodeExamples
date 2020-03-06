/*
 * made by Jessica Avery and Corben Roszak for CSCI330
 */

package SURLY.Command;

import static SURLY.CheckRegex.*;

import SURLY.Database.Relation;
import SURLY.Database.SurlyDatabase;
import SURLY.Parser.PrintParser;

public class PrintCommand implements Command {
    private static final String COMMAND_NAME = "PRINT";

    public boolean run(String command) {
        if (!checkSyntaxIsValid(command)) {
            throw new IllegalArgumentException("invalid syntax");
        }

        PrintParser printParser = new PrintParser(command);
        SurlyDatabase database = SurlyDatabase.getInstance();

        String[] relationNamesArray = printParser.parseRelationNames();

        if (relationNamesArray.length <= 0) {
            throw new IllegalArgumentException("invalid syntax");
        }

        if (!checkRelationsAreValid(relationNamesArray)) {
            throw new IllegalArgumentException("relation does not exist");
        }

        for (String relationName : relationNamesArray) {
            Relation relation = database.getRelation(relationName);
            relation.print();
        }

        return true;
    }

    private boolean checkRelationsAreValid(String[] relationNames) {
        SurlyDatabase database = SurlyDatabase.getInstance();
        for (String relationName : relationNames) {
            if (database.getRelation(relationName) == null) {
                return false;
            }
        }
        return true;
    }

    public boolean handles(String command) {
        return command.contains(COMMAND_NAME);
    }

    private boolean checkSyntaxIsValid(String command) {
        return command.matches(close(COMMAND_NAME + " +" + RELATION_NAME + "(( *, *| +)" + RELATION_NAME + ")*"));
    }
}
