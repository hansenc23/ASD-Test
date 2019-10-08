<%-- 
    Document   : testDelete
    Created on : 08/10/2019, 3:12:09 PM
    Author     : hanse
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="asd.model.dao.MongoDBConnector"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        <%
            MongoDBConnector connector = new MongoDBConnector();
            String userID = request.getParameter("userID");
            if(request.getParameter("deleteBtn") != null){

                connector.removeUser(userID);

            }
            
        %>
        <h1><%=userID%> was deleted</h1>
        <p><a href="accountList.jsp">Go back</a></p>
    </body>
</html>
