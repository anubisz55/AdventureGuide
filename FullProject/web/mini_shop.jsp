<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Mini Shop</title>
    <%@include file="/WEB-INF/jspf/html-head-libs.jspf"%>
    <style>
        body {
            font-family: Arial, sans-serif; /* Mudan�a na fonte */
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
            font-size: 36px; /* Tamanho da fonte do t�tulo */
            color: #0099ff; /* Cor do t�tulo */
        }

        h2 {
            font-size: 24px; /* Tamanho da fonte do subt�tulo */
            color: #0099ff; /* Cor do subt�tulo */
        }

        p {
            font-size: 18px; /* Tamanho da fonte dos par�grafos */
            line-height: 1.6;
        }

        ul {
            list-style-type: none; /* Remove os marcadores de lista */
            padding-left: 0; /* Remove o recuo padr�o */
        }

        li {
            font-size: 16px; /* Tamanho da fonte dos itens da lista */
            margin-bottom: 10px; /* Espa�amento entre os itens da lista */
        }

        img {
            max-width: 100%; /* Garante que a imagem n�o ultrapasse o cont�iner */
            height: auto; /* Mant�m a propor��o da imagem */
            margin-bottom: 20px; /* Espa�amento inferior da imagem */
        }
    </style>
</head>
<body>
    <%@include file="/WEB-INF/jspf/navbar.jspf"%>

    <div class="container my-5">
        <h1>Mini Shop</h1>
        <p>A Mini Shop � um espa�o compacto e conveniente para compras r�pidas no parque.</p>
        <p>Voc� encontrar� uma variedade de snacks, bebidas, souvenirs e itens essenciais para tornar sua visita ainda melhor.</p>
	<p>Voc� tamb�m encontrar� uma variedade de lembrancinhas, itens decorativos, brinquedos e roupas decorativas do parque.</p>
	<p>Torne sua experi�ncia uma mem�ria significativa, aproveite e leve uma lembran�a deste momento inesquec�vel!</p>
        <img src="img/mini-shop.jpg" alt="Mini Shop" class="img-fluid my-4">
        <h2>Informa��es Importantes</h2>
        <ul>
            <li>Hor�rio de funcionamento: das 10h �s 20h</li>
            <li>Formas de pagamento aceitas: Dinheiro, Cart�o de Cr�dito e D�bito</li>
            <li>Produtos com pre�os acess�veis</li>
        </ul>
    </div>


    <%@include file="/WEB-INF/jspf/html-body-libs.jspf"%>
</body>
</html>