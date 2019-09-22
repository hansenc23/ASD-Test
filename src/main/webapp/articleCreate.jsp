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
        <link rel="stylesheet" href="./css/topUp.css"/>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" 
        integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
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

         <div class="h3">
        <h3>Create an article!</h3>
        </div>
        <div class = "topup">
            <form method = "post"  action = "articleCreate.jsp">
                <table>
                    <tr>
                        <td> Article title: </td> 
                    </tr>
                    <tr>
                        <td><textarea id="titletxt"  rows="1" cols="70" name="titletxt"></textarea></td>
                    </tr>
                    <tr>
                        <td> Article content: </td>
                    </tr>
                    <tr>
                        <td><textarea id="contenttxt" rows="4" cols="70" name="contenttxt"></textarea></td>
                    </tr>
                    <tr>
                        <td>
                            <input id="it" type="text" name = "title" style="display:none"/>
                            <input id="ic" type="text" name = "content"  style="display:none"/>
                            <input id="createArticle_submit" name="submit" type ="submit" value="Submit">
                        </td>
                    </tr>
                </table>      
            </form>
            
        </div>
          
     <%
            ArrayList<Article>  arts = conn.getArticles();
            if (!arts.isEmpty()){
            for(Article art: arts){
                %>
                <div class = "topup">
            <form method = "post"  action = "articleUpdate.jsp">
                <table>
                    <tr>
                        <td> Article title: </td> 
                    </tr>
                    <tr>
                        <td><p><%=art.getArticleName()%></p></td>
                    </tr>
                    <tr>
                        <td> Article content: </td>
                    </tr>
                    <tr>
                        <td><p><%=art.getArticleContent()%> </p>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <input type="hidden"  name="<%=art.getArticleID()%>" value="<%=art.getArticleID()%>"/>
                            <input id="createArticle_submit" name="submit" type ="submit" value="Update">
                        </td>
                    </tr>
                </table>      
            </form>
        </div>
                
                <%
              }
            }
        %>
    </body>
</html>
