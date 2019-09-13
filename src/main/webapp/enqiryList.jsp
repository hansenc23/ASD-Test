<%-- 
    Document   : enqiryList
    Created on : 11/09/2019, 7:44:01 PM
    Author     : kevin
--%>
<%@page import="java.util.ArrayList"%>
<%@page import="asd.model.dao.MongoDBConnector"%>
<%@page contentType="text/html" pageEncoding="UTF-8" import="asd.model.*"%>
<%@include file="navbar.jsp"%>
<%@include file="sidebar.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <%
            String adminemail = (String)session.getAttribute("adminemail");
            String adminpass = (String)session.getAttribute("adminpassword");
            MongoDBConnector connector = new MongoDBConnector(adminemail, adminpass);

            Enqiries dbEnqiries = new Enqiries();
            ArrayList<Enqiry> enqiries = new ArrayList<Enqiry>();
            dbEnqiries = connector.loadEnqiries();
            enqiries = dbEnqiries.getList();   
        %>    
                <div class="box" style="max-width: 50%">
            <h1>Users enqiries </h1>
            <table>
                <thead>
                    <th>Title</th>
                    <th>User</th>
                    <th>&nbsp;</th>
                </thead>
        <%
            for (Enqiry enqiry: enqiries) {
                // Get the matching opal card image
              
           
                
        %>        
                    <tr>
                        <td><%=enqiry.getTitle()%></td>
                        <td><%=enqiry.getCustomerID()%></td>
                        <td>
                            <form method='POST' action='enqiryPage.jsp'>
                                <input type="hidden" value="<%=enqiry.getEnqiryID()%>" name="opalID">
                                <input type="Submit" value="Details">
                            </form>
                        </td>
                    </tr>
        <%
            }               
        %>
            </table>
        </div>  
    </body>
</html>

