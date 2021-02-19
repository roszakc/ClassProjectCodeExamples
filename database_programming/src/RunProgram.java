
public class RunProgram {

    public static void main(String[] args){
        try{
            DatabaseDriver database = new DatabaseDriver(args[0], args[1]);
            database.run();
        } catch(Exception err){
            System.err.println("badness");
        }
        
    }


}