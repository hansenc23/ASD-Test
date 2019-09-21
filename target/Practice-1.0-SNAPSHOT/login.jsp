<%-- 
    Document   : adminRegister
    Created on : 03/09/2019, 12:41:57 AM
    Author     : hanse
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.util.*"%>

<!DOCTYPE html>
<html lang="en">
<%@include file="navbar.jsp" %>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" 
              integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <link rel="stylesheet" href="https://unpkg.com/purecss@1.0.1/build/pure-min.css" integrity="sha384-oAOxQR6DkCoMliIh8yFnu25d7Eq/PHS21PClpwjOTeU2jRSq11vu66rf90/cZr47" crossorigin="anonymous">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <link rel="stylesheet" href="./css/register.css"/>
        <title>Home</title>
    </head>
    <body>
        <%
            
            Random rand = new Random();
            int n = rand.nextInt(90000) + 10000;
            
        %>

        <br>
        
        <br>

        
        <div class="reg-form">
        <h2 class="login">Login</h2>
            <form class="pure-form pure-form-stacked" method="post" action="loginAction.jsp">
                <br>
                <fieldset>
                    

                    <label>Email</label>
                    <input id="login_email" type="text" placeholder="Enter Email" name="email" required>
                    

                    <label>Password</label>
                    <input id="login_password" type="password" placeholder="Enter password" name="password" required>

                    
                    
                    <br>

                    <button type="submit" class="pure-button pure-button-primary">Login</button>
                    <button class="pure-button pure-button-primary" type="button" onclick="location.href = 'main.jsp'" > Home Page </button>
                    
                    
                </fieldset>
                    <a id="forget_button" href="forgetPassword.jsp">Forgot your password?</a>
                </form>
        
        </div>

    </body>


</body>
</html>
