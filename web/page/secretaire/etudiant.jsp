<%@ page import="fonction.*" %>
<%@ page import="model.*" %>
<%
    String[] text = new String[]{"Nom","Prenom","Age","Sexe","Date_Naissance","Date_Entre","Email","Password"};
    String[] type = new String[]{"text","text","number","text","date","date","email","password"};
    String[] value = new String[text.length];
    Etudiant etudiant = new Etudiant();
    int i = 0 ;
    boolean enter = false;
    for(i = 0 ; i < value.length ; i++){
        value[i] =  request.getParameter(text[i]);
        if(value[i] != null){
            enter = true;
        }
    }
    if(enter == true){
        etudiant.ajout_Etudiant(value);
    }
%>
<%@ include file="navbar.jsp" %>
<div class="card text-center">
  <div class="card-header">Saisie des etudiants</div>
  <div class="card-body">
    <form class="form-control" action="">
      <div class="item-wrapper">
        <%
        Formulaire f = new Formulaire(text,type,"etudiant.jsp");
        out.println(f.getFormulaire());
        %>
      </div>     
  </form>
  </div>
</div>
<%@ include file="foot.jsp" %>

