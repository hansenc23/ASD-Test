<%-- 
    Document   : accountProfile
    Created on : 04/09/2019, 11:44:20 PM
    Author     : hanse
--%>
<%@page import="asd.model.dao.MongoDBConnector"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="navbar.jsp" %>
<%@include file="sidebar.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" 
        integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <link rel="stylesheet" type="text/css" href="css/profile.css">
        
        <title>Profile</title>
    </head>
    <body>
        
        
        
        <%
            MongoDBConnector connector = new MongoDBConnector();
            String firstName = user.getFirstName();
            String lastName = user.getLastName();
            String email = user.getEmail();
            String address = user.getAddress();
            String phone = user.getPhoneNumber();
            String password = user.getPassword();
            String position = user.getPosition();
            String isStaff = user.getIsStaff();
            //String securityQuestion = connector.getSecurityQuestion(email, password);
          
//            if(connector.getSecurityQuestion(email, password) == null){
//                securityQuestion = "";
//            }
//            else if(connector.getSecurityQuestion(email, password) != null){
//                securityQuestion = connector.getSecurityQuestion(email, password);
//            }
            
            String question = connector.getSecurityQuestion(email, password);
            String answer = connector.getAnswer(email, password);
            //boolean ischeck = false;
        %>
        
        
        <div class="mydetails">
            
            
                <h3>My Details</h3>
                <table id="details">
                    <th colspan="2">Personal Details</th>
                    
                    <tr>
                        <td>First Name</td>
                        <td><%=firstName%></td>
                    </tr>
                    <tr>
                        <td>Last Name</td>
                        <td><%=lastName%></td>
                    </tr>
                    <tr>
                        <td>Email</td>
                        <td><%=email%></td>
                    </tr>
                    <tr>
                        <td>Address</td>
                        <td><%=address%></td>
                    </tr>
                    <tr>
                        <td>Phone Number</td>
                        <td><%=phone%></td>
                    </tr>
                    <tr>
                        <td colspan="2"><button class="edit" type="button" onclick="location.href = 'editProfile.jsp'" > Edit </button></td>
                    </tr>
                    
                    
                    
                </table>
                    
                   
                <table id="password">
                    <th colspan="2">Password Details</th>

                    <tr>
                        <td>Password</td>
                        <td class="hidetext"><%=password%></td>
                    </tr>
                    <tr>
                        <td colspan="2"><button class="password" type="button" onclick="location.href = 'editPassword.jsp'" > Change password </button></td>
                    </tr>
                </table>
                    
                    <%if(question != null && answer != null){%>
                        <table id="question">
                            <th colspan="2">Security Question</th>

                            <tr>
                                <td>Question</td>
                                <td><%=question%></td>
                            </tr>
                            <tr>
                                <td>Answer</td>
                                <td><%=answer%></td>
                            </tr>
                            <tr>
                                <td colspan="2"><button class="password" type="button" onclick="location.href = 'question.jsp'" > Change security question </button></td>
                            </tr>
                        </table>
                    <%}else if(question == null && answer == null){%>
                    
                        <table id="question">
                            <th colspan="2">Security Question</th>

                            <tr>
                                <td>Question</td>
                                <td><%=question%></td>
                            </tr>
                            <tr>
                                <td>Answer</td>
                                <td><%=answer%></td>
                            </tr>
                            <tr>
                                <td colspan="2"><button class="password" type="button" onclick="location.href = 'question.jsp'" > Add security question </button></td>
                            </tr>
                        </table>
                        
                    <%}%>
                    
                    
                    
            
        </div>
                    
        
            
                    

        
                    
                    
                   
    </body>
</html>
