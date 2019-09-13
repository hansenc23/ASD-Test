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
        
    </head>
    <body>
        <%User user = (User)session.getAttribute("user");%>
    <body>
        
        
         
        <% if (user != null && user.getIsStaff().equals("false")){
            String redirectURL = "notStaff.jsp";
            response.sendRedirect(redirectURL);
           
        
        }else if(user == null){%>
        <div class="navigation-bar">
             <ul>
                <li><a href="adminRegister.jsp">Register</a></li>
                <li><a href="login.jsp">Login</a></li>
                <li><a href="adminPage.jsp">Home</a></li>
              
                
                <li id="logo"><img height="70px" src="image/nsw_logo.png"></li>
                <li id="logo"><img height="70px" src="image/opal_logo.png"></li>
                </ul>
          </div>
                
        <%    
        }else{String name = user.getFirstName();%>
        
        
         <div class="navigation-bar">
             <ul>
                <li><a href="accountProfile.jsp">Welcome <%=name%></a></li>
                <li><a href="logout.jsp">Logout</a></li>
                <li><a href="adminPage.jsp">Home</a></li>
              
                
                <li id="logo"><img height="70px" src="image/nsw_logo.png"></li>
                <li id="logo"><img height="70px" src="image/opal_logo.png"></li>
                </ul>
          </div>
        <%}%>
        
        
    </body>
</html>

