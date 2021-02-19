import java.util.ArrayList;

public class Transcript {

    private ArrayList<Course> transcript = new ArrayList<>();
    private String studentID;

    public Transcript(String studentID){
        this.studentID = studentID;
    }

    /**
     * Prevents duplicate courses
     */
    public void addCourseToTranscript(Course curCourse){
        if(!transcript.contains(curCourse)){
            this.transcript.add(curCourse);
        }
    }

    public ArrayList<String> getAllIds(){
        ArrayList<String> ids = new ArrayList<>();
        for(Course course : this.transcript){
            ids.add(course.getId());
        }
        return ids;
    }

    public ArrayList<Course> getTranscript(){
        return this.transcript;
    }

    public void print() throws InvalidInput{
        System.out.println("Transcript for student: "+ studentID);
        String formatter = "%-"+Constants.WIDTHS_TO_PRINT[0]+"s";
        System.out.printf(formatter, Constants.TITLES_TO_PRINT[0]);
        for(int i = 1; i < Constants.TITLES_TO_PRINT.length; i++){
            formatter = "%-"+Constants.WIDTHS_TO_PRINT[i]+"s";
            System.out.printf(" | "+ formatter, Constants.TITLES_TO_PRINT[i]);
        }
        System.out.println();
        for(int i = 0; i < 73 ;i++){
            System.out.print("-");
        }
        System.out.println();
        for(Course course : transcript){
            course.print(1);
            System.out.println();
        }
    }
}
