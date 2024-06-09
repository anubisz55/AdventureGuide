<%-- 
    Document   : medir-tempo-espera
    Created on : 25 de mai. de 2024, 15:34:16
    Author     : ariad
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%> <!-- Define o tipo de conteúdo e codificação da página -->
<%@ page import="java.time.Duration" %> <!-- Importa a classe Duration do pacote java.time -->
<!DOCTYPE html> <!-- Declaração do tipo de documento -->
<html>
<head>
    <meta charset="UTF-8"> <!-- Define a codificação da página -->
    <title>Tempo Médio de Espera</title> <!-- Título da página -->
    <%@include file="/WEB-INF/jspf/html-head-libs.jspf"%> <!-- Inclui arquivos JSP que contêm bibliotecas e scripts -->
</head>
<body>
    <%@include file="/WEB-INF/jspf/navbar.jspf"%> <!-- Inclui a barra de navegação -->

    <div class="container my-5"> <!-- Define uma div container com margem superior e inferior -->
        <h1>Tempo Médio de Espera</h1> <!-- Título principal da página -->
        <% 
            Duration tempoMedioEspera = (Duration) request.getAttribute("tempoMedioEspera"); // Obtém o tempo médio de espera da requisição
        %>
        <p>O tempo médio de espera na fila é: <%= tempoMedioEspera.getSeconds() %> segundos.</p> <!-- Exibe o tempo médio de espera -->
        <p>Clique em OK para aceitar</p> <!-- Texto informativo -->
      
        <a href="sair-fila.jsp" class="btn btn-primary">OK</a> <!-- Botão "OK" que redireciona para sair-fila.jsp -->
        <a href="index.jsp" class="btn btn-primary">Voltar</a> <!-- Botão "Voltar" que redireciona para index.jsp -->
    </div>

    <%@include file="/WEB-INF/jspf/html-body-libs.jspf"%> <!-- Inclui arquivos JSP com bibliotecas JavaScript e CSS -->
</body>
</html>

