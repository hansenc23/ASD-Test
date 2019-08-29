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
        <title>JSP Page</title>
    </head>
    <body>
        <% session.removeAttribute("customer");         
        session.invalidate(); %>
        <p>You have been logged out</p>
        <p>Click here to return to <a href="main.jsp"> main page</a> </p>
    </body>
</html>
