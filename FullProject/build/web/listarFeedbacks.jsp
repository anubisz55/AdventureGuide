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
<div class="carousel" style="right: 30px; bottom: 30px;">🎠</div>
<div class="ferris-wheel" style="right: 100px; bottom: 80px;">🎡</div>
<div class="roller-coaster" style="left: 40px; top: 60px;">🎢</div>
<div class="balloon" style="left: 7%; top: 75%;">🎈</div>
<div class="star" style="left: 18%; top: 25%;">⭐</div>
<div class="star" style="right: 28%; top: 35%;">⭐</div>
<div class="heart" style="left: 45%; top: 18%;">❤️</div>
<div class="popcorn" style="right: 18%; bottom: 45%;">🍿</div>
<div class="ice-cream" style="right: 35%; top: 45%;">🍦</div>
<div class="ticket" style="left: 12%; top: 55%;">🎟️</div>
<div class="circus-tent" style="left: 55%; top: 8%;">🎪</div>
 
    <%@include file="/WEB-INF/jspf/navbar.jspf"%>
 
    <div class="container my-5">
<h1>Lista de Feedbacks</h1>
 
        <!-- Formulário para filtrar feedbacks por atração -->
<form action="ControleFilaServlet" method="get">
<input type="hidden" name="action" value="listarFeedbacks">
<div class="form-group">
<label for="attraction">Escolha uma atração:</label>
<select name="attraction" id="attraction" class="form-control">
<option value="">Todas</option>
<option value="Carrossel">Carrossel</option>
<option value="Montanha Russa">Montanha Russa</option>
<!-- Adicione outras opções conforme necessário -->
</select>
</div>
<button type="submit" class="btn btn-primary">Filtrar</button>
</form>
 
        <%
            List<Feedback> feedbacks = (List<Feedback>) request.getAttribute("feedbacks");
            if (feedbacks != null && !feedbacks.isEmpty()) {
        %>
<ul>
<% for (Feedback feedback : feedbacks) { %>
<li>
<strong>Atração:</strong> <%= feedback.getService() %><br>
<strong>Nickname:</strong> <%= feedback.getNickname() %><br>
<strong>Comentários:</strong> <%= feedback.getComments() %>
</li>
<% } %>
</ul>
<% } else { %>
<p>Nenhum feedback encontrado para a atração selecionada.</p>
<% } %>
</div>
 
    
<style>
  /* Estilos aplicados apenas ao conteúdo, excluindo a navbar */
  body > *:not(nav) {
    font-family: 'Arial', sans-serif;
  }
 
  .container {
    background-color: rgba(230, 230, 250, 0.8);
    border-radius: 15px;
    padding: 20px;
    box-shadow: 0 0 15px rgba(138, 43, 226, 0.3);
    margin-top: 20px;
  }
 
  .container h1 {
    color: #4B0082;
    text-align: center;
    font-size: 2.2em;
    margin-bottom: 20px;
  }
 
  .container .form-control, .container .btn {
    border-radius: 10px;
  }
 
  .container .btn-primary {
    background-color: #6A5ACD;
    border-color: #6A5ACD;
  }
 
  .container .btn-primary:hover {
    background-color: #483D8B;
    border-color: #483D8B;
  }
 
  .container ul {
    list-style-type: none;
    padding: 0;
  }
 
  .container li {
    background-color: rgba(255, 255, 255, 0.7);
    margin-bottom: 10px;
    padding: 15px;
    border-radius: 10px;
    transition: transform 0.2s ease;
  }
 
  .container li:hover {
    transform: scale(1.02);
  }
 
  /* Elementos de parque de diversões */
  .carousel, .ferris-wheel, .roller-coaster, .balloon, .star, .heart, .popcorn, .cotton-candy, .ice-cream, .ticket, .clown, .circus-tent {
    position: fixed;
    font-size: 40px;
    animation: float 4s infinite ease-in-out;
    z-index: 1000;
    pointer-events: none;
  }
 
  .carousel {
    font-size: 60px;
    animation: rotate 10s linear infinite;
  }
 
  .ferris-wheel {
    font-size: 60px;
    animation: rotate 20s linear infinite;
  }
 
  @keyframes rotate {
    0% { transform: rotate(0deg); }
    100% { transform: rotate(360deg); }
  }
 
  @keyframes float {
    0%, 100% { transform: translateY(0); }
    50% { transform: translateY(-20px); }
  }
 
  .star, .heart {
    animation: pulse 2s infinite;
  }
 
  @keyframes pulse {
    0%, 100% { transform: scale(1); }
    50% { transform: scale(1.2); }
  }
 
  /* Animação de estrelas */
  @keyframes twinkle {
    0%, 100% { opacity: 1; }
    50% { opacity: 0.5; }
  }
 
  .star {
    font-size: 24px;
    animation: twinkle 1.5s infinite, float 4s infinite ease-in-out;
  }
</style>
<%@include file="/WEB-INF/jspf/html-body-libs.jspf"%>
</body>
</html>