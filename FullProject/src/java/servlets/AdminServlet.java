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

        // Gerenciamento de Atrações
        if ("addAttraction".equals(action)) {
            String name = request.getParameter("name");
            String description = request.getParameter("description");
            String imagePath = request.getParameter("imagePath");
            String coordinates = request.getParameter("coordinates");

            // Criação da atração com os dados recebidos
            Attraction attraction = new Attraction();
            attraction.setName(name);
            attraction.setDescription(description);
            attraction.setImagePath(imagePath);  // Novo campo de imagem
            attraction.setCoordinates(coordinates);  // Novo campo de coordenadas

            attractionDAO.addAttraction(attraction);  // Adiciona a atração no banco
            response.sendRedirect("admin.jsp");  // Redireciona para a página admin.jsp
        } else if ("updateAttraction".equals(action)) {
            int id = Integer.parseInt(request.getParameter("id"));
            String name = request.getParameter("name");
            String description = request.getParameter("description");
            String imagePath = request.getParameter("imagePath");
            String coordinates = request.getParameter("coordinates");

            // Criação da atração com os dados recebidos
            Attraction attraction = new Attraction();
            attraction.setId(id);
            attraction.setName(name);
            attraction.setDescription(description);
            attraction.setImagePath(imagePath);  // Novo campo de imagem
            attraction.setCoordinates(coordinates);  // Novo campo de coordenadas

            attractionDAO.updateAttraction(attraction);  // Atualiza a atração no banco
            response.sendRedirect("admin.jsp");  // Redireciona para a página admin.jsp
        } else if ("deleteAttraction".equals(action)) {
            int id = Integer.parseInt(request.getParameter("id"));
            attractionDAO.deleteAttraction(id);  // Deleta a atração
            response.sendRedirect("admin.jsp");  // Redireciona para a página admin.jsp
        }

        // Gerenciamento de Serviços
        else if ("addService".equals(action)) {
            String name = request.getParameter("name");
            String description = request.getParameter("description");
            String imagePath = request.getParameter("imagePath");
            String coordinates = request.getParameter("coordinates");

            // Criação do serviço com os dados recebidos
            Service service = new Service();
            service.setName(name);
            service.setDescription(description);
            service.setImagePath(imagePath);  // Novo campo de imagem
            service.setCoordinates(coordinates);  // Novo campo de coordenadas

            serviceDAO.addService(service);  // Adiciona o serviço no banco
            response.sendRedirect("admin.jsp");  // Redireciona para a página admin.jsp
        } else if ("updateService".equals(action)) {
            int id = Integer.parseInt(request.getParameter("id"));
            String name = request.getParameter("name");
            String description = request.getParameter("description");
            String imagePath = request.getParameter("imagePath");
            String coordinates = request.getParameter("coordinates");

            // Criação do serviço com os dados recebidos
            Service service = new Service();
            service.setId(id);
            service.setName(name);
            service.setDescription(description);
            service.setImagePath(imagePath);  // Novo campo de imagem
            service.setCoordinates(coordinates);  // Novo campo de coordenadas

            serviceDAO.updateService(service);  // Atualiza o serviço no banco
            response.sendRedirect("admin.jsp");  // Redireciona para a página admin.jsp
        } else if ("deleteService".equals(action)) {
            int id = Integer.parseInt(request.getParameter("id"));
            serviceDAO.deleteService(id);  // Deleta o serviço
            response.sendRedirect("admin.jsp");  // Redireciona para a página admin.jsp
        }
    }
}
