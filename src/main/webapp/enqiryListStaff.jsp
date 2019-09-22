<%-- 
    Document   : enqiryListStaff
    Created on : 21/09/2019, 10:04:40 PM
    Author     : kevin
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="asd.model.dao.MongoDBConnector"%>
<%@page contentType="text/html" pageEncoding="UTF-8" import="asd.model.*"%>


<%@include file="adminNavbar.jsp"%>
<%@include file="adminSidebar.jsp"%>

<!DOCTYPE html>
<html>
    <head>
        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="./css/aManger.css"/>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" 
        integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <title>JSP Page</title>
    </head>
    <body>
         <%
            MongoDBConnector connector = new MongoDBConnector();

            Enqiries dbEnqiries = new Enqiries();
            ArrayList<Enqiry> enqiries = new ArrayList<Enqiry>();
            dbEnqiries = connector.loadEnqiries();
            enqiries = dbEnqiries.getList();   
        %>    
                <div class="table" style="max-width: 50%">
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
                            <form method='POST' action='enqiryPageAnswer.jsp'>
                                <input type="hidden" value="<%=enqiry.getEnqiryID()%>" name="EnqiryID">
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

