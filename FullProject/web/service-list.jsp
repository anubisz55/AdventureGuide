<%-- 
    Document   : service-list
    Created on : 7 de set. de 2024, 12:03:11
    Author     : ariad
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<%@page import="model.Service"%>
<!DOCTYPE html>
<html>
<head>
    <title>Lista de Serviços</title>
    <%@include file="/WEB-INF/jspf/html-head-libs.jspf"%> <!-- Inclui os arquivos de cabeçalho HTML -->
</head>
<body>
    <%@include file="/WEB-INF/jspf/navbar.jspf"%> <!-- Inclui a barra de navegação -->

    <div class="container my-5">
        <h1>Serviços do Parque</h1>
        <a href="ManageServicesServlet?action=new" class="btn btn-primary">Novo Serviço</a> <!-- Link para adicionar um novo serviço -->
        <table class="table mt-3">
            <thead>
                <tr>
                    <th>ID</th> <!-- Cabeçalho da coluna ID -->
                    <th>Nome</th> <!-- Cabeçalho da coluna Nome -->
                    <th>Descrição</th> <!-- Cabeçalho da coluna Descrição -->
                    <th>Ações</th> <!-- Cabeçalho da coluna Ações -->
                </tr>
            </thead>
            <tbody>
                <% 
                    List<Service> services = (List<Service>) request.getAttribute("services"); // Obtém a lista de serviços do atributo da requisição
                    for (Service service : services) { 
                %>
                    <tr>
                        <td><%= service.getId() %></td> <!-- Exibe o ID do serviço -->
                        <td><%= service.getName() %></td> <!-- Exibe o nome do serviço -->
                        <td><%= service.getDescription() %></td> <!-- Exibe a descrição do serviço -->
                        <td>
                            <a href="ManageServicesServlet?action=edit&id=<%= service.getId() %>" class="btn btn-warning">Editar</a> <!-- Link para editar o serviço -->
                            <a href="ManageServicesServlet?action=delete&id=<%= service.getId() %>" class="btn btn-danger">Excluir</a> <!-- Link para excluir o serviço -->
                        </td>
                    </tr>
                <% } %>
            </tbody>
        </table>
    </div>
    
    <%@include file="/WEB-INF/jspf/html-body-libs.jspf"%> <!-- Inclui os arquivos de scripts no final do corpo da página -->
</body>
</html>

