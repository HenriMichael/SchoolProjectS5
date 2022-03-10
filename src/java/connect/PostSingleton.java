/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package connect;

import java.sql.Connection;
import java.util.logging.Level;
import java.util.logging.Logger;
/**
 *
 * @author macbook
 */
public class PostSingleton extends ConnectingBase{
    
    private static PostSingleton instance ;
    
    private PostSingleton() {
        super("", "jdbc:postgresql://localhost:5435/school");
        try {
            connectingOracle("postgres","postgres");
        } catch (Exception ex) {
            Logger.getLogger(PostSingleton.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    public synchronized static Connection getConnection(){
        if(instance==null)
            instance=new PostSingleton();
         return instance.getConnectionOracle();
    }
    
}