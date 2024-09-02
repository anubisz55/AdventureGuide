<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Bate-Bate</title>
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
    <%@include file="/WEB-INF/jspf/navbar.jspf"%> <!-- Inclui o arquivo navbar.jspf para exibir a barra de navegação -->

    <div class="container my-5"> <!-- Define uma div container com margem superior e inferior de 5 unidades -->
        <h1>Bate-Bate</h1> <!-- Título principal da seção, descrevendo a atração Bate-Bate -->
        <p>Prepare-se para uma experiência de impacto com o Bate-Bate. Uma atração emocionante que garante risadas e adrenalina para todas as idades.</p> <!-- Parágrafo informativo sobre a atração Bate-Bate -->
        <p>Bata e divirta-se em um passeio cheio de emoção e alegria. O Bate-Bate é uma experiência imperdível no parque!</p> <!-- Parágrafo incentivando os visitantes a experimentarem a atração Bate-Bate -->
        <img src="bate-bate.png" alt="Bate-Bate" class="img-fluid my-4" style="border-radius: 15px; border: 2px solid #ccc;"> <!-- Imagem da atração Bate-Bate com estilo aplicado -->
        <h2>Informações Importantes</h2> <!-- Título secundário para seção de informações importantes -->
        <ul> <!-- Inicia uma lista não ordenada para listar as informações importantes -->
            <li>Capacidade: 2 pessoas por bate</li> <!-- Item da lista indicando a capacidade do Bate-Bate -->
            <li>Restrições: Altura mínima de 1 metro</li> <!-- Item da lista indicando as restrições de altura para participação no Bate-Bate -->
            <li>Emocionante e divertida para toda a família</li> <!-- Item da lista indicando que a atração é emocionante e divertida para toda a família -->
        </ul> <!-- Fim da lista -->
    </div> <!-- Fim da primeira div container -->

    <div class="container my-5"> <!-- Define outra div container com margem superior e inferior de 5 unidades -->
        <p>Divirta-se no emocionante Bate-Bate do parque!</p> <!-- Parágrafo convidando os visitantes a se divertirem na atração Bate-Bate -->

        <form action="ControleFilaServlet" method="post"> <!-- Formulário para medir o tempo de espera na fila -->
            <input type="hidden" name="action" value="medirTempoEspera"> <!-- Campo oculto para definir a ação do formulário -->
            <button type="submit" class="btn btn-primary">Ver Tempo de Espera</button> <!-- Botão para enviar o formulário e indicar o tempo de espera -->
        </form>
    </div> <!-- Fim da segunda div container -->

    <%@include file="/WEB-INF/jspf/html-body-libs.jspf"%> <!-- Inclui o arquivo html-body-libs.jspf para bibliotecas JavaScript e CSS no final do corpo da página -->
</body>

</html>