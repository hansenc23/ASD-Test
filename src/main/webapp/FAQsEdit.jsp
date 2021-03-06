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
            
            //get the question and the answer in FAQsCreate.jsp page
            String questionList = request.getParameter("questionList");
            String answerList = request.getParameter("answerList");
            
            //get the update parameter from this page, if it is null means that the faq have not been updated
            if(request.getParameter("update") == null){
                      
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
              <input id="edit_update" type="submit" name="update" value="Update">
              <input id="edit_delete" type="submit" name="delete" value="Delete">
              <input type="hidden" name="questionList" value="<%=questionList%>">
              <input type="hidden" name="answerList" value="<%=answerList%>">
            </div>
          </form>
        </div>
        <%
            }
            //the update button has been clicked
            else{
                //get the data from this page to show the correct placeholder
                String updateQuestion = request.getParameter("updateQuestion");
                String updateAnswer = request.getParameter("updateAnswer");
                FAQ faq = new FAQ(updateQuestion, updateAnswer);
                
                //to update the faq and get the outcome of the updata to know whether it succeed or not
                String originQuestion = request.getParameter("questionList");
                String originAnswer = request.getParameter("answerList");
                FAQ originFAQ = new FAQ(originQuestion, originAnswer);
                String id = connector.getFAQid(originFAQ);
                String outcome = connector.updateFAQs(id, faq);
        %>
                <div class="container">
                    <form action="FAQsEdit.jsp">
                      <div class="row">
                        <div class="col-25">
                          <label for="updateQuestion">Question</label>
                        </div>
                        <div class="col-75">
                            <input type="text" id="updateQuestion" name="updateQuestion" value="<%=updateQuestion%>">
                        </div>
                      </div>
                      <div class="row">
                        <div class="col-25">
                          <label for="updateAnswer">Answer</label>
                        </div>
                        <div class="col-75">
                          <textarea id="updateAnswer" name="updateAnswer" style="height:200px"><%=updateAnswer%></textarea>
                        </div>
                      </div>
                      <div class="row">
                          <input type="submit" name="update" value="Update" disabled>
                        <input id="edit_delete_after" type="submit" name="delete" value="Delete">
                        <input type="hidden" name="questionList" value="<%=questionList%>">
                        <input type="hidden" name="answerList" value="<%=answerList%>">
                      </div>
                    </form>
                  </div>
        <%
                //if the update succeed
                if(outcome.equalsIgnoreCase("Update was successful !")){
        %>
                    <div class="success"><%=outcome%>&nbsp;Click <a href="FAQsCreate.jsp">here</a> to go back</div>
        <%        
                }
                //if the update fail
                else{
        %>
                    <div class="fail"><%=outcome%>&nbsp;Click <a href="FAQsCreate.jsp">here</a> to go back</div>
        <%
                }
            }
            //if the delete button in this page has been clicked
            if(request.getParameter("delete") != null){
                //get the data from this page and delete the faq
                String updateQuestion = request.getParameter("updateQuestion");
                String updateAnswer = request.getParameter("updateAnswer");
                FAQ faq = new FAQ(updateQuestion, updateAnswer);
                String outcome = connector.deleteFAQs(faq);
                //the delete is succeed
                if(outcome.equalsIgnoreCase("Delete was successful !")){
        %>
                    <div class="success"><%=outcome%>&nbsp;Click <a id="delete_success" href="FAQsCreate.jsp">here</a> to go back</div>
        <%        
                }
                //delete is failed
                else{
        %>
                    <div class="fail"><%=outcome%>&nbsp;Click <a href="FAQsCreate.jsp">here</a> to go back</div>
        <%
                }
            }
                      
        %>
    </body>