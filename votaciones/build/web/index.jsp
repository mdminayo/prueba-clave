<%-- 
    Document   : index
    Created on : 25/07/2018, 11:25:05 AM
    Author     : PC27
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Votaciones 2018</title>
        <link rel="stylesheet" href="presentacion/css/estiloEvaluacion.css" />
         
        <script src="lib/amcharts/amcharts.js" type="text/javascript"></script>
        <script src="lib/amcharts/serial.js" type="text/javascript"></script>
        <script src="lib/amcharts/pie.js" type="text/javascript"></script>
        <script src="lib/funciones.js" type="text/javascript"></script>
        <script type="text/javascript" src="lib/jquery-3.3.1.min.js"></script>
        <script type="text/javascript" src="lib/jspdf.js"></script>
        <script type="text/javascript" src="lib/pdfFromHTML.js"></script>
    </head>
    <body>
        <div id="banner">
            <img src="presentacion/imagenes/Banner_4.jpg" />
        </div>
        
        <div id="menu">
            <a href="index.jsp?CONTENIDO=configuracion/candidatos.jsp" >Candidatos</a>
            <a href="index.jsp?CONTENIDO=reportes/resultados.jsp" >Resultados y Gráfico</a>
            <a href="index.jsp?CONTENIDO=indicadores/reporteselectorales.jsp" >Reportes de Elecciones</a>
            
        </div>
        <div id="contenido"><jsp:include page="<%=request.getParameter("CONTENIDO")%>" flush="true"/></div>
    </body>
</html>
