/*
 * made by Jessica Avery and Corben Roszak for CSCI330
 */

package SURLY.Database;

/*
 * Stores attribute information
 */
public class Attribute {
    public static final String TYPE_CHAR = "CHAR";
    public static final String TYPE_NUM  = "NUM";

    private String name;
    private String dataType;
    private int length;

    public Attribute(String name, String dataType, int length){
        this.name = name;
        this.dataType = dataType;
        this.length = length;
    }

    public String getName(){
        return this.name;
    }

    public String getDataType(){
        return this.dataType;
    }

    public int getLength(){
        return this.length;
    }
}
