<%-- 
    Document   : reporteselectorales
    Created on : 25/07/2018, 03:43:28 PM
    Author     : PC27
--%>

<%@page import="Clases.Votantes"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    String vinculos="";
    if(request.getParameter("tipo")!=null){
        if(!request.getParameter("tipo").equals("pdf")){
             String tipo= request.getParameter("tipo");
        String extension="xls";
        if(tipo.equals("word")){
            extension="doc";
        }
        response.setContentType("application/vnd.ms-"+tipo);
        response.setHeader("Content-Disposition", "inline;filename=reporteselectorales."+extension);
        }
        
    } else {
        vinculos=" <a href='indicadores/reporteselectorales.jsp?tipo=excel'><img src='presentacion/imagenes/excel.png' title='Exportar a Excel' /></a>";
        
        vinculos+="<a href='#' onClick='convertir()'><img src='presentacion/imagenes/pdf.png' title='Descargar pdf'style='margin-left:20px;'></a>";
    }
    
    String datos [][]= Votantes.getResultados();
    String lista="";
    for (int i = 0; i < datos.length; i++) {
            lista+="<tr>";
            lista+="<td>"+ datos[i][1] +" </td>";
            lista+="<td align='center'>"+ datos[i][0] +" Voto(s)</td>";
            lista+="</tr>";
            
        }
%>
<center>
    <script type="text/javascript" src="../lib/jquery-3.3.1.min.js"></script>
    <script type="text/javascript" src="../lib/jspdf.js"></script>
    <div id="HTMLtoPDF">
    <h1>REPORTES ELECTORALES</h1>
     <div id="vinculos"> <%= vinculos %> </div>
    <table class="table">
        <tr><th>CANDIDATOS</th><th>TOTAL VOTOS</th></tr>
        <%= lista %>
    </table>
    </div>
</center>
    <script type="text/javascript">
            function convertir(){
                document.getElementById("vinculos").innerHTML="";
                HTMLtoPDF();
                document.getElementById("vinculos").innerHTML="<%= vinculos %>";
            }
        </script>
