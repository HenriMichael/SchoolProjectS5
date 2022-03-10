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
public class Formulaire{
    private String[] texte;
    private String[] type;
    private String form;
    private String action;
    private String[][][] select = new String[0][0][0];
    private String[] type_sele = new String[0];
    public Formulaire(String[] text,String[] type,String action){
        this.texte = text;
        this.type = type;
        this.action = action;
    }
    public void setSelect(String[][][] select,String[] type_sele){
        this.select = select;
        this.type_sele = type_sele;
    }
    public String getFormulaire(){
        form = "<form action = '"+action+"' methode='get'>";
        int i = 0 , g = 0;
        for(i = 0 ; i < texte.length ;i++){
            form = form + "<input type='"+type[i]+"' name = '"+texte[i]+"' placeholder = '"+texte[i]+"'>";
        }
        for(i = 0 ; i < select.length ; i++){
            form = form + "<select name='"+type_sele[i]+"'>";
            for(g = 0 ; g < select[i].length ; g ++){
                form = form + "<option value='"+select[i][g][0]+"' > "+select[i][g][1]+select[i][g][2]+"</option>";
            }
            form = form + "</select>";
        }
        form = form + "<input type='submit' value='valide'></form>";
        return form;
    }
}
