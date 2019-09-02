<%-- 
    Document   : adminNavbar
    Created on : 28/08/2019, 11:17:52 PM
    Author     : hanse
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="asd.model.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="css/navbar.css">
         <%User user = (User)session.getAttribute("user");
         String name = user.getFirstName();%>
    </head>
    <body>
        <div class="navigation-bar">
            <ul>
                <li><a>Welcome <%=name%></a></li>
                <li><a href="logout.jsp">Logout</a></li>
                <li><a href="adminPage.jsp">Home</a></li>
              
                
                <li id="logo"><img height="70px" src="image/nsw_logo.png"></li>
                <li id="logo"><img height="70px" src="image/opal_logo.png"></li>
            </ul>
        </div>
    </body>
</html>
