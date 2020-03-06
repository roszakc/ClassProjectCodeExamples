/*
 * made by Jessica Avery and Corben Roszak for CSCI330
 */

package SURLY.Command;

import static SURLY.CheckRegex.*;

import SURLY.Database.SurlyDatabase;
import SURLY.Database.TempRelation;
import SURLY.Database.Tuple;
import SURLY.Parser.DeleteParser;

import java.util.function.Predicate;

public class DeleteCommand implements Command {
    private static final String COMMAND_NAME = "DELETE";

    public boolean run(String command) {
        if (!checkSyntaxIsValid(command)) {
            throw new IllegalArgumentException("invalid syntax");
        }

        DeleteParser deleteParser = new DeleteParser(command);
        SurlyDatabase database = SurlyDatabase.getInstance();
        String relationName;
        Predicate<Tuple> conditional;

        relationName = deleteParser.parseRelationName();
        conditional = deleteParser.parseConditional();

        if (database.getRelation(relationName) == null) {
            throw new IllegalArgumentException("relation does not exist");
        }
        if(database.getRelation(relationName) instanceof TempRelation){
            throw new IllegalArgumentException("cannot delete from temporary relation");
        }
        if (relationName.equals(SurlyDatabase.CATALOG_NAME)) {
            throw new IllegalArgumentException("cannot delete catalog");
        }

        database.getRelation(relationName).deleteWhere(conditional);
        return true;
    }

    public boolean handles(String command) {
        return command.contains(COMMAND_NAME);
    }

    private boolean checkSyntaxIsValid(String command) {
        //return command.matches("^DELETE +\\w+( +WHERE +.+)?$");
        return command.matches(close(COMMAND_NAME + " +" + RELATION_NAME + "( +" + WHERE_CLAUSE + ")?"));
    }
}
