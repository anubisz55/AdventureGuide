<%-- 
    Document   : circus
    Created on : 14 de mai. de 2024, 15:27:16
    Author     : Fatec
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Circus</title>
    <%@include file="/WEB-INF/jspf/html-head-libs.jspf"%>
</head>
<body>
    <%@include file="/WEB-INF/jspf/navbar.jspf"%>

    <div class="container my-5">
        <h1>Circus</h1>
        <p>O Circus é uma atração cheia de magia e diversão, com espetáculos incríveis e artistas talentosos.</p>
        <p>Prepare-se para se encantar com as acrobacias, palhaços e malabaristas do Circus!</p>
        <img src="img/circus.jpg" alt="Circus" class="img-fluid my-4">
        <h2>Informações Importantes</h2>
        <ul>
            <li>Horários dos Espetáculos: Consulte a programação do dia</li>
            <li>Horário de funcionamento: das 15h às 21h</li>
           
        </ul>
    </div>

    <%@include file="/WEB-INF/jspf/html-body-libs.jspf"%>
</body>
</html>
