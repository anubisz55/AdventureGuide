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
    <title>Lista de Atrações</title>
    <%@include file="/WEB-INF/jspf/html-head-libs.jspf"%>
</head>
<body>
    <%@include file="/WEB-INF/jspf/navbar.jspf"%>

    <div class="container my-5">
        <h1>Atrações do Parque</h1>
        <a href="ManageAttractionsServlet?action=new" class="btn btn-primary">Nova Atração</a>
        <table class="table mt-3">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Nome</th>
                    <th>Descrição</th>
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

