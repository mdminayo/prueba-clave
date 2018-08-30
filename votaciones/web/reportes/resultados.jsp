<%-- 
    Document   : resultados
    Created on : 25/07/2018, 02:47:32 PM
    Author     : PC27
--%>

<%@page import="Clases.Votantes"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
 <link rel="stylesheet" href="style.css" type="text/css">
 <script src="../amcharts/amcharts.js" type="text/javascript"></script>
 <script src="../amcharts/pie.js" type="text/javascript"></script>
<!DOCTYPE html>
<%
String datosPastel = " var datosPastel=[";
String lista="";
String datos[][]= Votantes.getResultados();
for (int i = 0; i < datos.length; i++) {
    String auxiliar = "";
        if (i > 0) {
            auxiliar = ",";
        }
        datosPastel += auxiliar + "\n{'candidato':'" + datos[i][1] + "', 'totalvotos':" + datos[i][0] + ", 'color':'#ffcc99'}";
        lista+="<tr>";
        lista+="<td>"+ datos[i][1] +"</td>";
        lista+="<td align='center'>"+ datos[i][0] +" Voto(s)</td>";
        lista+="</tr>";
        
    }
datosPastel += "];";
%>
<center>
    <h1>RESULTADOS DE LAS ELECCIONES</h1>
    <table class="table">
        <tr>
            <th>CANDIDATOS</th><th>TOTAL DE VOTOS</th>
        </tr>
        <%= lista %>
    </table>

    <div id="grafico2" style="width: 60%; height: 400px;">
      
        
    </div>
 </center>
<script type="text/javascript">
    <%= datosPastel %>
    generarGraficaPastel(datosPastel, "grafico2", "candidato", "totalvotos");

</script>