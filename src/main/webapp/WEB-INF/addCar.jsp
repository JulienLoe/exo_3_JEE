<%@ page import="com.example.exo_3.Car" %><%--
  Created by IntelliJ IDEA.
  User: Administrateur
  Date: 07/09/2023
  Time: 09:40
  To change this template use File | Settings | File Templates.
--%>
<jsp:useBean id="marque" type="java.lang.String" scope="request" />
<jsp:useBean id="model" type="java.lang.String" scope="request" />
<jsp:useBean id="couleur" type="java.lang.String" scope="request" />
<jsp:useBean id="puissance" type="java.lang.String" scope="request" />
<jsp:useBean id="confirmation" type="java.lang.Boolean" scope="request" />
<jsp:useBean id="errors" type="java.util.List<java.lang.String>" scope="request" />
<jsp:useBean id="cars" type="java.util.ArrayList<com.example.exo_3.Car>" scope="request"/>
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
            <input class="form-control" type="text" name="marque" id="marque" value="marque">
        </div>
        <div class="mb-3">
            <label for="model" class="form-label">Model: </label>
            <input class="form-control" type="text" name="model" id="model" value="model">
        </div>
        <div class="mb-3">
            <label for="couleur" class="form-label">Couleur: </label>
            <input class="form-control" type="text" name="couleur" id="couleur" value="couleur">
        </div>
        <div class="mb-3">
            <label for="puissance" class="form-label">Puissance: </label>
            <input class="form-control" type="text" name="puissance" id="puissance" value="puissance">
        </div>
        <hr>

        <button class="btn btn-primary">Submit</button>


    </form>
            </div>
    </div>

    <hr>

    <table class="table">
        <thead>
        <tr>
            <th scope="col">Marque</th>
            <th scope="col">Model</th>
<%--            <th scope="col">Couleur</th>--%>
<%--            <th scope="col">Puissance</th>--%>
        </tr>
        </thead>
        <tbody>

        <% if (confirmation) { %>
        <p>Chat ajouté avec succès !</p>
        <% } else if (!errors.isEmpty()) { %>
        <ul>
            <% for(String err : errors) { %>
            <li class="text-danger"><%= err %></li>
            <% } %>
        </ul>
        <% } %>
        <hr>
        <% if (!cars.isEmpty()) { %>

        <% for (int i=1; i<cars.size(); i++) { %>
        <tr>

            <td><%=cars.get(i).getMarque() %></td>
            <td><%=cars.get(i).getModel() %></td>
            <td><button class="btn btn-primary" value="i"><a href="${pageContext.request.contextPath}/form/<%=i%> ">DETAIL</a></button></td>
<%--            <td><%=cars.get(i).getCouleur() %></td>--%>
<%--            <td><%=cars.get(i).getPuissance() %></td>--%>
        </tr>
        <% } %>

        <% } %>

        </tbody>
    </table>


</main>
</body>
</html>