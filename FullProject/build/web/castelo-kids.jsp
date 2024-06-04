<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Castelo Kids</title>
    <%@include file="/WEB-INF/jspf/html-head-libs.jspf"%>
         <style>
        body {
            font-family: Arial, sans-serif; /* Mudança na fonte */
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
            font-size: 36px; /* Tamanho da fonte do título */
            color: #800080; /* Cor do título */
        }

        h2 {
            font-size: 24px; /* Tamanho da fonte do subtítulo */
            color: #800080; /* Cor do subtítulo */
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
        <h1>Castelo Kids</h1>
        <p>O Castelo Kids é uma atração encantadora para as crianças, com escorregadores, labirintos e diversão garantida.</p>
        <p>Deixe as crianças explorarem e se divertirem no Castelo Kids!</p>
        <img src="castelo-kids.png" alt="Castelo Kids" class="img-fluid my-4" style="border-radius: 15px; border: 2px solid #ccc;">
        <h2>Informações Importantes</h2>
        <ul>
            <li>Idade Recomendada: 3 a 10 anos</li>
            <li>Horário de funcionamento: das 10h às 17h</li>
            <li>Ingresso: Gratuito para crianças acompanhadas de adultos pagantes</li>
        </ul>
    </div>
    <div class="container my-5">
        <p>Divirta-se no emocionante "Castelo Kids" do parque!</p>

        <form action="ControleFilaServlet" method="post">
            <input type="hidden" name="action" value="medirTempoEspera">
            <button type="submit" class="btn btn-primary">Irei Esperar na Fila</button>
        </form>
    </div>
    <%@include file="/WEB-INF/jspf/html-body-libs.jspf"%>
</body>
</html>
