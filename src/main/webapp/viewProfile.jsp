<%-- 
    Document   : accountProfile
    Created on : 04/09/2019, 11:44:20 PM
    Author     : hanse
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="adminNavbar.jsp" %>
<%@include file="adminSidebar.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" 
        integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <link rel="stylesheet" href="https://unpkg.com/purecss@1.0.1/build/pure-min.css" integrity="sha384-oAOxQR6DkCoMliIh8yFnu25d7Eq/PHS21PClpwjOTeU2jRSq11vu66rf90/cZr47" crossorigin="anonymous">
        <link rel="stylesheet" type="text/css" href="css/accountMgmt.css">
        
        <title>Profile</title>
    </head>
    <body>
       <%
            
            String userID = request.getParameter("userID");
            String email = request.getParameter("userEmail");
            String password = request.getParameter("userPassword");
            String firstName = request.getParameter("userFirstName");
            String lastName = request.getParameter("userLastName");
            String address = request.getParameter("userAddress");
            String phoneNumber = request.getParameter("userPhoneNumber");
            String position = request.getParameter("userPosition");
            String isStaff = request.getParameter("userIsStaff");
            
        %>
        
        
        <div class="editprofile">
            
                <h3 style="text-align: center">Account Details</h3>
                <table class="editdetails">

                    <tr>
                        <td>UserID</td>
                        <td>: <%=userID%></td>
                    </tr>
                     <tr>
                        <td>Email</td>
                        <td>: <%=email%></td>
                    </tr>
                    <tr>
                        <td>Password</td>
                        <td>: <%=password%></td>
                    </tr>
                    <tr>
                        <td>First Name</td>
                        <td>: <%=firstName%></td>
                    </tr>
                    <tr>
                        <td>Last Name</td>
                        <td>: <%=lastName%></td>
                    </tr>
                    <tr>
                        <td>Address</td>
                        <td>: <%=address%></td>
                    </tr>
                    <tr>
                        <td>Phone Number</td>
                        <td>: <%=phoneNumber%></td>
                    </tr>
                    <tr>
                        <td>Position</td>
                        <td>: <%=position%></td>
                    </tr>
                    <tr>
                        <td>isStaff</td>
                        <td>: <%=isStaff%></td>
                    </tr>
                    
                    <tr>
                        <td colspan="2" align="center"><button id="update_button" class="button-secondary pure-button" onclick="location.href = 'accountList.jsp'"> Back </button></td>
                        
                    </tr>
                    
                </table>

                    
            
        </div>
    </body>
</html>
