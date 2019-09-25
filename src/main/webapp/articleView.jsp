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
<%@include file="navbar.jsp"%>
<%@include file="sidebar.jsp" %>
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
            ArrayList<Article>  arts = conn.getArticles();
            if (!arts.isEmpty()){
            for(Article art: arts){
                %>
            <div class = "container">
              
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
                   
                   
                </div>
                
                <%
              }
            }
        %>
    </body>
</html>
