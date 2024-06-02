<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Mini Shop</title>
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
        <h1>Mini Shop</h1>
        <p>A Mini Shop é um espaço compacto e conveniente para compras rápidas no parque.</p>
        <p>Você encontrará uma variedade de snacks, bebidas, souvenirs e itens essenciais para tornar sua visita ainda melhor.</p>
	<p>Você também encontrará uma variedade de lembrancinhas, itens decorativos, brinquedos e roupas decorativas do parque.</p>
	<p>Torne sua experiência uma memória significativa, aproveite e leve uma lembrança deste momento inesquecível!</p>
        <img src="img/mini-shop.jpg" alt="Mini Shop" class="img-fluid my-4">
        <h2>Informações Importantes</h2>
        <ul>
            <li>Horário de funcionamento: das 10h às 20h</li>
            <li>Formas de pagamento aceitas: Dinheiro, Cartão de Crédito e Débito</li>
            <li>Produtos com preços acessíveis</li>
        </ul>
    </div>


    <%@include file="/WEB-INF/jspf/html-body-libs.jspf"%>
</body>
</html>