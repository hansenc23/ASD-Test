<%-- 
    Document   : logout
    Created on : 17/08/2019, 1:32:53 PM
    Author     : kevin
--%>
<%@page import="asd.model.dao.MongoDBConnector"%>
<%@page contentType="text/html" pageEncoding="UTF-8" import="asd.model.*"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<<<<<<< HEAD
=======
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" 
        integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
>>>>>>> 8b114fb21f29c58ca4183902c63ea25ec77c8b7d
        <title>JSP Page</title>
    </head>
    <body>
        <% session.removeAttribute("customer");         
        session.invalidate(); %>
        <p>You have been logged out</p>
<<<<<<< HEAD
        <p>Click here to return to <a href="Main.jsp"> main page</a> </p>
=======
        <p>Click here to return to <a href="main.jsp"> main page</a> </p>
>>>>>>> 8b114fb21f29c58ca4183902c63ea25ec77c8b7d
    </body>
</html>
