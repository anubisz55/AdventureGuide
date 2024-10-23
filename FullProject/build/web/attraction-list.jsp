<%-- 
    Document   : attraction-list
    Created on : 6 de set. de 2024, 21:28:43
    Author     : ariad
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<%@page import="model.Attraction"%>
<!DOCTYPE html>
<html>
<head>
     <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Lista de Atrações</title>
    <%@include file="/WEB-INF/jspf/html-head-libs.jspf"%>
</head>
<body>
    <%@include file="/WEB-INF/jspf/navbar.jspf"%>
    <div class="container my-5">
        <h1>Atrações do Parques</h1>
        <a href="ManageAttractionsServlet?action=new" class="btn btn-primary">Nova Atração</a>
        <table class="table mt-3">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Nome</th>
                    <th>Descrição</th>
                    <th>Imagem</th>
                    <th>Coordenadas</th>
                    <th>Ações</th>
                </tr>
            </thead>
            <tbody>
                <% 
                    List<Attraction> attractions = (List<Attraction>) request.getAttribute("attractions");
                    for (Attraction attraction : attractions) { 
                %>
                    <tr>
                        <td><%= attraction.getId() %></td>
                        <td><%= attraction.getName() %></td>
                        <td><%= attraction.getDescription() %></td>

                        <!-- Exibir a imagem, se existir -->
                        <td>
                            <% if (attraction.getImagePath() != null && !attraction.getImagePath().isEmpty()) { %>
                                <img src="<%= attraction.getImagePath() %>" alt="Imagem da Atração" width="100">
                            <% } else { %>
                                <span>Sem imagem</span>
                            <% } %>
                        </td>

                        <!-- Exibir as coordenadas -->
                        <td>
                            <% if (attraction.getCoordinates() != null && !attraction.getCoordinates().isEmpty()) { %>
                                <%= attraction.getCoordinates() %>
                            <% } else { %>
                                <span>Sem coordenadas</span>
                            <% } %>
                        </td>

                        <td>
                            <a href="ManageAttractionsServlet?action=edit&id=<%= attraction.getId() %>" class="btn btn-warning">Editar</a>
                            <a href="ManageAttractionsServlet?action=delete&id=<%= attraction.getId() %>" class="btn btn-danger">Excluir</a>
                        </td>
                    </tr>
                <% } %>
            </tbody>
        </table>
    </div>
    
    <%@include file="/WEB-INF/jspf/html-body-libs.jspf"%>
</body>
</html>
