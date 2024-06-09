<%-- 
    Document   : feedback
    Created on : 25 de mai. de 2024, 20:25:34
    Author     : ariad
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Feedback</title>
    <%@include file="/WEB-INF/jspf/html-head-libs.jspf"%>
</head>
<body>
    <%@include file="/WEB-INF/jspf/navbar.jspf"%>
    <h1>Feedback</h1>
    
    <div class="container my-5">
        <h2>Deixe seu Feedback</h2>
        <form action="ControleFilaServlet" method="post">
            <input type="hidden" name="action" value="adicionarFeedback">
            <input type="hidden" name="service" value="Carrossel">
            <div class="form-group">
                <label for="nickname">Nickname:</label>
                <input type="text" class="form-control" id="nickname" name="nickname" required>
            </div>
            <div class="form-group">
                <label for="comments">Comentários:</label>
                <textarea class="form-control" id="comments" name="comments" required></textarea>
            </div>
            <button type="submit" class="btn btn-primary">Enviar Feedback</button>
            <a href="index.jsp" class="btn btn-primary">Voltar</a>
        </form>
    </div>
    
    <%@include file="/WEB-INF/jspf/html-body-libs.jspf"%>
</body>
</html>
