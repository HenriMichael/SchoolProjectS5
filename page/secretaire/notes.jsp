<%@ include file="navbar.jsp" %>
<div class="card text-center">
  <div class="card-header">Saisie de notes</div>
  <div class="card-body">
    <form class="form-control" action="">
      <div class="item-wrapper">
        <div>
          <label class="form-item" for="">Num ETU : </label>
          <input type="text" name="" id="">
        </div> 
        <div>
          <label class="form-item" for="">Matiere : </label>
          <input type="text" name="" id="">
        </div>
        <div>
          <label class="form-item" for="">Date d'exam : </label>
          <input type="date" name="" id="">
        </div>  
        <div>
          <label class="form-item" for="">Note : </label>
          <input type="number" name="" id="">
        </div>  
        <button  type="submit" class="btn btn-primary form-item">OK</button> 
      </div>     
  </form>
  </div>
</div>
<%@ include file="foot.jsp" %>

