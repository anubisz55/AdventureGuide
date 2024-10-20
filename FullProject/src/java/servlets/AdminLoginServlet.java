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
import javax.servlet.http.HttpSession;

@WebServlet("/AdminLoginServlet")
public class AdminLoginServlet extends HttpServlet {

    // Definindo a senha do administrador
    private static final String ADMIN_PASSWORD = "admin";

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        // Obtendo a senha do parâmetro de solicitação
        String password = request.getParameter("password");

        // Verifica se a senha está correta
        if (ADMIN_PASSWORD.equals(password)) {
            // Se a senha estiver correta, cria uma sessão e define um atributo "isAdmin"
            HttpSession session = request.getSession();
            session.setAttribute("isAdmin", true);
            response.sendRedirect("ManageAttractionsServlet");  // Redireciona para Manage que acessa a lista de atrações
        } else {
            // Se a senha estiver incorreta, redireciona para a página de login novamente
            response.sendRedirect("adminLogin.jsp?error=1");
        }
    }
}
