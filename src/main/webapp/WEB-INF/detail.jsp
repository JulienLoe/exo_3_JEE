<%--
  Created by IntelliJ IDEA.
  User: Administrateur
  Date: 07/09/2023
  Time: 16:21
  To change this template use File | Settings | File Templates.
--%>
<jsp:useBean id="cars" type="com.example.exo_3.Car" scope="request"/>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Detail</title>
    <%@ include file ="./bootStrapImport.html"%>
</head>
<body>
<h1 class="text-center">Detail de la voiture :</h1>
<hr>
<table class="table">
    <thead>
    <tr>
        <th scope="col">Marque</th>
        <th scope="col">Model</th>
                    <th scope="col">Couleur</th>
                    <th scope="col">Puissance</th>
    </tr>
    </thead>
    <tbody>
<tr>

    <td><%=cars.getMarque() %></td>
    <td><%=cars.getModel() %></td>
    <td><%=cars.getCouleur() %></td>
    <td><%=cars.getPuissance() %></td>
</tr>
    </tbody>
</table>
</body>
</html>
