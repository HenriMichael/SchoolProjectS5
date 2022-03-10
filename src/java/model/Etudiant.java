/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import connect.*;
import java.sql.*;
import java.io.*;
import java.util.*;
import fonction.*;
public class Etudiant{
    private String id;
    private String nom;
    private String prenom;
    private int age;
    private String date_nee;
    private String date_entre;
    private String email;
    private String password;
    public void ajout_Etudiant(String[] etude){
        try{
             Connection con = PostSingleton.getConnection();
            Statement stmt = con.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE,ResultSet.CONCUR_UPDATABLE);
		    stmt.executeUpdate(traitementAjout(etude));
        }catch(Exception er){System.out.println(er.getMessage());};
    }
    private String traitementAjout(String[] etude){
        int i = 0;
        //Insert into Etudiant(Nom,Prenom,Age,Sexe,Date_Naissance,Date_Entre,Email,Password)values('Rakoto','Bosco',14,'Masculin','2008-05-24','2015-06-18','gru@gmail.com','12345');
        String rep = "insert into Etudiant(Nom,Prenom,Age,Sexe,Date_Naissance,Date_Entre,Email,Password)values(";
        for(i = 0 ; i < etude.length -1 ; i++){
            if( i == 2){
                rep = rep + etude[i] + ",";
            }else{
                rep = rep +"'"+ etude[i] + "'"+",";
            }
        }
        rep = rep +"'" +etude[etude.length -1] + "'" + ")";
          System.out.println(rep);
        return rep;
    }
    public String[][] listerEtudiant(){
         Connection con = PostSingleton.getConnection();
          Selection sel = new Selection(con);
          return sel.selectionTable("select id_etudiant ,nom,prenom from Etudiant");
    }
}