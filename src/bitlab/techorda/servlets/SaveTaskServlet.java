package bitlab.techorda.servlets;

import bitlab.techorda.DB.DBManager;
import bitlab.techorda.DB.Tasks;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet(value = "/savetask")
public class SaveTaskServlet  extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id=Integer.parseInt(request.getParameter("task_id"));
        String name= request.getParameter("task_name");
        String description = request.getParameter("task_description");
        String deadlineDate=request.getParameter("task_deadline");

        Tasks tapsyrma= DBManager.getTask(id);
        if(tapsyrma != null){
            tapsyrma.setName(name);
            tapsyrma.setDeadlineDate(deadlineDate);
            tapsyrma.setDescription(description);
            DBManager.updateTask(tapsyrma);
            response.sendRedirect("/details?task_id="+id);
        }
        else{
            response.sendRedirect("/home");
        }
    }
}
