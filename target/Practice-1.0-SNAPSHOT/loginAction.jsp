<%-- 
    Document   : loginAction
    Created on : 16/08/2019, 1:37:45 PM
    Author     : kevin
--%>


<%@page import="asd.model.dao.MongoDBConnector"%>
<%@page contentType="text/html" pageEncoding="UTF-8" import="asd.model.*"%>
<%@page import="java.util.ArrayList"%>

<!DOCTYPE html>
<html>
    <jsp:useBean id="Users" class="asd.model.Users" scope="application"></jsp:useBean>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>LoginAction</title>
    </head>
    
         
    <body>
      
        <% 
        String email = request.getParameter("email");
        String password = request.getParameter("password");
     
        String adminemail = (String)session.getAttribute("adminemail");
        String adminpass = (String)session.getAttribute("adminpassword");
        MongoDBConnector connector = new MongoDBConnector(adminemail, adminpass);
            Users u = connector.loadUsers();  
           
            User us = u.login(email, password);
            session.setAttribute("user", us);

     %>
         <%
            if (us != null) {
                session.setAttribute("customer", us);%>
         <p>Login successful. Click<a href = "index.jsp" > here </a> to return to the main page.</p>
        <%} else {%>
         <p> Password incorrect. Click<a href = "login.jsp" > here </a> to try again.</p>
        <%}
%>
    </body>
</html>
