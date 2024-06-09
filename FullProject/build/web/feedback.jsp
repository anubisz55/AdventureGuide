<%-- 
    Document   : feedback
    Created on : 25 de mai. de 2024, 20:25:34
    Author     : ariad
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%> <!-- Define o tipo de conteúdo e codificação da página -->

<!DOCTYPE html> <!-- Declaração do tipo de documento -->
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"> <!-- Meta tag para definir a codificação da página -->
    <title>Feedback</title> <!-- Título da página -->
    <%@include file="/WEB-INF/jspf/html-head-libs.jspf"%> <!-- Inclui arquivos de cabeçalho HTML -->
</head>
<body>
    <%@include file="/WEB-INF/jspf/navbar.jspf"%> <!-- Inclui o navbar da página -->
    <h1>Feedback</h1> <!-- Título principal da página -->
    
    <div class="container my-5"> <!-- Container para o formulário de feedback -->
        <h2>Deixe seu Feedback</h2> <!-- Título do formulário -->
        <form action="ControleFilaServlet" method="post"> <!-- Formulário para enviar feedback -->
            <input type="hidden" name="action" value="adicionarFeedback"> <!-- Campo oculto para definir a ação -->
            <input type="hidden" name="service" value="Carrossel"> <!-- Campo oculto para definir o serviço -->
            <div class="form-group"> <!-- Grupo de formulário para o campo de nickname -->
                <label for="nickname">Nickname:</label> <!-- Rótulo para o campo de nickname -->
                <input type="text" class="form-control" id="nickname" name="nickname" required> <!-- Campo de entrada para o nickname -->
            </div>
            <div class="form-group"> <!-- Grupo de formulário para o campo de comentários -->
                <label for="comments">Comentários:</label> <!-- Rótulo para o campo de comentários -->
                <textarea class="form-control" id="comments" name="comments" required></textarea> <!-- Campo de entrada para os comentários -->
            </div>
            <button type="submit" class="btn btn-primary">Enviar Feedback</button> <!-- Botão para enviar o feedback -->
            <a href="index.jsp" class="btn btn-primary">Voltar</a> <!-- Link para voltar à página inicial -->
        </form>
    </div>
    
    <%@include file="/WEB-INF/jspf/html-body-libs.jspf"%> <!-- Inclui arquivos de scripts no final do corpo da página -->
</body>
</html>
