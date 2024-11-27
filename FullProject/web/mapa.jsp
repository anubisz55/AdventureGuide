<%-- 
    Document   : mapa
    Created on : 9 de jun. de 2024, 12:31:39
    Author     : ariad
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<%@page import="model.Attraction"%>
<%@page import="model.AttractionDAO"%>
<%@page import="model.Service"%>
<%@page import="model.ServiceDAO"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Mapa do Parque</title>
    <style>
        /* Estilo para o mapa */
        .map-container {
            position: relative;
            text-align: center;
        }

        /* Ícones posicionados no mapa */
        .map-icon {
            position: absolute;
            width: 20px; /* Tamanho do ícone de atração */
            height: 20px;
            background-color: red; /* Cor vermelha */
            border-radius: 50%; /* Torna o ícone circular */
            cursor: pointer;
            border: 2px solid white; /* Adiciona uma borda branca */
            box-shadow: 0px 0px 5px rgba(0, 0, 0, 0.3); /* Sombra para destaque */
        }

        .service-icon {
            position: absolute;
            width: 20px; /* Tamanho do ícone de serviço */
            height: 20px;
            background-color: #28a745; /* Cor verde claro */
            border-radius: 50%; /* Torna o ícone circular */
            cursor: pointer;
            border: 2px solid white; /* Adiciona uma borda branca */
            box-shadow: 0px 0px 5px rgba(0, 0, 0, 0.3); /* Sombra para destaque */
        }

        /* Estilo do botão Voltar */
        .btn-voltar {
            display: block;
            width: 100px;
            margin: 20px auto;
            padding: 10px;
            text-align: center;
            background-color: #007bff;
            color: #fff;
            text-decoration: none;
            border-radius: 5px;
        }

        .btn-voltar:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
    <div class="map-container">
        <!-- Imagem do mapa -->
        <img src="mapa.png" alt="Mapa do Parque" style="width: 150%; height: auto;">

        <%
            // Busca as atrações do banco de dados
            AttractionDAO attractionDAO = new AttractionDAO();
            List<Attraction> attractions = attractionDAO.getAllAttractions();

            // Renderiza os ícones de atrações
            for (Attraction attraction : attractions) {
                String[] coords = attraction.getCoordinates().split(","); // Exemplo: "100,200"
        %>
                <!-- Ícone clicável da atração -->
                <a href="attraction-details.jsp?id=<%= attraction.getId() %>" 
                   class="map-icon" 
                   style="top: <%= coords[1] %>px; left: <%= coords[0] %>px;" 
                   title="<%= attraction.getName() %>">
                </a>
        <%
            }

            // Busca os serviços do banco de dados
            ServiceDAO serviceDAO = new ServiceDAO();
            List<Service> services = serviceDAO.getAllServices();

            // Renderiza os ícones de serviços
            for (Service service : services) {
                String[] coords = service.getCoordinates().split(","); // Exemplo: "100,200"
        %>
                <!-- Ícone clicável do serviço -->
                <a href="service-details.jsp?id=<%= service.getId() %>" 
                   class="service-icon" 
                   style="top: <%= coords[1] %>px; left: <%= coords[0] %>px;" 
                   title="<%= service.getName() %>">
                </a>
        <%
            }
        %>
    </div>

    <!-- Botão Voltar ao Mapa -->
     <a href="index.jsp" class="btn-voltar">Voltar</a>
</body>
</html>
