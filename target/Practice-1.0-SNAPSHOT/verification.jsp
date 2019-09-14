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
        String email = request.getParameter("email");
     
        
        
                
        
        MongoDBConnector connector = new MongoDBConnector();
        //if(connector != null ) connector.update(user); else out.print("Cannot add user");
        String checkemail = connector.getUser(email);
        String question = connector.getSecurityQuestion(email);

    %>
              <div class="editprofile">
            
                
                <%if(checkemail == null){%>
                <table class="editdetails">

                    <tr>
                        <td colspan="2">Email does not exist!</td>
                        
                    </tr>
                    
                    
                    <tr>
                        <td colspan="2" align="center"><button class="update" onclick="location.href = 'forgetPassword.jsp'"> Back </button></td>
                    </tr>
                    
                </table>
                <%}else if(checkemail != null){%>
               <form action="verifyAnswer.jsp" method="post"> 
                <table class="editdetails">
                    <th colspan="2">Answer your security question</th>

                    <tr>
                        <td>Question:</td>
                        <td><%=question%></td>
                    </tr>
                    <tr>
                        <td>Answer:</td>
                        <td><input id="input_answer" type="text" name="answer"></td>
                        <input type="hidden" name="email" value="<%=email%>">
                    </tr>
                    
                    
                    <tr>
                        <td colspan="2"  align="center"><button id="confirm_answer" type="submit" class="update" > Confirm </button></td>
                    </tr>
                    
                </table>
              </form>
                <%}%>
            
            
          
        </div>
                
       
    </body>
</html>
