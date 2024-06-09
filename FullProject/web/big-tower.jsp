<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Big Tower</title>
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
        <h1>Big Tower</h1> <!-- Título principal da seção, descrevendo a atração -->
        <p>A Big Tower é uma das atrações mais emocionantes do parque, proporcionando uma queda livre de tirar o fôlego.</p> <!-- Parágrafo informativo sobre a atração -->
        <p>Prepare-se para uma experiência de adrenalina e diversão na Big Tower, uma atração para os corajosos!</p> <!-- Parágrafo incentivando os visitantes a experimentarem a atração -->
        <img src="big-tower2.png" alt="Big Tower" class="img-fluid my-4" style="border-radius: 15px; border: 2px solid #ccc;"> <!-- Imagem da atração com estilo aplicado -->

        <h2>Informações Importantes</h2> <!-- Título secundário para seção de informações importantes -->
        <ul> <!-- Inicia uma lista não ordenada para listar as informações importantes -->
            <li>Altura da Torre: 80 metros</li> <!-- Item da lista indicando a altura da torre da atração -->
            <li>Velocidade da queda: 120 km/h</li> <!-- Item da lista indicando a velocidade da queda na atração -->
            <li>Restrições: Altura mínima de 1,40 metros</li> <!-- Item da lista indicando as restrições de altura para participação na atração -->
            <li>Horário de funcionamento: das 12h às 20h</li> <!-- Item da lista indicando o horário de funcionamento da atração -->
        </ul> <!-- Fim da lista -->
    </div> <!-- Fim da div container -->

    <div class="container my-5"> <!-- Define outra div container com margem superior e inferior de 5 unidades -->
        <p>Divirta-se no emocionante Big Tower do parque!</p> <!-- Parágrafo convidando os visitantes a se divertirem na atração -->

        <form action="ControleFilaServlet" method="post"> <!-- Formulário para medir o tempo de espera na fila -->
            <input type="hidden" name="action" value="medirTempoEspera"> <!-- Campo oculto para definir a ação do formulário -->
            <button type="submit" class="btn btn-primary">Irei Esperar na Fila</button> <!-- Botão para enviar o formulário e indicar que o visitante irá esperar na fila -->
        </form>
    </div> <!-- Fim da segunda div container -->

    <%@include file="/WEB-INF/jspf/html-body-libs.jspf"%> <!-- Inclui o arquivo html-body-libs.jspf para bibliotecas JavaScript e CSS no final do corpo da página -->
</body>

</html>

