<%-- 
    Document   : createArticle
    Created on : Sep 20, 2019, 5:13:35 AM
    Author     : Hieu
--%>

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
        <title>Create Article</title>
    </head>

    <body>
        <%
            MongoDBConnector conn = new MongoDBConnector();
            if(request.getParameter("submit")!=null){
            String title = request.getParameter("titletxt");
            String content = request.getParameter("contenttxt");
            String currentDate = new SimpleDateFormat("yyyy-MM-dd").format(new Date());
            Article article = new Article("",title, content, currentDate);
            conn.addArticle(article);
            }
            %>
        <div class ="container">
            <form method = "post"  action = "articleCreate.jsp">
                <div class="row">
                   <div class="col-25">
                                <label for="titletxt">Article</label>
                   </div>
                    <div class="col-75">
                        <textarea id="titletxt"  rows="1" cols="50" name="titletxt"></textarea>
                    </div>
                </div>
                <div class="row"> 
                  <div class="col-25">
                    <label for="contenttxt">Article</label>
                     </div>
                       <div class="col-75">
                        <textarea id="contenttxt" rows="4" cols="10" name="contenttxt"></textarea>
                       </div>
                 
                 </div>
                      <div class="row"> 
                            <input id="createArticle_submit" name="submit" type ="submit" value="Submit">
                       
                      </div>
                
            </form>
            
        </div>
          
     <%
            ArrayList<Article>  arts = conn.getArticles();
            if (!arts.isEmpty()){
            for(Article art: arts){
                %>
                <div class = "container">
                <form method = "post"  action = "articleUpdate.jsp">
                 <div class="row">
                    <div class="col-25">
                        <p>
                        Article title
                        </p>
                    </div>
                    
                    <div class="col-75">
                        <p><%=art.getArticleName()%></p>
                    </div>
                 </div>  
                <div class="row">
                    <div class="col-25">
                           <p>
                        Last updated
                            </p>  
                    </div>
                    <div class="col-75">
                        <p><%=art.getArticleDate()%></p>
                    </div>
                    </div>
                     <div class="row">
                        <div class="col-25">
                         <p> Article content: </p>
                         
                        </div>
                        <div class="col-75">
                        <p><%=art.getArticleContent()%> </p>
                        </div>
                     </div>
                     <div class="row">
                        
                            <input type="hidden"  name="<%=art.getArticleID()%>" value="<%=art.getArticleID()%>"/>
                            <input id="createArticle_submit" name="submit" type ="submit" value="Update">
                        
                    </div>
                   
            </form>
        </div>
                
                <%
              }
            }
        %>
    </body>
</html>
