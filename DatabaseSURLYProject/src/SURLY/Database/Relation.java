/*
 * made by Jessica Avery and Corben Roszak for CSCI330
 */

package SURLY.Database;

import java.util.LinkedList;
import java.util.function.Predicate;

/*
 * Stores information about a relation
 * and can print the stored information
 */
public class Relation {
    private String name;
    private LinkedList<Attribute> schema;
    private LinkedList<Tuple> tuples;

    public Relation(String name, LinkedList<Attribute> schema, LinkedList<Tuple> tuples){
        this.name = name;
        this.schema = schema;
        this.tuples = tuples;
    }

    public String getName(){
        return this.name;
    }

    public LinkedList<Attribute> getSchema() {
        return this.schema;
    }

    public LinkedList<String> getSchemaNames(){
        LinkedList<String> schemaNames = new LinkedList<>();
        for(Attribute attr : this.schema){
            schemaNames.add(attr.getName());
        }
        return schemaNames;
    }

    public LinkedList<Tuple> getTuples(){return this.tuples;}

    public void print() {
        //find maxsize of table for spacers
        int maxSize = 0;
        int offset;
        for(Attribute rel : this.schema){
            int length = rel.getLength();
            int nameLength = rel.getName().length();
            if(length >= nameLength){
                maxSize += length;
            } else {
                maxSize += nameLength;
            }

        }
        maxSize += (this.schema.size() * 4)-1;
        //Beginning of table
        printSpacer(maxSize, "*");

        //Relation name
        String format = "| %-"+(maxSize-1)+"s";
        System.out.printf(format + "| \n",name);

        //spacer
        printSpacer(maxSize, "-");

        //Print schema names
        for (Attribute attr : schema) {
            offset = findLength(attr);
            format = "| %-"+(offset)+"s";
            System.out.printf(format + " ", attr.getName());
        }
        System.out.print("| \n");

        //spacer
        printSpacer(maxSize, "-");

        //Print tuples
        for (Tuple row : tuples) {
            for (Attribute attr : schema) {
                offset = findLength(attr);
                String formater = "%-"+(offset)+"s";
                System.out.printf("| "+formater+" ", row.getValue(attr.getName()));
            }
            System.out.print("| \n");
        }
        //End of table
        printSpacer(maxSize, "*");
        System.out.println("\n");
    }

    /*
     * Adds a tuple to this relation
     */
    public void insert(Tuple tuple){
        this.tuples.add(tuple);
    }

    public void deleteWhere(Predicate<Tuple> condition) {
        for (int i = 0; i < tuples.size();) {
            if (condition.test(tuples.get(i))) {
                tuples.remove(i);
            } else {
                i++;
            }
        }
    }

    /*
     * Deletes the first tuple that has attributeName and has a first element matching target
     */
    public void delete(String attributeName, String target) {
        for (int i = 0; i < tuples.size(); i++) {
            if (tuples.get(i).getValue(attributeName).equals(target)) {
                tuples.remove(i);
                return;
            }
        }
    }

    private void printSpacer(int maxSize, String spacer){
        for(int i = 0; i < maxSize+2; i++){
            System.out.print(spacer);
        }
        System.out.println();
    }

    private int findLength(Attribute attr){
        int offset;
        int length = attr.getLength();
        int nameLength = attr.getName().length();
        if (length >= nameLength) {
            offset = length + 1;
        } else {
            offset = nameLength + 1;
        }
        return offset;
    }

}
