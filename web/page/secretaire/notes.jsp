<%@ page import="fonction.*" %>
<%@ page import="model.*" %>
<%
    Semestre seme = new Semestre();
    Note note = new Note();
    String[][][] select = new String[1][0][0];
    select[0] = seme.listeMatiere();
    String[] type_sele = new String[]{"id_Matiere"};
    String[] text = new String[]{"id_Etudiant","note","date_Exam"};
    String[] type = new String[]{"number","number","date"};
    String[] values = new String[text.length+type_sele.length];
    int i = 0;
    boolean entre = false;
    for( i = 0 ; i < text.length ; i++){
        values[i] = request.getParameter(text[i]);
        if(values[i] != null){
            entre = true;
        }
    }
    values[values.length -1] = request.getParameter("id_Matiere");
    if(entre == true){
        note.ajoutNote(values[0], values[1],values[2],values[3]);
    }
    Formulaire f = new Formulaire(text,type,"notes.jsp");
    f.setSelect(select,type_sele);
%>
<%@ include file="navbar.jsp" %>
<div class="card text-center">
  <div class="card-header">Saisie de notes</div>
  <div class="card-body">
    <form class="form-control" action="">
      <div class="item-wrapper">
        <%
            out.println(f.getFormulaire());
        %>
      </div>     
  </form>
  </div>
</div>
<%@ include file="foot.jsp" %>

