<%-- 
    Document   : newEnqiry
    Created on : 21/09/2019, 6:04:21 PM
    Author     : kevin
--%>

<%@include file="navbar.jsp"%>
<%@include file="sidebar.jsp" %>
<%@page import="asd.model.dao.MongoDBConnector"%>
<%@page import="asd.model.*"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="./css/enqiry.css"/>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" 
        integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <title>New enqiry</title>
    </head>
    <body>
        <%
        
        
        %>
        <h1 class ="title">new enqiry</h1>
        
        <form  method="post" action="newEnqiry.jsp">
            <div class="Acontainer">
              <div class="row"> 
                <div class="col-75"><label>Title:</label></div>
                <div class="col-25"><input id="enqiry_title" type="text" placeholder="Enter title" name="title" required></div>
             </div>
            
             <div class="row">          
                <div class="col-75"><label>Question:</label> </div>       
                <div class="col-25"><textarea  rows="4" cols="80" id="enqiry_text" type="text" placeholder="enter your enqiry" name="question" required></textarea></div>
              </div>
            </div>
            <div ><button type="submit" id="submit" class="button" name ="submitB">Add new</button></div>
        </form>
        
        
        
        <%  
        MongoDBConnector connector = new MongoDBConnector();
           // String title = "h";
            //String question = "h";
            
            if(request.getParameter("submitB") != null)
            {
                String title = request.getParameter("title");
                String question = request.getParameter("question");
                String answer = null;
                String customerID =  user.getEmail();
                String enqiryID = "" + (new Random()).nextInt(999999);
                Enqiry selectedEnqiry = new Enqiry(customerID,question,answer,enqiryID,title) ;
                connector.add(selectedEnqiry);%>
                <h5>New enqiry has been posted click <a id ="main"href="main.jsp">here</a> to get back to the main page</h5>
        
          <%}%>
    </body>
</html>
