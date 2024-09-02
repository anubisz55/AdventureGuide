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
    <style>
        body {
            background-color: #f0f4f5; /* Cor de fundo da página */
            font-family: 'Arial', sans-serif; /* Fonte geral da página */
            color: #333; /* Cor do texto */
            margin: 0;
            padding: 0;
        }

        h1 {
            text-align: center; /* Centraliza o título principal */
            margin-top: 20px;
            color: #007bff; /* Cor azul para o título */
        }

        .container {
            background: #fff; /* Fundo branco para o container */
            border-radius: 8px; /* Bordas arredondadas */
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1); /* Sombra leve */
            padding: 20px;
            max-width: 600px; /* Largura máxima do container */
            margin: 20px auto; /* Centraliza o container na página */
        }

        h2 {
            color: #007bff; /* Cor azul para o subtítulo */
            margin-bottom: 20px;
            text-align: center;
        }

        .form-group label {
            font-weight: bold; /* Deixa o texto do rótulo em negrito */
            display: block;
            margin-bottom: 5px;
        }

        .form-control {
            width: 100%; /* Faz os campos ocuparem 100% da largura disponível */
            padding: 10px; /* Espaçamento interno dos campos */
            margin-bottom: 15px; /* Espaçamento inferior dos campos */
            border: 1px solid #ddd; /* Borda dos campos */
            border-radius: 4px; /* Bordas arredondadas dos campos */
            box-sizing: border-box; /* Inclui o padding e a border na largura e altura dos elementos */
        }

        .btn {
            padding: 10px 20px; /* Espaçamento interno dos botões */
            border-radius: 4px; /* Bordas arredondadas dos botões */
            text-decoration: none; /* Remove a decoração de texto dos links */
        }

        .btn-primary {
            background-color: #007bff; /* Cor de fundo azul */
            border: none; /* Remove a borda */
            color: #fff; /* Cor do texto branca */
            cursor: pointer; /* Muda o cursor para indicar que é clicável */
            transition: background-color 0.3s ease; /* Animação de transição para a mudança de cor */
        }

        .btn-primary:hover {
            background-color: #0056b3; /* Cor de fundo azul escuro ao passar o mouse */
        }
    </style>
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
    
    <%@include file="/WEB-INF/jspf/html-body-libs.jspf"%> <!-- Inclui arquivos de scripts no final do corpo da página -->
</body>
</html>
