<%-- 
    Document   : enqiryPage
    Created on : 11/09/2019, 7:50:48 PM
    Author     : kevin
--%>

<%@include file="navbar.jsp"%>
<%@include file="sidebar.jsp" %>
<%@page import="asd.model.dao.MongoDBConnector"%>
<%@page import="asd.model.*"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>User enqiry</title>
         <%
            MongoDBConnector connector = new MongoDBConnector();

            //Enqiries dbEnqiries = new Enqiries();
            //ArrayList<Enqiry> enqiries = new ArrayList<Enqiry>();
            //dbEnqiries = connector.loadEnqiries();
            //enqiries = dbEnqiries.getList();   


            String enqiryID = request.getParameter("EnqiryID");
            //String fullName = " ";
            Enqiry selectedEnqiry = connector.findEnqiry(enqiryID);
            String title = selectedEnqiry.getTitle();
            String question = selectedEnqiry.getQuestion();
            String answer = selectedEnqiry.getAnswer();
            String customerID = selectedEnqiry.getCustomerID();
        %>  
    </head>
    <body>
       <div>
           <h1>
            <%=title%>
           </h1>
            <p><%=customerID%></p>
       </div>
       
        <div id = question >
            <table><tr><%=question%><tr/></table>
        </div>
        <%if(answer != null)
          {%>
        <div id = answer >
            <table><tr><%=answer%><tr/></table>
        </div>
        <%}else{%>
        <p>There are currently no answer</p>
        <%}%>
    </body>
</html>
