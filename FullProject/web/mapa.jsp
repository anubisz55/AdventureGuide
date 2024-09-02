<%-- 
    Document   : mapa
    Created on : 9 de jun. de 2024, 12:31:39
    Author     : ariad
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Mapa</title>
    <style>
        /* Estilo para ajustar o tamanho da imagem 
        img {
            max-width: 100%;
            height: auto;
            display: block;
            margin: 0 auto;
        }*/
        /* Estilo para o botão Voltar */
        .btn-voltar {
            display: block;
            width: 100px;
            margin: 20px auto;
            padding: 10px;
            text-align: center;
            background-color: #007bff;
            color: #fff;
            text-decoration: none;
            border-radius: 5px;
        }
        .btn-voltar:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
    <!-- Inclua sua imagem aqui -->
 <img src="mapa.png" usemap="#image-map">

<map name="image-map">
    <area target="_blank" alt="bigTower" title="bigTower" href="big-tower.jsp" coords="85,84,153,545,280,469,268,84" shape="poly">
    <area target="_blank" alt="tirolesa" title="tirolesa" href="tirolesa.jsp" coords="358,517,315,322,385,342,405,400" shape="poly">
    <area target="_blank" alt="pedalinhos" title="pedalinhos" href="pedalinhos.jsp" coords="397,466,444,524,520,483,452,417" shape="poly">
    <area target="_blank" alt="carrossel" title="carrossel" href="carrossel.jsp" coords="171,588,280,516,313,624,294,672,198,674" shape="poly">
    <area target="_blank" alt="splash" title="splash" href="splash.jsp" coords="571,681,649,624,737,667,752,729,690,766,619,739" shape="poly">
    <area target="_blank" alt="cinema" title="cinema" href="cinema.jsp" coords="799,637,848,670,842,705,799,727,762,696,756,666" shape="poly">
    <area target="_blank" alt="circus" title="circus" href="circus.jsp" coords="959,636,1004,675,1012,708,1012,751,937,770,879,751,867,714,900,675" shape="poly">
    <area target="_blank" alt="monanhaRussa" title="monanhaRussa" href="montanha-russa.jsp" coords="444,276,635,270,772,363,795,447,772,480,688,517,625,517,567,482,510,445,446,393" shape="poly">
    <area target="_blank" alt="chapeuMexicano" title="chapeuMexicano" href="chapeu-mexicano.jsp" coords="1051,644,1031,692,1031,759,1004,798,1170,815,1218,792,1234,698,1197,651,1123,632" shape="poly">
    <area target="_blank" alt="casteloKids" title="casteloKids" href="castelo-kids.jsp" coords="1160,538,1228,565,1226,618,1189,631,1146,614,1146,575" shape="poly">
    <area target="_blank" alt="xicarasMalucas" title="xicarasMalucas" href="xicaras-malucas.jsp" coords="1170,518,1228,553,1240,516,1253,486,1218,449,1187,481" shape="poly">
    <area target="_blank" alt="pulaPula" title="pulaPula" href="pula-pula-gigante.jsp" coords="1111,384,1129,402,1134,423,1113,460,1076,427" shape="poly">
    <area target="_blank" alt="patinacaoNoGelo" title="patinacaoNoGelo" href="patinacao-no-gelo.jsp" coords="1480,639,1472,662,1517,687,1497,701,1527,711,1536,738,1581,709,1589,683" shape="poly">
    <area target="_blank" alt="bateBate" title="bateBate" href="bate-bate.jsp" coords="1575,561,1612,598,1638,633,1638,654,1595,678,1550,662,1482,633,1482,611" shape="poly">
    <area target="_blank" alt="rodaGigante" title="rodaGigante" href="roda-gigante.jsp" coords="1468,138,1581,174,1646,242,1669,335,1638,452,1593,517,1536,558,1480,589,1410,593,1335,579,1291,628,1300,548,1259,507,1214,423,1211,355,1230,271,1277,201,1365,154" shape="poly">
    <area target="_blank" alt="WC-1" title="WC-1" href="banheiros.jsp" coords="1054,527,1090,492,1129,527,1134,563,1099,574" shape="poly">
    <area target="_blank" alt="WC-2" title="WC-2" href="banheiros2.jsp" coords="1470,778,1513,744,1548,780,1505,817" shape="poly">
    <area target="_blank" alt="enfermaria" title="enfermaria" href="enfermaria.jsp" coords="1168,385,1201,422,1201,447,1175,475,1154,455,1136,422" shape="poly">
    <area target="_blank" alt="salvaVidas" title="salvaVidas" href="salva-vidas.jsp" coords="1246,689,1279,678,1304,678,1335,713,1298,756,1271,740,1240,726" shape="poly">
    <area target="_blank" alt="eventosShows" title="eventosShows" href="eventos_shows.jsp" coords="666,625,666,578,711,543,742,559,764,582,774,609,772,641,738,662" shape="poly">
    <area target="_blank" alt="EntradaSaidaEstacionamento" title="EntradaSaidaEstacionamento" href="ent_saida_esta.jsp" coords="469,566,495,541,541,514,584,512,616,533,619,557,522,598,493,594" shape="poly">
    <area target="_blank" alt="miniShop" title="miniShop" href="mini_shoop.jsp" coords="325,655,339,593,407,519,481,581,477,620,456,661,419,683,342,683" shape="poly">
    <area target="_blank" alt="churros" title="churros" href="churros.jsp" coords="1388,631,1425,606,1462,641,1435,678,1402,659" shape="poly">
    <area target="_blank" alt="lanchonete" title="lanchonete" href="lanchonete.jsp" coords="1355,739,1384,713,1421,741,1398,752,1441,778,1474,756,1470,780,1439,795,1400,772,1382,791" shape="poly">
    <area target="_blank" alt="restaurante" title="restaurante" href="restaurante.jsp" coords="1413,724,1427,713,1458,689,1478,680,1493,701,1513,713,1493,726,1482,750,1468,760,1447,769,1419,760,1427,742" shape="poly">
    <area target="_blank" alt="sorveteria" title="sorveteria" href="sorveteria.jsp" coords="971,476,978,507,1027,509,1053,474,1072,449,1035,410,996,439" shape="poly">
</map>

    <!-- Botão Voltar -->
    <a href="index.jsp" class="btn-voltar">Voltar</a>
</body>
</html>

