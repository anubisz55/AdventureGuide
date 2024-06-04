<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Roda Gigante</title>
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
        <h1>Roda Gigante</h1>
        <p>A Roda Gigante � uma das atra��es mais populares do parque, proporcionando uma vista panor�mica incr�vel.</p>
        <p>Cada cabine pode acomodar at� 4 pessoas e oferece uma experi�ncia emocionante e relaxante ao mesmo tempo.</p>
        <img src="roda-gigante.png" alt="Roda Gigante" class="img-fluid my-4" style="border-radius: 15px; border: 2px solid #ccc;">

        <h2>Informa��es Importantes</h2>
        <ul>
            <li>Altura m�nima permitida: 1,20 metros</li>
            <li>Dura��o do passeio: aproximadamente 10 minutos</li>
            <li>Hor�rio de funcionamento: das 10h �s 18h</li>
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