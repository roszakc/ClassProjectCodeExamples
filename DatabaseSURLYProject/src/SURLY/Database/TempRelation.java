/*
 * made by Jessica Avery and Corben Roszak for CSCI330
 */

package SURLY.Database;

import java.util.LinkedList;

public class TempRelation extends Relation {

    public TempRelation(String name, LinkedList<Attribute> schema, LinkedList<Tuple> tuples){
        super(name, schema, tuples);
    }


    /*
     * Keeps the tempRelation from using these commands as they shouldn't be implemented.
     */
    public void delete(){
        throw new IllegalArgumentException("cannot delete from temporary relation");
    }

    public void deleteWhere() {
        throw new IllegalArgumentException("cannot delete from temporary relation");
    }

    public void insert(){
        throw new IllegalArgumentException("cannot insert to a temporary relation");
    }

}
