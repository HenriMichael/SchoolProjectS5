/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package fonction;

import java.sql.*;
import java.io.*;
import java.util.*;

/**
 *
 * @author macbook
 */

///Selection dans un table dans une base de donne
public class Selection{
    private Connection con;///connection a connecte
    public Selection(Connection con){
        try{
               this.con = con;
        }catch(Exception er){}
    }
    public String[][] selectionTable(String query){
        ///query = la requette a execute
        ResultSet res = null;
        String[][] list = new String[0][0];
        try{
             Statement stmt = this.con.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE,ResultSet.CONCUR_UPDATABLE);
              res = stmt.executeQuery(query);
              list =  geterLaResponseDeResulset(res);
        }catch(Exception er){}
        return list;
    }
    private String[][] geterLaResponseDeResulset(ResultSet resd)throws SQLException,Exception{///fonction qui prend les valeur de resultSet c a d dans le table ou view
        ResultSetMetaData af = resd.getMetaData();
		ResultSet newRes = resd;
		String[][] table = new String[getNumberResult(newRes)][af.getColumnCount()];
		int i = 0 ;
		int g = 0 ;
		int c = 0;
		while(resd.next()){
			c = 0;
			for(g = 1 ; g <= af.getColumnCount() ; g++){
				table[i][c] = resd.getString(g);
				c++;
			}
			i++;
		} 
		return table;
    }
	private int getNumberResult(ResultSet res)throws SQLException,Exception{///foction ui gette le nombre de ligne dans le table ou view
		int num = 0;
		while(res.next()){
			num++;
		}
		res.beforeFirst();
		return num;
	}
}
