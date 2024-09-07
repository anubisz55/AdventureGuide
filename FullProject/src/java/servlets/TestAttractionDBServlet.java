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
import java.util.List;

@WebServlet("/TestAttractionDBServlet") // Define o mapeamento da URL para este servlet
public class TestAttractionDBServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Cria uma instância do DAO de atrações
        AttractionDAO attractionDAO = new AttractionDAO();
        
        // Adiciona uma atração de teste
        Attraction testAttraction = new Attraction();
        testAttraction.setName("Montanha Russa de Teste");
        testAttraction.setDescription("Uma montanha russa de teste para verificar a funcionalidade de CRUD.");
        attractionDAO.addAttraction(testAttraction);

        // Lista todas as atrações para verificar se o teste foi adicionado
        List<Attraction> attractions = attractionDAO.getAllAttractions();
        
        // Exibe todas as atrações no navegador
        response.getWriter().println("Lista de Atrações:");
        for (Attraction attraction : attractions) {
            response.getWriter().println("ID: " + attraction.getId() + ", Nome: " + attraction.getName() + ", Descrição: " + attraction.getDescription());
        }
    }
}
