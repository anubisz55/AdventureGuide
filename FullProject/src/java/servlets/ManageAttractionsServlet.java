/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package servlets;

import model.Attraction;
import model.AttractionDAO;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/ManageAttractionsServlet")
public class ManageAttractionsServlet extends HttpServlet {
    private AttractionDAO attractionDAO;

    @Override
    public void init() throws ServletException {
        attractionDAO = new AttractionDAO();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null) action = "list";

        switch (action) {
            case "new":
                showNewForm(request, response);
                break;
            case "edit":
                showEditForm(request, response);
                break;
            case "delete":
                deleteAttraction(request, response);
                break;
            default:
                listAttractions(request, response);
                break;
        }
    }

    private void listAttractions(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Attraction> attractions = attractionDAO.getAllAttractions();
        request.setAttribute("attractions", attractions);
        request.getRequestDispatcher("attraction-list.jsp").forward(request, response);
    }

    private void showNewForm(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("attraction-form.jsp").forward(request, response);
    }

    private void showEditForm(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        Attraction existingAttraction = attractionDAO.getAllAttractions().stream()
                .filter(a -> a.getId() == id)
                .findFirst()
                .orElse(null);
        request.setAttribute("attraction", existingAttraction);
        request.getRequestDispatcher("attraction-form.jsp").forward(request, response);
    }

    private void deleteAttraction(HttpServletRequest request, HttpServletResponse response) throws IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        attractionDAO.deleteAttraction(id);
        response.sendRedirect("ManageAttractionsServlet");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("id");
        String name = request.getParameter("name");
        String description = request.getParameter("description");

        if (id == null || id.isEmpty()) {
            // Novo registro
            Attraction newAttraction = new Attraction(0, name, description);
            attractionDAO.addAttraction(newAttraction);
        } else {
            // Atualizar registro existente
            Attraction updatedAttraction = new Attraction(Integer.parseInt(id), name, description);
            attractionDAO.updateAttraction(updatedAttraction);
        }
        response.sendRedirect("ManageAttractionsServlet");
    }
}
