<%-- 
    Document   : removerPessoa
    Created on : 21 de mai. de 2024, 15:35:28
    Author     : Fatec
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
S
<%@ page import="ControleFilaEspera" %> <!-- Substitua "seu_pacote" pelo pacote onde está a classe ControleFilaEspera %>

<%
    ControleFilaEspera controleFila = new ControleFilaEspera();
    controleFila.removerPessoaFila();
%>

<script>
    alert("Pessoa removida da fila com sucesso!");
    window.location.href = "controleFila.jsp";
</script>

