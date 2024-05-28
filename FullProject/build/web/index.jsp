<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Adventure Guide!</title>

    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

    <%@include file="WEB-INF/jspf/html-head-libs.jspf"%>

    <style type="text/css">
        body {
            background-image: url('Adventure guide.png');
            background-size: 80% 80%; /* Redimensiona a imagem para cobrir todo o elemento pai */
            background-repeat: no-repeat; /* Evita que a imagem seja repetida */
            height: 90vh;
            background-position: center center; /* Centraliza a imagem */
        }

        .container {
            max-width: 800px;
            margin: 0 auto;
            padding: 20px;
            text-align: center;
        }

        h3 {
            text-align: center;
        }

        p {
            text-align: justify;
            line-height: 1.6;
            margin-bottom: 20px;
        }
    </style>

</head>
<body>
<%@include file="WEB-INF/jspf/navbar.jspf"%>

<div class="container">
    <h3>Sobre nós!</h3>
    <p>Bem-vindo ao Adventure Guide, o seu portal para explorar a magia e a diversão de um parque de diversões como nunca antes! Aqui, mergulhe em um mundo de aventuras emocionantes, atrações empolgantes e momentos inesquecíveis para toda a família.</p>
    <p>No Adventure Guide, estamos empenhados em proporcionar a você uma experiência única e emocionante, onde a diversão e a alegria se encontram em cada esquina. Navegue pelo nosso site para descobrir as atrações mais emocionantes, os melhores lugares para comer, as atividades imperdíveis e muito mais.</p>
    <p>Nosso sistema de gerenciamento de filas permite que você saiba exatamente quanto tempo de espera você pode esperar para cada atração. Basta consultar o Adventure Guide antes de se dirigir a uma atração e você terá uma estimativa precisa do tempo de espera. Dessa forma, você pode planejar seu dia com antecedência, evitando surpresas desagradáveis e garantindo que aproveite ao máximo cada minuto de sua visita.</p>
    <p>Além disso, o Adventure Guide é seu guia completo para navegar pelo parque. Você pode facilmente localizar as atrações, restaurantes, lojas e muito mais, com mapas interativos e informações detalhadas sobre cada um desses locais. Nunca mais se perderá ou ficará indeciso sobre o que fazer a seguir.</p>
    <p>E não pare por aí! Após sua visita, incentivamos você a compartilhar sua experiência conosco. Nosso sistema de feedback permite que você avalie as atrações, serviços e até mesmo o desempenho da equipe do parque. Sua opinião é valiosa para nós, pois nos ajuda a melhorar constantemente e garantir que cada visita ao Adventure Guide seja ainda mais incrível do que a anterior.</p>
    <p>Junte-se a nós nesta jornada de diversão sem esperas. Com o Adventure Guide, você terá acesso a todas as informações e ferramentas necessárias para aproveitar ao máximo sua visita ao parque de diversões. Prepare-se para se divertir como nunca antes!</p>
</div>

<%@include file="WEB-INF/jspf/html-body-libs.jspf"%>

</body>
</html>
