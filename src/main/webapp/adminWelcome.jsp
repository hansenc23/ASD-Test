<%-- 
    Document   : index
    Created on : 12/08/2019, 9:56:44 PM
    Author     : hanse
--%>

<%@page import="asd.model.dao.MongoDBConnector"%>
<%@page contentType="text/html" pageEncoding="UTF-8" import="asd.model.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <script src="animation.js"></script>
        <link rel="stylesheet" href="./css/style.css"/>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" 
          integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <title>Welcome Staff</title>
    </head>   
    <%
        String firstName = request.getParameter("firstName");
        String lastName = request.getParameter("lastName");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String address = request.getParameter("address");
        String phoneNumber = request.getParameter("phone");
        String position = request.getParameter("position");
        String isStaff = request.getParameter("isStaff");

        User user = new User(firstName, lastName, email, password, address, phoneNumber, isStaff, position);
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
                <tr><td>Address: </td><td class="text"><%=address%></td></tr>
                <tr><td>Phone: </td><td class="text"><%=phoneNumber%></td></tr> 
                <tr><td>Position: </td><td class="text"><%=position%></td></tr>
            </table> 
        </div>   
                <p class="p">Click <a href="adminPage.jsp" class="link" target="_parent"> here </a> to go to Admin page.</p>
    </body>
   
    

</html>
