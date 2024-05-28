/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package servlets;

import java.io.IOException;
import java.time.Duration;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.ControleFilaEspera;
import model.FeedbackDAO;

@WebServlet(name = "ControleFilaServlet", urlPatterns = {"/ControleFilaServlet"})
public class ControleFilaServlet extends HttpServlet {

    @Override
    public void init() throws ServletException {
        super.init();
        ControleFilaEspera controleFila = new ControleFilaEspera();
        getServletContext().setAttribute("controleFila", controleFila);
        getServletContext().setAttribute("feedbackDAO", new FeedbackDAO());
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        ControleFilaEspera controleFila = (ControleFilaEspera) getServletContext().getAttribute("controleFila");
        FeedbackDAO feedbackDAO = (FeedbackDAO) getServletContext().getAttribute("feedbackDAO");
        String action = request.getParameter("action");

        if ("adicionar".equals(action)) {
            controleFila.adicionarPessoaFila();
        } else if ("remover".equals(action)) {
            controleFila.removerPessoaFila();
        } else if ("medirTempoEspera".equals(action)) {
            Duration tempoMedioEspera = controleFila.calcularTempoMedioEspera();
            request.setAttribute("tempoMedioEspera", tempoMedioEspera);
            request.getRequestDispatcher("medir-tempo-espera.jsp").forward(request, response);
            return;
        } else if ("adicionarFeedback".equals(action)) {
            String nickname = request.getParameter("nickname");
            String service = request.getParameter("service");
            String comments = request.getParameter("comments");
            feedbackDAO.addFeedback(nickname, service, comments);
            response.sendRedirect("carrossel.jsp");
            return;
        }

        response.sendRedirect("ControleFilaEspera.jsp");
    }

    @Override
    public String getServletInfo() {
        return "Controle da Fila de Espera";
    }
}
