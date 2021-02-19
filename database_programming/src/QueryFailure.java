import java.lang.Exception;

public class QueryFailure extends Exception{
    public QueryFailure(Throwable err){
        super("Query failure", err);
    }
}
