<%@ page import="fonction.*" %>
<%@ page import="model.*" %>
<%
    String[] text_S = new String[]{"code_semestre","nom","prenom"};
    String[] type_S = new String[]{"number","text","text"};
    String[] value_S = new String[text_S.length];
    String[][] liste = new String[0][0];
    boolean entre_S = false;
    List list = new List();
    int i = 0 ;
    for( i = 0 ; i < value_S.length ; i++){
        value_S[i] =  request.getParameter(text_S[i]);
        if(value_S[i] != null){
            entre_S = true;
        }
    }
    Note note = new Note();
    if(entre_S == true){
        liste = note.filtreListeNote(text_S,value_S,type_S);
        out.println("<p>"+liste.length+"</p>");
    }
%>
<%@ include file="navbar.jsp" %>
<div class="card text-center">
  <div class="card-header">Notes</div>
  <div class="card-body">
    <h5 class="card-title">Critere de recherche</h5>
    <%
        Formulaire l = new Formulaire(text_S,type_S,"noteSem.jsp");
        out.println(l.getFormulaire());
    %>
    <%
        out.println(list.getList(liste,new String[]{"nom","prenom","code_matiere","nom_matiere","note","credit","resultat","code_simestre"}));
    %>
  </div>
</div>
<%@ include file="foot.jsp" %>

