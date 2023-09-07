<%--
  Created by IntelliJ IDEA.
  User: Administrateur
  Date: 07/09/2023
  Time: 09:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <%@ include file ="./bootStrapImport.html"%>
    <title>Add a Car</title>

</head>
<body>
<main class="text-center">
    <h1 class="text-center">Ajouter une voiture :</h1>
    <hr>

    <div  class=" d-flex justify-content-center w-100 text-center text-light">
        <div class="text-center bg-dark w-25 m-4 p-4 rounded">
    <form action="form" method="post">



        <div class="mb-3">
            <label for="marque" class="form-label">Marque: </label>
            <input class="form-control" type="text" name="marque" id="marque">
        </div>
        <div class="mb-3">
            <label for="model" class="form-label">Model: </label>
            <input class="form-control" type="text" name="model" id="model">
        </div>
        <div class="mb-3">
            <label for="couleur" class="form-label">Couleur: </label>
            <input class="form-control" type="text" name="couleur" id="couleur">
        </div>
        <div class="mb-3">
            <label for="puissance" class="form-label">Puissance: </label>
            <input class="form-control" type="number" min="0" max="800" step="1" name="puissance" id="puissance">
        </div>
        <hr>

        <button class="btn btn-primary">Submit</button>


    </form>
            </div>
    </div>
</main>
</body>
</html>