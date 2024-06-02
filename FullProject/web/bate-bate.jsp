<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Bate-Bate</title>
    <%@include file="/WEB-INF/jspf/html-head-libs.jspf"%>
        <style>
        body {
            font-family: Arial, sans-serif; /* Mudan�a na fonte */
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
            font-size: 36px; /* Tamanho da fonte do t�tulo */
            color: #800080; /* Cor do t�tulo */
        }

        h2 {
            font-size: 24px; /* Tamanho da fonte do subt�tulo */
            color: #800080; /* Cor do subt�tulo */
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
        <h1>Bate-Bate</h1>
        <p>Prepare-se para uma experi�ncia de impacto com o Bate-Bate Uma atra��o emocionante que garante risadas e adrenalina para todas as idades.</p>
        <p>Bate e divirta-se em um passeio cheio de emo��o e alegria. O Bate-Bate � uma experi�ncia imperd�vel no parque!</p>
        <img src="img/bate-bate.jpg" alt="Bate-Bate" class="img-fluid my-4">
        <h2>Informa��es Importantes</h2>
        <ul>
            <li>Capacidade: 2 pessoas por bate</li>
            <li>Restri��es: Altura m�nima de 1 metro</li>
            <li>Emocionante e divertida para toda a fam�lia</li>
        </ul>
    </div>
    <div class="container my-5">
        <p>Divirta-se no emocionante Bate-Bate do parque!</p>

        <form action="ControleFilaServlet" method="post">
            <input type="hidden" name="action" value="medirTempoEspera">
            <button type="submit" class="btn btn-primary">Irei Esperar na Fila</button>
        </form>
    </div>
    <%@include file="/WEB-INF/jspf/html-body-libs.jspf"%>
</body>
</html>