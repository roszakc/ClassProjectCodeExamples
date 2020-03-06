/*
 * made by Jessica Avery and Corben Roszak for CSCI330
 */

package SURLY.Command;

import static SURLY.CheckRegex.*;

import SURLY.Database.Relation;
import SURLY.Database.SurlyDatabase;
import SURLY.Parser.RelationParser;

public class RelationCommand implements Command {
    private static final String COMMAND_NAME = "RELATION";

    public boolean run(String command) {
        if (!checkSyntaxIsValid(command)) {
            throw new IllegalArgumentException("invalid syntax");
        }

        RelationParser relationParser = new RelationParser(command);
        SurlyDatabase database = SurlyDatabase.getInstance();

        Relation relation = relationParser.parseRelation();
        database.createRelation(relation);
        return true;
    }

    public boolean handles(String command) {
        return command.contains(COMMAND_NAME);
    }

    private boolean checkSyntaxIsValid(String command) {
        return command.matches(close(COMMAND_NAME + " +" + RELATION_NAME + " *\\( *" + ATTRIBUTE_DEFINITION + " *(, *" + ATTRIBUTE_DEFINITION + " *)*\\)"));
    }
}
