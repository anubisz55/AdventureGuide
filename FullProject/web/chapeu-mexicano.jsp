<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Chap�u Mexicano</title>
    <%@include file="/WEB-INF/jspf/html-head-libs.jspf"%>
      <style>
        body {
            font-family: Arial, sans-serif; /* Mudan�a na fonte */
            background-color: #D3D3FD; /* Cor de fundo */
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
        <h1>Chap�u Mexicano</h1>
        <p>O Chap�u Mexicano � uma atra��o emocionante que proporciona giros e divers�o para todas as idades.</p>
        <p>Prepare-se para dar voltas e se divertir no Chap�u Mexicano!</p>
        <img src="chapeu-mexicano.png" alt="Chap�u Mexicano" class="img-fluid my-4" style="border-radius: 15px; border: 2px solid #ccc;">
        <h2>Informa��es Importantes</h2>
        <ul>
            <li>Velocidade: Vari�vel, dependendo do operador</li>
            <li>Restri��es: Altura m�nima de 1,20 metros</li>
            <li>Hor�rio de funcionamento: das 12h �s 18h</li>
            <li>Ingresso: R$ 10,00 por pessoa</li>
        </ul>
    </div>
    <div class="container my-5">
        <p>Divirta-se no emocionante "Chap�u Mexicano" do parque!</p>

        <form action="ControleFilaServlet" method="post">
            <input type="hidden" name="action" value="medirTempoEspera">
            <button type="submit" class="btn btn-primary">Irei Esperar na Fila</button>
        </form>
    </div>

    <%@include file="/WEB-INF/jspf/html-body-libs.jspf"%>
</body>
</html>