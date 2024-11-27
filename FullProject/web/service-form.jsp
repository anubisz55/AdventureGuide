<%-- 
    Document   : service-form
    Created on : 7 de set. de 2024, 12:00:48
    Author     : ariad
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="model.Service"%>
<!DOCTYPE html>
<html>
<head>
    <title>Gerenciar Serviço</title>
    <%@include file="/WEB-INF/jspf/html-head-libs.jspf"%> <!-- Inclui os arquivos de cabeçalho HTML -->
</head>
<body>
    <%@include file="/WEB-INF/jspf/navbar.jspf"%> <!-- Inclui a barra de navegação -->

    <div class="container my-5">
        <h1><%= request.getAttribute("service") == null ? "Novo Serviço" : "Editar Serviço" %></h1> <!-- Exibe o título com base na ação (nova criação ou edição) -->
        <form action="ManageServicesServlet" method="post"> <!-- Define o formulário para envio de dados ao servlet "ManageServicesServlet" -->
            <input type="hidden" name="id" value="<%= request.getAttribute("service") != null ? ((Service) request.getAttribute("service")).getId() : "" %>"> <!-- Campo oculto para o ID do serviço (usado em edições) -->
            
            <div class="mb-3">
                <label for="name" class="form-label">Nome</label> <!-- Rótulo para o campo de nome -->
                <input type="text" class="form-control" id="name" name="name" required value="<%= request.getAttribute("service") != null ? ((Service) request.getAttribute("service")).getName() : "" %>"> <!-- Campo de entrada para o nome do serviço -->
            </div>

            <div class="mb-3">
                <label for="description" class="form-label">Descrição</label> <!-- Rótulo para o campo de descrição -->
                <textarea class="form-control" id="description" name="description" required><%= request.getAttribute("service") != null ? ((Service) request.getAttribute("service")).getDescription() : "" %></textarea> <!-- Campo de entrada para a descrição do serviço -->
            </div>
            
            <!-- Novo campo para o caminho da imagem -->
            <div class="mb-3">
                <label for="imagePath" class="form-label">Caminho da Imagem</label>
                <input type="text" class="form-control" id="imagePath" name="imagePath" value="<%= request.getAttribute("service") != null ? ((Service) request.getAttribute("service")).getImagePath() : "" %>">
                <small class="form-text text-muted">Insira o caminho da imagem para o serviço.</small>
            </div>

            <!-- Novo campo para as coordenadas -->
            <div class="mb-3">
                <label for="coordinates" class="form-label">Coordenadas</label>
                <input type="text" class="form-control" id="coordinates" name="coordinates" value="<%= request.getAttribute("service") != null ? ((Service) request.getAttribute("service")).getCoordinates() : "" %>">
                <small class="form-text text-muted">Insira as coordenadas (latitude,longitude).</small>
            </div>

            <button type="submit" class="btn btn-primary">Salvar</button> <!-- Botão para salvar as alterações -->
            <a href="ManageServicesServlet" class="btn btn-secondary">Cancelar</a> <!-- Botão para cancelar e voltar -->
        </form>
    </div>

    <%@include file="/WEB-INF/jspf/html-body-libs.jspf"%> <!-- Inclui os arquivos de scripts no final do corpo da página -->
</body>
</html>
