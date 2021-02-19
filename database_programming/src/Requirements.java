import java.util.ArrayList;

public class Requirements {

    private String studentID;

    private ArrayList<Course> requiredCourses = new ArrayList<>();

    public Requirements(String studentID){
        this.studentID = studentID;
    }

    /**
     * Prevents duplicate courses
     * @param curCourse
     */
    public void addToRequirements(Course curCourse){
        if(!this.requiredCourses.contains(curCourse)){
            this.requiredCourses.add(curCourse);
        }
    }

    public ArrayList<Course> getRequiredCourses(){
        return this.requiredCourses;
    }

    public void removeTakenCourses(Transcript transcript){
        ArrayList<Course> taken = transcript.getTranscript();
        ArrayList<Course> toRemove = new ArrayList<>();
        for(Course courseTaken : taken){
            for(Course req : this.requiredCourses){
                if(req.getId().equals(courseTaken.getId())){
                    toRemove.add(req);
                }
            }
        }
        this.requiredCourses.removeAll(toRemove);
    }

    public void print() throws InvalidInput{
        System.out.println("Required courses for student: "+ studentID);
        String formatter = "%-"+7+"s";
        System.out.printf(formatter, "Course");
        System.out.print(" | Title\n");
        for(int i = 0; i < 38; i++){
            System.out.print("-");
        }
        System.out.println();
        for(Course course : this.requiredCourses){
            course.print(2);
        }
    }
}
