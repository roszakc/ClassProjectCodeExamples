public class Constants {

    private Constants(){}

    /**
     * Prepared SQL statments
     * 
     */

    public static final String GET_TRANSCRIPT = "GET TRANSCRIPT";
    public static final String CHECK_DEGREE_REQUIREMENTS = "CHECK DEGREE REQUIREMENTS";
    public static final String ADD_COURSE = "ADD COURSE";
    public static final String REMOVE_COURSE = "REMOVE COURSE";
    public static final String EXIT = "EXIT";
    public static final String HELP = "HELP";
    public static final String HELP_STATEMENT = "Enter one of the following: Get transcript, Check degree requirements, Add course, Remove course or Exit";
    public static final String GET_TRANSCRIPT_QUERY = "Select takes.course_id, semester, year, grade, title, credits "+
                                        "\nFROM takes, course Where takes.course_id = course.course_id AND takes.ID = ?"+
                                        "ORDER BY year, semester;";
    public static final String GET_COURSES_IN_DEPT = "Select course.course_id, course.title \n" +
                                        "From course left outer join student ON student.dept_name = course.dept_name \n" +
                                        "where student.ID = ?\n" +
                                        "AND course.dept_name = student.dept_name; ";
    public static final String GET_COURSE_PREREQ = "Select course.course_id, prereq_id\n" +
                                        "FROM course left outer join prereq ON course.course_id = prereq.course_id\n" +
                                        "Where course.course_id = ?; ";
    public static final String GET_COURSE_PROMPT = "Please enter the year and semester for classes to enroll in (year, semester): ";
    public static final String GET_COURSES_QUERY = "Select course_id, sec_id, semester, year FROM section WHERE year = ? AND semester = ?";
    public static final String GET_COURSES_REMOVE = "Select course_id, sec_id, semester, year FROM takes WHERE ID = ?";

    //Insert requires: sID, course_id, section, semester, year, grade
    public static final String ENROLL_STATEMENT = "insert into takes values(?, ?, ?, ?, ?, null)";
    public static final String DELETE_STATEMENT = "Delete FROM takes WHERE ID = ? AND course_id = ? AND sec_id = ? AND year = ? AND semester = ?;";

    public static final String INVALID_INPUT_MSG ="Input invalid. Try again.";
    public static final String ERROR = "[error]";
    public static final String SELECT_SECTION_PROMPT = "Select which section to enroll into: ";
    public static final String SELECT_SECTION_REMOVE_PROMPT ="Select which section to remove: ";
    public static final String[] TITLES_TO_PRINT = {"Course", "Semester", "Year", "Grade", "Credits", "Title"};
    
    public static final int[] WIDTHS_TO_PRINT = {7, 8, 4, 5, 7, 40};
}
