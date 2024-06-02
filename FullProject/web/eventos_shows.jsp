<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Eventos e Shows</title>
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
        <h1>Eventos e Shows</h1>
        <p>O Espaço de Eventos e Shows é um local versátil e emocionante, onde acontecem apresentações, shows e atividades especiais.</p>
        <p>Fique atento à programação para não perder nenhuma das atrações imperdíveis!</p>
        <img src="img/eventos-shows.jpg" alt="Eventos e Shows" class="img-fluid my-4">
        <h2>Informações Importantes</h2>
        <ul>
            <li>Capacidade: 1000 pessoas</li>
            <li>Horário de funcionamento: Varia de acordo com a programação</li>
            <li>Horario de Funcionamento: das 10hrs as 20hrs</li>
        </ul>
    </div>


    <%@include file="/WEB-INF/jspf/html-body-libs.jspf"%>
</body>
</html>