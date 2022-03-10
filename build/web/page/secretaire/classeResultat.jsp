<%@ page import="fonction.*" %>
<%@ page import="model.*" %>
<%
    Semestre seme = new Semestre();
    String[][] list_S = seme.ListeSemestre();
    List lister = new List();
    Note note = new Note();
    String[][] titre_S = new String[0][0];
    String[][] list_Note = new String[0][0];
    int i = 0;
%>
<%@ include file="navbar.jsp" %>
<div class="card text-center">
  <div class="card-header">Saisie de notes</div>
  <div class="col-md-12">
    <div class="col-md-4">
        <h1>Resultat par classe</h1>
        <%
            for( i = 0 ; i < list_S.length ; i++){
                out.println("<p> S"+list_S[i][1]+"</p>");
                out.println(lister.getList(note.resultatNoteParSemetre(list_S[i][1]),note.titreParSemestre(list_S[i][1])));
                out.println("</br>");
            }
        %>
      </div>
  </div>
</div>
<%@ include file="foot.jsp" %>

