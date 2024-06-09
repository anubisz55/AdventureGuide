<%-- 
    Document   : feedback
    Created on : 25 de mai. de 2024, 20:04:12
    Author     : ariad
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%> <!-- Define o tipo de conteúdo e codificação da página -->
<!DOCTYPE html> <!-- Declaração do tipo de documento -->
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"> <!-- Define a codificação da página -->
    <title>Sair da Fila</title> <!-- Título da página -->
    <%@include file="/WEB-INF/jspf/html-head-libs.jspf"%> <!-- Inclui arquivos JSP que contêm bibliotecas e scripts -->
</head>
<body>
    <%@include file="/WEB-INF/jspf/navbar.jspf"%> <!-- Inclui a barra de navegação -->
    
    <div class="container my-5"> <!-- Define uma div container com margem superior e inferior -->
        <h1>Fim dessa Aventura!</h1> <!-- Título principal da página -->
        <p>Clique em SAIR DA FILA e deixe seu feedback</p> <!-- Texto informativo -->
        <a href="feedback.jsp" class="btn btn-primary">SAIR DA FILA</a> <!-- Botão "SAIR DA FILA" que redireciona para feedback.jsp -->
    </div>
    
    <%@include file="/WEB-INF/jspf/html-body-libs.jspf"%> <!-- Inclui arquivos JSP com bibliotecas JavaScript e CSS -->
</body>
</html>

