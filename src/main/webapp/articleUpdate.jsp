<%-- 
    Document   : articleUpdate
    Created on : Sep 22, 2019, 1:13:41 AM
    Author     : Hieu
--%>
<%@page import="asd.model.Article"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="asd.model.dao.MongoDBConnector"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="adminNavbar.jsp" %>
<%@include file="adminSidebar.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="./css/topUp.css"/>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" 
        integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <title>Update Article</title>
    </head>
    <body>
        <%
            MongoDBConnector conn = new MongoDBConnector();
            if(request.getParameter("submit")!=null){
            ArrayList<Article>  arts = conn.getArticles();
            Article art = new Article("","","","");
                    for (Article artt: arts){ 
                        String artId = request.getParameter(artt.getArticleID());
                        if(artId != null){
                            art = artt;
                        }
                    }
            %>
         <div class="h3">
        <h3>Update or Remove article</h3>
        </div>
        <div class = "topup">
            <form method = "post"  action = "articleUpdate.jsp">
                <table>
                    <tr>
                        <td> Article title: </td> 
                    </tr>
                    <tr>
                        <td><textarea  id="titletxt"  rows="3" cols="70" name="titletxt"><%= art.getArticleName()%></textarea></td>
                    </tr>
                    <tr>
                        <td> Article content: </td>
                    </tr>
                    <tr>
                        <td><textarea  id="contenttxt" rows="4" cols="70" name="contenttxt"><%= art.getArticleContent()%></textarea></td>
                    </tr>
                    
                    <tr>
                        <td>
                            <input type="hidden"  name="artId" value="<%=art.getArticleID()%>"/>
                            <input id="updateArticle_update" name="updateone" type ="submit" value="Update">
                            <input id="updateArticle_delete" name="deleteone" type ="submit" value="Delete">    
                        </td>
                    </tr>
                </table>      
            </form>
                        <%
                            } else if (request.getParameter("deleteone")!=null){
                             String artId = request.getParameter("artId");
                             String outcome = conn.deleteoneArticle(artId);
                        %>
                             <div class = "topup">
                        <h3><%= outcome %></h3>
                     <a id="addPaymentMethodOutcome_back" class = "button" href = "articleCreate.jsp">Back</a>
                            </div>
                        <%
                            }else if (request.getParameter("updateone")!=null){
                                String artId = request.getParameter("artId");
                                String titletxt = request.getParameter("titletxt");
                                String contenttxt = request.getParameter("contenttxt");
                                String currentDate = new SimpleDateFormat("yyyy-MM-dd").format(new Date());
                                Article article = new Article(artId,titletxt, contenttxt, currentDate);
                                String outcome = conn.updateoneArticle(article);
                                %>
                                  <div class = "topup">
                        <h3><%= outcome %></h3>
                     <a id="addPaymentMethodOutcome_back" class = "button" href = "articleCreate.jsp">Back</a>
                            </div>
                                <%
                            }
                            %>
        </div>
    </body>
</html>
