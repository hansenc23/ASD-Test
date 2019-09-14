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
       <%
            String firstName = user.getFirstName();
            String lastName = user.getLastName();
            String email = user.getEmail();
            String address = user.getAddress();
            String phone = user.getPhoneNumber();
        %>
        
        
        <div class="editprofile">
            <form action="updateProfile.jsp" method="post">
                <h3 style="text-align: center">Personal Details</h3>
                <table class="editdetails">

                    <tr>
                        <td>First Name</td>
<<<<<<< HEAD
                        <td><input class="field" id="update_firstname" size="20" type="text" name="firstName" value="<%=firstName%>"></td>
                    </tr>
                    <tr>
                        <td>Last Name</td>
                        <td><input class="field" id="update_lastname" size="20" type="text" name="lastName" value="<%=lastName%>"></td>
                    </tr>
                    <tr>
                        <td>Email</td>
                        <td><input class="field" id="update_email" size="20" type="text" name="email" value="<%=email%>"></td>
                    </tr>
                    <tr>
                        <td>Address</td>
                        <td><input class="field" id="update_address" size="20" type="text" name="address" value="<%=address%>"></td>
                    </tr>
                    <tr>
                        <td>Phone Number</td>
                        <td><input class="field" id="update_phone" size="20" type="text" name="phoneNumber" value="<%=phone%>"></td>
                    </tr>
                    
                    <tr>
                        <td colspan="2" align="center"><button id="update_button" class="update" type="submit"> Update </button></td>
=======
                        <td><input class="field" size="20" type="text" name="firstName" value="<%=firstName%>"></td>
                    </tr>
                    <tr>
                        <td>Last Name</td>
                        <td><input class="field" size="20" type="text" name="lastName" value="<%=lastName%>"></td>
                    </tr>
                    <tr>
                        <td>Email</td>
                        <td><input class="field" size="20" type="text" name="email" value="<%=email%>"></td>
                    </tr>
                    <tr>
                        <td>Address</td>
                        <td><input class="field" size="20" type="text" name="address" value="<%=address%>"></td>
                    </tr>
                    <tr>
                        <td>Phone Number</td>
                        <td><input class="field" size="20" type="text" name="phoneNumber" value="<%=phone%>"></td>
                    </tr>
                    
                    <tr>
                        <td colspan="2" align="center"><button class="update" type="submit"> Update </button></td>
>>>>>>> 363582452c631d5ebc360415977d13cffe37c882
                        
                    </tr>
                    
                </table>

                    
            </form>
        </div>
    </body>
</html>
