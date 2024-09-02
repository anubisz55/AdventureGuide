<%-- 
    Document   : pupa-pula-gigante
    Created on : 14 de mai. de 2024, 15:33:20
    Author     : Fatec
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Pula Pula Gigante</title>
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
        <h1>Pula Pula Gigante</h1>
        <p>O Pula Pula Gigante é uma atração cheia de energia e diversão, com camas elásticas gigantes para saltos incríveis.</p>
        <p>Divirta-se pulando alto e se divertindo no Pula Pula Gigante!</p>
        <img src="pula-pula-gigante.png" alt="Pula-Pula Gigante" class="img-fluid my-4" style="border-radius: 15px; border: 2px solid #ccc;">
        <h2>Informações Importantes</h2>
        <ul>
            <li>Idade Recomendada: 5 a 14 anos</li>
            <li>Horário de funcionamento: das 10h às 18h</li>
            
        </ul>
    </div>
    <div class="container my-5">
        <p>Divirta-se no emocionante Pula-Pula Gigante do parque!</p>

        <form action="ControleFilaServlet" method="post">
            <input type="hidden" name="action" value="medirTempoEspera">
            <button type="submit" class="btn btn-primary">Ver Tempo de Espera</button>
        </form>
    </div>

    <%@include file="/WEB-INF/jspf/html-body-libs.jspf"%>
</body>
</html>
