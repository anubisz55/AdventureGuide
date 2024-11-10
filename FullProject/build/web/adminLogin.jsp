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
        <i class="fas fa-dharmachakra ferris-wheel"></i>
<i class="fas fa-balloon balloon"></i>
<i class="fas fa-balloon balloon"></i>
<i class="fas fa-balloon balloon"></i>
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
        
<style>
    @import url('https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;700&display=swap');
    @import url('https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css');

    body {
        font-family: 'Roboto', sans-serif;
        background: linear-gradient(135deg, #f0e6ff 0%, #e6e6ff 100%);
        color: #333;
        line-height: 1.6;
        overflow-x: hidden;
    }

    .container {
        background-color: #ffffff;
        border-radius: 15px;
        box-shadow: 0 0 20px rgba(108, 99, 255, 0.1);
        padding: 30px;
        margin-top: 30px;
        position: relative;
    }

    h2 {
        color: #4a4a8a;
        border-bottom: 2px solid #6c63ff;
        padding-bottom: 10px;
        margin-bottom: 20px;
    }

    .nav-link {
        color: #OOOOOO;
        transition: color 0.3s ease;
    }

    .nav-link:hover {
        color: #FFFFFF;
        text-decoration: none;
    }

    .btn-primary {
        background-color: #6c63ff;
        border: none;
        transition: all 0.3s ease;
    }

    .btn-primary:hover {
        background-color: #5a52d5;
        transform: translateY(-2px);
        box-shadow: 0 4px 8px rgba(108, 99, 255, 0.2);
    }

    .alert-danger {
        background-color: #ffe0e0;
        border-color: #ffb3b3;
        color: #d8000c;
    }

    .form-control:focus {
        border-color: #6c63ff;
        box-shadow: 0 0 0 0.2rem rgba(108, 99, 255, 0.25);
    }

    /* Animações de parque de diversões */
    @keyframes ferrisWheel {
        0% { transform: rotate(0deg); }
        100% { transform: rotate(360deg); }
    }

    @keyframes bounce {
        0%, 100% { transform: translateY(0); }
        50% { transform: translateY(-20px); }
    }

    .ferris-wheel {
        position: absolute;
        top: 650px;
        right: -50px;
        font-size: 100px;
        color: #6c63ff;
        animation: ferrisWheel 20s linear infinite;
    }

    .balloon {
        position: absolute;
        font-size: 30px;
        color: #ff6b6b;
        animation: bounce 3s ease-in-out infinite;
    }

    .balloon:nth-child(1) { left: 10%; top: 20%; animation-delay: 0s; }
    .balloon:nth-child(2) { left: 20%; top: 80%; animation-delay: 0.5s; }
    .balloon:nth-child(3) { right: 15%; top: 30%; animation-delay: 1s; }
</style>
    </div>
    <%@include file="/WEB-INF/jspf/html-body-libs.jspf"%> <!-- Inclui o rodapé comum -->
</body>
</html>