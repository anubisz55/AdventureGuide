<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Roda Gigante</title>
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
        <h1>Roda Gigante</h1>
        <p>A Roda Gigante é uma das atrações mais populares do parque, proporcionando uma vista panorâmica incrível.</p>
        <p>Cada cabine pode acomodar até 4 pessoas e oferece uma experiência emocionante e relaxante ao mesmo tempo.</p>
        <img src="roda-gigante.png" alt="Roda Gigante" class="img-fluid my-4" style="border-radius: 15px; border: 2px solid #ccc;">

        <h2>Informações Importantes</h2>
        <ul>
            <li>Altura mínima permitida: 1,20 metros</li>
            <li>Duração do passeio: aproximadamente 10 minutos</li>
            <li>Horário de funcionamento: das 10h às 18h</li>
            <li>Ingresso: R$ 20,00 por pessoa</li>
        </ul>
    </div>
    <div class="container my-5">
        <p>Divirta-se na emocionante Roda Gigante do parque!</p>

        <form action="ControleFilaServlet" method="post">
            <input type="hidden" name="action" value="medirTempoEspera">
            <button type="submit" class="btn btn-primary">Irei Esperar na Fila</button>
        </form>
    </div>
    
    
    <form action="">
        
        
    </form>
   
         

    <%@include file="/WEB-INF/jspf/html-body-libs.jspf"%>
</body>
</html>