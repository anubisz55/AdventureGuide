<%-- 
    Document   : admin
    Created on : 7 de set. de 2024, 10:39:16
    Author     : ariad
--%>

<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="model.Attraction, model.Service, model.AttractionDAO, model.ServiceDAO" %>

<!DOCTYPE html>
<html>
<head>
     <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Administração</title>
    <%@include file="/WEB-INF/jspf/html-head-libs.jspf"%>
</head>
<body>
    <%@include file="/WEB-INF/jspf/navbar.jspf"%>

    <div class="container my-5">
        <h1>Administração das Atrações e Serviços</h1>
        
        <!-- Formulário para adicionar atrações -->
        <h2>Adicionar Atração</h2>
        <form action="AdminServlet" method="post">
            <input type="hidden" name="action" value="addAttraction">
            <div class="form-group">
                <label for="name">Nome:</label>
                <input type="text" class="form-control" id="name" name="name" required>
            </div>
            <div class="form-group">
                <label for="description">Descrição:</label>
                <textarea class="form-control" id="description" name="description" required></textarea>
            </div>
            <div class="form-group">
                <label for="imagePath">Caminho da Imagem (Ex: images/atracao.png):</label>
                <input type="text" class="form-control" id="imagePath" name="imagePath" required>
            </div>
            <div class="form-group">
                <label for="coordinates">Coordenadas (Ex: 100,200):</label>
                <input type="text" class="form-control" id="coordinates" name="coordinates" required>
            </div>
    
            <button type="submit" class="btn btn-primary">Adicionar</button>
        </form>

        <!-- Formulário para adicionar serviços -->
        <h2>Adicionar Serviço</h2>
        <form action="AdminServlet" method="post">
            <input type="hidden" name="action" value="addService">
            <div class="form-group">
                <label for="name">Nome:</label>
                <input type="text" class="form-control" id="name" name="name" required>
            </div>
            <div class="form-group">
                <label for="description">Descrição:</label>
                <textarea class="form-control" id="description" name="description" required></textarea>
            </div>
            <button type="submit" class="btn btn-primary">Adicionar</button>
        </form>

        <!-- Lista de Atrações -->
        <h2>Lista de Atrações</h2>
        <%
            AttractionDAO attractionDAO = new AttractionDAO();
            List<Attraction> attractions = attractionDAO.getAllAttractions();
            for (Attraction attraction : attractions) {
        %>
        <div>
            <h4><%= attraction.getName() %></h4>
            <p><%= attraction.getDescription() %></p>
            <p>Coordenadas: <%= attraction.getCoordinates() %></p>
            <p>Imagem: <img src="<%= attraction.getImagePath() %>" alt="<%= attraction.getName() %>" width="100"></p>
            <form action="AdminServlet" method="post">
                <input type="hidden" name="action" value="updateAttraction">
                <input type="hidden" name="id" value="<%= attraction.getId() %>">
                <button type="submit" class="btn btn-secondary">Editar</button>
            </form>
            <form action="AdminServlet" method="post">
                <input type="hidden" name="action" value="deleteAttraction">
                <input type="hidden" name="id" value="<%= attraction.getId() %>">
                <button type="submit" class="btn btn-danger">Excluir</button>
            </form>
        </div>
        <% } %>

        <!-- Lista de Serviços -->
        <h2>Lista de Serviços</h2>
        <%
            ServiceDAO serviceDAO = new ServiceDAO();
            List<Service> services = serviceDAO.getAllServices();
            for (Service service : services) {
        %>
        <div>
            <h4><%= service.getName() %></h4>
            <p><%= service.getDescription() %></p>
            <form action="AdminServlet" method="post">
                <input type="hidden" name="action" value="updateService">
                <input type="hidden" name="id" value="<%= service.getId() %>">
                <button type="submit" class="btn btn-secondary">Editar</button>
            </form>
            <form action="AdminServlet" method="post">
                <input type="hidden" name="action" value="deleteService">
                <input type="hidden" name="id" value="<%= service.getId() %>">
                <button type="submit" class="btn btn-danger">Excluir</button>
            </form>
        </div>
        <% } %>
    </div>
    
    <%@include file="/WEB-INF/jspf/html-body-libs.jspf"%>
</body>
</html>
