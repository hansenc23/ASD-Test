<%-- 
    Document   : enqiryEdit
    Created on : 24/09/2019, 4:35:10 AM
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
        <%             MongoDBConnector connector = new MongoDBConnector();

            //Enqiries dbEnqiries = new Enqiries();
            //ArrayList<Enqiry> enqiries = new ArrayList<Enqiry>();
            //dbEnqiries = connector.loadEnqiries();
            //enqiries = dbEnqiries.getList();   
            String enqiryID = request.getParameter("EnqiryID");
            Enqiry selectedEnqiry = connector.findEnqiry(enqiryID);
            String title = selectedEnqiry.getTitle();
            String question = selectedEnqiry.getQuestion();
            String answer = selectedEnqiry.getAnswer();
            String customerID = selectedEnqiry.getCustomerID();
        %>
    </head>
    <body>

        <div>          
            <h1 class="title">
                <%=title%>
            </h1>
            <p class="new">Question by <%=customerID%></p>
        </div>

        <div class ="Acontainer" >
            <label><b>Question:</b></label>
            <%=question%>
        </div>

        <div class ="Acontainer" >  
            <p>insert your Edit here<P>
            <form method='POST'>
                <textarea id="edit_enqiry_" rows="7" cols="100" name="newQuestion" ></textarea>
                <%String newQuestion = request.getParameter("newQuestion");%>
                <input type="submit" value="Edit" name="AEnqiry" >        
                <input id="submit_edit_"type="hidden" value="<%=selectedEnqiry.getEnqiryID()%>" name="EnqiryID">
            </form>
            <% if (request.getParameter("AEnqiry") != null) {
                    Enqiry enqiry = new Enqiry(customerID, newQuestion, answer, enqiryID, title);
                    connector.updateEnqiry(enqiry);
              }%> 
        </div>
    </body>
</html>
