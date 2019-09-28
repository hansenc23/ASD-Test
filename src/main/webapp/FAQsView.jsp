<%-- 
    Document   : FAQsView
    Created on : 24/09/2019, 4:40:34 PM
    Author     : anita
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="navbar.jsp"%>
<%@include file="sidebar.jsp" %>
<%@page import="java.util.ArrayList"%>
<%@page import="asd.model.dao.MongoDBConnector"%>
<%@page import="asd.model.*"%>
<!DOCTYPE html>
<html>
    <head>
         <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" 
        integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <link rel="stylesheet" type="text/css" href="css/FAQsCreate.css">
        <title>View FAQs</title>
    </head>
    <body>
        <%
            MongoDBConnector connector = new MongoDBConnector();
            
            ArrayList<FAQ> faqs = new ArrayList<FAQ>(); 
            faqs = connector.listFAQs();
            
            if(!faqs.isEmpty()){
                for(FAQ faq: faqs){
        %>
                    <div class = "container">
                        <form action="FAQsEdit.jsp">
                        <div class="row">
                            <div class="col-25">
                                <p>Question :</p>
                            </div>
                            <div class="col-75">
                                <p><%=faq.getQuestionTitle()%></p>
                                <input name="questionList" type="hidden" value="<%=faq.getQuestionTitle()%>">
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-25">
                                <p>Answer :</p>
                            </div>
                            <div class="col-75">
                                <p name="answerList"><%=faq.getAnswer()%></p>
                                <input name="answerList" type="hidden" value="<%=faq.getAnswer()%>">
                            </div>
                        </div>
                        </form>
                    </div>              
        <%
                    
                }
            
            }
        %>
    </body>
</html>
