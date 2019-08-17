<%-- 
    Document   : welcome
    Created on : 23/03/2018, 3:13:21 PM
    Author     : george
--%>

<%@page import="asd.model.dao.MongoDBConnector"%>
<%@page contentType="text/html" pageEncoding="UTF-8" import="asd.model.*"%>
<%@include file="navbar.jsp"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="./css/style.css"/>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" 
          integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <title>Welcome Page</title>
    </head>   
    <%
        String firstName = request.getParameter("firstName");
        String lastName = request.getParameter("lastName");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String dob = request.getParameter("dob");
        String phoneNumber = request.getParameter("phone");

        User user = new User(firstName, lastName, email, password, dob, phoneNumber);
        session.setAttribute("user", user);        
        
        String adminemail = (String)session.getAttribute("adminemail");
        String adminpass = (String)session.getAttribute("adminpassword");
        MongoDBConnector connector = new MongoDBConnector(adminemail, adminpass);
        if(connector != null ) connector.add(user); else out.print("Cannot add user");
    %>
    <body> 
        <div class="details-container">
            <h3 class="form_title">Account created successfully!</h3>
            <table class="table">
                <tr><td>First Name: </td><td class="text"><%=firstName%></td></tr>
                <tr><td>Last Name: </td><td class="text"><%=lastName%></td></tr>
                <tr><td>Email: </td><td class="text"><%=email%></td></tr>
                <tr><td>Password: </td><td class="text"><%=password%></td></tr>
                <tr><td>DOB: </td><td class="text"><%=dob%></td></tr>
                <tr><td>Phone: </td><td class="text"><%=phoneNumber%></td></tr>
            </table> 
        </div>   
    </body>
    <p class="p">Click <a href="main.jsp" class="link" target="_parent"> here </a> to go to main page.</p>
</html>
