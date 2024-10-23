<%-- 
    Document   : attraction-form
    Created on : 6 de set. de 2024, 21:29:37
    Author     : ariad
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="model.Attraction"%>
<!DOCTYPE html>
<html>
<head>
     <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Gerenciar Atração</title>
    <%@include file="/WEB-INF/jspf/html-head-libs.jspf"%>
</head>
<body>
    <%@include file="/WEB-INF/jspf/navbar.jspf"%>

    <div class="container my-5">
        <h1><%= request.getAttribute("attraction") == null ? "Nova Atração" : "Editar Atração" %></h1>
        
        <!-- Adiciona o enctype para permitir o upload de arquivos -->
        <form action="ManageAttractionsServlet" method="post" enctype="multipart/form-data">
            <input type="hidden" name="id" value="<%= request.getAttribute("attraction") != null ? ((Attraction) request.getAttribute("attraction")).getId() : "" %>">
            
            <!-- Campo para Nome da Atração -->
            <div class="mb-3">
                <label for="name" class="form-label">Nome</label>
                <input type="text" class="form-control" id="name" name="name" required 
                       value="<%= request.getAttribute("attraction") != null ? ((Attraction) request.getAttribute("attraction")).getName() : "" %>">
            </div>
            
            <!-- Campo para Descrição da Atração -->
            <div class="mb-3">
                <label for="description" class="form-label">Descrição</label>
                <textarea class="form-control" id="description" name="description" required>
<%= request.getAttribute("attraction") != null ? ((Attraction) request.getAttribute("attraction")).getDescription() : "" %>
                </textarea>
            </div>
            
            <!-- Campo para Upload da Imagem -->
            <div class="mb-3">
        <label for="imagePath" class="form-label">Imagem</label>
        <input type="text" class="form-control" id="imagePath" name="imagePath" value="<%= request.getAttribute("attraction") != null ? ((Attraction) request.getAttribute("attraction")).getImagePath() : "" %>">
    </div>
            
            <!-- Campo para Coordenadas da Atração -->
             <div class="mb-3">
        <label for="coordinates" class="form-label">Coordenadas (latitude, longitude)</label>
        <input type="text" class="form-control" id="coordinates" name="coordinates" value="<%= request.getAttribute("attraction") != null ? ((Attraction) request.getAttribute("attraction")).getCoordinates() : "" %>">
    </div>
            
        <div>
            <!-- Botões de ação -->
            <button type="submit" class="btn btn-primary">Salvar</button>
            <a href="ManageAttractionsServlet" class="btn btn-secondary">Cancelar</a>
        </div>
    
    </form>
    
    <%@include file="/WEB-INF/jspf/html-body-libs.jspf"%>
</body>
</html>
