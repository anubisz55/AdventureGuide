<%-- 
    Document   : service-details
    Created on : 27 de nov. de 2024, 09:34:16
    Author     : ariad
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="model.ServiceDAO"%>
<%@page import="model.Service"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Detalhes do Serviço</title>
</head>
<body>
    <%
        // Obtém o ID do serviço via parâmetro na URL
        int id = Integer.parseInt(request.getParameter("id"));
        ServiceDAO serviceDAO = new ServiceDAO();  // Cria uma instância de ServiceDAO
        Service service = serviceDAO.getServiceById(id); // Obtém o serviço pelo ID
    %>

    <!-- Exibe o nome e descrição do serviço -->
    <h1><%= service.getName() %></h1>
    <p><%= service.getDescription() %></p>
    
    <!-- Exibe a imagem do serviço se houver -->
    <% if (service.getImagePath() != null && !service.getImagePath().isEmpty()) { %>
        <img src="<%= service.getImagePath() %>" alt="<%= service.getName() %>" style="max-width: 100%; height: auto;">
    <% } else { %>
        <p><strong>Sem imagem disponível</strong></p>
    <% } %>
    
    <!-- Exibe as coordenadas do serviço se houver -->
    <% if (service.getCoordinates() != null && !service.getCoordinates().isEmpty()) { %>
        <p><strong>Coordenadas:</strong> <%= service.getCoordinates() %></p>
    <% } else { %>
        <p><strong>Sem coordenadas disponíveis</strong></p>
    <% } %>

    
    <br>
    <a href="mapa.jsp">Voltar ao Mapa</a> <!-- Link para voltar ao mapa interativo -->
</body>
</html>