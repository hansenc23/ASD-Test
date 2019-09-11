<%-- 
    Document   : login
    Created on : 12/08/2019, 10:58:51 PM
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


</html>
    
    
   
       <div class="reg-form">
        <form method="post" action="loginAction.jsp">
            <h3 id="title" style="text-align: center">Log In</h3>
            <table id="form-table">
                <tr><td id="stitle">Email</td></tr>
                <tr><td><input type="text" placeholder="Enter Email" name="email" required></td></tr>
                <tr><td id="stitle">Password</td></tr>
                <tr><td><input type="password" placeholder="Enter password" name="password" required></td></tr>
                <tr><td>
                        <input type="submit" value="Log In">
                      <button class="button" type="button" onclick="location.href = 'index.jsp'" > Home Page </button>
                    </td></tr>
            </table>
         </form>
        </div>
      
    </body>
</html>
