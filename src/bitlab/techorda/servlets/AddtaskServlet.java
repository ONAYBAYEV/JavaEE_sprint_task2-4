package bitlab.techorda.servlets;

import bitlab.techorda.DB.DBManager;
import bitlab.techorda.DB.Tasks;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet(value = "/addtask")
public class AddtaskServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("task_name");
        String deadline= request.getParameter("task_deadline");
        String description= request.getParameter("task_description");
        Tasks tasks= new Tasks();
        tasks.setName(name);
        tasks.setDescription(description);
        tasks.setDeadlineDate(deadline);
        DBManager.addTasks(tasks);

        response.sendRedirect("/home");
    }
}
