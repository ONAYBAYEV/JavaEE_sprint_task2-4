package bitlab.techorda.DB;



import java.util.ArrayList;

public class DBManager  {
    private static final ArrayList<Tasks> task = new ArrayList<>();
    public static int id = 1;
    public static ArrayList<Tasks> getTask(){return task;}
    public static void addTasks(Tasks tasks){
        tasks.setId(id);
        task.add(tasks);
        id++;
    }
    public static Tasks getTask (int id){
        return task.stream().
                filter(tasks -> tasks.getId()==id).
                findFirst().
                orElse(null);
    }
    public static void updateTask(Tasks tapsyrma){
        for(int i = 0; i<task.size(); i++){
            if(task.get(i).getId()== tapsyrma.getId()){
                task.set(i,tapsyrma);
                break;
            }
        }
    }
    public static void deleteTask(int id){
        for(int i=0;i< task.size();i++){
            if(task.get(i).getId()==id){
                task.remove(i);
                break;
            }
        }
    }
}
