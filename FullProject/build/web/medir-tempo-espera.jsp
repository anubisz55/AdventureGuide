<%-- 
    Document   : medir-tempo-espera
    Created on : 25 de mai. de 2024, 15:34:16
    Author     : ariad
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%> <!-- Define o tipo de conteúdo e codificação da página -->
<%@ page import="java.time.Duration" %> <!-- Importa a classe Duration do pacote java.time -->
<!DOCTYPE html> <!-- Declaração do tipo de documento -->
<html>
<head>
    <meta charset="UTF-8"> <!-- Define a codificação da página -->
    <title>Tempo Médio de Espera</title> <!-- Título da página -->
    <%@include file="/WEB-INF/jspf/html-head-libs.jspf"%> <!-- Inclui arquivos JSP que contêm bibliotecas e scripts -->
     <style>
        body {
            background-color: #f0f4f5; /* Cor de fundo da página */
            font-family: 'Arial', sans-serif; /* Fonte geral da página */
            color: #333; /* Cor do texto */
            margin: 0;
            padding: 0;
        }

        h1 {
            text-align: center; /* Centraliza o título principal */
            margin-top: 20px;
            color: #007bff; /* Cor azul para o título */
        }

        .container {
            background: #fff; /* Fundo branco para o container */
            border-radius: 8px; /* Bordas arredondadas */
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1); /* Sombra leve */
            padding: 20px;
            max-width: 600px; /* Largura máxima do container */
            margin: 20px auto; /* Centraliza o container na página */
        }

        p {
            font-size: 18px; /* Tamanho da fonte dos parágrafos */
            line-height: 1.6; /* Altura da linha */
            margin-bottom: 15px; /* Espaçamento inferior dos parágrafos */
            text-align: center; /* Centraliza o texto dos parágrafos */
        }

        .btn {
            padding: 10px 20px; /* Espaçamento interno dos botões */
            border-radius: 4px; /* Bordas arredondadas dos botões */
            text-decoration: none; /* Remove a decoração de texto dos links */
            margin: 5px; /* Espaçamento entre os botões */
        }

        .btn-primary {
            background-color: #007bff; /* Cor de fundo azul */
            border: none; /* Remove a borda */
            color: #fff; /* Cor do texto branca */
            cursor: pointer; /* Muda o cursor para indicar que é clicável */
            transition: background-color 0.3s ease; /* Animação de transição para a mudança de cor */
            display: inline-block; /* Faz o botão se comportar como um bloco inline */
            text-align: center; /* Centraliza o texto dentro do botão */
        }

        .btn-primary:hover {
            background-color: #0056b3; /* Cor de fundo azul escuro ao passar o mouse */
        }
    </style>
</head>
<body>
    <%@include file="/WEB-INF/jspf/navbar.jspf"%> <!-- Inclui a barra de navegação -->

    <div class="container my-5"> <!-- Define uma div container com margem superior e inferior -->
        <h1>Tempo Médio de Espera</h1> <!-- Título principal da página -->
        <% 
            Duration tempoMedioEspera = (Duration) request.getAttribute("tempoMedioEspera"); // Obtém o tempo médio de espera da requisição
        %>
        <p>O tempo médio de espera na fila é: <%= tempoMedioEspera.getSeconds() %> segundos.</p> <!-- Exibe o tempo médio de espera -->
        <p>Clique em OK para aceitar</p> <!-- Texto informativo -->
      
        <a href="sair-fila.jsp" class="btn btn-primary">OK</a> <!-- Botão "OK" que redireciona para sair-fila.jsp -->
        <a href="index.jsp" class="btn btn-primary">Voltar</a> <!-- Botão "Voltar" que redireciona para index.jsp -->
    </div>

    <%@include file="/WEB-INF/jspf/html-body-libs.jspf"%> <!-- Inclui arquivos JSP com bibliotecas JavaScript e CSS -->
</body>
</html>

