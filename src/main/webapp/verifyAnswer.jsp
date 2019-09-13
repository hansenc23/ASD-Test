<%-- 
    Document   : accountProfile
    Created on : 04/09/2019, 11:44:20 PM
    Author     : hanse
--%>
<%@page import="asd.model.dao.MongoDBConnector" import="asd.model.*"%>
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
        String answer = request.getParameter("answer");
        String email = request.getParameter("email");
     
        
        
                
        
        MongoDBConnector connector = new MongoDBConnector();
        //if(connector != null ) connector.update(user); else out.print("Cannot add user");
        String checkemail = connector.getUser(email);
        String question = connector.getSecurityQuestion(email);
        String checkanswer = connector.getAnswer(email);
        String oldPassword = connector.getPassword(email);

    %>
              <div class="editprofile">
            
                
                <%if(!answer.equals(checkanswer)){%>
                <table class="editdetails">

                    <tr>
                        <td>Answer is incorrect!</td>
                    </tr>
                    
                    
                    <tr>
                        <td colspan="2" align="center"><button class="update" onclick="location.href = 'forgetPassword.jsp'"> Back </button></td>
                    </tr>
                    
                </table>
                <%}else if(answer.equals(checkanswer)){%>
                    
                        <h3 style="text-align: center">Password</h3>
                        <table class="editdetails">

                            <tr>
                                <td>Your old password :</td>
                                <td><%=oldPassword%></td>
                            </tr>
                            <tr>
                                <td colspan="2" align="center"><a href="login.jsp">Login</a> to change your password</td>


                            </tr>

                        </table>


                    
                <%}%>
        </div>
                
       
    </body>
</html>
