<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Bate-Bate</title>
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
    <%@include file="/WEB-INF/jspf/navbar.jspf"%> <!-- Inclui o arquivo navbar.jspf para exibir a barra de navega��o -->

    <div class="container my-5"> <!-- Define uma div container com margem superior e inferior de 5 unidades -->
        <h1>Bate-Bate</h1> <!-- T�tulo principal da se��o, descrevendo a atra��o Bate-Bate -->
        <p>Prepare-se para uma experi�ncia de impacto com o Bate-Bate. Uma atra��o emocionante que garante risadas e adrenalina para todas as idades.</p> <!-- Par�grafo informativo sobre a atra��o Bate-Bate -->
        <p>Bata e divirta-se em um passeio cheio de emo��o e alegria. O Bate-Bate � uma experi�ncia imperd�vel no parque!</p> <!-- Par�grafo incentivando os visitantes a experimentarem a atra��o Bate-Bate -->
        <img src="bate-bate.png" alt="Bate-Bate" class="img-fluid my-4" style="border-radius: 15px; border: 2px solid #ccc;"> <!-- Imagem da atra��o Bate-Bate com estilo aplicado -->
        <h2>Informa��es Importantes</h2> <!-- T�tulo secund�rio para se��o de informa��es importantes -->
        <ul> <!-- Inicia uma lista n�o ordenada para listar as informa��es importantes -->
            <li>Capacidade: 2 pessoas por bate</li> <!-- Item da lista indicando a capacidade do Bate-Bate -->
            <li>Restri��es: Altura m�nima de 1 metro</li> <!-- Item da lista indicando as restri��es de altura para participa��o no Bate-Bate -->
            <li>Emocionante e divertida para toda a fam�lia</li> <!-- Item da lista indicando que a atra��o � emocionante e divertida para toda a fam�lia -->
        </ul> <!-- Fim da lista -->
    </div> <!-- Fim da primeira div container -->

    <div class="container my-5"> <!-- Define outra div container com margem superior e inferior de 5 unidades -->
        <p>Divirta-se no emocionante Bate-Bate do parque!</p> <!-- Par�grafo convidando os visitantes a se divertirem na atra��o Bate-Bate -->

        <form action="ControleFilaServlet" method="post"> <!-- Formul�rio para medir o tempo de espera na fila -->
            <input type="hidden" name="action" value="medirTempoEspera"> <!-- Campo oculto para definir a a��o do formul�rio -->
            <button type="submit" class="btn btn-primary">Ver Tempo de Espera</button> <!-- Bot�o para enviar o formul�rio e indicar o tempo de espera -->
        </form>
    </div> <!-- Fim da segunda div container -->

    <%@include file="/WEB-INF/jspf/html-body-libs.jspf"%> <!-- Inclui o arquivo html-body-libs.jspf para bibliotecas JavaScript e CSS no final do corpo da p�gina -->
</body>

</html>