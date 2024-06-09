<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Adventure Guide!</title>

    <!-- Define o tipo de conteúdo e a codificação da página -->
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

    <!-- Inclui um arquivo JSP fragmento para bibliotecas de cabeçalho HTML -->
    <%@include file="WEB-INF/jspf/html-head-libs.jspf"%>

    <!-- Estilos internos para a página -->
   <style type="text/css">
        body {
            background-color: #f0f4f5; /* Define a cor de fundo para o corpo da página */
            background-size: 80% 80%; /* Redimensiona a imagem de fundo para cobrir 80% do elemento pai */
            background-repeat: no-repeat; /* Evita que a imagem de fundo seja repetida */
            height: 90vh; /* Define a altura do corpo da página como 90% da altura da janela do navegador */
            background-position: center center; /* Centraliza a imagem de fundo */
        }

        .container {
            max-width: 800px; /* Define a largura máxima do contêiner como 800 pixels */
            margin: 0 auto; /* Centraliza o contêiner horizontalmente na página */
            padding: 20px; /* Adiciona preenchimento interno ao contêiner */
            text-align: center; /* Centraliza o conteúdo do contêiner */
        }

        h3 {
            text-align: center; /* Centraliza os títulos do nível H3 */
        }

        p {
            text-align: justify; /* Justifica o texto dos parágrafos */
            line-height: 1.6; /* Define a altura da linha para 1.6 vezes o tamanho da fonte */
            margin-bottom: 20px; /* Adiciona uma margem inferior de 20 pixels aos parágrafos */
        }
        
    </style>

    
    <!-- Link para o CSS do Bootstrap -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/5.1.3/css/bootstrap.min.css" rel="stylesheet">

    <!-- Estilos adicionais para o carrossel e layout da página -->
   <style>
        html, body {
            height: 96%; /* Define a altura de 96% para o html e body */
            margin: 0; /* Remove margens */
            padding: 0; /* Remove preenchimento */
        }
        .carousel,
        .carousel-inner,
        .carousel-item,
        .carousel-item img {
            height: 100%; /* Define a altura de 100% para os elementos relacionados ao carrossel */
        }
        .carousel-item img {
            object-fit: cover; /* Define o comportamento de ajuste da imagem para cobrir o espaço disponível */
        }
        .carousel-caption {
            background: rgba(0, 0, 0, 0.5); /* Define um fundo semi-transparente para a legenda do carrossel */
            padding: 10px; /* Adiciona preenchimento interno à legenda */
            border-radius: 5px; /* Adiciona bordas arredondadas à legenda */
            text-align: center; /* Centraliza o texto na legenda */
        }
        .carousel-caption h5,
        .carousel-caption p {
            margin: 0; /* Remove as margens dos títulos e parágrafos dentro da legenda */
            line-height: 1.5; /* Define a altura da linha para 1.5 */
        }
    </style>

    
    <!-- Link duplicado para o CSS do Bootstrap -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/5.1.3/css/bootstrap.min.css" rel="stylesheet">

    <!-- Estilos adicionais para a lista de itens e exemplo de scrollspy -->
<style>
        .list-group-item {
            border: 1px solid #ddd; /* Adiciona uma borda sólida cinza claro aos itens da lista */
            border-radius: 15px; /* Adiciona bordas arredondadas aos itens da lista */
            margin-bottom: 10px; /* Adiciona margem inferior de 10 pixels aos itens da lista */
            transition: background-color 0.3s, color 0.3s; /* Adiciona uma transição suave de cor de fundo e cor do texto */
        }
        .list-group-item:hover {
            background-color: #e3f2fd; /* Muda a cor de fundo para azul claro quando o cursor paira sobre os itens da lista */
            color: #000; /* Muda a cor do texto para preto quando o cursor paira sobre os itens da lista */
        }
        .scrollspy-example {
            border: 1px solid #ddd; /* Adiciona uma borda sólida cinza claro ao exemplo de rolagem */
            border-radius: 15px; /* Adiciona bordas arredondadas ao exemplo de rolagem */
            padding: 20px; /* Adiciona preenchimento interno de 20 pixels ao exemplo de rolagem */
            background-color: #f8f9fa; /* Define uma cor de fundo cinza claro para o exemplo de rolagem */
        }
    </style>


</head>

<body>
    <!-- Inclui um arquivo JSP fragmento para a barra de navegação -->
    <%@include file="WEB-INF/jspf/navbar.jspf"%>

    <!-- Carrossel de imagens com Bootstrap -->
    <div id="carouselExampleCaptions" class="carousel slide" data-bs-ride="carousel">
        <!-- Indicadores do carrossel -->
        <div class="carousel-indicators">
            <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
            <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="1" aria-label="Slide 2"></button>
            <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="2" aria-label="Slide 3"></button>
        </div>
        <!-- Itens do carrossel -->
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
        <!-- Controles de navegação do carrossel -->
        <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Previous</span>
        </button>
        <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Next</span>
        </button>
    </div>

    <!-- Script do Bootstrap para funcionalidades JavaScript -->
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/5.1.3/js/bootstrap.bundle.min.js"></script>

    <!-- Conteúdo principal da página -->
    <div class="container mt-4">
        <div class="row">
            <!-- Coluna para a lista de itens com scrollspy -->
            <div class="col-4">
                <div id="list-example" class="list-group">
                    <a class="list-group-item list-group-item-action" href="#list-item-1">Sobre o Adventure Guide</a>
                    <a class="list-group-item list-group-item-action" href="#list-item-2">Contato</a>
                    <a class="list-group-item list-group-item-action" href="#list-item-3">Sobre o Projeto</a>
                </div>
            </div>
            <!-- Coluna para o conteúdo detalhado -->
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

    <!-- Script do Bootstrap para funcionalidades JavaScript -->
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/5.1.3/js/bootstrap.bundle.min.js"></script>
    
    <!-- Inclui um arquivo JSP fragmento para bibliotecas de rodapé HTML -->
    <div>
        <%@include file="WEB-INF/jspf/html-body-libs.jspf"%>
    </div>

</body>
</html>

