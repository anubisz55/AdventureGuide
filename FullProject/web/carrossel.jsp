<%-- 
    Document   : carrossel
    Created on : 14 de mai. de 2024, 15:03:04
    Author     : Fatec
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Carrossel</title>
    <%@include file="/WEB-INF/jspf/html-head-libs.jspf"%>
</head>
<body>
    <%@include file="/WEB-INF/jspf/navbar.jspf"%>

    <div class="container my-5">
        <h1>Carrossel</h1>
        <p>O Carrossel é uma das atrações clássicas do parque, com seus cavalos coloridos e música alegre.</p>
        <p>Desfrute de um passeio nostálgico e divertido no Carrossel, uma atração para todas as idades.</p>
        <img src="img/carrossel.jpg" alt="Carrossel" class="img-fluid my-4">
        <h2>Informações Importantes</h2>
        <ul>
            <li>Capacidade: Até 20 pessoas por vez</li>
            <li>Duração do passeio: aproximadamente 5 minutos</li>
            <li>Horário de funcionamento: das 10h às 20h</li>
        </ul>
    </div>

    <div class="container my-5">
        <p>Divirta-se no emocionante Carrossel do parque!</p>

        <form action="ControleFilaServlet" method="post">
            <input type="hidden" name="action" value="medirTempoEspera">
            <button type="submit" class="btn btn-primary">Irei Esperar na Fila</button>
        </form>
    </div>
    
    
    


    <%@include file="/WEB-INF/jspf/html-body-libs.jspf"%>
</body>
</html>
