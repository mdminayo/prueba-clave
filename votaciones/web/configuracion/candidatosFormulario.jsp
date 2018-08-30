<%-- 
    Document   : candidatosFormulario
    Created on : 25/07/2018, 11:51:36 AM
    Author     : PC27
--%>

<%@page import="Clases.Candidato"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%
    String accion= request.getParameter("accion");
    Candidato candidato;
    if(accion.equals("Modificar")) candidato=new Candidato(request.getParameter("id"));
    else candidato=new Candidato();
%>

<center>
        <h1><%=  accion.toUpperCase() %> CANDIDATO</h1>
        <form name="formulario" method="post" action="index.jsp?CONTENIDO=configuracion/candidatosActualizar.jsp" >
            <table border="0">
                <tr>
                    <th>Identificación</th>
                    <td>
                        <input type="text" name="identificacion" size="12" maxlength="30" placeholder="Identificacion" value="<%= candidato.getIdentificacion() %> " required=""/>
                    </td>
                </tr>
                <tr>
                    <th>Nombres</th>
                    <td>
                        <input type="text" name="nombre" size="50" maxlength="50" placeholder="Nombres" value=" <%= candidato.getNombre()%> " required=""/>
                    </td>
                </tr>
                <tr>
                    <th>Apellidos</th>
                    <td>
                        <input type="text" name="apellido" size="50" maxlength="50" placeholder="Apellidos" value=" <%= candidato.getApellido()%> " required=""/>
                    </td>
                </tr>
                
                <tr>
                    <th>Descripción</th>
                    <td>
                        <textarea name="descripcion" cols="25" rows="5"  placeholder="Descripción" > <%= candidato.getDescripcion()%> </textarea>
                    </td>
                </tr>
                <tr>
                    <th>Foto</th>
                    <td>
                        <input type="file" name="foto" accept="image/png, .jpeg, .jpg, image/gif" />
                    </td>
                    <td>
                        <img src="imagenes/<%= candidato.getFoto() %>" style="width:200px; high:200px;"  />
                    </td>
                </tr>
                
            </table>
                    <br>
                     <input type="submit" name="accion" value="<%= accion %>"/>
                    <input type="hidden" name="idanterior" value=" <%= candidato.getId() %> "/>
                   
                   
        </form>
    </center>
    

