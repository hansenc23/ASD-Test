

<%-- 
    Document   : index
    Created on : 12/08/2019, 9:56:44 PM
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
        <h2>Create Opal Account</h2>
            <form class="pure-form pure-form-stacked" action="welcome.jsp" method="post">
                <br>
                <fieldset>
                    

                    <label>First Name</label>
                    <input id="register_first_name" size="23" type="text" name="firstName" required>
                    

                    <label>Last Name</label>
                    <input id="register_last_name" size="23" type="text" name="lastName" required>

                    <label>Email</label>
                    <input id="register_email" size="23" type="email" name="email" required>

                    <label>Password</label>
                    <input id="register_password" size="23" type="password" name="password" required>

                    <label>Address</label>
                    <input id="register_address" size="23" type="text" name="address" required>

                    <label>Phone Number</label>
                    <input type="tel" id="register_phone" size="23" pattern="[0-9]{10}" placeholder="Enter 10-digit number" name ="phone" required>
                    <input type="hidden" name ="userID" value="<%=n%>">
                    <input type="hidden" name ="isStaff" value = "false">
                    <br>

                    <button id="register_submit" type="submit" class="pure-button pure-button-primary">Register</button>
                    <button class="pure-button pure-button-primary" type="button" onclick="location.href = 'index.jsp'" > Home Page </button>
                </fieldset>

                </form>
        </div>

    </body>

    
</body>
</html>

