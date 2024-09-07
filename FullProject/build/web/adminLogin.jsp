<%-- 
    Document   : adminLogin
    Created on : 6 de set. de 2024, 21:12:41
    Author     : ariad
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Login do Administrador</title>
    <%@include file="/WEB-INF/jspf/html-head-libs.jspf"%> <!-- Inclui o cabeçalho comum -->
</head>
<body>
    <%@include file="/WEB-INF/jspf/navbar.jspf"%> <!-- Inclui a navbar -->
    <div class="container my-5">
        <h2>Login do Administrador</h2> <!-- Título da página de login -->

        <!-- Adiciona a mensagem de erro caso o parâmetro "error" seja passado na URL -->
        <% if (request.getParameter("error") != null) { %>
            <div class="alert alert-danger" role="alert">
                Senha incorreta. Tente novamente.
            </div>
        <% } %>

        <!-- Formulário de login do administrador -->
        <form action="AdminLoginServlet" method="post">
            <div class="form-group">
                <label for="password">Senha:</label>
                <input type="password" class="form-control" id="password" name="password" required>
            </div>
            <button type="submit" class="btn btn-primary">Entrar</button>
        </form>
    </div>
    <%@include file="/WEB-INF/jspf/html-body-libs.jspf"%> <!-- Inclui o rodapé comum -->
</body>
</html>
