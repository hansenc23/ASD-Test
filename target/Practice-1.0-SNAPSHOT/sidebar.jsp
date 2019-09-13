
<%-- 
    Document   : navbar
    Created on : 14/08/2019, 1:42:59 AM
    Author     : Michelle
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="asd.model.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="css/sidebar.css">
        
    </head>
    <body>
        <div class="sidenav">
            <a href="main.jsp">Home</a>
            <a href="chooseOpalCard.jsp">Order an additional Opal card</a>
            <% 
                User userno = (User)session.getAttribute("user");
                if(userno != null){
            %>
                    <a href="linkCard.jsp">Link existing Opal card to your account</a>
                    <a href="unlinkCard.jsp">Unlink Opal card from your account</a>
                    <a href="topUpCard.jsp">Top-up Opal card</a>
                    <a href="addPaymentMethod.jsp">Add payment method</a>
                    <a href="userAccessManager.jsp">See history</a>
            <%  
                }
                else{
            %>
                    <a href="plsLogin.jsp">Link existing Opal card to your account</a>
                    <a href="plsLogin.jsp">Unlink Opal card from your account</a>
                    <a href="plsLogin.jsp">Top-up Opal card</a>
                    <a href="plsLogin.jsp">Add payment method</a>
            <%
                }
            %>
            
            
        </div>
    </body>
</html>
