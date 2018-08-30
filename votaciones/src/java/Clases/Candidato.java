/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Clases;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import Clases.ConectorBD;


/**
 *
 * @author PC27
 */
public class Candidato {
    private String id;
    private String identificacion;
    private String nombre;
    private String apellido;
    private String descripcion;
    private String foto;

    public Candidato() {
    }

    public Candidato(String id) {
        String cadenaSQL=" select id, identificacion, nombre, apellido,  descripcion, foto from candidato where id="+id;
        ConectorBD conector=new ConectorBD();
        conector.conectar();
        try {
            PreparedStatement sentencia= conector.conexion.prepareStatement(cadenaSQL);
            ResultSet resultado=sentencia.executeQuery();
            if(resultado.next()){
                this.id=id;
                this.identificacion=resultado.getString("identificacion");
                this.nombre=resultado.getString("nombre");
                this.apellido=resultado.getString("apellido");
                this.descripcion=resultado.getString("descripcion");
                this.foto=resultado.getString("foto");
            }
        } catch (Exception e) {
            System.out.println("Error al ejecutar "+cadenaSQL+"  Mensaje: "+e.getMessage());
        }
        
    }

    public String getApellido() {
        return apellido;
    }

    public void setApellido(String apellido) {
        this.apellido = apellido;
    }
    
    
    

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getIdentificacion() {
        return identificacion;
    }

    public void setIdentificacion(String identificacion) {
        this.identificacion = identificacion;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public String getFoto() {
        return foto;
    }
  
    public void grabar(){
        String cadenaSQL="insert into candidato(identificacion, nombre, apellido, descripcion, foto) values"
                + "('"+this.identificacion+"','"+this.nombre+"', '"+this.apellido+"', '"+this.descripcion+"','"+this.foto+"');";
        ConectorBD.actualizarDatos(cadenaSQL);
    }
    
    
    public void eliminar(){
        String cadenaSQL="delete from candidato where id="+this.id;
        ConectorBD.actualizarDatos(cadenaSQL);
    }   
    public void setFoto(String foto) {
        this.foto = foto;
    }
    
  
    
    public void modificar(String idAnterior){
        String cadenaSQL="update candidato set id="+ this.id+",  identificacion='"+this.identificacion+"', nombre='"+this.nombre+"',"
                + "apellido='"+this.apellido+"', descripcion='"+this.descripcion+"',foto='"+this.foto+"' where id="+idAnterior;
        ConectorBD.actualizarDatos(cadenaSQL);
    }
    
    public static String [][] getDatos(String filtro){
        String cadenaSQL="select id, identificacion, nombre, apellido, descripcion, foto from candidato ";
        if (filtro!=null) cadenaSQL+=" where "+filtro;//permite hacer el filtro que necesitamos.                                                                                                                                                                                           
        String datos[][]= ConectorBD.getDatos(cadenaSQL);
        return datos;
    }
    
    public static Candidato [] getDatosEnObjetos(String filtro){
        String datos[][]= Candidato.getDatos(filtro);
        Candidato[] candidatos=new Candidato[datos.length];
        for (int i = 0; i < datos.length; i++) {
            if(datos[i][0]!=null){
            Candidato candidato= new Candidato();
            candidato.setId(datos[i][0]);
            candidato.setIdentificacion(datos[i][1]);
            candidato.setNombre(datos[i][2]);
            candidato.setApellido(datos[i][3]);
            candidato.setDescripcion(datos[i][4]);
            candidato.setFoto(datos[i][5]);
           
            candidatos[i]=candidato; 
            }
          
        }
        return candidatos;
    }
    
}
