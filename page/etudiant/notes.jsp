<%@ include file="navbar.jsp" %>
<div class="card text-center">
  <div class="card-header">Notes</div>
  <div class="card-body">
    <h5 class="card-title">Critere de recherche</h5>
    <form action="">
      <div class="d-flex justify-content-center form-div mb-5">
        <label class="form-item" for="matiere-sel">Matiere : </label>
        <div class="custom-select" style="width:200px;">
        <select>
          <option value="">Math</option>
          <option value="">Info</option>
        </select>
        </div>
        <button  type="submit" class="btn btn-primary form-item">Rechercher</button>
      </div>  
    </form>
    <form action="">
      <div class="d-flex justify-content-center form-div">
        <label class="form-item" for="matiere-sel">Semestre : </label>
        <div class="custom-select" style="width:200px;">
        <select>
          <option value="">S1</option>
          <option value="">S2</option>
        </select>
        </div>
        <button  type="submit" class="btn btn-primary form-item">Rechercher</button>
      </div>  
    </form>
  </div>
</div>
<%@ include file="foot.jsp" %>

