<%-- 
    Document   : FAQsEdit
    Created on : 21/09/2019, 4:11:57 AM
    Author     : anita
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="adminNavbar.jsp" %>
<%@include file="adminSidebar.jsp" %>
<%@page import="asd.model.dao.MongoDBConnector"%>
<%@page import="asd.model.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" 
        integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <link rel="stylesheet" type="text/css" href="css/FAQsCreate.css">
        <title>Edit FAQs</title>
    </head>
    <body>
        <%
            MongoDBConnector connector = new MongoDBConnector();
            
            String questionList = request.getParameter("questionList");
            String answerList = request.getParameter("answerList");
                      
        %>
        <div class="container">
          <form action="FAQsEdit.jsp">
            <div class="row">
              <div class="col-25">
                <label for="updateQuestion">Question</label>
              </div>
              <div class="col-75">
                  <input type="text" id="updateQuestion" name="updateQuestion" value="<%=questionList%>">
              </div>
            </div>
            <div class="row">
              <div class="col-25">
                <label for="updateAnswer">Answer</label>
              </div>
              <div class="col-75">
                <textarea id="updateAnswer" name="updateAnswer" style="height:200px"><%=answerList%></textarea>
              </div>
            </div>
            <div class="row">
              <input type="submit" name="update" value="Update">
              <input type="submit" name="delete" value="Delete">
            </div>
          </form>
        </div>
        <%
            if(request.getParameter("update") != null){
                String updateQuestion = request.getParameter("updateQuestion");
                String updateAnswer = request.getParameter("updateAnswer");
                FAQ faq = new FAQ(updateQuestion, updateAnswer);
                String outcome = connector.updateFAQs(faq);
                if(outcome.equalsIgnoreCase("Update was successful !")){
        %>
                    <div class="success"><%=outcome%>&nbsp;Click <a href="FAQsCreate.jsp">here</a> to go back</div>
        <%        
                }else{
        %>
                    <div class="fail"><%=outcome%>&nbsp;Click <a href="FAQsCreate.jsp">here</a> to go back</div>
        <%
                }
            }
            if(request.getParameter("delete") != null){
                String updateQuestion = request.getParameter("updateQuestion");
                String updateAnswer = request.getParameter("updateAnswer");
                FAQ faq = new FAQ(updateQuestion, updateAnswer);
                String outcome = connector.deleteFAQs(faq);
                if(outcome.equalsIgnoreCase("Delete was successful !")){
        %>
                    <div class="success"><%=outcome%>&nbsp;Click <a href="FAQsCreate.jsp">here</a> to go back</div>
        <%        
                }else{
        %>
                    <div class="fail"><%=outcome%>&nbsp;Click <a href="FAQsCreate.jsp">here</a> to go back</div>
        <%
                }
            }
                      
        %>
    </body>
</html>
