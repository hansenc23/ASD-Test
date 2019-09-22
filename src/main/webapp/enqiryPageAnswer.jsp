<%-- 
    Document   : enqiryPageAnswer
    Created on : 21/09/2019, 10:18:38 PM
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
        <title>answer enqiry</title>
    </head>
    <body>
          <% MongoDBConnector connector = new MongoDBConnector();

         

            String enqiryID = request.getParameter("EnqiryID");
            //String fullName = " ";
            Enqiry selectedEnqiry = connector.findEnqiry(enqiryID);
            
            String title = selectedEnqiry.getTitle();
            String question = selectedEnqiry.getQuestion();
            //String answer = selectedEnqiry.getAnswer();
            String customerID = selectedEnqiry.getCustomerID();
          %>
              <div>          
                <h1>
                   <%=title%>
                </h1>
                   <p><%=customerID%></p>
              </div>

               <div id = question >
                   <table><tr><%=question%><tr/></table>
               </div>
        <p>insert your answer here<P>
        <form method='POST' action='enqiryPageAnswer.jsp'>
            <textarea rows="7" cols="50" name="theAnswer" >
            </textarea>
            <%String answer = request.getParameter("theAnswer"); %>
            <input type="submit" value="AEnqiry" name="AEnqiry" >         
        </form>
        
          <% if(request.getParameter("AEnqiry")!=null)
             {  
                  connector.answerEnqiries(enqiryID,answer);
             }%> 
    </body>
</html>
