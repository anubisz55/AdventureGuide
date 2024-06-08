<%-- 
    Document   : ControleFilaEspera
    Created on : 21 de mai. de 2024, 15:33:35
    Author     : Fatec
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.time.Duration" %>
<%@ page import="java.util.List" %>
<%@ page import="java.time.LocalDateTime" %>
<%@ page import="model.ControleFilaEspera" %>
<%@ page import="model.FeedbackDAO" %>
<%@ page import="model.Feedback" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Controle de Fila de Espera</title>
</head>
<body>
    <h1>Controle de Fila de Espera</h1>

    <%-- Formulário para adicionar pessoa à fila --%>
    <form action="ControleFilaServlet" method="post">
        <input type="hidden" name="action" value="adicionar">
        <input type="submit" value="Adicionar Pessoa à Fila">
    </form>

    <%-- Formulário para remover pessoa da fila --%>
    <form action="ControleFilaServlet" method="post">
        <input type="hidden" name="action" value="remover">
        <input type="submit" value="Remover Pessoa da Fila">
    </form>

    <% 
        ControleFilaEspera controleFila = (ControleFilaEspera) application.getAttribute("controleFila");
        List<LocalDateTime> horariosEntrada = controleFila.getHorariosEntrada();
        List<LocalDateTime> horariosSaida = controleFila.getHorariosSaida();
        Duration tempoMedioEspera = controleFila.calcularTempoMedioEspera();
        Duration tempoEsperaAtual = controleFila.obterTempoEsperaAtual();
    %>

    <p>Número de pessoas na fila: <%= horariosEntrada.size() %></p>
    <p>Tempo médio de espera na fila: <%= tempoMedioEspera.getSeconds() %> segundos</p>
    <p>Tempo de espera da última pessoa: <%= tempoEsperaAtual.getSeconds() %> segundos</p>
    
    <div class="container my-5">
    <h2>Feedbacks</h2>
    <%
        FeedbackDAO feedbackDAO = (FeedbackDAO) application.getAttribute("feedbackDAO");
        List<Feedback> feedbacks = feedbackDAO.getFeedbacks();
    %>
    <ul>
        <% for (Feedback feedback : feedbacks) { %>
            <li>
                <strong><%= feedback.getNickname() %>:</strong> <%= feedback.getComments() %>
                <br><small><%= feedback.getTimestamp() %></small>
            </li>
        <% } %>
    </ul>
</div>

</body>
</html>
