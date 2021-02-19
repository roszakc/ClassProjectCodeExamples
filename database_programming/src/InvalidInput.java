import java.sql.SQLException;

public class InvalidInput extends SQLException {
    
    public InvalidInput() {
        System.out.print("Invalid Input");
        System.exit(1);
    }
}
