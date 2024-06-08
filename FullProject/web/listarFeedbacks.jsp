<%-- 
    Document   : listarFeedbacks
    Created on : 8 de jun. de 2024, 15:07:34
    Author     : ariad
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="model.Feedback" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Lista de Feedbacks</title>
    <%@include file="/WEB-INF/jspf/html-head-libs.jspf"%>
</head>
<body>
    <%@include file="/WEB-INF/jspf/navbar.jspf"%>

    <div class="container my-5">
        <h1>Lista de Feedbacks</h1>
        <%
            List<Feedback> feedbacks = (List<Feedback>) request.getAttribute("feedbacks");
        %>
        <ul>
            <% for (Feedback feedback : feedbacks) { %>
                <li>
                    <strong>Nickname:</strong> <%= feedback.getNickname() %><br>
                    <strong>Comentários:</strong> <%= feedback.getComments() %>
                </li>
            <% } %>
        </ul>
    </div>

    <%@include file="/WEB-INF/jspf/html-body-libs.jspf"%>
</body>
</html>

