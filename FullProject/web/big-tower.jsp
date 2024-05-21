<%-- 
    Document   : big-tower
    Created on : 14 de mai. de 2024, 15:01:36
    Author     : Fatec
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Big Tower</title>
    <%@include file="/WEB-INF/jspf/html-head-libs.jspf"%>
</head>
<body>
    <%@include file="/WEB-INF/jspf/navbar.jspf"%>

    <div class="container my-5">
        <h1>Big Tower</h1>
        <p>A Big Tower é uma das atrações mais emocionantes do parque, proporcionando uma queda livre de tirar o fôlego.</p>
        <p>Prepare-se para uma experiência de adrenalina e diversão na Big Tower, uma atração para os corajosos!</p>
        <img src="img/big-tower.jpg" alt="Big Tower" class="img-fluid my-4">
        <h2>Informações Importantes</h2>
        <ul>
            <li>Altura da Torre: 80 metros</li>
            <li>Velocidade da queda: 120 km/h</li>
            <li>Restrições: Altura mínima de 1,40 metros</li>
            <li>Horário de funcionamento: das 12h às 20h</li>
            
        </ul>
    </div>

    <%@include file="/WEB-INF/jspf/html-body-libs.jspf"%>
</body>
</html>