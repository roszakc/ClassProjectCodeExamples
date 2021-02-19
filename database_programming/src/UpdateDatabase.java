import java.sql.*;
import java.util.ArrayList;
import java.util.Scanner;

public class UpdateDatabase {

    private Connection connection;
    private String studentId;
    private String statementType;
    private QueryDatabase getFromDatabase;
    private String semester;
    private String year;

    public UpdateDatabase(Connection connection, 
                          String studentId, String statementType){
        this.connection = connection;
        this.studentId = studentId;
        this.statementType = statementType;
    }

    public void run() throws QueryFailure, SQLException{
        if(this.statementType.equals(Constants.REMOVE_COURSE)){
            removeCourse();
        } else if(this.statementType.equals(Constants.ADD_COURSE)){
            this.getFromDatabase = new QueryDatabase(this.connection, 
                                    this.studentId, Constants.GET_TRANSCRIPT);
            Transcript transcript = getFromDatabase.getTranscript();
            addCourse(transcript);
        }
    }

    /**
     * Removes specified course
     * 
     * @throws SQLException
     */
    private void removeCourse() throws QueryFailure, SQLException{
        try {
            String removeQuery = Constants.GET_COURSES_REMOVE;
            PreparedStatement statement = connection.prepareStatement(removeQuery);
            statement.setString(1, this.studentId);

            ArrayList<Course> canRemoveList = getSections(statement);
            int sectionNum = -1;
            while (sectionNum == -1) {
                sectionNum = getSectionNum(sectionNum, canRemoveList.size(), Constants.SELECT_SECTION_REMOVE_PROMPT);
            }
            Course courseToDelete = canRemoveList.get(sectionNum - 1);  


            String deleteCommand = Constants.DELETE_STATEMENT;
            statement = connection.prepareStatement(deleteCommand);
            statement.setString(1, this.studentId);
            statement.setString(2, courseToDelete.getId());
            statement.setString(3, courseToDelete.getTitle());
            statement.setString(4, courseToDelete.getYear());
            statement.setString(5, courseToDelete.getSemester());
            statement.executeUpdate();
            System.out.println("Delete successful!");


        } catch(SQLException e){
            System.out.println("Delete failed.");
        }
    }

    /**
     * Add course specified by the catalog per the selected year/semester
     * User must be able to register for the course selected
     * 
     * @param transcript
     * @throws SQLException
     */
    private void addCourse(Transcript transcript) throws SQLException{
        try {

            ArrayList<Course> offerings = getOfferings();
            while(offerings.size() <= 0){
                System.out.println(Constants.INVALID_INPUT_MSG);
                offerings = getOfferings();
            }


            int sectionNum = -1;
            while(sectionNum == -1){
                sectionNum = getSectionNum(sectionNum, offerings.size(), Constants.SELECT_SECTION_PROMPT);
            }
            Course courseToEnroll = offerings.get(sectionNum - 1);


            if(checkEnroll(transcript, courseToEnroll)) {
                enrollStudentInCourse(courseToEnroll);
                System.out.println("Enroll success!");
            } else{
                System.out.println("Cannot enroll in that course.");
            }
        } catch (Exception e){
            System.out.println(e.toString());
        }
    }


    /**
     * Update students current course status
     * 
     * @param courseToEnroll
     * @throws SQLException
     */
    private void enrollStudentInCourse(Course courseToEnroll) throws SQLException{
        try {
            PreparedStatement statement = this.connection.prepareStatement(Constants.ENROLL_STATEMENT);
            statement.setString(1, this.studentId);
            statement.setString(2, courseToEnroll.getId());
            statement.setString(3, courseToEnroll.getTitle());
            statement.setString(4, this.semester);
            statement.setString(5, this.year);
            statement.executeUpdate();
        } catch (SQLException e){
            System.out.println("Enrollment failure.");
        }
    }

    /**
     * Checks that a student is able to enroll in specified course
     * via checking prerequisites and course availablity 
     * 
     * @param transcript
     * @param courseToEnroll
     * @return boolean
     * @throws QueryFailure
     * @throws SQLException
     */
    private boolean checkEnroll(Transcript transcript, Course courseToEnroll) throws QueryFailure, SQLException{
        ArrayList<Course> prereqCourses = new ArrayList<>();
        ArrayList<String> transcriptIds = transcript.getAllIds();
        String selectSQL = Constants.GET_COURSE_PREREQ;

        PreparedStatement statement = connection.prepareStatement(selectSQL);
        statement.setString(1, courseToEnroll.getId());
        ResultSet result = this.getFromDatabase.getData(statement);

        while(result.next()){
            Course prereq = new Course(result.getString(1),
                                       result.getString(2));
            prereqCourses.add(prereq);
        }

        if(prereqCourses.get(0).getId() != null){
            for(Course prereq : prereqCourses){
                if(transcriptIds.contains(prereq.getId())){
                    return false;
                }
                if(prereq.getTitle() == null){
                    return true;
                }
                if(!transcriptIds.contains(prereq.getTitle())){
                    return false;
                }
            }
        }
        return true;
    }

    private int getSectionNum(int sectionNum, int offeringSize, String prompt){
        try {
            if(sectionNum != -1){
                return sectionNum;
            }
            String[] section = {Constants.ERROR};
            while ((sectionNum <= 0 || sectionNum > offeringSize)) {
                section = getFromUser(prompt, 1);
                sectionNum = Integer.parseInt(section[0]);
            }
        } catch (NumberFormatException n){
            System.out.println(Constants.INVALID_INPUT_MSG);
        } 

        return sectionNum;
    }

    /**
     * Get the course catalog of the specified year/semester
     * 
     * @return ArrayList<Course>
     * @throws SQLException
     */
    private ArrayList<Course> getOfferings() throws QueryFailure, SQLException{
        String[] fromUser = {};
        while(fromUser.length != 2){
            fromUser = getFromUser(Constants.GET_COURSE_PROMPT, 2);
        }
 
        this.year = fromUser[0].trim();
        this.semester = fromUser[1].trim();
       
        String selectSQL = Constants.GET_COURSES_QUERY;
        PreparedStatement statement = connection.prepareStatement(selectSQL);
        statement.setString(1, this.year);
        statement.setString(2, this.semester);
        
        ArrayList<Course> offerings = getSections(statement);
        return offerings;
    }

    /**
     * Helper function for getOfferings function
     * 
     * @param statement
     * @return ArrayList<Course>
     * @throws QueryFailure
     * @throws SQLException
     */
    private ArrayList<Course> getSections(PreparedStatement statement) throws QueryFailure, SQLException{
        try {
            ArrayList<Course> offerings = new ArrayList<>();
            ResultSet result = this.getFromDatabase.getData(statement);
            printHeader();
            int i = 1;
            while(result.next()){
                Course course = new Course(result.getString(1), result.getString(2));
                course.hydrateElements(result.getString(3), result.getString(4), Constants.ERROR, Constants.ERROR);
                offerings.add(course);
                System.out.print("["+i+"] ");
                course.print(2);
                i++;
            }
            return offerings;

        } catch (Exception e){
            System.out.println(Constants.INVALID_INPUT_MSG);
            run();
        }
        return null;
    }

    /**
     * get input from user
     * 
     * @param prompt
     * @param argCount
     * @return String[]
     */
    private String[] getFromUser(String prompt, int argCount){
        System.out.print(prompt);
        Scanner sc = new Scanner(System.in);
        String[] userInput = sc.nextLine().split(",");
        sc.close();
        if(userInput.length != argCount){
            System.out.println(Constants.INVALID_INPUT_MSG);
            String[] fail = {Constants.ERROR};
            return fail;
        }
        return userInput;
    }

    /**
     * Printer formatting
     */
    private void printHeader(){
        String formatter = "%-"+12+"s";
        System.out.printf(formatter, "    Course");
        System.out.print("| Section\n");
        for(int i = 0; i < 22; i++){
            System.out.print("-");
        }
        System.out.println();

    }


}
