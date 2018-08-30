<%-- 
    Document   : votacionesActualizar
    Created on : 25/07/2018, 02:14:38 PM
    Author     : PC27
--%>

<%@page import="Clases.Votantes"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
char accion=request.getParameter("accion").charAt(0);
Votantes votar=new Votantes();
String identificacionVotante=request.getParameter("identificacion");
String alerta="";
switch(accion){
    case 'v': 
        String [][] validacion= Votantes.getValidar(identificacionVotante);
        if(validacion.length>0){
             alerta+="<script type='text/javascript'> ";
             alerta+="alert('Usted Ya Votó');";
             alerta+="location='index.jsp?CONTENIDO=configuracion/candidatos.jsp';";
             alerta+="</script>";
        } else{
             votar.setIdentificacionVotante(identificacionVotante);
             votar.setIdCandidato(request.getParameter("idcandidato"));
             votar.grabar();
             alerta+="<script type='text/javascript'> ";
             alerta+="alert('Gracias por su voto');";
             alerta+="location='index.jsp?CONTENIDO=configuracion/candidatos.jsp';";
             alerta+="</script>";
    }
      
    break;
   
}
%>
<html>
        <%= alerta %>
</html>