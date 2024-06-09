<%-- 
    Document   : ControleFilaEspera
    Created on : 21 de mai. de 2024, 15:33:35
    Author     : Fatec
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.time.Duration" %> <!-- Importa a classe Duration -->
<%@ page import="java.util.List" %> <!-- Importa a classe List -->
<%@ page import="java.time.LocalDateTime" %> <!-- Importa a classe LocalDateTime -->
<%@ page import="model.ControleFilaEspera" %> <!-- Importa a classe ControleFilaEspera -->
<%@ page import="model.FeedbackDAO" %> <!-- Importa a classe FeedbackDAO -->
<%@ page import="model.Feedback" %> <!-- Importa a classe Feedback -->

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
        // Obtém o objeto ControleFilaEspera e suas informações
        ControleFilaEspera controleFila = (ControleFilaEspera) application.getAttribute("controleFila");
        List<LocalDateTime> horariosEntrada = controleFila.getHorariosEntrada(); // Lista de horários de entrada
        List<LocalDateTime> horariosSaida = controleFila.getHorariosSaida(); // Lista de horários de saída
        Duration tempoMedioEspera = controleFila.calcularTempoMedioEspera(); // Tempo médio de espera
        Duration tempoEsperaAtual = controleFila.obterTempoEsperaAtual(); // Tempo de espera da última pessoa
    %>

    <!-- Exibe informações sobre a fila -->
    <p>Número de pessoas na fila: <%= horariosEntrada.size() %></p>
    <p>Tempo médio de espera na fila: <%= tempoMedioEspera.getSeconds() %> segundos</p>
    <p>Tempo de espera da última pessoa: <%= tempoEsperaAtual.getSeconds() %> segundos</p>
    
    <!-- Lista de feedbacks -->
    <div class="container my-5">
        <h2>Feedbacks</h2>
        <% 
            // Obtém a lista de feedbacks do objeto FeedbackDAO
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
