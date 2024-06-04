<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Entrada e Estacionamento</title>
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
        <h1>Entrada e Estacionamento</h1>
        <p>A entrada do parque � bem sinalizada e o estacionamento � amplo e seguro, com vagas suficientes para todos os visitantes.</p>
        <p>Aproveite para deixar seu ve�culo em um local conveniente e seguro antes de entrar no parque.</p>
        <img src="ent_saida_esta.png" alt="Entrada/Sa�da e Estacionamento" class="img-fluid my-4" style="border-radius: 15px; border: 2px solid #ccc;">
        <h2>Informa��es Importantes</h2>
        <ul>
            <li>Estacionamento gratuito para visitantes</li>
            <li>Vagas para carros, motos e bicicletas</li>
            <li>Seguran�a 24 horas no estacionamento</li>
        </ul>
    </div>


    <%@include file="/WEB-INF/jspf/html-body-libs.jspf"%>
</body>
</html>
