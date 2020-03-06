/*
 * made by Jessica Avery and Corben Roszak for CSCI330
 */

package SURLY.Database;

import java.util.LinkedList;

/*
 * Stores information for a tuple in a relation
 */
public class Tuple {
    private LinkedList<AttributeValue> values;

    public Tuple(LinkedList<AttributeValue> values) {
        this.values = values;
    }

    public String getValue(String attributeName) {
        for(AttributeValue attr : this.values){
            if(attr.getName().equals(attributeName)) {
                return attr.getValue();
            }
        }
        return null;
    }

    public LinkedList<String> getNames(){
        LinkedList<String> names = new LinkedList<>();
        for(AttributeValue attr : this.values){
            names.add(attr.getName());
        }
        return names;
    }

    public LinkedList<AttributeValue> getValues(){
        return this.values;
    }
}
