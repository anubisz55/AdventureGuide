/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package servlets;

import model.Service;
import model.ServiceDAO;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/TestServiceDBServlet") // Define o mapeamento da URL para este servlet
public class TestServiceDBServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Cria uma instância do DAO de serviços
        ServiceDAO serviceDAO = new ServiceDAO();
        
        // Adiciona um serviço de teste
        Service testService = new Service();
        testService.setName("Serviço de Teste");
        testService.setDescription("Um serviço de teste para verificar a funcionalidade de CRUD.");
        
        // Adiciona os novos campos: imagem e coordenadas
        testService.setImagePath("/images/test-service.jpg");  // Caminho de exemplo para a imagem
        testService.setCoordinates("40.7128,-74.0060"); // Coordenadas de exemplo (Nova Iorque)

        // Adiciona o serviço de teste no banco de dados
        serviceDAO.addService(testService);

        // Lista todos os serviços para verificar se o teste foi adicionado
        List<Service> services = serviceDAO.getAllServices();
        
        // Exibe todos os serviços no navegador
        response.setContentType("text/html");
        response.getWriter().println("<h3>Lista de Serviços:</h3>");
        for (Service service : services) {
            response.getWriter().println("<p>");
            response.getWriter().println("ID: " + service.getId() + "<br>");
            response.getWriter().println("Nome: " + service.getName() + "<br>");
            response.getWriter().println("Descrição: " + service.getDescription() + "<br>");
            response.getWriter().println("Imagem: " + (service.getImagePath() != null ? service.getImagePath() : "Sem imagem") + "<br>");
            response.getWriter().println("Coordenadas: " + (service.getCoordinates() != null ? service.getCoordinates() : "Sem coordenadas") + "<br>");
            response.getWriter().println("</p>");
        }
    }
}
