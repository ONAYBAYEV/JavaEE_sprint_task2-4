package bitlab.techorda.servlets;

import bitlab.techorda.DB.DBManager;
import bitlab.techorda.DB.Tasks;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet(value = "/details")
public class TaskDetailsServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = -1;
        try {
            id = Integer.parseInt(request.getParameter("task_id"));
        } catch (Exception e) {

        }
        Tasks tapsyrma = DBManager.getTask(id);
        request.setAttribute("tasks", tapsyrma);
        request.getRequestDispatcher("details.jsp").forward(request,response);
    }
}
