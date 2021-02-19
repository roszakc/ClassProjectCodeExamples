public class Course {

    private String[] courseItems = new String[6];
    private String course_id;
    private String title;

    public Course(String course_id, String title){
        this.course_id = course_id;
        this.title = title;
    }

    public void hydrateElements(String semester, String year, String grade, String credits) {
        courseItems[0] = this.course_id;
        courseItems[1] = semester;
        courseItems[2] = year;
        courseItems[3] = grade;
        courseItems[4] = credits;
        courseItems[5] = this.title;
    }

    public String getId(){
        return this.course_id;
    }

    public String getTitle(){
        return this.title;
    }

    public String getYear(){
        return this.courseItems[2];
    }

    public String getSemester(){
        return this.courseItems[1];
    }

    public void print(int type) {
        if(type == 1){
            printAll();
        } else if(type == 2){
            printSelect();
        } else{
            System.out.println("Print error.");
        }
    }

    private void printAll(){

        String format = "%-"+Constants.WIDTHS_TO_PRINT[0]+"s";
        System.out.printf(format, courseItems[0]);
        for(int i = 1; i < 6; i++){
            format = "%-"+Constants.WIDTHS_TO_PRINT[i]+"s";
            System.out.printf(" | "+ format, courseItems[i]);
        }
    }

    private void printSelect(){
        int maxSize = 7;
        String format = "%-"+maxSize+"s";
        System.out.printf(format, this.course_id);
        System.out.print(" | "+this.title+"\n");
    }
}
