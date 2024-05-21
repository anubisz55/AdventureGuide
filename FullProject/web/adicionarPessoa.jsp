<%-- 
    Document   : adicionarPessoa
    Created on : 21 de mai. de 2024, 15:34:46
    Author     : Fatec
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@ page import="ControleFilaEspera" %> <!-- Substitua "seu_pacote" pelo pacote onde está a classe ControleFilaEspera %>

<%
    ControleFilaEspera controleFila = new ControleFilaEspera();
    controleFila.adicionarPessoaFila();
%>

<script>
    alert("Pessoa adicionada à fila com sucesso!");
    window.location.href = "controleFila.jsp";
</script>

