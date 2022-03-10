<%@ include file="navbar.jsp" %>
<div class="card text-center">
  <div class="card-header">Matiere</div>
  <div class="card-body">
    <h5 class="card-title">Notes matiere</h5>
    <form action="">  
        <label class="form-item" for="">Date d'examen : </label>
        <input type="date" name="" id="">
        <table class="table table-striped table-hover">
          <thead>
              <tr>
                <th scope="col">Num ETU</th>
                <th scope="col">Note</th>
                <th scope="col">Credits</th>
              </tr>
            </thead>
            <tbody>
              <tr>
                <td>001615</td>
                <td>15</td>
                <td>7</td>
              </tr>
            </tbody>
        </table>
        <button  type="submit" class="btn btn-primary form-item">Valider</button> 
    </form>
  </div>
</div>
<%@ include file="foot.jsp" %>

