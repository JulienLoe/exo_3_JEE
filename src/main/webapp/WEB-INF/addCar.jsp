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
    <title>Add a Person</title>
</head>
<body>
<main>
    <form action="form" method="post">
        <div>
            <label for="marque">Marque: </label>
            <input type="text" name="marque" id="marque">
        </div>
        <div>
            <label for="model">Model: </label>
            <input type="text" name="model" id="model">
        </div>
        <div>
            <label for="couleur">Couleur: </label>
            <input type="text" name="couleur" id="couleur">
        </div>
        <div>
            <label for="puissance">Puissance: </label>
            <input type="number" min="0" max="800" step="1" name="puissance" id="puissance">
        </div>
        <hr>

        <button>Submit</button>

    </form>
</main>
</body>
</html>