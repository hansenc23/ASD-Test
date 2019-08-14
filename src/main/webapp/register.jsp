<%-- 
    Document   : index
    Created on : 12/08/2019, 9:56:44 PM
    Author     : hanse
--%>


<%@page contentType="text/html" pageEncoding="UTF-8" import="asd.controller.*" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" 
          integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    
    <link rel="stylesheet" href="./css/style.css"/>
    <link rel="stylesheet" href="./css/registerCSS.css"/>

    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Home</title>
</head>
<body>
    <header>
        <div class="logo-container">
            <a href="index.jsp"><img src="./img/opal-logo.png" alt="logo"/></a>
        </div>
        <nav>
            <ul class="nav-links">
                <li><a class="nav-link" href="#">Opal News</a></li>
                <li><a class="nav-link" href="#">Get an Opal Card</a></li>
                <li><a class="nav-link" href="#">FAQs</a></li>
                
            </ul>
            
        </nav>
        <div class="reg">
            <ul class="reg-links">
                <li><a class="nav-link" href="#">Login</a></li>
                <li><a class="nav-link" href="register.jsp">Register</a></li>
            </ul>
            
        </div>
    </header>
    <div class="reg-form">
        
        <form action="welcome.jsp" method="post">
                <table id="form-table">
                    <tr><td>Name:</td><td><input size="23" type="text" name="name"></td></tr>
                    <tr><td>Email:</td><td><input size="23" type="text" name="email"></td></tr>
                    <tr><td>Password:</td><td><input size="23" type="password" name="password"></td></tr>
                    <tr><td>Date of Birth:</td><td><input type="date" name="dob"></td></tr>  
                    <tr><td>Favorite Color:</td><td> <input type="color" name ="favcol"></td></tr>
                    <tr><td>Agree to TOS</td><td><input type="checkbox" name="tos"></td></tr>
                    <tr><td></td>
                        <td>
                            <input class="button" type="submit" value="Register"> 
                            &nbsp; 
                            <button class="button" type="button" onclick="location.href = 'index.jsp'" > Home Page </button>
                        </td>
                    </tr>
                </table>
            </form>
    </div>
</body>
</html>
