<%-- 
    Document   : cardManagement
    Created on : 29/08/2019, 1:41:36 AM
    Author     : Michelle
--%>

<%@page import="asd.model.dao.MongoDBConnector"%>
<%@page contentType="text/html" pageEncoding="UTF-8" import="asd.model.*"%>
<%@include file="adminNavbar.jsp" %>
<%@include file="adminSidebar.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" 
        integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <link rel="stylesheet" type="text/css" href="css/cardManagement.css">
        <title>Card Management</title>
    </head>
    <body>
        <div class="box">    
            <div class="boxRegister">
                <h2>Register an Opal card</h2>
                <p>Choose this option to register a new
                Opal card to the database</p>
                <button onClick="location.href='registerCard.jsp'">Choose</button>
            </div>
            <div class="boxShowAll">
                <h2>List all Opal cards</h2>
                <p>Choose this option to show all registered
                Opal cards</p>
                <button onClick="location.href='listCard.jsp'">Choose</button>
            </div>
        </div>
    </body>
</html>