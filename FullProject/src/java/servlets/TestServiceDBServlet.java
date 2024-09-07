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
import model.Service;
import model.ServiceDAO;
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
        serviceDAO.addService(testService);

        // Lista todos os serviços para verificar se o teste foi adicionado
        List<Service> services = serviceDAO.getAllServices();
        
        // Exibe todos os serviços no navegador
        response.getWriter().println("Lista de Serviços:");
        for (Service service : services) {
            response.getWriter().println("ID: " + service.getId() + ", Nome: " + service.getName() + ", Descrição: " + service.getDescription());
        }
    }
}
