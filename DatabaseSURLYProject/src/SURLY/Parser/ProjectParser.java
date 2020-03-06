/*
 * made by Jessica Avery and Corben Roszak for CSCI330
 */

package SURLY.Parser;

import SURLY.Database.SurlyDatabase;

public class ProjectParser {

    private String input;
    private String[] tokens;
    private String[] arguments;

    public ProjectParser(String command){
        this.input = command;
        this.tokens = input.split(" ");
    }

    /*
     * Collect the target relation name
     * Query database to check that the relation exists.
     */
    public String getTargetName(){
        String tableFrom = this.arguments[2].trim();
        try{
            SurlyDatabase database = SurlyDatabase.getInstance();
            database.getRelation(tableFrom);
        } catch (NullPointerException e){
            throw new IllegalArgumentException("Relation to select from does not exist.");
        }
        return tableFrom;
    }

    /*
     * Split name and grab temporary relation name.
     * Checks that there isn't a non-atomic name.
     */
    public String getTempRelationName(){
        if(!this.tokens[1].equals("=")){
            throw new IllegalArgumentException("Temporary relation name invalid.");
        }
        return this.tokens[0];
    }

    /*
     * Collect column names from command.
     * Return as array (even if only 1 item)
     */
    public String[] getColNames(){
        this.arguments = input.split("PROJECT | FROM");
        if(this.arguments.length < 3 || this.arguments.length > 3){
            throw new IllegalArgumentException("Improper syntax. Too many keywords found.");
        }
        try{
            String[] columnNames = this.arguments[1].split(", ");
            return columnNames;
        } catch (Exception e){
            String[] columnNames = {this.arguments[1]};
            return columnNames;
        }
    }


}
