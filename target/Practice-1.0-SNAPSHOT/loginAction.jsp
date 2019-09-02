<%-- 
    Document   : loginAction
    Created on : 16/08/2019, 1:37:45 PM
    Author     : kevin
--%>
<script type="text/javascript">
function alertName(){
alert("Form has been submitted");
} 
</script> 

<%@page import="asd.model.dao.MongoDBConnector"%>
<%@page contentType="text/html" pageEncoding="UTF-8" import="asd.model.*"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>

<!DOCTYPE html>
<html>
    <jsp:useBean id="Users" class="asd.model.Users" scope="application"></jsp:useBean>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" 
              integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <title>LoginAction</title>
    </head>
    
         
    <body>
      <script type="text/javascript"> window.onload = alertName; </script>
        <% 
        String email = request.getParameter("email");
        String password = request.getParameter("password");
      
        String adminemail = (String)session.getAttribute("adminemail");
        String adminpass = (String)session.getAttribute("adminpassword");
        MongoDBConnector connector = new MongoDBConnector(adminemail, adminpass);
       
        Users u = connector.loadUsers();  
           
            User us = u.login(email, password);
            session.setAttribute("user", us);
            
            SimpleDateFormat formatter= new SimpleDateFormat("yyyy-MM-dd 'at' HH:mm:ss z");//Record the time of login
            Date date = new Date(System.currentTimeMillis());
            String loginT = new String (formatter.format(date));
            session.setAttribute("loginT",loginT);
            session.setAttribute("email",email);
     %>
     <script type="text/javascript"> window.onload = alertName; </script>
         <%
            if (us != null) {              
                if(us.getIsStaff() == null){%>
                 <p>Login successful. Click<a href = "main.jsp" > here </a> to return to the main page.</p>   
                <%}else if(us.getIsStaff().equals("true")){%>
                       <p>Login successful. Click<a href = "adminPage.jsp" > here </a> to return to the admin page.</p>
            <%}%>
        <%} else {%>
         <p> Password incorrect. Click<a href = "login.jsp" > here </a> to try again.</p>
        <%}
%>
    </body>
</html>
