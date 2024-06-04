<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Restaurante</title>
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
        <h1>Restaurante</h1>
        <p>O Restaurante do parque oferece uma experi�ncia gastron�mica completa, com pratos deliciosos e ambiente agrad�vel.</p>
        <p>Desfrute de uma refei��o saborosa durante sua visita e recarregue as energias para aproveitar ainda mais o parque.</p>
        <img src="restaurante_1.png" alt="Restaurante" class="img-fluid my-4" style="border-radius: 15px; border: 2px solid #ccc;">
        <h2>Informa��es Importantes</h2>
        <ul>
            <li>Card�pio variado com op��es de pratos t�picos e internacionais</li>
            <li>Servi�o de buffet e � la carte dispon�veis</li>
            <li>Pre�os a partir de R$ 30,00 por pessoa</li>
            <li>Hor�rio de funcionamento: das 12h �s 20h</li>
        </ul>
    </div>

    <%@include file="/WEB-INF/jspf/html-body-libs.jspf"%>
</body>
</html>