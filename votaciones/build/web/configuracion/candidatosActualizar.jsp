<%-- 
    Document   : candidatosActualizar
    Created on : 25/07/2018, 12:05:37 PM
    Author     : PC27
--%>

<%@page import="Clases.Candidato"%>
<%
char accion=request.getParameter("accion").charAt(0);
Candidato candidato=new Candidato();
switch(accion){
    case 'A': 
       candidato.setIdentificacion(request.getParameter("identificacion"));
       candidato.setNombre(request.getParameter("nombre"));
       candidato.setApellido(request.getParameter("apellido"));
       candidato.setDescripcion(request.getParameter("descripcion"));
       candidato.setFoto(request.getParameter("foto"));
       candidato.grabar();
    break;
    case 'M': 
       candidato.setId(request.getParameter("idanterior"));
       candidato.setIdentificacion(request.getParameter("identificacion"));
       candidato.setNombre(request.getParameter("nombre"));
       candidato.setApellido(request.getParameter("apellido"));
       candidato.setDescripcion(request.getParameter("descripcion"));
       candidato.setFoto(request.getParameter("foto"));
       candidato.modificar(request.getParameter("idanterior"));
    break;
    case 'E': 
        candidato.setId(request.getParameter("id"));
        candidato.eliminar();
        break;
}
%>
<html>
    <script type="text/javascript">
        location="index.jsp?CONTENIDO=configuracion/candidatos.jsp";
    </script>
</html>
