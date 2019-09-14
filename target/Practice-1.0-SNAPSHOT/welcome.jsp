
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
<<<<<<< HEAD
        
=======
        <script src="animation.js"></script>
>>>>>>> 363582452c631d5ebc360415977d13cffe37c882
        <link rel="stylesheet" href="./css/style.css"/>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" 
          integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <title>Welcome Page</title>
    </head>   
    <%
        
        MongoDBConnector connector = new MongoDBConnector();
         
        
        String firstName = request.getParameter("firstName");
        String lastName = request.getParameter("lastName");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String address = request.getParameter("address");
        String phoneNumber = request.getParameter("phone");
        String isStaff = request.getParameter("isStaff");
        String userID = request.getParameter("userID");
        String warning = "";
        String checkemail = connector.getUser(email);
        
        if(checkemail != null){ 
            warning = checkemail + " already exist!";
        }else if(checkemail == null){
            
            User user = new User(firstName, lastName, email, password, address, phoneNumber, isStaff, userID);
            session.setAttribute("user", user);    
            if(connector != null ) connector.add(user); else out.print("Cannot add user");
        }
    %>
    <body> 
        
        <%if(checkemail != null){%>
        
        <h3 style="text-align: center"><%=warning%></h3>
        <p class="p" style="text-align: center">Click <a href="register.jsp" class="link" target="_parent"> here </a> to go back.</p>
        
        <%}else if(checkemail == null){%>

        <div class="details-container">
            <h3 class="form_title">Account created successfully!</h3>
            <table class="table">
                <tr><td>First Name: </td><td class="text"><%=firstName%></td></tr>
                <tr><td>Last Name: </td><td class="text"><%=lastName%></td></tr>
                <tr><td>Email: </td><td class="text"><%=email%></td></tr>
                <tr><td>Password: </td><td class="text"><%=password%></td></tr>
                <tr><td>Address: </td><td class="text"><%=address%></td></tr>
                <tr><td>Phone: </td><td class="text"><%=phoneNumber%></td></tr>              
            </table> 
        </div>  
<<<<<<< HEAD
                <p class="p">Click <a  href="main.jsp" id="back"  target="_parent"> here </a> to go to Home page.</p>
=======
                <p class="p">Click <a href="main.jsp" class="link" target="_parent"> here </a> to go to Home page.</p>
>>>>>>> 363582452c631d5ebc360415977d13cffe37c882
        <%}%>
    </body>

</html>

