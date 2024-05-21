<%-- 
    Document   : cinema
    Created on : 14 de mai. de 2024, 15:04:14
    Author     : Fatec
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Cinema</title>
    <%@include file="/WEB-INF/jspf/html-head-libs.jspf"%>
</head>
<body>
    <%@include file="/WEB-INF/jspf/navbar.jspf"%>

    <div class="container my-5">
        <h1>Cinema</h1>
        <p>O Cinema é uma atração imperdível do parque, oferecendo filmes emocionantes e divertidos para toda a família.</p>
        <p>Desfrute de uma experiência cinematográfica única no Cinema do parque!</p>
        <img src="img/cinema.jpg" alt="Cinema" class="img-fluid my-4">
        <h2>Informações Importantes</h2>
        <ul>
            <li>Programação: Filmes em exibição diariamente</li>
            <li>Horário de funcionamento: das 14h às 22h</li>
            
        </ul>
    </div>

    <%@include file="/WEB-INF/jspf/html-body-libs.jspf"%>
</body>
</html>
