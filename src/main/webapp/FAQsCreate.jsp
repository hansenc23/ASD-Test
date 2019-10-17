<%-- 
    Document   : FAQsCreat
    Created on : 21/09/2019, 1:21:39 AM
    Author     : anita
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="adminNavbar.jsp" %>
<%@include file="adminSidebar.jsp" %>
<%@page import="java.util.ArrayList"%>
<%@page import="asd.model.dao.MongoDBConnector"%>
<%@page import="asd.model.*"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" 
        integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <link rel="stylesheet" type="text/css" href="css/FAQsCreate.css">
        <title>Create FAQs</title>
    </head>
    <body>  
        <%
            MongoDBConnector connector = new MongoDBConnector();
            
            //if the submit button is clicked 
            if(request.getParameter("submit") != null){
                //get the data from this page and add new faq to the database
                String question = request.getParameter("question");
                String answer = request.getParameter("answer");
                FAQ faq = new FAQ(question, answer);
                connector.add(faq);
            }
        %>
        <div class="container">
          <form action="FAQsCreate.jsp">
            <div class="row">
              <div class="col-25">
                <label for="question">Question</label>
              </div>
              <div class="col-75">
                <input type="text" id="question" name="question" placeholder="Write the question...">
              </div>
            </div>
            <div class="row">
              <div class="col-25">
                <label for="answer">Answer</label>
              </div>
              <div class="col-75">
                <textarea id="answer" name="answer" placeholder="Write the answer..." style="height:200px"></textarea>
              </div>
            </div>
            <div class="row">
              <input id="faqcreate_submit" type="submit" name="submit" value="Submit">
            </div>
          </form>
        </div>
        <%
            
            //get the list of the faq from the database
            ArrayList<FAQ> faqs = new ArrayList<FAQ>(); 
            faqs = connector.listFAQs();
            
            //list all the faq if the arraylist is not empty
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
                        <div class="row">
                            <div>
                                <input id="<%=faq.getQuestionTitle()%>" type="submit" name="edit" value="Edit"> 
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
