<%-- 
    Document   : navbar
    Created on : 14/08/2019, 1:42:59 AM
    Author     : Michelle
--%>

<<<<<<< HEAD
<%@page contentType="text/html" pageEncoding="UTF-8"%>
=======
<%@page contentType="text/html" pageEncoding="UTF-8" import="asd.model.*"%>
>>>>>>> 8b114fb21f29c58ca4183902c63ea25ec77c8b7d
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="css/navbar.css">
<<<<<<< HEAD
        <title>Navbar</title>
    </head>
    <body>
=======
        
    </head>
    <%User user = (User)session.getAttribute("user");%>
    <body>
        <% if (user ==null){
            
        %>
>>>>>>> 8b114fb21f29c58ca4183902c63ea25ec77c8b7d
        <div class="navigation-bar">
            <ul>
                <li><a href="#">FAQs</a></li>
                <li><a href="login.jsp">Login</a></li>
                <li><a href="register.jsp">Register</a></li>
                <li><a href="main.jsp">Home</a></li>
              
                
                <li id="logo"><img height="70px" src="image/nsw_logo.png"></li>
                <li id="logo"><img height="70px" src="image/opal_logo.png"></li>
            </ul>
        </div>
<<<<<<< HEAD
    </body>
=======
        <%}else{
        String name = user.getFirstName();%>
         <div class="navigation-bar">
             <ul>
                <li><a>Welcome <%=name%></a></li>
                <li><a href="logout.jsp">Logout</a></li>
                <li><a href="main.jsp">Home</a></li>
              
                
                <li id="logo"><img height="70px" src="image/nsw_logo.png"></li>
                <li id="logo"><img height="70px" src="image/opal_logo.png"></li>
                </ul>
          </div>
        <%}%>    </body>
>>>>>>> 8b114fb21f29c58ca4183902c63ea25ec77c8b7d
</html>
