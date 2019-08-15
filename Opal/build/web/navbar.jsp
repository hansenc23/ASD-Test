<%-- 
    Document   : navbar
    Created on : 14/08/2019, 1:42:59 AM
    Author     : Michelle
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="css/navbar.css">
        <link rel="stylesheet" type="text/css" href="css/sidebar.css">
        <title>JSP Page</title>
    </head>
    <body>
        <div class="navigation-bar">
            <ul>
                <li><a href="#">FAQs</a></li>
                <li><a href="#">Login</a></li>
                <li><a href="#">Register</a></li>
                <li><a href="card.jsp">Home</a></li>
                
                <li id="logo"><img height="70px" src="image/nsw_logo.png"></li>
                <li id="logo"><img height="70px" src="image/opal_logo.png"></li>
            </ul>
        </div>
        <div class="sidenav">
            <a href="card.jsp">Home</a>
            <a href="linkCard.jsp">Link existing Opal card to your account</a>
            <a href="#">Unlink Opal card from your account</a>
            <a href="#">Top-up Opal card</a>
            <a href="chooseOpalCard.jsp">Order an additional Opal card</a>
            <a href="#">Transfer balance to another Opal card</a>
        </div>
    </body>
</html>
