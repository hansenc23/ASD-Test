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
            String userID = user.getEmail();
        %>  
    </head>
    <body>
       
           <h1 class = "title">
            <%=title%>
           </h1>
           
       <div class = "new">   
            <p><b>a Question by: <%=customerID%></b></p>
       </div>
       <hr>
        <div class="Acontainer"  >
            <div class ="row">
             <p><b>Question: </b><%=question%><p>
            </div>
        <div class="row">
            <div>
                <h4>Admin answer: </h4>
            </div>
            </div>
            <%if(answer != null)
                {%>
       
                 <div><p><%=answer%></p></div>
        
                <%}else{%>
        
              <div><p class="blue">there are currently no answer</p></div>
             <%}%>
        </div>
            
        
            
     
             <%if(customerID.equals(userID)){%>
           <form method='POST' action='enqiryEdit.jsp'>
             <input type="hidden" value="<%=enqiryID%>" name="EnqiryID">
             <input type="Submit" class ="button" value="Edit your inqiry">
            </form>
       <%}%>
</html>
