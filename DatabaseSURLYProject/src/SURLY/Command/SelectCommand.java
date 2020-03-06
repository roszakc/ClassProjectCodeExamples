/*
 * made by Jessica Avery and Corben Roszak for CSCI330
 */
package SURLY.Command;

import SURLY.Database.*;
import SURLY.Parser.SelectParser;

import java.util.LinkedList;
import java.util.function.Predicate;


public class SelectCommand implements Command{
    private static final String COMMAND_NAME = "SELECT";

    private String targetRelationName;
    private String tempRelationName;
    private Predicate<Tuple> tupleFunction;
    private LinkedList<Tuple> tuples;
    private LinkedList<Attribute> schema;
    private SurlyDatabase database = SurlyDatabase.getInstance();

    /*
     * Collect the target relation, the new temporary relation name and
     * the tuple function to determine what tuples to add.
     */
    public boolean run(String command){
        if (!checkSyntaxIsValid(command)) {
            throw new IllegalArgumentException("invalid syntax");
        }
        SelectParser selectParser = new SelectParser(command);
        targetRelationName = selectParser.getTargetName();
        tempRelationName = selectParser.getTempName();
        tupleFunction = selectParser.parseConditional();
        return createTempRelation();
    }

    /*
     * Checks to see if the command is handled by this object.
     */
    public boolean handles(String command){
        return command.contains(COMMAND_NAME);
    }

    private boolean checkSyntaxIsValid(String command) {
        command = command.toUpperCase();
        return command.matches("^\\S* +\\p{Punct}+ SELECT +\\w+( WHERE +\\w+ \\p{Punct}{1,2} +[\\w\\p{Punct}]+.+((AND|OR)+ \\w+ \\p{Punct}{1,2} +[\\w\\p{Punct}]+.)*?)?$");
    }

    /*
     * Determines what tuples to add based on the tuple function.
     */
    private void getTuples(){
        LinkedList<Tuple> temp = new LinkedList<>();
        tuples = database.getRelation(targetRelationName).getTuples();

        for (Tuple tuple : tuples) {
            if (tupleFunction.test(tuple)) {
                temp.add(tuple);
            }
        }
        tuples = temp;
    }

    /*
     * Get schema from target relation. No change to schema.
     */
    private void getSchema(){
        schema = database.getRelation(targetRelationName).getSchema();
    }

    /*
     * Checks to be sure the temporary name isn't a base relation name.
     * If the relation already exists, destroy the old temp relation in anticipation of being overwritten.
     * Get tuples and schema.
     * Create new tempRelation with unchanged schema and sorted tuples.
     */
    private boolean createTempRelation(){
        validateCommand();
        getSchema();
        getTuples();
        TempRelation relationToAdd = new TempRelation(tempRelationName, schema, tuples);
        database.createRelation(relationToAdd);
        return true;
    }

    private void validateCommand(){
        if (database.getRelation(tempRelationName) != null && !(database.getRelation(tempRelationName) instanceof TempRelation)) {
            throw new IllegalArgumentException("Cannot overwrite base relation");
        }
        if(database.getRelation(tempRelationName) instanceof  TempRelation){
            database.destroyRelation(tempRelationName);
        }
    }
}
