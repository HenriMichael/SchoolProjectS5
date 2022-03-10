<%@ page import="fonction.*" %>
<%@ page import="model.*" %>
<%
    String[] text_M = new String[]{"nom","prenom","code_matiere","nom_matiere"};
    String[] type_M = new String[]{"text","text","number","text"};
    String[] value_M = new String[text_M.length];
    String[][] liste = new String[0][0];
    boolean entre_M = false;
    List list = new List();
    int i = 0 ;
    for( i = 0 ; i < value_M.length ; i++){
        value_M[i] =  request.getParameter(text_M[i]);
        if(value_M[i] != null){
            entre_M = true;
        }
    }
    Note note = new Note();
    if(entre_M == true){
        liste = note.filtreListeNote(text_M,value_M,type_M);
        out.println("<p>"+liste.length+"</p>");
    }
%>
<%@ include file="navbar.jsp" %>
<div class="card text-center">
  <div class="card-header">Notes</div>
  <div class="card-body">
    <h5 class="card-title">Critere de recherche</h5>
    <%
        Formulaire f = new Formulaire(text_M,type_M,"notes.jsp");
        out.println(f.getFormulaire());
    %>
    <%
        out.println(list.getList(liste,new String[]{"nom","prenom","code_matiere","nom_matiere","note","credit","resultat","code_simestre"}));
    %>
  </div>
</div>
<%@ include file="foot.jsp" %>

