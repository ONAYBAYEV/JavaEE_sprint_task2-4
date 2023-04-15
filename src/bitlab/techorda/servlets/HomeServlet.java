package bitlab.techorda.servlets;

import bitlab.techorda.DB.DBManager;
import bitlab.techorda.DB.Tasks;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.ArrayList;

@WebServlet(value = "/home")
public class HomeServlet extends HttpServlet {
      @Override
      protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            ArrayList<Tasks>tasks = DBManager.getTask();
            request.setAttribute("tasks",tasks);
            request.getRequestDispatcher("/index.jsp").forward(request,response);
      }
}
