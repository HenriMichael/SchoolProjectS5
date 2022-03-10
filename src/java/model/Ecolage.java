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
public class Ecolage{

    public String[][] liste_Ecolage_Par_Niveau(){
         Connection con = PostSingleton.getConnection();
          Selection sel = new Selection(con);
          return sel.selectionTable("select Nom_classe,Ecolage from Classe");
    }
}
