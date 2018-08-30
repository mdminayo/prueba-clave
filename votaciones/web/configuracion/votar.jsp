<%-- 
    Document   : votar
    Created on : 25/07/2018, 02:02:59 PM
    Author     : PC27
--%>

<%@page import="Clases.Votantes"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%
    String idCandidato= request.getParameter("id");
    String accion= request.getParameter("accion");
     
    if(accion.equals("votar")){
        Votantes votar=new Votantes();
    }
    
%>

<center>
        <h1>VATACIONES 2018</h1>
        <form name="formulario" method="post" action="index.jsp?CONTENIDO=configuracion/votacionesActualizar.jsp" >
            <table border="0">
                <tr>
                    <th>Identificación</th>
                    <td>
                        <input type="text" name="identificacion" size="12" maxlength="30" placeholder="Identificacion" value="" required=""/>
                    </td>
                </tr>
                </table>
            <br>
                    <input type="hidden" name="idcandidato" value="<%= idCandidato %>" />
                    <input type="submit" name="accion" value="<%= accion %>" />
        </form>