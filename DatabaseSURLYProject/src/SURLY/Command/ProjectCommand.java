/*
 * made by Jessica Avery and Corben Roszak for CSCI330
 */
package SURLY.Command;

import SURLY.Database.*;
import SURLY.Parser.ProjectParser;

import java.util.LinkedList;


public class ProjectCommand implements Command {
    private static final String COMMAND_NAME = "PROJECT";

    private String targetRelationName;
    private String tempRelationName;
    private String[] colNames;
    private LinkedList<Tuple> tempTuples;
    private LinkedList<Attribute> tempSchema;
    private SurlyDatabase database = SurlyDatabase.getInstance();

    /*
     * Collect the target relation, the new temporary relation name and
     * the attribute names (colNames) from ProjectParser
     */
    public boolean run(String command) {
        if (!checkSyntaxIsValid(command)) {
            throw new IllegalArgumentException("invalid syntax");
        }
        this.tempTuples = new LinkedList<>();
        this.tempSchema = new LinkedList<>();
        ProjectParser projectParser = new ProjectParser(command);
        this.colNames = projectParser.getColNames();
        this.targetRelationName = projectParser.getTargetName();
        this.tempRelationName = projectParser.getTempRelationName();
        return createTempRelation();
    }

    /*
     * Checks to see if the command is handled by this object.
     */
    public boolean handles(String command) {
        //Return false if the command name does not match 'PROJECT'
        //P = PROJECT CREDITS, CNUM FROM COURSE;
        return command.contains(COMMAND_NAME);
    }

    public boolean checkSyntaxIsValid(String command) {
        command = command.toUpperCase();
        return command.matches("^\\S* +\\p{Punct}+ PROJECT +\\w+(, ?+\\w+)*+ FROM +\\w+$");
    }

    /*
     * Checks that the command is valid.
     * If the relation already exists, destroy the old temp relation in anticipation of being overwritten.
     * Pick the new schema attributes and tuples from the base relation and add them to the new relations
     *      schema or tuple.
     * Sort through tuples and delete any duplicates.
     * Create the new temporary relation and add it to the database. (Currently does not add to catalog,
     *      unsure if that's correct.)
     */
    private boolean createTempRelation(){
        validateCommand();
        for (String colName : colNames){
            for(Attribute attribute : database.getRelation(targetRelationName).getSchema()){
                if(colName.equals(attribute.getName())){
                    tempSchema.add(attribute);
                }
            }
        }

        for(Tuple tuple : database.getRelation(targetRelationName).getTuples()){
            LinkedList<AttributeValue> toAddToSingleTuple = new LinkedList<>();
            for(String colName : colNames){
                for(AttributeValue attrVal : tuple.getValues()){
                    if(attrVal.getName().equals(colName)){
                        toAddToSingleTuple.add(attrVal);
                    }
                }
            }
            tempTuples.add(new Tuple(toAddToSingleTuple));
        }

        LinkedList<Tuple> toAdd = new LinkedList<>();
        for(int i = 0; i < tempTuples.size(); i++){
            Tuple iTuple = tempTuples.get(i);
            boolean foundMatchingTuple = false;

            for (int j = i + 1; j < tempTuples.size(); j++) {
                Tuple jTuple = tempTuples.get(j);
                boolean tupleMatches = true;

                for (String name : iTuple.getNames()) {
                    if (!iTuple.getValue(name).equals(jTuple.getValue(name))) {
                        tupleMatches = false;
                        break;
                    }
                }

                if (tupleMatches) {
                    foundMatchingTuple = true;
                    break;
                }
            }

            if (!foundMatchingTuple) {
                toAdd.add(iTuple);
            }
        }

        TempRelation relationToAdd = new TempRelation(tempRelationName, tempSchema, toAdd);
        database.createRelation(relationToAdd);
        return true;
    }

    /*
     * Method which checks if the given command is valid.
     * Check includes: Check that relation is not trying to overwrite a base relation
     *                 Checks that all attribute names are valid in the target relation.
     *                      (Not trying to project columns that don't exist)
     */
    private void validateCommand(){
        if (database.getRelation(tempRelationName) != null && !(database.getRelation(tempRelationName) instanceof TempRelation)) {
            throw new IllegalArgumentException("Cannot overwrite base relation");
        }

        if(database.getRelation(targetRelationName) == null){
            throw new IllegalArgumentException("relation does not exist");
        }

        LinkedList<String> schemaNames = database.getRelation(targetRelationName).getSchemaNames();
        for(String name : colNames){
            if(!schemaNames.contains(name)){
                throw new IllegalArgumentException("Attribute is not in target relation");
            }
        }

        if(database.getRelation(tempRelationName) instanceof  TempRelation){
            database.destroyRelation(tempRelationName);
        }
    }


}
