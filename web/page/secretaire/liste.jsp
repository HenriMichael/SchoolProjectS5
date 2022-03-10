<%@ page import="fonction.*" %>
<%@ page import="model.*" %>
<%
   Etudiant etude = new Etudiant(); 
   List lister = new List();
   lister.setException(new String[]{"Voir les notes"},new String[]{"listeEtudiant.jsp"});
   String[][] list_Etude = etude.listerEtudiant();
%>
<%@ include file="navbar.jsp" %>
<div class="card text-center">
  <div class="card-header">Saisie de notes</div>
  <div class="card-body">
    <form class="form-control" action="">
      <div class="item-wrapper">
        <%
        out.println(lister.getList(list_Etude,new String[]{"id_Etudiant","nom","prenom"}));
        %>  
      </div>     
  </form>
  </div>
</div>
<%@ include file="foot.jsp" %>

