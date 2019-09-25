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
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" 
        integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
          <link rel="stylesheet" href="./css/ArticleCreate.css"/>
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
        <div class = "container">
            <form method = "post"  action = "articleUpdate.jsp">
                <div class="row">
                   <div class="col-25">
                        <label for="titletxt">Article</label>
                   </div>
                    <div class="col-75">
                        <textarea id="titletxt"  rows="1" cols="50" name="titletxt"><%=art.getArticleName()%></textarea>
                    </div>
                </div>
                <div class="row"> 
                  <div class="col-25">
                    <label for="contenttxt">Article</label>
                     </div>
                       <div class="col-75">
                        <textarea id="contenttxt" rows="4" cols="10" name="contenttxt"><%=art.getArticleContent()%></textarea>
                       </div>
                 
                 </div>
                      <div class="row"> 
                            <input  type="hidden"  name="artId" value="<%=art.getArticleID()%>"/>
                            <input id="updateArticle_update" name="updateone" type ="submit" value="Update">
                            <input id="updateArticle_delete" name="deleteone" type ="submit" value="Delete"> 
                       
                   </div>     
            </form>
        </div>
                            
                        <%
                            } else if (request.getParameter("deleteone")!=null){
                             String artId = request.getParameter("artId");
                             String outcome = conn.deleteoneArticle(artId);
                        %>
                             <div class = "container">
                        <h3><%= outcome %></h3>
                     <a id="articleUpdate_back" class="btn btn-primary" href = "articleCreate.jsp">Back</a>
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
                                  <div class = "container">
                        <h3><%= outcome %></h3>
                     <a id="articleUpdate_back" class="btn btn-primary" href = "articleCreate.jsp">Back</a>
                            </div>
                                <%
                            }
                            %>
        </div>
    </body>
</html>
