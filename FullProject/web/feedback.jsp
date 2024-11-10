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
    
    <div class="container my-5"> <!-- Container para o formulário de feedback -->
        <h2>Deixe seu Feedback</h2> <!-- Título do formulário -->
        <form action="ControleFilaServlet" method="post"> <!-- Formulário para enviar feedback -->
            <input type="hidden" name="action" value="adicionarFeedback"> <!-- Campo oculto para definir a ação -->
            
            <!-- Adiciona um select para escolher a atração -->
            <div class="form-group"> <!-- Grupo de formulário para o campo de atração -->
                <label for="service">Escolha a Atração:</label> <!-- Rótulo para o campo de seleção da atração -->
                <select class="form-control" id="service" name="service" required> <!-- Lista de seleção para escolher a atração -->
                    <option value="Carrossel">Carrossel</option>
                    <option value="Montanha Russa">Montanha Russa</option>
                    <option value="Roda Gigante">Roda Gigante</option>
                    <option value="Casa Assombrada">Casa Assombrada</option>
                    <!-- Adicione outras opções de atrações conforme necessário -->
                </select>
            </div>

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
    
    <style>
    @import url('https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;700&display=swap');
    @import url('https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css');

    body {
        font-family: 'Roboto', sans-serif;
        background: linear-gradient(135deg, #f0e6ff 0%, #e6e6ff 100%);
        color: #333;
        line-height: 1.6;
        margin: 0;
        padding: 0;
    }

    .container {
        background-color: #ffffff;
        border-radius: 15px;
        box-shadow: 0 0 20px rgba(108, 99, 255, 0.1);
        padding: 30px;
        max-width: 600px;
        margin: 30px auto;
        position: relative;
    }

    h2 {
        color: #4a4a8a;
        border-bottom: 2px solid #6c63ff;
        padding-bottom: 10px;
        margin-bottom: 20px;
        text-align: center;
    }

    .form-group {
        margin-bottom: 20px;
    }

    .form-group label {
        font-weight: bold;
        color: #4a4a8a;
        display: block;
        margin-bottom: 5px;
    }

    .form-control {
        width: 100%;
        padding: 10px;
        border: 1px solid #d4d4ff;
        border-radius: 8px;
        font-size: 16px;
        transition: border-color 0.3s ease;
    }

    .form-control:focus {
        border-color: #6c63ff;
        box-shadow: 0 0 0 0.2rem rgba(108, 99, 255, 0.25);
        outline: none;
    }

    select.form-control {
        appearance: none;
        background-image: url("data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='12' height='12' fill='%234a4a8a' viewBox='0 0 16 16'%3E%3Cpath d='M7.247 11.14L2.451 5.658C1.885 5.013 2.345 4 3.204 4h9.592a1 1 0 0 1 .753 1.659l-4.796 5.48a1 1 0 0 1-1.506 0z'/%3E%3C/svg%3E");
        background-repeat: no-repeat;
        background-position: right 10px center;
        padding-right: 30px;
    }

    .btn {
        padding: 12px 24px;
        border-radius: 30px;
        font-size: 16px;
        font-weight: bold;
        text-decoration: none;
        transition: all 0.3s ease;
        cursor: pointer;
    }

    .btn-primary {
        background-color: #6c63ff;
        color: #fff;
        border: none;
    }

    .btn-primary:hover {
        background-color: #5a52d5;
        transform: translateY(-2px);
        box-shadow: 0 4px 8px rgba(108, 99, 255, 0.2);
    }

    .btn-secondary {
        background-color: #72a0e5;
        color: #fff;
        border: none;
        margin-left: 10px;
    }

    .btn-secondary:hover {
        background-color: #5b8ad6;
        transform: translateY(-2px);
        box-shadow: 0 4px 8px rgba(114, 160, 229, 0.2);
    }

    /* Animações */
    @keyframes float {
        0% { transform: translateY(0px); }
        50% { transform: translateY(-20px); }
        100% { transform: translateY(0px); }
    }

    @keyframes spin {
        0% { transform: rotate(0deg); }
        100% { transform: rotate(360deg); }
    }

    .container::before {
        content: '\f3ff';
        font-family: 'Font Awesome 5 Free';
        font-weight: 900;
        position: absolute;
        top: -50px;
        right: -50px;
        font-size: 100px;
        color: #6c63ff;
        opacity: 0.2;
        animation: spin 20s linear infinite;
    }

    .container::after {
        content: '\f185';
        font-family: 'Font Awesome 5 Free';
        font-weight: 900;
        position: absolute;
        bottom: -50px;
        left: -50px;
        font-size: 80px;
        color: #ff6b6b;
        opacity: 0.2;
        animation: float 6s ease-in-out infinite;
    }
</style>
    
    <%@include file="/WEB-INF/jspf/html-body-libs.jspf"%> <!-- Inclui arquivos de scripts no final do corpo da página -->
</body>
</html>