<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Eventos e Shows</title>
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
        <h1>Eventos e Shows</h1>
        <p>O Espa�o de Eventos e Shows � um local vers�til e emocionante, onde acontecem apresenta��es, shows e atividades especiais.</p>
        <p>Fique atento � programa��o para n�o perder nenhuma das atra��es imperd�veis!</p>
        <img src="img/eventos-shows.jpg" alt="Eventos e Shows" class="img-fluid my-4">
        <h2>Informa��es Importantes</h2>
        <ul>
            <li>Capacidade: 1000 pessoas</li>
            <li>Hor�rio de funcionamento: Varia de acordo com a programa��o</li>
            <li>Horario de Funcionamento: das 10hrs as 20hrs</li>
        </ul>
    </div>


    <%@include file="/WEB-INF/jspf/html-body-libs.jspf"%>
</body>
</html>