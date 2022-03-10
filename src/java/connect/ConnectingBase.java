/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package connect;
import java.sql.*;
/**
 *
 * @author macbook
 */
public class ConnectingBase{
	private String port = "1521";
    private Connection con ;
	private String url;
	private String baseForname;
	/// Postgres = "org.postgresql.Driver";
	/// ORACLE = "oracle.jdbc.driver.OracleDriver";
	/// URL POSTGRESS = "jdbc:postgresql://localhost:1532/DATABASE";
	public ConnectingBase(String base,String ur){
		baseForname = base;
		url = ur;
	}
	//private  Statement stmt;
	public void setUrl(String ur){
		url = ur;
	}
	private String getUrl(){
		//String url = "jdbc:oracle:thin:@localhost:1521:ORCL";
		return url;
	}
	public void connectingOracle(String username,String password) throws Exception{
                                Class.forName("org.postgresql.Driver");
      				con = DriverManager.getConnection(getUrl(),username,password);
					 con.setAutoCommit(true);
	}
	public  Connection getConnectionOracle(){
		return con;
	}
	public void validCommit()throws Exception{
		con.commit();
	}
	public void deleteRollback()throws Exception{
		con.rollback();
	}
}
