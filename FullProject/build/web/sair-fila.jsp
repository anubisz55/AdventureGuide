<%-- 
    Document   : feedback
    Created on : 25 de mai. de 2024, 20:04:12
    Author     : ariad
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sair da Fila</title>
           <%@include file="/WEB-INF/jspf/html-head-libs.jspf"%>
    </head>
    <body>
            <%@include file="/WEB-INF/jspf/navbar.jspf"%>
            
             <div class="container my-5">

        <h1>Fim dessa Aventura!</h1>
        
        <p>Clique em SAIR DA FILA e deixe seu feeedback</p>
        
        
         <a href="feedback.jsp" class="btn btn-primary">SAIR DA FILA</a>
        
        <form action="feedback" method="post">
            <input type="hidden" name="action" value="feedbak">
            
           
        </form>
        
        </div>
 <%@include file="/WEB-INF/jspf/html-body-libs.jspf"%>
    </body>
</html>
