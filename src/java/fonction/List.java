/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package fonction;

/**
 *
 * @author macbook
 */
public class List{
    private String[] exces = new String[0];
    private String[] liens = new String[0];
    private boolean validationNote = false;
    private String liensValidation = "";
    private String idEt = "";
    public void setException(String[] exces,String[] liens){
        this.exces = exces;
        this.liens = liens;
    }
    public void setValidation(boolean v,String liensValidation,String idEt){
        this.validationNote = v;
        this.liensValidation = liensValidation;
        this.idEt = idEt;
    }
    public String getList(String[][] values,String[] title){
        String rep = "<table class=\"table table-striped table-hover\" width = '100' border='1'>";
        int i = 0 ,g = 0 , e = 0;
        rep = rep + "<tr>";
        for(i = 0 ; i < title.length ; i++){
            rep = rep + "<th scope=\"col\">"+title[i]+"</th>";
        }
        rep = rep + "</tr>";
        for( i = 0 ; i < values.length ; i ++){
            rep = rep + "<tr>";
            for( g = 0 ; g < values[i].length ; g++){
                rep = rep + "<td>"+values[i][g]+"</td>";
            }
            for( e = 0 ; e < exces.length ; e++){
                rep = rep + "<td><a href = '"+liens[e]+"?id="+values[i][0]+"'>"+exces[e]+"</a></td>";
            }
            if(validationNote == true){
                rep = rep + "<td><a href = '"+liensValidation+"?idM="+values[i][2]+"&&id="+idEt+"'>validation</a></td>";
            }
             rep = rep + "</tr>";
        }
        rep = rep + "</table>";
        return rep;
    }
}
