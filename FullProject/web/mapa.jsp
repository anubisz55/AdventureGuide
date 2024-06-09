<%-- 
    Document   : mapa
    Created on : 9 de jun. de 2024, 12:31:39
    Author     : ariad
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Mapa</title>
    <style>
        /* Estilo para ajustar o tamanho da imagem */
        img {
            max-width: 100%;
            height: auto;
            display: block;
            margin: 0 auto;
        }
        /* Estilo para o botão Voltar */
        .btn-voltar {
            display: block;
            width: 100px;
            margin: 20px auto;
            padding: 10px;
            text-align: center;
            background-color: #007bff;
            color: #fff;
            text-decoration: none;
            border-radius: 5px;
        }
        .btn-voltar:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
    <!-- Inclua sua imagem aqui -->
    <img src="mapa.png" alt="Mapa">

    <!-- Botão Voltar -->
    <a href="index.jsp" class="btn-voltar">Voltar</a>
</body>
</html>

