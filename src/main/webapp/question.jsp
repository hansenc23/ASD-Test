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
            <form action="confirmQuestion.jsp" method="post">
                <h3 style="text-align: center">Security Question</h3>
                <table class="editdetails">

                    <tr>
                        <td>Question</td>
                        <td>
                            <select id="choose_question" name="question">
                                <option>What was your childhood nickname?</option>
                                <option>What is your oldest sibling's middle name?</option>
                                <option>In what city or town did your mother and father meet?</option>
                                <option>What is the name of your favorite childhood friend?</option>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td>Answer</td>
                        <td>
                            <input id="input_answer" class="field" size="20" type="text" name="answer">
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2" align="center"><button id="confirm_question" class="update" type="submit"> Confirm </button></td>
                        
                    </tr>
                    
                    
                </table>

                    
            </form>
        </div>
    </body>
</html>
