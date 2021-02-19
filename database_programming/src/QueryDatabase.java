import java.sql.*;

public class QueryDatabase {

    private Connection connection;
    private String studentId;
    private String statementType;
    private Transcript transcript;


    public QueryDatabase(Connection connection, String StudentId, String statementType){
        this.connection = connection;
        this.studentId = StudentId;
        this.statementType = statementType;

    }

    /**
     * Prints either a Transcript object or Requirements object
     * 
     * @throws SQLException
     */
    public void get() throws QueryFailure, SQLException {
        if(this.statementType.equals(Constants.GET_TRANSCRIPT)){
            this.transcript = findTranscript();
            this.transcript.print();

        } else if(this.statementType.equals(
                                    Constants.CHECK_DEGREE_REQUIREMENTS)){
            Requirements coursesToTake = getDegreeRequirements();

            if(coursesToTake.getRequiredCourses().isEmpty()){
                System.out.println("All requirements met.");
            } else {
                coursesToTake.print();
            }
        }
    }


    /**
     * Query database for student's courses taken 
     *   and create transcript from the courses
     * 
     * @return Transcript Object
     * @throws SQLException
     */
    private Transcript findTranscript() throws QueryFailure, SQLException {
        Transcript transcript = new Transcript(this.studentId);

        String query = Constants.GET_TRANSCRIPT_QUERY;
        PreparedStatement statement = connection.prepareStatement(query);
        statement.setString(1, this.studentId);

        ResultSet result = getData(statement);
        while(result.next()){

            Course courseToAdd = new Course(result.getString(1),
                                            result.getString(5));
            courseToAdd.hydrateElements(
                result.getString(2),
                result.getString(3),
                result.getString(4), 
                result.getString(6));
            
            transcript.addCourseToTranscript(courseToAdd);
        }

        return transcript;
    }

    /**
     * Find all required classes that the student has not taken
     * 
     * @return Requirement Object
     * @throws SQLException
     */
    public Requirements getDegreeRequirements() throws QueryFailure,      
                                                       SQLException {
        Transcript transcript = getTranscript();

        Requirements degreeRequirements = new Requirements(this.studentId);
        String query = Constants.GET_COURSES_IN_DEPT;

        PreparedStatement statement = connection.prepareStatement(query);
        statement.setString(1, this.studentId);

        ResultSet result = getData(statement);
        while(result.next()){
            Course courseToAdd = new Course(result.getString(1),
                                            result.getString(2));
            degreeRequirements.addToRequirements(courseToAdd);
        }

        degreeRequirements.removeTakenCourses(transcript);

        return degreeRequirements;
    }

    public ResultSet getData(PreparedStatement statement) throws QueryFailure {
        try {
            ResultSet result = statement.executeQuery();
            return result;
        } catch(Exception err) {
            throw new QueryFailure(err);
        }
    }


    public Transcript getTranscript() throws QueryFailure, SQLException {
        this.transcript = findTranscript();
        return this.transcript;
    }
}
