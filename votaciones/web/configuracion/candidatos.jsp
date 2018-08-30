<%-- 
    Document   : candidatos.jsp
    Created on : 25/07/2018, 11:36:56 AM
    Author     : PC27
--%>

<%@page import="Clases.Candidato"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    String lista="";
    Candidato[] datos= Candidato.getDatosEnObjetos(null);
    for (int i = 0; i < datos.length; i++) {
            Candidato candidatos= datos[i];
            lista+="<tr>";
            lista+="<td>" + candidatos.getIdentificacion() + "</td>";
            lista+="<td>" + candidatos.getNombre()+ "</td>";
            lista+="<td>" + candidatos.getApellido()+ "</td>";
            lista+="<td>" + candidatos.getDescripcion()+ "</td>";
            lista+="<td><a href='index.jsp?CONTENIDO=configuracion/votar.jsp&accion=votar&id="+ candidatos.getId()+" ' ><img src='imagenes/" + candidatos.getFoto()+ "' style=' width:200px; high:200px;' title='Votar' /></a></td>";
            lista+="<td>" ;
            lista+="<a href='index.jsp?CONTENIDO=configuracion/candidatosFormulario.jsp&accion=Modificar&id="+candidatos.getId()+"'>"
                    + "<img src='presentacion/imagenes/modificar.png' title='Modificar' ></a>";
            lista+="<img src='presentacion/imagenes/eliminar.png' title='Eliminar' onClick='eliminar("+candidatos.getId()+");'/>";
            lista+="</td>";
            lista+="</tr>";
        }
%>
<center>
    <br><br>
    <h1>LISTA DE CANDIDATOS</h1>
    <table border="1" >
    <tr><th>IDENTIFICACIÓN</th><th>NOMBRES</th><th>APELLIDOS</th><th>DESCRIPCIÓN</th><th>VOTA AQUÍ ||</th>
        <th>
            <a href="index.jsp?CONTENIDO=configuracion/candidatosFormulario.jsp&accion=Adicionar">
                <img src="presentacion/imagenes/adicionar.png" title="Adicionar"/></a>
        </th>
    </tr>
    <%= lista %>
</table>
</center>
<script type="text/javascript">
    function eliminar(id){
        if(confirm("¿Está seguro de eliminar este registro?"))
             location='index.jsp?CONTENIDO=configuracion/candidatosActualizar.jsp&accion=Eliminar&id='+id;
    }
</script>