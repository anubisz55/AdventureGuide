<%-- 
    Document   : listarFeedbacks
    Created on : 8 de jun. de 2024, 15:07:34
    Author     : ariad
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%> <!-- Define o tipo de conteúdo e a codificação da página -->

<%@ page import="java.util.List" %> <!-- Importa a classe List do pacote java.util -->
<%@ page import="model.Feedback" %> <!-- Importa a classe Feedback do pacote model -->

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8"> <!-- Define a codificação da página -->
    <title>Lista de Feedbacks</title> <!-- Define o título da página -->
    <%@include file="/WEB-INF/jspf/html-head-libs.jspf"%> <!-- Inclui um arquivo JSP que contém bibliotecas JavaScript e CSS comuns -->
</head>
</head>
<body>
    <%@include file="/WEB-INF/jspf/navbar.jspf"%> <!-- Inclui um arquivo JSP que contém a barra de navegação -->

    <div class="container my-5">
        <h1>Lista de Feedbacks</h1> <!-- Título da seção -->

        <% 
            List<Feedback> feedbacks = (List<Feedback>) request.getAttribute("feedbacks"); // Obtém a lista de feedbacks do atributo "feedbacks" da requisição
        %>
        
        <!-- Inicia uma lista não ordenada e inclui estilos -->
        <ul style=" 
            list-style-type: none; /* Remove o estilo de marcadores da lista */
            padding: 0; /* Remove o espaçamento interno padrão da lista */
        ">
            <% for (Feedback feedback : feedbacks) { %> <!-- Loop sobre cada feedback na lista -->
                <li style="
                    background: #f9f9f9; /* Fundo claro para itens da lista */
                    border: 1px solid #ddd; /* Borda cinza clara */
                    border-radius: 5px; /* Bordas arredondadas */
                    padding: 10px; /* Espaçamento interno */
                    margin-bottom: 10px; /* Espaçamento entre itens */
                ">
                    <strong style="color: #007bff;">Nickname:</strong> <%= feedback.getNickname() %><br> <!-- Exibe o nickname do feedback -->
                    <strong style="color: #007bff;">Comentários:</strong> <%= feedback.getComments() %> <!-- Exibe os comentários do feedback -->
                </li>
            <% } %> <!-- Fim do loop -->
        </ul> <!-- Fim da lista -->
    </div>

    <%@include file="/WEB-INF/jspf/html-body-libs.jspf"%> <!-- Inclui um arquivo JSP que contém bibliotecas JavaScript e CSS comuns -->
</body>
</html>

