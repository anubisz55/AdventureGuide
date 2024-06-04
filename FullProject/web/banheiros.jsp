<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Banheiros</title>
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
        <h1>Banheiros (WC 1 - Próximo a Roda Gigante)</h1>
        <p>O parque conta com banheiros limpos e bem conservados, localizados em pontos estratégicos para sua conveniência.</p>
        <p>Fique à vontade para utilizar os banheiros sempre que necessário durante sua visita.</p>
        <img src="banheiro1.png" alt="Banheiro 1" class="img-fluid my-4" style="border-radius: 15px; border: 2px solid #ccc;">
        <h2>Informações Importantes</h2>
        <ul>
            <li>Banheiros masculinos e femininos disponíveis</li>
            <li>Banheiros adaptados para pessoas com deficiência</li>
            <li>Limpeza regular durante todo o horário de funcionamento</li>
        </ul>
    </div>

    <%@include file="/WEB-INF/jspf/html-body-libs.jspf"%>
</body>
</html>
