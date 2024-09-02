<%-- 
    Document   : listarFeedbacks
    Created on : 8 de jun. de 2024, 15:07:34
    Author     : ariad
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="model.Feedback" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Lista de Feedbacks</title>
    <%@include file="/WEB-INF/jspf/html-head-libs.jspf"%>
</head>
<body>
    <%@include file="/WEB-INF/jspf/navbar.jspf"%>

    <div class="container my-5">
        <h1>Lista de Feedbacks</h1>

        <!-- Formulário para filtrar feedbacks por atração -->
        <form action="ControleFilaServlet" method="get">
            <input type="hidden" name="action" value="listarFeedbacks">
            <div class="form-group">
                <label for="attraction">Escolha uma atração:</label>
                <select name="attraction" id="attraction" class="form-control">
                    <option value="">Todas</option>
                    <option value="Carrossel">Carrossel</option>
                    <option value="Montanha Russa">Montanha Russa</option>
                    <!-- Adicione outras opções conforme necessário -->
                </select>
            </div>
            <button type="submit" class="btn btn-primary">Filtrar</button>
        </form>

        <%
            List<Feedback> feedbacks = (List<Feedback>) request.getAttribute("feedbacks");
            if (feedbacks != null && !feedbacks.isEmpty()) {
        %>
            <ul>
                <% for (Feedback feedback : feedbacks) { %>
                    <li>
                        <strong>Atração:</strong> <%= feedback.getService() %><br>
                        <strong>Nickname:</strong> <%= feedback.getNickname() %><br>
                        <strong>Comentários:</strong> <%= feedback.getComments() %>
                    </li>
                <% } %>
            </ul>
        <% } else { %>
            <p>Nenhum feedback encontrado para a atração selecionada.</p>
        <% } %>
    </div>

    <%@include file="/WEB-INF/jspf/html-body-libs.jspf"%>
</body>
</html>

