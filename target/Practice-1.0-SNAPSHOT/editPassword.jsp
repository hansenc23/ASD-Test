<%-- 
    Document   : accountProfile
    Created on : 04/09/2019, 11:44:20 PM
    Author     : hanse
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="navbar.jsp" %>
<%@include file="sidebar.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" 
        integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <link rel="stylesheet" type="text/css" href="css/editProfile.css">
        
        <style>
            .warn{
                color: red;
                
            }
            
            .hidden{
                display: none;
            }
        </style>
        
        <title>Profile</title>
    </head>
    <body>
       <%
            
            String password1 = user.getPassword();
  
        %>
        
        
        
        <div class="editprofile">
            <form action="updatePassword.jsp" method="post">
                <h3 style="text-align: center">Change password</h3>
                <table class="editdetails">
           
                    <tr>
                        <td>New password</td>
                        <td><input name="password" id="password" type="password"  ></td>
                    </tr>
                    <tr>
                        <td>Confirm new password</td>
                        <td><input type="password" name="confirm_password" id="confirm_password"  onkeyup='check();' ></td>
                        
                    </tr>
                    <tr>
                        <td colspan="2" align="center" ><span id='message'></span></td>
                    </tr>
                    
                    <tr>
                        <td colspan="2" align="center"><button class="button" type="submit"> Update </button></td>
                        
                        
                    </tr>
                    
                </table>

                    
            </form>
            
            
        <script type="text/javascript">
            var check = function() {
                if (document.getElementById('password').value ==
                    document.getElementById('confirm_password').value) {
                    document.getElementById('message').style.color = 'green';
                    document.getElementById('message').innerHTML = '\npassword match!';
                } else {
                    document.getElementById('message').style.color = 'red';
                    document.getElementById('message').innerHTML = "\npassword doesn't match";
                }
        }
        </script>
        </div>      
    </body>
</html>
