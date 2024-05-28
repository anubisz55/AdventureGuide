<%-- 
    Document   : xicaras-malucas
    Created on : 14 de mai. de 2024, 15:38:07
    Author     : Fatec
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Xícaras Malucas</title>
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
        <h1>Xícaras Malucas</h1>
        <p>As Xícaras Malucas são uma atração clássica e divertida para toda a família, com xícaras coloridas que giram e dançam.</p>
        <p>Prepare-se para uma viagem maluca e emocionante nas Xícaras Malucas!</p>
        <img src="img/xicaras-malucas.jpg" alt="Xícaras Malucas" class="img-fluid my-4">
        <h2>Informações Importantes</h2>
        <ul>
            <li>Capacidade: Até 4 pessoas por xícara</li>
            <li>Duração do passeio: aproximadamente 5 minutos</li>
            <li>Horário de funcionamento: das 10h às 19h</li>
            
        </ul>
    </div>

    <%@include file="/WEB-INF/jspf/html-body-libs.jspf"%>
</body>
</html>
