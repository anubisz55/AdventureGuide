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
                            <a href="ManageAttractionsServlet?action=edit&id=<%= attraction.getId() %>" class="btn btn-edit">Editar</a>
                            <a href="ManageAttractionsServlet?action=delete&id=<%= attraction.getId() %>" class="btn btn-delete">Excluir</a>
                        </td>
                    </tr>
                <% } %>
            </tbody>
        </table>
    </div>
            
<style>
    @import url('https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;700&display=swap');
    @import url('https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css');

    body {
        font-family: 'Roboto', sans-serif;
        background: linear-gradient(135deg, #f0e6ff 0%, #e6e6ff 100%);
        color: #333;
        line-height: 1.6;
        overflow-x: hidden;
    }

    .container {
        background-color: #ffffff;
        border-radius: 15px;
        box-shadow: 0 0 20px rgba(108, 99, 255, 0.1);
        padding: 30px;
        margin-top: 30px;
        position: relative;
    }

    h2 {
        color: #4a4a8a;
        border-bottom: 2px solid #6c63ff;
        padding-bottom: 10px;
        margin-bottom: 20px;
    }

    .nav-link {
        color: #OOOOOO;
        transition: color 0.3s ease;
    }

    .nav-link:hover {
        color: #FFFFFF;
        text-decoration: none;
    }

    .btn-primary {
        background-color: #6c63ff;
        border: none;
        transition: all 0.3s ease;
    }

    .btn-primary:hover {
        background-color: #5a52d5;
        transform: translateY(-2px);
        box-shadow: 0 4px 8px rgba(108, 99, 255, 0.2);
    }

    .alert-danger {
        background-color: #ffe0e0;
        border-color: #ffb3b3;
        color: #d8000c;
    }

    .form-control:focus {
        border-color: #6c63ff;
        box-shadow: 0 0 0 0.2rem rgba(108, 99, 255, 0.25);
    }

    /* Novos estilos para os botões editar e excluir */
    .btn-edit {
        background-color: #72a0e5; /* Azul claro */
        color: white;
        border: none;
        transition: all 0.3s ease;
    }

    .btn-edit:hover {
        background-color: #5b8ad6;
        transform: translateY(-2px);
        box-shadow: 0 4px 8px rgba(114, 160, 229, 0.2);
    }

    .btn-delete {
        background-color: #3a5998; /* Azul mais escuro */
        color: white;
        border: none;
        transition: all 0.3s ease;
    }

    .btn-delete:hover {
        background-color: #2f477a;
        transform: translateY(-2px);
        box-shadow: 0 4px 8px rgba(58, 89, 152, 0.2);
    }

    /* Animações */
    @keyframes float {
        0% { transform: translateY(0px); }
        50% { transform: translateY(-20px); }
        100% { transform: translateY(0px); }
    }

    @keyframes spin {
        0% { transform: rotate(0deg); }
        100% { transform: rotate(360deg); }
    }

    .container::before {
        content: '\f3ff';
        font-family: 'Font Awesome 5 Free';
        font-weight: 900;
        position: absolute;
        top: -50px;
        right: -50px;
        font-size: 100px;
        color: #6c63ff;
        opacity: 0.2;
        animation: spin 20s linear infinite;
    }

    .container::after {
        content: '\f185';
        font-family: 'Font Awesome 5 Free';
        font-weight: 900;
        position: absolute;
        bottom: -50px;
        left: -50px;
        font-size: 80px;
        color: #ff6b6b;
        opacity: 0.2;
        animation: float 6s ease-in-out infinite;
    }
</style>
    
    <%@include file="/WEB-INF/jspf/html-body-libs.jspf"%>
</body>
</html>