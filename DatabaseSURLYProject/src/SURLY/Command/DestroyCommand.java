/*
 * made by Jessica Avery and Corben Roszak for CSCI330
 */

package SURLY.Command;

import static SURLY.CheckRegex.*;

import SURLY.Database.SurlyDatabase;
import SURLY.Database.TempRelation;
import SURLY.Parser.DestroyParser;

public class DestroyCommand implements Command {
    private static final String COMMAND_NAME = "DESTROY";

    public boolean run(String command) {
        if (!checkSyntaxIsValid(command)) {
            throw new IllegalArgumentException("invalid syntax");
        }

        DestroyParser destroyParser = new DestroyParser(command);
        SurlyDatabase database = SurlyDatabase.getInstance();

        String relationName = destroyParser.parseRelationName();

        if (database.getRelation(relationName) == null) {
            throw new IllegalArgumentException("relation does not exist");
        }
        if(database.getRelation(relationName) instanceof TempRelation){
            throw new IllegalArgumentException("cannot destroy a temporary relation");
        }
        if (relationName.equals(SurlyDatabase.CATALOG_NAME)) {
            throw new IllegalArgumentException("cannot destroy catalog");
        }

        return database.destroyRelation(relationName);
    }

    public boolean handles(String command) {
        return command.contains(COMMAND_NAME);
    }

    private boolean checkSyntaxIsValid(String command) {
        return command.matches(close(COMMAND_NAME + " +" + RELATION_NAME + "( +" + WHERE_CLAUSE + ")?"));
    }
}
