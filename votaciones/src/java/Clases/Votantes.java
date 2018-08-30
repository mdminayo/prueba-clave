/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Clases;

/**
 *
 * @author PC27
 */
public class Votantes {
    private String identificacionVotante;
    private String idCandidato;

    public Votantes() {
    }

    public String getIdentificacionVotante() {
        return identificacionVotante;
    }

    public void setIdentificacionVotante(String identificacionVotante) {
        this.identificacionVotante = identificacionVotante;
    }

    public String getIdCandidato() {
        return idCandidato;
    }

    public void setIdCandidato(String idCandidato) {
        this.idCandidato = idCandidato;
    }
    
      
    public void grabar(){
        String cadenaSQL="insert into votantes(identificacionvotante, idcandidato) values"
                + "('"+this.identificacionVotante+"',"+this.idCandidato+");";
        ConectorBD.actualizarDatos(cadenaSQL);
    }
    
    
    public void eliminar(){
        String cadenaSQL="delete from candidato where id="+this.identificacionVotante;
        ConectorBD.actualizarDatos(cadenaSQL);
    } 
    
    public static String [][] getDatos(String filtro){
        String cadenaSQL="select  identificacionvotante, idcandidato from votantes ";
        if (filtro!=null) cadenaSQL+=" where "+filtro;                                                                                                                                                                                           
        String datos[][]= ConectorBD.getDatos(cadenaSQL);
        return datos;
    }
    
    public static Votantes [] getDatosEnObjetos(String filtro){
        String datos[][]= Votantes.getDatos(filtro);
        Votantes[] votantes=new Votantes[datos.length];
        for (int i = 0; i < datos.length; i++) {
            if(datos[i][0]!=null){
            Votantes votante= new Votantes();
            votante.setIdentificacionVotante(datos[i][0]);
            votante.setIdCandidato(datos[i][1]);
           
           
            votantes[i]=votante; 
            }
          
        }
        return votantes;
    }
    
    public static String [][] getValidar (String identificacion){
        String cadenaSQL=" select identificacionvotante from votantes where identificacionvotante='"+identificacion+"'";
        String datos[][]= ConectorBD.getDatos(cadenaSQL);
        return datos;
    }
    
    public static String[][] getResultados(){
        String cadenaSQL="select count(idcandidato) as total , concat(nombre,' ',apellido) as candidato from votantes full outer join candidato on idcandidato=id group by candidato order by total asc";
        String datos[][] = ConectorBD.getDatos(cadenaSQL);
        return datos;
    }
    
    
}
