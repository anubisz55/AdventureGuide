<%-- 
    Document   : adminHome
    Created on : 6 de set. de 2024, 21:14:59
    Author     : ariad
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="javax.servlet.http.HttpSession" %>

<% 
    // Verifica se o usuário está autenticado como administrador
    if (session == null || session.getAttribute("isAdmin") == null) {
        response.sendRedirect("adminLogin.jsp"); // Redireciona para a página de login se não estiver autenticado
        return;
    }
%>


<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Página do Administrador</title>
    <%@include file="/WEB-INF/jspf/html-head-libs.jspf"%>
</head>
<body>
    <%@include file="/WEB-INF/jspf/navbar.jspf"%>
    
    <div class="container my-5">
        <h2>Bem-vindo, Administrador!</h2>
        <p>Aqui você pode:</p>
        <!-- Adicione mais funcionalidades administrativas aqui -->
        
        <!-- Item de navegação simples para "Administrar Atrações" -->
       <a class="nav-link" href="attraction-form.jsp">Gerenciar Atrações</a>
       <a class="nav-link" href="service-form.jsp">Gerenciar Serviços</a>
    </div>
    
    <%@include file="/WEB-INF/jspf/html-body-libs.jspf"%>
</body>
</html>

