<%-- 
    Document   : accountProfile
    Created on : 04/09/2019, 11:44:20 PM
    Author     : hanse
--%>
<%@page import="asd.model.dao.MongoDBConnector"%>
<%@page contentType="text/html" pageEncoding="UTF-8" %>
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
        String firstName = request.getParameter("firstName");
        String lastName = request.getParameter("lastName");
        String email = request.getParameter("email");
        String address = request.getParameter("address");
        String phoneNumber = request.getParameter("phoneNumber");
        
        
        user.setFirstName(firstName);
        user.setLastName(lastName);
        user.setEmail(email);
        user.setAddress(address);
        user.getPhoneNumber(phoneNumber);
        
                
        
        MongoDBConnector connector = new MongoDBConnector();
        //if(connector != null ) connector.update(user); else out.print("Cannot add user");
        String status = connector.updateUser(user);
        

    %>
        
        <div class="editprofile">
            
                <h3 style="text-align: center"><%=status%></h3>
            
                <table class="editdetails">

                    <tr>
                        <td>First Name</td>
                        <td>: <%=firstName%></td>
                    </tr>
                    <tr>
                        <td>Last Name</td>
                        <td>: <%=lastName%></td>
                    </tr>
                    <tr>
                        <td>Email</td>
                        <td>: <%=email%></td>
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
                        <td colspan="2" align="center"><button id="back_to_profile" class="update" onclick="location.href = 'accountProfile.jsp'"> Back </button></td>
                    </tr>
                    
                </table>
                
            
            
          
        </div>
    </body>
</html>
