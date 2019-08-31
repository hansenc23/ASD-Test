<%-- 
    Document   : orderDetail
    Created on : 07/08/2019, 6:20:56 PM
    Author     : Anita
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="asd.model.dao.MongoDBConnector"%>
<%@page import="asd.model.*"%>
<%@page import="java.util.Random"%>
<%@include file="navbar.jsp" %>
<%@include file="sidebar.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" 
        integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <link rel="stylesheet" type="text/css" href="css/contactDetail.css">
        <title>Order Detail</title>
    </head>
    <body>
        <%
            String type;
            
            String adult = request.getParameter("adult");
            String child = request.getParameter("child");
            String pensioner = request.getParameter("pensioner");
            String concession = request.getParameter("concession");
            
            //assign the type by checking whether the value is null
            if(adult!= null){
                type = "adult";
            }
            else if(child != null){
                type = "child";
            }
            else if (pensioner != null){
                type = "pensioner";
            }
            else{
                type = "concession";
            }
            
            //random the opalID
            String opalID = "" + (new Random()).nextInt(99999999) + (new Random()).nextInt(99999999);;
           
            //add the opalId and type
            Order addType = new Order("", opalID, "", type, "", 0, "");
            session.setAttribute("addType", addType);
            
        %>
        <h3>&nbsp;&ensp;Enter your personal detail</h3>
        <div class = "orderDetail">
        <form method = "post" action = "orderValue.jsp" > 
        <table>
            <tr><td>First name(s)</td><td><input type = "text" name = "firstname" required></td>
            <td>Last name</td><td><input type = "text" name = "lastname" required></td></tr>
            <tr><td>Email Address</td><td><input type = "email" name = "email" required></td>
                <td>Mobile Phone</td><td><input type = "text" name = "phone" required></td></tr>
            <tr><td>Password</td><td><input type = "password" name = "password" required></td></tr>
            <tr><td>Address</td><td><input type = "text" name = "address" required></td></tr>
            <tr><td>I read <a href = 'asdf.jsp'>the tos</a></td><td><input type = "checkbox" name = "tos" required></td></tr>
            <tr><td colspan = "3"><a class = "button" href = "chooseOpalCard.jsp">Back</a></td><td align = "right"><input type =  "submit" value = "Continue"></td></tr>
            <tr><td><a class = "button" href = "orderCancelled.jsp">Cancel</a></tr>
        </table>
        </form>
        </div>
    </body>
</html>
