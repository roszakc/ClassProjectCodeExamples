/*
 * made by Jessica Avery and Corben Roszak for CSCI330
 */

package SURLY.Parser;

import SURLY.Database.SurlyDatabase;

public class JoinParser {

    private String input;
    private String[] tokens;
    private String[] arguments;
    private SurlyDatabase database = SurlyDatabase.getInstance();

    public JoinParser(String command){
        this.input = command;
        this.tokens = input.split(" ");
    }


    public String getTemprelationName(){
        if(!this.tokens[1].equals("=")){
            throw new IllegalArgumentException("Temporary relation name invalid.");
        }
        return this.tokens[0];
    }


    public String[] getTargetNames(){
        this.arguments = input.split("JOIN | ON");
        if(this.arguments.length < 3 || this.arguments.length > 3){
            throw new IllegalArgumentException("Improper syntax. Too many keywords found.");
        }
        try{
            String[] targetNames = this.arguments[1].split(", ");
            return targetNames;
        } catch (Exception e){
            String[] targetNames = {this.arguments[1]};
            return targetNames;
        }
    }

}
