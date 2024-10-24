<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Banheiros</title>
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
    <%@include file="/WEB-INF/jspf/navbar.jspf"%> <!-- Inclui o arquivo navbar.jspf -->

    <div class="container my-5"> <!-- Define uma div container com margem superior e inferior -->
        <h1>Banheiros (WC 1 - Pr�ximo a Roda Gigante)</h1> <!-- T�tulo principal da se��o -->
        <p>O parque conta com banheiros limpos e bem conservados, localizados em pontos estrat�gicos para sua conveni�ncia.</p> <!-- Par�grafo de introdu��o -->
        <p>Fique � vontade para utilizar os banheiros sempre que necess�rio durante sua visita.</p> <!-- Par�grafo informativo -->
        <img src="banheiro1.png" alt="Banheiro 1" class="img-fluid my-4" style="border-radius: 15px; border: 2px solid #ccc;"> <!-- Imagem do banheiro com estilo aplicado -->
        <h2>Informa��es Importantes</h2> <!-- T�tulo secund�rio -->
        <ul> <!-- Inicia uma lista n�o ordenada -->
            <li>Banheiros masculinos e femininos dispon�veis</li> <!-- Item da lista -->
            <li>Banheiros adaptados para pessoas com defici�ncia</li> <!-- Item da lista -->
            <li>Limpeza regular durante todo o hor�rio de funcionamento</li> <!-- Item da lista -->
        </ul> <!-- Fim da lista -->
    </div>

    <%@include file="/WEB-INF/jspf/html-body-libs.jspf"%> <!-- Inclui o arquivo html-body-libs.jspf -->
</body>

</html>
