/*
 * made by Jessica Avery and Corben Roszak for CSCI330
 */

package SURLY.Command;

import SURLY.Database.*;
import SURLY.Parser.JoinParser;
import SURLY.Parser.OnParser;

import java.util.LinkedList;
import java.util.List;
import java.util.function.BiPredicate;

public class JoinCommand implements Command {

    private String tempRelationName;
    private String[] targetRelationNames;
    private LinkedList<Attribute> schema;
    private LinkedList<Tuple> tuples;
    private SurlyDatabase database = SurlyDatabase.getInstance();

    public boolean run(String command) {

        JoinParser joinParser = new JoinParser(command);
        tempRelationName = joinParser.getTemprelationName();
        targetRelationNames = joinParser.getTargetNames();
        BiPredicate<Tuple, Tuple> joinCondition = new OnParser(command, targetRelationNames).parseConditional();
        validateCommand();


        tuples = new LinkedList<>();
        Relation relation1 = database.getRelation(targetRelationNames[0]);
        Relation relation2 = database.getRelation(targetRelationNames[1]);
        if (relation1 == null || relation2 == null) {
            throw new IllegalArgumentException("relation does not exist");
        }

        List<Tuple> tuples1 = relation1.getTuples();
        List<Tuple> tuples2 = relation2.getTuples();

        for (Tuple tuple1 : tuples1) {
            for (Tuple tuple2 : tuples2) {
                if (joinCondition.test(tuple1, tuple2)) {
                    tuples.add(mergeTuples(tuple1, targetRelationNames[0], tuple2, targetRelationNames[1]));
                }
            }
        }
        
        schema = mergeSchemas(relation1.getSchema(), targetRelationNames[0], relation2.getSchema(), targetRelationNames[1]);

        database.createRelation(new TempRelation(tempRelationName, schema, tuples));


        return true;
    }
    
    private Tuple mergeTuples(Tuple tuple1, String relation1, Tuple tuple2, String relation2) {
        LinkedList<AttributeValue> values = new LinkedList<>();
        
        for (AttributeValue av : tuple1.getValues()) {
            values.add(new AttributeValue(relation1 + '.' + av.getName(), av.getValue()));
        }
        for (AttributeValue av : tuple2.getValues()) {
            values.add(new AttributeValue(relation2 + '.' + av.getName(), av.getValue()));
        }
        
        return new Tuple(values);
    }
    
    private LinkedList<Attribute> mergeSchemas(LinkedList<Attribute> schema1, String relation1, LinkedList<Attribute> schema2, String relation2) {
        LinkedList<Attribute> schema = new LinkedList<>();

        for (Attribute a : schema1) {
            schema.add(new Attribute(relation1 + '.' + a.getName(), a.getDataType(), a.getLength()));
        }
        for (Attribute a : schema2) {
            schema.add(new Attribute(relation2 + '.' + a.getName(), a.getDataType(), a.getLength()));
        }

        return schema;
    }

    public boolean handles(String command) {
        return command.matches("^\\w+ += +JOIN +\\w+ *, +\\w+ +ON +.+$");
        // temprelationname = JOIN relationAname, relationBname ON <join condition>
        // J = JOIN COURSE, PREREQ ON COURSE.CNUM = PNUM
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
