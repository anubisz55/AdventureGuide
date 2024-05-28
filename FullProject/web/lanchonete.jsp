<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Lanchonete</title>
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
        <h1>Lanchonete</h1>
        <p>A Lanchonete do parque oferece uma variedade de opções saborosas para saciar sua fome durante sua visita.</p>
        <p>Encontre desde lanches rápidos até refeições completas, tudo com qualidade e preços acessíveis.</p>
        <img src="img/lanchonete.jpg" alt="Lanchonete" class="img-fluid my-4">
        <h2>Informações Importantes</h2>
        <ul>
            <li>Cardápio variado com opções para todos os gostos</li>
            <li>Refeições, sanduíches, saladas, bebidas e sobremesas</li>
            <li>Preços a partir de R$ 10,00</li>
            <li>Horário de funcionamento: das 11h às 19h</li>
        </ul>
    </div>

    <%@include file="/WEB-INF/jspf/html-body-libs.jspf"%>
</body>
</html>