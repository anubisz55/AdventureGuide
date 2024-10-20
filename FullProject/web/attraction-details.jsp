<%-- 
    Document   : attraction-details
    Created on : 20 de out. de 2024, 09:18:15
    Author     : ariad
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="model.AttractionDAO"%>
<%@page import="model.Attraction"%>
<!DOCTYPE html>
<html>
<head>
     <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Detalhes da Atração</title>
</head>
<body>
    <%
        int id = Integer.parseInt(request.getParameter("id"));
        AttractionDAO attractionDAO = new AttractionDAO();
        Attraction attraction = attractionDAO.getAttractionById(id);
    %>

    <h1><%= attraction.getName() %></h1>
    <p><%= attraction.getDescription() %></p>
    <img src="<%= attraction.getImagePath() %>" alt="<%= attraction.getName() %>" style="max-width: 100%; height: auto;">
    
    <a href="mapa.jsp">Voltar ao Mapa</a>
</body>
</html>

