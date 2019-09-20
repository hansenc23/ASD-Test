<%-- 
    Document   : adminRegister
    Created on : 03/09/2019, 12:41:57 AM
    Author     : hanse
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.util.*"%>

<!DOCTYPE html>
<html lang="en">
<%@include file="adminNavbar.jsp" %>
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
        <%
            
            Random rand = new Random();
            int n = rand.nextInt(90000) + 10000;
            
        %>

        <br>
        <h2 style="text-align: center">Create Staff Account</h2>
        <br>

        <div class="reg-form">

        <form action="adminWelcome.jsp" method="post">
                <table id="form-table">
                    <tr><td>First Name:</td><td><input size="23" type="text" name="firstName" required></td></tr>
                    <tr><td>Last Name:</td><td><input size="23" type="text" name="lastName" required></td></tr>
                    <tr><td>Email:</td><td><input size="23" type="email" name="email" required></td></tr>
                    <tr><td>Password:</td><td><input size="23" type="password" name="password" required></td></tr>
                    <tr><td>Address:</td><td><input type="text" name="address" required></td></tr>  
                    <tr><td>Phone Number:</td><td> <input type="tel" pattern="[0-9]{10}" placeholder="Enter 10-digit number" name ="phone" required></td></tr>
                    <tr><td>Position:</td><td> <input type="text" name ="position" required></td></tr>
                    <input type="hidden" name ="isStaff" value="true"></td></tr>
                    <input type="hidden" name ="userID" value="<%=n%>">

                    <tr><td></td>
                        <td>
                            <input class="button" type="submit" value="Register"> 
                            &nbsp; 
                            <button class="button" type="button" onclick="location.href = 'index.jsp'" > Home Page </button>
                        </td>
                    </tr>

                </table>
            <br>
            <p style="text-align: center">Are you an existing staff? Click <a href="login.jsp" class="link" target="_parent"> here </a> to Login</p>

            </form>
    </div>

    </body>


</body>
</html>