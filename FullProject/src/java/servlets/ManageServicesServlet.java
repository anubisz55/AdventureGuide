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

@WebServlet("/ManageServicesServlet") // Define o mapeamento do servlet
public class ManageServicesServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String action = request.getParameter("action"); // Obtém a ação da requisição
        ServiceDAO serviceDAO = new ServiceDAO(); // Cria uma instância de ServiceDAO

        if (action == null || action.isEmpty()) {
            // Listar todos os serviços
            List<Service> services = serviceDAO.getAllServices(); // Obtém todos os serviços do DAO
            request.setAttribute("services", services); // Atribui a lista de serviços ao request
            request.getRequestDispatcher("service-list.jsp").forward(request, response); // Redireciona para a página de lista de serviços
        } else if ("new".equals(action)) {
            // Exibir formulário de adição de serviço
            request.getRequestDispatcher("service-form.jsp").forward(request, response); // Redireciona para o formulário de serviço
        } else if ("edit".equals(action)) {
            // Editar um serviço existente
            int id = Integer.parseInt(request.getParameter("id")); // Obtém o ID do serviço a ser editado
            Service service = serviceDAO.getServiceById(id); // Obtém o serviço pelo ID
            request.setAttribute("service", service); // Atribui o serviço ao request
            request.getRequestDispatcher("service-form.jsp").forward(request, response); // Redireciona para o formulário de serviço
        } else if ("delete".equals(action)) {
            // Excluir um serviço
            int id = Integer.parseInt(request.getParameter("id")); // Obtém o ID do serviço a ser excluído
            serviceDAO.deleteService(id); // Exclui o serviço pelo ID
            response.sendRedirect("ManageServicesServlet"); // Redireciona para a lista de serviços
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        ServiceDAO serviceDAO = new ServiceDAO(); // Cria uma instância de ServiceDAO
        String id = request.getParameter("id"); // Obtém o ID do serviço da requisição
        String name = request.getParameter("name"); // Obtém o nome do serviço da requisição
        String description = request.getParameter("description"); // Obtém a descrição do serviço da requisição
        String imagePath = request.getParameter("imagePath"); // Obtém o caminho da imagem
        String coordinates = request.getParameter("coordinates"); // Obtém as coordenadas do serviço

        // Criação de um novo objeto Service
        Service service = new Service();
        service.setName(name); // Define o nome do serviço
        service.setDescription(description); // Define a descrição do serviço
        service.setImagePath(imagePath); // Define o caminho da imagem
        service.setCoordinates(coordinates); // Define as coordenadas

        if (id == null || id.isEmpty()) {
            // Adiciona um novo serviço
            serviceDAO.addService(service); // Adiciona o serviço usando o DAO
        } else {
            // Atualiza um serviço existente
            service.setId(Integer.parseInt(id)); // Define o ID do serviço
            serviceDAO.updateService(service); // Atualiza o serviço usando o DAO
        }

        response.sendRedirect("ManageServicesServlet"); // Redireciona para a lista de serviços
    }
}
