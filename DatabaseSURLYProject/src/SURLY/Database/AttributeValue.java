/*
 * made by Jessica Avery and Corben Roszak for CSCI330
 */

package SURLY.Database;

/*
 * Stores a attribute information for an actual value
 */
public class AttributeValue {
    private String name;
    private String value;

    public AttributeValue(String name, String value){
        this.name = name;
        this.value = value;
    }

    public String getName(){
        return this.name;
    }

    public String getValue(){
        return this.value;
    }
}
