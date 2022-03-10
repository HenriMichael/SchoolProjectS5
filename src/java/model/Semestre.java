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
public class Semestre{

    public String[][] ListeSemestre(){
        Connection con = PostSingleton.getConnection();
          Selection sel = new Selection(con);
          return sel.selectionTable("select Id_Semestre,Code_Semestre from Semestre");
    }
    public String[][] listeMatiere(){
         Connection con = PostSingleton.getConnection();
          Selection sel = new Selection(con);
          return sel.selectionTable("select id_matiere , code_matiere , nom_matiere , credit_max from Matiere");
    }
     public String[][] listeMatiereParSemestre(String code_Semestre){
         Connection con = PostSingleton.getConnection();
          Selection sel = new Selection(con);
          String sql = "select id_matiere , code_matiere , nom_matiere , credit_max from Semestriel"+" where code_Semestre="+code_Semestre;
          return sel.selectionTable(sql);
    }
}