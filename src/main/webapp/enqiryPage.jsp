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
        <link rel="stylesheet" href="./css/enqiry.css"/>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" 
        integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
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
       
           <h1 class = "title">
            <%=title%>
           </h1>
       <div class = "new">   
            <p ><%=customerID%></p>
       </div>
       
        <div id = question >
            <table><th><%=question%></th></table>
        
        <%if(answer != null)
          {%>
       
            <table><th><%=answer%></th></table>
        
        <%}else{%>
        
              <table><th>there are currently no answer</th></table>
        <%}%>
        </div>
    </body>
</html>
