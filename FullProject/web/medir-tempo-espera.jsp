<%-- 
    Document   : medir-tempo-espera
    Created on : 25 de mai. de 2024, 15:34:16
    Author     : ariad
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.time.Duration" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Tempo Médio de Espera</title>
    <%@include file="/WEB-INF/jspf/html-head-libs.jspf"%>
</head>
<body>
    <%@include file="/WEB-INF/jspf/navbar.jspf"%>

    <div class="container my-5">
        <h1>Tempo Médio de Espera</h1>
        <% 
            Duration tempoMedioEspera = (Duration) request.getAttribute("tempoMedioEspera");
        %>
        <p>O tempo médio de espera na fila é: <%= tempoMedioEspera.getSeconds() %> segundos.</p>
        <p>Clique em OK para aceitar</p>
      
        <a href="sair-fila.jsp" class="btn btn-primary">OK</a>
        <a href="index.jsp" class="btn btn-primary">Voltar</a>
    </div>

    <%@include file="/WEB-INF/jspf/html-body-libs.jspf"%>
</body>
</html>
