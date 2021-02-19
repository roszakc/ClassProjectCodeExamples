import java.sql.*;
import java.util.Scanner;


public class DatabaseDriver {
    private  String userName;
    private String studentId;
    private String password;
    private final String preConnectString = "jdbc:mysql://mysql.cs.wwu.edu:3306/";
    private final String postConnectString = "?useSSL=false";
    private Connection connection;


    public DatabaseDriver(String userName, String password){
        this.userName = userName;
        this.password = password;
    }

    public void run() throws QueryFailure, SQLException {
        boolean exit = false;
        testConnection();
        Scanner sc = new Scanner(System.in);
        testStudentID(sc);

        System.out.println("Enter 'help' for command list.");


        while (!exit) {

            System.out.print("Enter command: ");
            String input = sc.nextLine().toUpperCase();
            
            UpdateDatabase update;
            QueryDatabase queryDB;

            switch (input){
                case Constants.ADD_COURSE:
                    update = new UpdateDatabase(
                        this.connection, this.studentId, Constants.ADD_COURSE);
                    update.run();
                    break;
                case Constants.REMOVE_COURSE: 
                    update = new UpdateDatabase(
                        this.connection, this.studentId, 
                        Constants.REMOVE_COURSE);
                    update.run();
                    break;
                case Constants.CHECK_DEGREE_REQUIREMENTS:
                    queryDB = new QueryDatabase(
                        this.connection, this.studentId, 
                        Constants.CHECK_DEGREE_REQUIREMENTS);
                    queryDB.get();
                    break;
                case Constants.GET_TRANSCRIPT:
                    queryDB = new QueryDatabase(
                        this.connection, this.studentId, 
                        Constants.GET_TRANSCRIPT);
                    queryDB.get();
                    break;
                case Constants.EXIT: 
                    System.out.println("Exiting program.");
                    this.connection.close();
                    exit = true;
                    break;
                case Constants.HELP:
                    System.out.println(Constants.HELP_STATEMENT);
                    break;
                default:
                    System.out.println("Unrecognized command. try again.");
            }

            if(!exit){
 
            }
            
        }
    }

    /**
     * Checks that a student is a real user, i.e. their id is in the database
     * 
     * @throws SQLException
     */
    private void testStudentID(Scanner sc) throws SQLException{
        try {

            System.out.print("Enter student ID number or exit: ");
            this.studentId = sc.nextLine();
            if(this.studentId.toUpperCase().equals(Constants.EXIT)){
                //Failsafe exit
                System.out.println("Exiting program.");
                this.connection.close();
                System.exit(1);
            }

            String selectSQL = "SELECT ID FROM STUDENT WHERE ID = ?";
            PreparedStatement statement = connection.prepareStatement(selectSQL);
            statement.setString(1, this.studentId);
            ResultSet result = statement.executeQuery();

            while(result.next()){
                return;
            }
            System.out.println("Invalid student id.");
            testStudentID(sc);
        }
        catch (SQLException e){
            System.out.println("Invalid input. Try again.");
            testStudentID(sc);
        }

    }

    private Connection getConnection() throws SQLException{
        return DriverManager.getConnection(getConnectionString(), this.userName, this.password);

    }

    private String getConnectionString(){
        return preConnectString + this.userName + postConnectString;
    }

    private void testConnection() throws SQLException{
        try{
            
            this.connection = getConnection();
        }
        catch(SQLException SQLe){
            throw new InvalidInput();
        }
    }
}
