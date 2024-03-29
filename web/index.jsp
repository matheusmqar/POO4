<!doctype html>
<html lang="pt-br">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link rel="stylesheet" href="css/estilo.css">
    <title>�nicio</title>
  </head>
  <body>
     <%@include file="WEB-INF/jspf/navbar.jspf" %>
     
    <div class="container teste">
        <div class="row justify-content-center main">
           <div class="col-md-3 client-div">
              <img src="images/client.png" class="image" alt="#">
              <h2><a class="btn btn-info btn-lg" href="customers.jsp">Clientes</a></h2>
           </div>
           <div class=" col-md-3 manu-div">
              <img src="images/manu.png" class="image" alt="#">
              <h2><a class="btn btn-info btn-lg" href="manufacturer.jsp">Fabricantes</a></h2>
           </div>
        </div>
     </div>
     
     <div class="album py-5 bg-dark">
     <div class="container">
      <div class="row">
       <div class="col-md-3">
          <div class="card mb-4 shadow-sm">
            <img class="bd-placeholder-img card-img-top" src="../images/matheus-francisco.jpg" width="100%" height="225" xmlns="http://www.w3.org/2000/svg" preserveAspectRatio="xMidYMid slice" focusable="false" role="img" aria-label="Placeholder: Thumbnail"><title>Placeholder</title><rect width="100%" height="100%" fill="#55595c"/><text x="50%" y="50%" fill="#eceeef" dy=".3em"></text></img>
            <div class="card-body">
                <h4 class="card-text">Matheus Francisco</h4>
            </div>
          </div>
        </div>
        <div class="col-md-3">
          <div class="card mb-4 shadow-sm">
            <img class="bd-placeholder-img card-img-top" src="../images/roberta.jpg" width="100%" height="225" xmlns="http://www.w3.org/2000/svg" preserveAspectRatio="xMidYMid slice" focusable="false" role="img" aria-label="Placeholder: Thumbnail"><title>Placeholder</title><rect width="100%" height="100%" fill="#55595c"/><text x="50%" y="50%" fill="#eceeef" dy=".3em"></text></img>
            <div class="card-body">
                <h4 class="card-text">Roberta Novaes</h4>
            </div>
          </div>
        </div>
        <div class="col-md-3">
          <div class="card mb-4 shadow-sm">
            <img class="bd-placeholder-img card-img-top" src="../images/matheus-marques.jpg" width="100%" height="225" xmlns="http://www.w3.org/2000/svg" preserveAspectRatio="xMidYMid slice" focusable="false" role="img" aria-label="Placeholder: Thumbnail"><title>Placeholder</title><rect width="100%" height="100%" fill="#55595c"/><text x="50%" y="50%" fill="#eceeef" dy=".3em"></text></img>
            <div class="card-body">
                <h4 class="card-text">Matheus Marques</h4>
            </div>
          </div>
        </div>
        <div class="col-md-3">
          <div class="card mb-4 shadow-sm">
            <img class="bd-placeholder-img card-img-top" src="../images/matheus.jpg" width="100%" height="225" xmlns="http://www.w3.org/2000/svg" preserveAspectRatio="xMidYMid slice" focusable="false" role="img" aria-label="Placeholder: Thumbnail"><title>Placeholder</title><rect width="100%" height="100%" fill="#55595c"/><text x="50%" y="50%" fill="#eceeef" dy=".3em"></text></img>
            <div class="card-body">
                <h4 class="card-text">Matheus Cortez</h4>
            </div>
          </div>
        </div>
      </div>
     </div>
     </div>
     <%@include file="WEB-INF/jspf/footer.jspf" %>
     
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
  </body>
</html>

