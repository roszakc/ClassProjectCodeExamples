/*
 * made by Jessica Avery and Corben Roszak for CSCI330
 */

package SURLY.Command;

import static SURLY.CheckRegex.*;

import SURLY.Database.Relation;
import SURLY.Database.SurlyDatabase;
import SURLY.Database.TempRelation;
import SURLY.Database.Tuple;
import SURLY.Parser.InsertParser;

public class InsertCommand implements Command {
    private static final String COMMAND_NAME = "INSERT";

    public boolean run(String command) {
        if (!checkSyntaxIsValid(command)) {
            throw new IllegalArgumentException("invalid syntax");
        }

        SurlyDatabase database = SurlyDatabase.getInstance();
        InsertParser insertParser = new InsertParser(command);

        String relationName = insertParser.parseRelationName();
        Tuple tuple = insertParser.parseTuple();
        Relation relation = database.getRelation(relationName);

        if (relationName.equals(SurlyDatabase.CATALOG_NAME)) {
            throw new IllegalArgumentException("cannot insert into catalog");
        }
        if(database.getRelation(relationName) instanceof TempRelation){
            throw new IllegalArgumentException("cannot insert into a temporary relation");
        }

        relation.insert(tuple);

        return true;
    }

    public boolean handles(String command) {
        return command.contains(COMMAND_NAME);
    }

    private boolean checkSyntaxIsValid(String command) {
        return command.matches(close(COMMAND_NAME + " +" + RELATION_NAME + "( +" + ANY_VALUE + ")+"));
    }
}
