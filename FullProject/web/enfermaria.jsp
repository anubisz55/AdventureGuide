<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Enfermaria</title>
    <%@include file="/WEB-INF/jspf/html-head-libs.jspf"%>
    <style>
        body {
            font-family: Arial, sans-serif; /* Mudança na fonte */
            background-color: #a7d1e8; /* Cor de fundo */
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
            color: #0099ff; /* Cor do título */
        }

        h2 {
            font-size: 24px; /* Tamanho da fonte do subtítulo */
            color: #0099ff; /* Cor do subtítulo */
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
        <h1>Enfermaria</h1>
        <p>A Enfermaria do parque é um local dedicado ao atendimento de primeiros socorros e cuidados médicos para visitantes que necessitam de assistência.</p>
        <p>Nossa equipe de profissionais está preparada para oferecer suporte em caso de emergências ou necessidades de saúde durante sua visita.</p>
        <img src="img/enfermaria.jpg" alt="Enfermaria" class="img-fluid my-4">
        <h2>Informações Importantes</h2>
        <ul>
            <li>Equipe médica disponível durante todo o horário de funcionamento</li>
            <li>Atendimento de primeiros socorros e cuidados básicos de saúde</li>
            <li>Localização central para fácil acesso em caso de necessidade</li>
        </ul>
    </div>

    <%@include file="/WEB-INF/jspf/html-body-libs.jspf"%>
</body>
</html>