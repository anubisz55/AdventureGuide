<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Adventure Guide!</title>

    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

    <%@include file="WEB-INF/jspf/html-head-libs.jspf"%>

    <style type="text/css">
        body {
            background-color: #f0f4f5;
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
    
    
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/5.1.3/css/bootstrap.min.css" rel="stylesheet">
    <style>
        html, body {
            height: 96%;
            margin: 0;
            padding: 0;
        }
        .carousel,
        .carousel-inner,
        .carousel-item,
        .carousel-item img {
            height: 100%;
        }
        .carousel-item img {
            object-fit: cover;
        }
        .carousel-caption {
            background: rgba(0, 0, 0, 0.5);
            padding: 10px;
            border-radius: 5px;
            text-align: center;
        }
        .carousel-caption h5,
        .carousel-caption p {
            margin: 0;
            line-height: 1.5;
        }
    </style>
    
    
     <link href="https://stackpath.bootstrapcdn.com/bootstrap/5.1.3/css/bootstrap.min.css" rel="stylesheet">
    <style>
        .list-group-item {
            border: 1px solid #ddd;
            border-radius: 15px;
            margin-bottom: 10px;
            transition: background-color 0.3s, color 0.3s;
        }
        .list-group-item:hover {
            background-color: #e3f2fd;
            color: #000;
        }
        .scrollspy-example {
            border: 1px solid #ddd;
            border-radius: 15px;
            padding: 20px;
            background-color: #f8f9fa;
        }
    </style>

</head>




<body>
    <%@include file="WEB-INF/jspf/navbar.jspf"%>

      
<div id="carouselExampleCaptions" class="carousel slide" data-bs-ride="carousel">
    <div class="carousel-indicators">
        <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
        <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="1" aria-label="Slide 2"></button>
        <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="2" aria-label="Slide 3"></button>
    </div>
    <div class="carousel-inner">
        <div class="carousel-item active">
            <img src="roda-gigante.png" class="d-block w-100" alt="Roda Gigante">
            <div class="carousel-caption d-none d-md-block">
                <h5>Roda Gigante</h5>
                <p>Vistas deslumbrantes a cada volta!</p>
            </div>
        </div>
        <div class="carousel-item">
            <img src="restaurante_1.png" class="d-block w-100" alt="Restaurante e Lanchonete">
            <div class="carousel-caption d-none d-md-block">
                <h5>Restaurante e Lanchonete</h5>
                <p>Sabores incríveis que você não pode perder!</p>
            </div>
        </div>
        <div class="carousel-item">
            <img src="montanha-russa.png" class="d-block w-100" alt="Montanha Russa">
            <div class="carousel-caption d-none d-md-block">
                <h5>Montanha Russa</h5>
                <p>A emoção mais intensa do parque espera por você!</p>
            </div>
        </div>
    </div>
    <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="prev">
        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
        <span class="visually-hidden">Previous</span>
    </button>
    <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="next">
        <span class="carousel-control-next-icon" aria-hidden="true"></span>
        <span class="visually-hidden">Next</span>
    </button>
</div>

<script src="https://stackpath.bootstrapcdn.com/bootstrap/5.1.3/js/bootstrap.bundle.min.js"></script>
    
    

<div class="container mt-4">
    <div class="row">
        <div class="col-4">
            <div id="list-example" class="list-group">
                <a class="list-group-item list-group-item-action" href="#list-item-1">Sobre o Adventure Guide</a>
                <a class="list-group-item list-group-item-action" href="#list-item-2">Contato</a>
                <a class="list-group-item list-group-item-action" href="#list-item-3">Sobre o Projeto</a>
            </div>
        </div>
        <div class="col-8">
            <div data-bs-spy="scroll" data-bs-target="#list-example" data-bs-smooth-scroll="true" class="scrollspy-example" tabindex="0">
                <h4 id="list-item-1">Sobre o Adventure Guide</h4>
                <p>Bem-vindo ao Adventure Guide, onde a magia e a diversão de um parque de diversões ganham vida como nunca antes! Explore um mundo de aventuras emocionantes, atrações empolgantes e momentos inesquecíveis para toda a família.</p>
                <p>Nosso sistema de gerenciamento de filas fornece estimativas precisas do tempo de espera para cada atração. Planeje seu dia com antecedência, evitando surpresas desagradáveis e garantindo que aproveite ao máximo cada minuto de sua visita.</p>
                <p>O Adventure Guide é seu guia completo para navegar pelo parque. Localize facilmente atrações, restaurantes, lojas e muito mais, com mapa e informações detalhadas.</p>
                <p>Após sua visita, compartilhe sua experiência conosco. Avalie as atrações, serviços e desempenho da equipe do parque. Sua opinião é valiosa e nos ajuda a melhorar constantemente.</p>
                <h4 id="list-item-2">Contato</h4>
                <p>Telefone para contato: (13)98765-1254</p>
                <p>E-mail para contato: adventuteguide@gmail.com</p>
                <h4 id="list-item-3">Sobre o Projeto</h4>
                <p>Projeto Semestral de Analise e Desenvolvimento de Sistemas na Fatec de Praia Grande!</p>
                <p>Desenvolvido por: Ariadne Saraiva dos Santos e Nubia Abreu de Oliveira</p>
            </div>
        </div>
    </div>
</div>

<script src="https://stackpath.bootstrapcdn.com/bootstrap/5.1.3/js/bootstrap.bundle.min.js"></script>
   
<div>

<%@include file="WEB-INF/jspf/html-body-libs.jspf"%>
</div>

</body>
</html>
