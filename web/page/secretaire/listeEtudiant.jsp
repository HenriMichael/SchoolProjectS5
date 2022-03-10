<%@ page import="fonction.*" %>
<%@ page import="model.*" %>
<%
    Semestre semes = new Semestre();
    Note note = new Note();
    String[][] list_seme = semes.ListeSemestre();
    String[][][] liste_Note = new String[list_seme.length][0][0];
    String id = request.getParameter("id");
    int i = 0 ;
    for(i = 0 ; i < list_seme.length ; i++){
        liste_Note[i] = note.listeNoteParSemtre(list_seme[i][1],id);
    }
    List lister = new List();
    lister.setValidation(true,"listeEtudiant.jsp",id);
    String idM = request.getParameter("idM");
    if(idM != null){
        note.validationNote(id,idM);
    }
%>
<%@ include file="navbar.jsp" %>
<div class="card text-center">
  <div class="card-header">Saisie de notes</div>
  <div class="card-body">
    <form class="form-control" action="">
      <div class="item-wrapper">
        <h1>Liste Note</h1>
	<%

        for(i = 0 ; i < liste_Note.length ; i++){
            out.println(lister.getList(liste_Note[i],new String[]{"nom","prenom","code_matiere","nom_matiere","note","credit","resultat","etat","code_simestre"}));
            out.println("</br>");
        }
        %> 
      </div>     
  </form>
  </div>
</div>
<%@ include file="foot.jsp" %>

