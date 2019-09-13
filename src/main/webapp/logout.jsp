<%-- 
    Document   : logout
    Created on : 17/08/2019, 1:32:53 PM
    Author     : kevin
--%>
<%@page import="asd.model.dao.MongoDBConnector"%>
<%@page contentType="text/html" pageEncoding="UTF-8" import="asd.model.*"%>
<%@page import="java.util.Date"%>
<%@page import="java.util.*"%>
<%@page import="java.text.SimpleDateFormat"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" 
        integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <title>JSP Page</title>
    </head>
    <body>
        <%
        MongoDBConnector connector = new MongoDBConnector();
        
            SimpleDateFormat formatter= new SimpleDateFormat("yyyy-MM-dd 'at' HH:mm:ss z");//Record the time of logout
            Date date = new Date(System.currentTimeMillis());
            String logoutT = new String (formatter.format(date));
            
            
            String loginT = (String)session.getAttribute("loginT");//getting the login time
            String userID = (String)session.getAttribute("email");//getting the login time
            //System.out.println(userID);
            //String userID = request.getParameter("email");
            String ID = "" + (new Random()).nextInt(999999);
            Time time = new Time(userID,ID,loginT,logoutT);
            connector.add(time);
            
        session.removeAttribute("user");         
        session.invalidate();
        %>
        <p>You have been logged out</p>
        <p>Click here to return to <a href="main.jsp"> main page</a> </p>
    </body>
</html>

