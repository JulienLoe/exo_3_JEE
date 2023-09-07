<%--
  Created by IntelliJ IDEA.
  User: Administrateur
  Date: 07/09/2023
  Time: 16:21
  To change this template use File | Settings | File Templates.
--%>

<jsp:useBean id="cars" type="java.util.ArrayList<com.example.exo_3.Car>" scope="request"/>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Detail</title>
</head>
<body>
<% for (int i=0; i<cars.size(); i++) { %>
<tr>

    <td><%=cars.get(i).getMarque() %></td>
    <td><%=cars.get(i).getModel() %></td>
    <td><button class="btn btn-primary">DETAIL</button></td>
                <td><%=cars.get(i).getCouleur() %></td>
                <td><%=cars.get(i).getPuissance() %></td>
</tr>
<% } %>
</body>
</html>
