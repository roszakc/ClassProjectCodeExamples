/*
 * made by Jessica Avery and Corben Roszak for CSCI330
 */

package SURLY.Parser;
import SURLY.Database.SurlyDatabase;
import SURLY.Database.Tuple;

import java.util.function.Predicate;

public class SelectParser {
    private String input;
    private String[] tokens;

    public SelectParser(String command){
        this.input = command;
        this.tokens = this.input.split(" ");
    }

    //Get the name of the relation the tuples are coming from
    public String getTargetName(){
        SurlyDatabase database = SurlyDatabase.getInstance();
        if(database.getRelation(tokens[3]) == null){
            throw new IllegalArgumentException("Relation is not in the database.");
        }
        return tokens[3];
    }

    //Get name of the temporary relation
    public String getTempName(){
        return this.tokens[0];
    }



    /*
     * Get the conditional part of this command (WHERE ...)
     */
    public Predicate<Tuple> parseConditional() {
        return new WhereParser(input, getTargetName()).parseConditional();
    }




}
