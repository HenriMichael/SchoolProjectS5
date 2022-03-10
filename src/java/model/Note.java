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

public class Note{
    public String[][] resultatNoteParSemetre(String code_Semestre){
        Etudiant etudiante = new Etudiant();
        Semestre seme = new Semestre();
        String[][] list_Etudiante = etudiante.listerEtudiant();
        String[] titre = titreParSemestre(code_Semestre);
        String[][] list_Res = new String[list_Etudiante.length][titre.length];
        int i = 0 , g = 0 , c = 0;
        String[][] matiere_S = seme.listeMatiereParSemestre(code_Semestre);
        String[][] note_E = new String[0][0];
        String note_F = "0";
        for( i = 0 ; i < list_Etudiante.length ; i++){
            c=0;
            for(g = 0 ; g < list_Etudiante[i].length ; g++){
                list_Res[i][c] = list_Etudiante[i][g];
                c++;
            }
            for(g = 0 ; g < matiere_S.length  ; g++){
                note_E = listeNotePar_Semestre_Etudiant_Matiere(code_Semestre,list_Etudiante[i][0],matiere_S[g][1]);
                if(note_E.length > 0){
                    note_F = note_E[0][0];
                }else{
                    note_F = "0";
                }
                list_Res[i][c] =  representationResultat(note_F,matiere_S[g][3]);
                c++;
            }
            String moy = calculeMoyenne(listeNoteParSemtre(code_Semestre,list_Etudiante[i][0]),4,5,calculeSomme(matiere_S,3));
            list_Res[i][c] = moy;
            list_Res[i][c + 1] = representationResultat(moy,"1");
       
        }
        return list_Res;

    }
    public String[] titreParSemestre(String code_Semestre){
        Semestre seme = new Semestre();
        String[][] matiere = seme.listeMatiereParSemestre(code_Semestre);
        String[] titre = new String[matiere.length + 5];
        titre[0] = "id_Etudiant";
        titre[1] = "nom";
        titre[2] = "prenom";
        int i = 0 , g = 3;
        for( i = 0 ; i < matiere.length ; i++){
            titre[g] = matiere[i][1].concat(matiere[i][2]);
            g++;
        }
        titre[g] = "moyenne";
        titre[g+1] = "resultat";
        return titre;
    }
    private String representationResultat(String noteMatiere,String credit){
        System.out.println("note = "+ Double.parseDouble(noteMatiere));
        double note = Double.parseDouble(noteMatiere);
        int cre = Integer.parseInt(credit);
        double res_Note = (note/cre);
        String resultat = "";
        if((res_Note >= 10.0)&&(res_Note < 12.0)){
            resultat = "Passable";
        }
        else if((res_Note >= 12.0)&&(res_Note < 14.0)){
             resultat = "Assez bien";
        }
        else if((res_Note >= 14.0)&&(res_Note < 16.0)){
            resultat ="Bien";
        }
         else if((res_Note >= 16.0)&&(res_Note < 18.0)){
            resultat ="Tres Bien";
        }
         else if(res_Note >= 18.0){
            resultat ="Excellent";
        }
        else if(res_Note < 10.0){
            resultat ="Ajour";
        }
        return resultat;
    }
    private String calculeSomme(String[][] list,int indice){
          int total = 0;
        int i = 0;
        for( i = 0 ; i < list.length ; i++){
            total = total + Integer.parseInt(list[i][indice]);
        }
        String moyenne = String.valueOf(total);
        return moyenne;
    }
    private String calculeMoyenne(String[][] list,int indiceN,int indiceM,String credit){
        double total = 0;
        int i = 0;
        int taille = Integer.parseInt(credit);
        for( i = 0 ; i < list.length ; i++){
            total = total + Double.parseDouble(list[i][indiceN])*Double.parseDouble(list[i][indiceM]);
        }
        String moyenne = String.valueOf(total/taille);
        return moyenne;
    }
    public void validationNote(String id_Etudiant,String code_matiere){
         try{
             String[][] val = getId_Matiere(code_matiere);
             Connection con = PostSingleton.getConnection();
            Statement stmt = con.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE,ResultSet.CONCUR_UPDATABLE);
		   String sql = "UPDATE notes set etat='valider' where Id_Etudiant="+id_Etudiant+" and Id_Matiere="+val[0][0];
           System.out.println(sql);
            stmt.executeUpdate(sql);
        }catch(Exception er){}
    }
    public void ajoutNote(String id_Etudiant, String note,String date_Exam,String id_matiere){
        String resultat = traitement_Resultat(note,id_matiere);
        String[][] credit = creditMatiere(id_matiere);
        try{
             Connection con = PostSingleton.getConnection();
            Statement stmt = con.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE,ResultSet.CONCUR_UPDATABLE);
		   String sql = "Insert into Notes(Id_Etudiant,Id_Matiere,Note,Credit,Resultat,Date_Exam,etat)values("+id_Etudiant+","+id_matiere+","+note+","+credit[0][0]+",'"+resultat+"','"+date_Exam+"','non_valider')";
           System.out.println(sql);
            stmt.executeUpdate(sql);
        }catch(Exception er){}
    }
    public String traitement_Resultat(String note,String id_matiere){
        String[][] credit = creditMatiere(id_matiere);
        String resultat = "Ajour";
        int no = Integer.parseInt(note) * Integer.parseInt(credit[0][0]);
        if( no > 10){
            resultat = "Admis";
        }
        return resultat;
    }
    public String[][] getId_Matiere(String code_matiere){
         Connection con = PostSingleton.getConnection();
          Selection sel = new Selection(con);
          String sql = "select id_matiere from Matiere where  code_Matiere = "+code_matiere;
            System.out.println(sql);
         String[][] list = sel.selectionTable(sql);
          return list;
    }
    public String[][] creditMatiere(String id_matiere){
        Connection con = PostSingleton.getConnection();
          Selection sel = new Selection(con);
          String sql = "select credit_max from Matiere where  id_matiere = "+id_matiere;
            System.out.println(sql);
         String[][] list = sel.selectionTable(sql);
          return list;
    }
    public String[][] listeNotePar_Semestre_Etudiant_Matiere(String code_Semestre,String id_Etudiant,String code_matiere){
         Connection con = PostSingleton.getConnection();
          Selection sel = new Selection(con);
          String sql = "select note,credit from noteeleves where Id_Etudiant = "+id_Etudiant+" and code_Semestre="+code_Semestre+" and code_matiere="+code_matiere;
         String[][] list = sel.selectionTable(sql);
          return list;
    }
    public String[][] listeNoteParSemtre(String code_Semestre,String id_Etudiant){
         Connection con = PostSingleton.getConnection();
          Selection sel = new Selection(con);
          String sql = "select nom,prenom,code_matiere,nom_matiere,note,credit,resultat,etat,code_semestre from noteeleves where Id_Etudiant = "+id_Etudiant+" and code_Semestre="+code_Semestre;
         String[][] list = sel.selectionTable(sql);
          return list;
    }
    public String[][] filtreListeNote(String[] contexte,String[] value,String[] type){
          Connection con = PostSingleton.getConnection();
          Selection sel = new Selection(con);
          return sel.selectionTable(analyseFiltre(contexte,value,"Noteeleves",type));
    }
    private String analyseFiltre(String[] contexte,String[] values,String table,String[] type){
        String rep = "select nom,prenom,code_matiere,nom_matiere,note,credit,resultat,code_semestre from "+table ;
        int i = 0 , c = 0;
        for(i = 0 ; i < values.length ; i++){
            if(values[i].isEmpty() == false){
                if(type[i].equals("number") == true){
                   if(c == 0){
                         rep = rep + " where "+contexte[i] +" = "+values[i]+"";
                     }else{
                         rep = rep + " and "+contexte[i] +" = "+values[i]+"";
                     } 
                }else{
                     if(c == 0){
                         rep = rep + " where "+contexte[i] +" like '"+values[i]+"'";
                     }else{
                         rep = rep + " and "+contexte[i] +" like '"+values[i]+"'";
                     }
                }
                c++;
            }
        }
        System.out.println(rep);
        return rep;
    }
}
