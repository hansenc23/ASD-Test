<%-- 
    Document   : enqiryPageAnswer
    Created on : 21/09/2019, 10:18:38 PM
    Author     : kevin
--%>

<%@include file="adminNavbar.jsp"%>
<%@include file="adminSidebar.jsp" %>
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
        <title>Answer enqiry</title>
    </head>
    <body>
          <% MongoDBConnector connector = new MongoDBConnector();

         

            String enqiryID = request.getParameter("EnqiryID");
            //String fullName = " ";
            Enqiry selectedEnqiry = connector.findEnqiry(enqiryID);
            
            String title = selectedEnqiry.getTitle();
            String question = selectedEnqiry.getQuestion();
            String answer = selectedEnqiry.getAnswer();
            String customerID = selectedEnqiry.getCustomerID();
          %>
              <div class="title">          
                <h1>
                   <%=title%>
                </h1>
                   <p><%=customerID%></p>
              </div>

               <div class="Acontainer" >
                  <div class="row"><%=question%></div>
              
        
           <div class="row">
               <label>insert your answer here</label>
                <form method='POST' action='enqiryPageAnswer.jsp'>
                    
                  <textarea id="edit_answer_" rows="7" cols="50" placeholder="Write the answer..." name="theAnswer"><%=answer%></textarea>
                    <%String theAnswer = request.getParameter("theAnswer"); %>
                   <input id="submit_answer_" type="submit" value="Submit Answer" name="AEnqiry">      
                  <input  type="hidden" value="<%=selectedEnqiry.getEnqiryID()%>" name="EnqiryID">
                 </form>
           </div>
                 <% if( selectedEnqiry.getAnswer()!= null)
             {%>  
                 <h5>Answer already exist.</h5>
             <%}%> 
         </div>
          <% if(request.getParameter("AEnqiry")!=null)
             {  
                  Enqiry enqiry = new Enqiry(customerID,question,theAnswer,enqiryID,title);
                  connector.updateEnqiry(enqiry);
             }%> 
    </body>
</html>
