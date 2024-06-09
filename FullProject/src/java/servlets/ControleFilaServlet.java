/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package servlets;

import java.io.IOException;
import java.time.Duration;
import java.util.Random;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.ControleFilaEspera;
import model.FeedbackDAO;

@WebServlet(name = "ControleFilaServlet", urlPatterns = {"/ControleFilaServlet"})
public class ControleFilaServlet extends HttpServlet {

    @Override
    public void init() throws ServletException {
        super.init();
        
        // Inicializa o controle da fila e o DAO de feedbacks
        ControleFilaEspera controleFila = new ControleFilaEspera();
        getServletContext().setAttribute("controleFila", controleFila);
        getServletContext().setAttribute("feedbackDAO", new FeedbackDAO());
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Obtém o controle da fila e o DAO de feedbacks do contexto
        ControleFilaEspera controleFila = (ControleFilaEspera) getServletContext().getAttribute("controleFila");
        FeedbackDAO feedbackDAO = (FeedbackDAO) getServletContext().getAttribute("feedbackDAO");
        
        // Obtém a ação do parâmetro da requisição
        String action = request.getParameter("action");

        // Executa a ação correspondente
        if ("adicionar".equals(action)) {
            controleFila.adicionarPessoaFila();
        } else if ("remover".equals(action)) {
            controleFila.removerPessoaFila();
            // Redireciona para a página de feedbacks após remover uma pessoa da fila
            response.sendRedirect("feedback.jsp");
            return;
        } else if ("medirTempoEspera".equals(action)) {
            // Gera um tempo de espera aleatório entre 60 e 300 segundos
            Random random = new Random();
            int tempoMedioEsperaSegundos = 60 + random.nextInt(241);
            Duration tempoMedioEspera = Duration.ofSeconds(tempoMedioEsperaSegundos);
            // Encaminha o tempo de espera para a página de medição de tempo de espera
            request.setAttribute("tempoMedioEspera", tempoMedioEspera);
            request.getRequestDispatcher("medir-tempo-espera.jsp").forward(request, response);
            return;
        } else if ("adicionarFeedback".equals(action)) {
            // Obtém os parâmetros do request para adicionar um novo feedback
            String nickname = request.getParameter("nickname");
            String service = request.getParameter("service");
            String comments = request.getParameter("comments");
            feedbackDAO.addFeedback(nickname, service, comments);
            // Redireciona para a página do carrossel após adicionar o feedback
            response.sendRedirect("carrossel.jsp");
            return;
        }

        // Redireciona para a página principal do controle da fila
        response.sendRedirect("ControleFilaEspera.jsp");
    }

    @Override
    public String getServletInfo() {
        return "Controle da Fila de Espera";
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Obtém a ação do parâmetro da requisição
        String action = request.getParameter("action");

        // Se a ação for "listarFeedbacks", obtém os feedbacks do DAO e encaminha para a página de listagem de feedbacks
        if ("listarFeedbacks".equals(action)) {
            FeedbackDAO feedbackDAO = (FeedbackDAO) getServletContext().getAttribute("feedbackDAO");
            request.setAttribute("feedbacks", feedbackDAO.getFeedbacks());
            request.getRequestDispatcher("listarFeedbacks.jsp").forward(request, response);
            return;
        }

        // Redireciona para a página principal do controle da fila
        response.sendRedirect("ControleFilaEspera.jsp");
    }
}
