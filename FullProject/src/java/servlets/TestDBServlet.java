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
import model.FeedbackDAO;

@WebServlet("/TestDBServlet") // Define o mapeamento da URL para este servlet
public class TestDBServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Cria uma instância do DAO de feedbacks
        FeedbackDAO feedbackDAO = new FeedbackDAO();
        
        // Adiciona um feedback de teste
        feedbackDAO.addFeedback("testuser", "serviceTest", "This is a test comment");

        // Retorna uma mensagem indicando que o feedback foi adicionado com sucesso
        response.getWriter().println("Feedback adicionado com sucesso!");
    }
}
