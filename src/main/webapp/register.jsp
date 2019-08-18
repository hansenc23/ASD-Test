<%-- 
    Document   : index
    Created on : 12/08/2019, 9:56:44 PM
    Author     : hanse
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<%@include file="navbar.jsp" %>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" 
              integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <link rel="stylesheet" href="./css/registerCSS.css"/>
        <title>Home</title>
    </head>
    <body>
        
        <br>
        <h2 style="text-align: center">Create Opal Account</h2>
        <br>
        
        <div class="reg-form">
        
        <form action="welcome.jsp" method="post">
                <table id="form-table">
                    <tr><td>First Name:</td><td><input size="23" type="text" name="firstName" required></td></tr>
                    <tr><td>Last Name:</td><td><input size="23" type="text" name="lastName" required></td></tr>
                    <tr><td>Email:</td><td><input size="23" type="text" name="email" required></td></tr>
                    <tr><td>Password:</td><td><input size="23" type="password" name="password" required></td></tr>
                    <tr><td>Address:</td><td><input type="text" name="address"></td></tr>  
                    <tr><td>Phone Number:</td><td> <input type="text" name ="phone"></td></tr>
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

    
</body>
</html>
