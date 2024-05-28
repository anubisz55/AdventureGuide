<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Enfermaria</title>
    <%@include file="/WEB-INF/jspf/html-head-libs.jspf"%>
    <style>
        body {
            font-family: Arial, sans-serif; /* Mudan�a na fonte */
            background-color: #a7d1e8; /* Cor de fundo */
            color: #333; /* Cor do texto */
        }

        .container {
            max-width: 800px;
            margin: 0 auto;
            padding: 20px;
            text-align: center;
        }

        h1 {
            font-size: 36px; /* Tamanho da fonte do t�tulo */
            color: #0099ff; /* Cor do t�tulo */
        }

        h2 {
            font-size: 24px; /* Tamanho da fonte do subt�tulo */
            color: #0099ff; /* Cor do subt�tulo */
        }

        p {
            font-size: 18px; /* Tamanho da fonte dos par�grafos */
            line-height: 1.6;
        }

        ul {
            list-style-type: none; /* Remove os marcadores de lista */
            padding-left: 0; /* Remove o recuo padr�o */
        }

        li {
            font-size: 16px; /* Tamanho da fonte dos itens da lista */
            margin-bottom: 10px; /* Espa�amento entre os itens da lista */
        }

        img {
            max-width: 100%; /* Garante que a imagem n�o ultrapasse o cont�iner */
            height: auto; /* Mant�m a propor��o da imagem */
            margin-bottom: 20px; /* Espa�amento inferior da imagem */
        }
    </style>
</head>
<body>
    <%@include file="/WEB-INF/jspf/navbar.jspf"%>

    <div class="container my-5">
        <h1>Enfermaria</h1>
        <p>A Enfermaria do parque � um local dedicado ao atendimento de primeiros socorros e cuidados m�dicos para visitantes que necessitam de assist�ncia.</p>
        <p>Nossa equipe de profissionais est� preparada para oferecer suporte em caso de emerg�ncias ou necessidades de sa�de durante sua visita.</p>
        <img src="img/enfermaria.jpg" alt="Enfermaria" class="img-fluid my-4">
        <h2>Informa��es Importantes</h2>
        <ul>
            <li>Equipe m�dica dispon�vel durante todo o hor�rio de funcionamento</li>
            <li>Atendimento de primeiros socorros e cuidados b�sicos de sa�de</li>
            <li>Localiza��o central para f�cil acesso em caso de necessidade</li>
        </ul>
    </div>

    <%@include file="/WEB-INF/jspf/html-body-libs.jspf"%>
</body>
</html>