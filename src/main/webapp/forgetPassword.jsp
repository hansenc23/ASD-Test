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
        
        <title>Profile</title>
    </head>
    <body>
       
        
        
        <div class="editprofile">
            <form action="verification.jsp" method="post">
                <h3 style="text-align: center">Forget Password</h3>
                <table class="editdetails">

                    <tr>
                        <td>Enter your email</td>
                        <td>
                            <input class="field" size="20" type="text" name="email">
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2" align="center"><button class="update" type="submit"> Confirm </button></td>
                        
                    </tr>
                    
                    
                </table>

                    
            </form>
        </div>
    </body>
</html>
