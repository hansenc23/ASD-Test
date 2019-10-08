<%-- 
    Document   : accountProfile
    Created on : 04/09/2019, 11:44:20 PM
    Author     : hanse
--%>
<%@page import="asd.model.dao.MongoDBConnector"%>
<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@include file="adminNavbar.jsp" %>
<%@include file="adminSidebar.jsp" %>
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
        MongoDBConnector connector = new MongoDBConnector();
       
        String userID = request.getParameter("userID");
        
      
        connector.removeUser(userID);
        
        
        //if(connector != null ) connector.update(user); else out.print("Cannot add user");
        
        

    %>
        
        <div class="editprofile">
            
                <h3 style="text-align: center">User: <%=userID%> was deleted</h3>
            
                <table class="editdetails">

                    <tr>
                        <td colspan="2" align="center"><button id="back_to_profile" class="update" onclick="location.href = 'accountList.jsp'"> Back </button></td>
                    </tr>
                    
                </table>
                
            
            
          
        </div>
    </body>
</html>
