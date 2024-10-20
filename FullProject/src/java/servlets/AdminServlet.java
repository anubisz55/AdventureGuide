/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Attraction;
import model.AttractionDAO;
import model.Service;
import model.ServiceDAO;

@WebServlet(name = "AdminServlet", urlPatterns = {"/AdminServlet"})
public class AdminServlet extends HttpServlet {

    private AttractionDAO attractionDAO;
    private ServiceDAO serviceDAO;

    @Override
    public void init() throws ServletException {
        super.init();
        attractionDAO = new AttractionDAO();
        serviceDAO = new ServiceDAO();
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String action = request.getParameter("action");

        if ("addAttraction".equals(action)) {
            String name = request.getParameter("name");
            String description = request.getParameter("description");
            String imagePath = request.getParameter("imagePath");
            String coordinates = request.getParameter("coordinates");
            Attraction attraction = new Attraction();
            attraction.setName(name);
            attraction.setDescription(description);
            attraction.setImagePath(imagePath);
            attraction.setCoordinates(coordinates);
            attractionDAO.addAttraction(attraction);
            response.sendRedirect("admin.jsp");
        } else if ("updateAttraction".equals(action)) {
            int id = Integer.parseInt(request.getParameter("id"));
            String name = request.getParameter("name");
            String description = request.getParameter("description");
            String imagePath = request.getParameter("imagePath");
            String coordinates = request.getParameter("coordinates");
            Attraction attraction = new Attraction();
            attraction.setId(id);
            attraction.setName(name);
            attraction.setDescription(description);
            attraction.setImagePath(imagePath);
            attraction.setCoordinates(coordinates);
            attractionDAO.updateAttraction(attraction);
            response.sendRedirect("admin.jsp");
        } else if ("deleteAttraction".equals(action)) {
            int id = Integer.parseInt(request.getParameter("id"));
            attractionDAO.deleteAttraction(id);
            response.sendRedirect("admin.jsp");
        } else if ("addService".equals(action)) {
            String name = request.getParameter("name");
            String description = request.getParameter("description");
            Service service = new Service();
            service.setName(name);
            service.setDescription(description);
            serviceDAO.addService(service);
            response.sendRedirect("admin.jsp");
        } else if ("updateService".equals(action)) {
            int id = Integer.parseInt(request.getParameter("id"));
            String name = request.getParameter("name");
            String description = request.getParameter("description");
            Service service = new Service();
            service.setId(id);
            service.setName(name);
            service.setDescription(description);
            serviceDAO.updateService(service);
            response.sendRedirect("admin.jsp");
        } else if ("deleteService".equals(action)) {
            int id = Integer.parseInt(request.getParameter("id"));
            serviceDAO.deleteService(id);
            response.sendRedirect("admin.jsp");
        }
    }
}
