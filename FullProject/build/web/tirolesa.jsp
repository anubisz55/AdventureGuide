<%-- 
    Document   : tirolesa
    Created on : 14 de mai. de 2024, 14:59:30
    Author     : Fatec
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Tirolesa</title>
    <%@include file="/WEB-INF/jspf/html-head-libs.jspf"%>
        <style>
        body {
            font-family: Arial, sans-serif; /* Mudança na fonte */
            background-color: #b79adb; /* Cor de fundo */
            color: #333; /* Cor do texto */
        }

        .container {
            max-width: 800px;
            margin: 0 auto;
            padding: 20px;
            text-align: center;
        }

        h1 {
            font-size: 36px; /* Tamanho da fonte do título */
            color: #800080; /* Cor do título */
        }

        h2 {
            font-size: 24px; /* Tamanho da fonte do subtítulo */
            color: #800080; /* Cor do subtítulo */
        }

        p {
            font-size: 18px; /* Tamanho da fonte dos parágrafos */
            line-height: 1.6;
        }

        ul {
            list-style-type: none; /* Remove os marcadores de lista */
            padding-left: 0; /* Remove o recuo padrão */
        }

        li {
            font-size: 16px; /* Tamanho da fonte dos itens da lista */
            margin-bottom: 10px; /* Espaçamento entre os itens da lista */
        }

        img {
            max-width: 100%; /* Garante que a imagem não ultrapasse o contêiner */
            height: auto; /* Mantém a proporção da imagem */
            margin-bottom: 20px; /* Espaçamento inferior da imagem */
        }
    </style>
</head>
<body>
    <%@include file="/WEB-INF/jspf/navbar.jspf"%>

    <div class="container my-5">
        <h1>Tirolesa</h1>
        <p>A Tirolesa é uma das atrações mais emocionantes do parque, proporcionando uma experiência única de voo sobre a paisagem.</p>
        <p>Você irá deslizar por cabos de aço a uma altura de 50 metros, com uma vista deslumbrante do parque.</p>
        <img src="img/tirolesa.jpg" alt="Tirolesa" class="img-fluid my-4">
        <h2>Informações Importantes</h2>
        <ul>
            <li>Altura mínima permitida: 1,40 metros</li>
            <li>Peso máximo permitido: 120 kg</li>
            <li>Duração do passeio: aproximadamente 2 minutos</li>
            <li>Horário de funcionamento: das 11h às 17h</li>
            
        </ul>
    </div>

    <%@include file="/WEB-INF/jspf/html-body-libs.jspf"%>
</body>
</html>