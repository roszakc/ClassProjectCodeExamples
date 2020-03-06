/*
 * made by Jessica Avery and Corben Roszak for CSCI330
 */

package SURLY.Database;

import java.util.LinkedList;

/*
 * Models a database of relations
 */
public class SurlyDatabase {
    public static final String CATALOG_NAME = "CATALOG";

    private static SurlyDatabase surlyDatabase;

    //variables
    private LinkedList<Relation> relations = new LinkedList<>();

    //methods
    private SurlyDatabase() {
        this.relations.add(createCatalog());
    }

    public static SurlyDatabase getInstance() {
        if (surlyDatabase == null) {
            surlyDatabase = new SurlyDatabase();
        }
        return surlyDatabase;
    }

    public Relation getRelation(String name) {
        for (Relation relation : this.relations) {
            if (relation.getName().equals(name)) {
                return relation;
            }
        }

        return null;
    }

    public boolean destroyRelation(String name) {
        boolean didDestroy = false;
        for (int i = 0; i < this.relations.size(); i++) {
            if (this.relations.get(i).getName().equals(name)) {
                this.relations.remove(i);
                didDestroy = true;
            }
        }
        getRelation(CATALOG_NAME).delete("RELATION", name);
        return didDestroy;
    }

    public void createRelation(TempRelation tempRelation) {
        this.relations.add(tempRelation);
    }

    public void createRelation(Relation relation) {
        if(getRelation(relation.getName()) instanceof TempRelation){
            destroyRelation(relation.getName());
        }
        if (getRelation(relation.getName()) != null) {
            throw new IllegalArgumentException("relation already exists in the database");
        }
        this.relations.add(relation);
        addToCatalog(relation);
    }

    //Possibly make catalog into a subclass of Relation
    private Relation createCatalog() {
        //Create catalog
        LinkedList<Attribute> schemas = new LinkedList<>();
        schemas.add(new Attribute("RELATION", Attribute.TYPE_CHAR, 25));
        schemas.add(new Attribute("ATTRIBUTES", Attribute.TYPE_NUM, 10));
        // as long as you have less than 10 billion attributes, it'll display properly
        LinkedList<Tuple> tuples = new LinkedList<>();
        return new Relation(CATALOG_NAME, schemas, tuples);
    }

    private void addToCatalog(Relation relation) {
        Relation catalog = getRelation(CATALOG_NAME);
        LinkedList<Attribute> schema = catalog.getSchema();

        LinkedList<AttributeValue> newTuple = new LinkedList<>();

        newTuple.add(new AttributeValue(schema.get(0).getName(), relation.getName()));

        newTuple.add(new AttributeValue(schema.get(1).getName(), Integer.toString(relation.getSchema().size())));

        catalog.insert(new Tuple(newTuple));
    }
}
