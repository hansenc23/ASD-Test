<%-- 
    Document   : accountList
    Created on : 28/08/2019, 11:22:30 PM
    Author     : hanse
--%>
<%@page import="java.util.ArrayList"%>
<%@page import="asd.model.dao.MongoDBConnector"%>
<%@page contentType="text/html" pageEncoding="UTF-8" import="asd.model.*"%>
<%@include file="adminNavbar.jsp" %>
<%@include file="adminSidebar.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" 
        integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <link rel="stylesheet" href="https://unpkg.com/purecss@1.0.1/build/pure-min.css" integrity="sha384-oAOxQR6DkCoMliIh8yFnu25d7Eq/PHS21PClpwjOTeU2jRSq11vu66rf90/cZr47" crossorigin="anonymous">
        <link rel="stylesheet" href="./css/accountList.css"/>
        <title>Account List</title>
    </head>
    <body>
         <%
           MongoDBConnector connector = new MongoDBConnector();
           
           Users dbUsers = new Users();
           ArrayList<User> users = new ArrayList<User>();
           
           
           int totalAccount = 0;
         %>

      
          <div class="list"> 
              <div class="search">
                  <table class="tablesearch">
                      <thead>
                          <tr>
                              <th colspan="5">Search account</th>
                          </tr>
                      </thead>
                      <tbody>
                          
                          <tr>
                            <form method="post">
                                
                                    <td>First Name: <input type="text" name="firstname" ></td>
                                    <td>Last Name: <input type="text" name="lastname" ></td>
                                    <td>Email: <input type="text" name="email" ></td>
                                    <td><button type="submit" name="searchAccount" type="submit" class="button-secondary pure-button">Search</button></td>
                                    <td><button type="submit" name="searchAccount" type="submit" class="button-secondary pure-button" onclick="accountList.jsp">Show all</button></td>
                                    
                            </form>
                          </tr>
                      </tbody>
                  </table>
              </div>
              
              <%
            if(request.getParameter("searchAccount") == null){
                dbUsers = connector.loadUsers();
                users = dbUsers.getList();
                totalAccount = users.size();
            }
           
            else{
                
                if (!request.getParameter("firstname").isEmpty() ){
                   String firstName = request.getParameter("firstname");
                    dbUsers = connector.findUsersByFirstName(firstName);
                    users = dbUsers.getList();
                    totalAccount = users.size(); 
                }
                else if(!request.getParameter("lastname").isEmpty()){
                    String lastName = request.getParameter("lastname");
                    dbUsers = connector.findUsersByLastName(lastName);
                    users = dbUsers.getList();
                    totalAccount = users.size();
                    
                }
                else if(!request.getParameter("email").isEmpty()){
                    String email = request.getParameter("email");
                    dbUsers = connector.findUsersByEmail(email);
                    users = dbUsers.getList();
                    totalAccount = users.size();
                    
                }
                else{
                   dbUsers = connector.loadUsers();
                    users = dbUsers.getList();
                    totalAccount = users.size();
                    
                }
                
            }

            


                     
               %>
              <h2>Account List</h2>
              
            <table class="pure-table pure-table-horizontal">
                <span class="pure-form-message-inline">Total user: <%=totalAccount%></span>
                <thead>
                    <tr>
                        <th>User ID</th>
                        <th>Email</th>
                        <th>Password</th>
                        <th>First Name</th>
                        <th>Last Name</th>
                        <th>Address</th>
                        <th>Phone Number</th>
                        <th>Position</th>
                        <th>isStaff</th>
                        <th></th>
                        <th></th>
                      
                    </tr>
                </thead>
                
                <tbody>
                <%for (User user1: users){%>        
                    <tr>
                        <td><%=user1.getUserID()%></td>
                        <td><%=user1.getEmail()%></td>
                        <td><%=user1.getPassword()%></td>
                        <td><%=user1.getFirstName()%></td>
                        <td><%=user1.getLastName()%></td>
                        <td><%=user1.getAddress()%></td>
                        <td><%=user1.getPhoneNumber()%></td>
                        <td><%=user1.getPosition()%></td>
                        <td><%=user1.getIsStaff()%></td>
                        <td>
                            <form action="viewProfile.jsp" method="get">
                                <button type="submit" class="button-secondary pure-button">View</button>
                                <input type="hidden" name="userID" value="<%=user1.getUserID()%>">
                                <input type="hidden" name="userEmail" value="<%=user1.getEmail()%>">
                                <input type="hidden" name="userPassword" value="<%=user1.getPassword()%>">
                                <input type="hidden" name="userFirstName" value="<%=user1.getFirstName()%>">
                                <input type="hidden" name="userLastName" value="<%=user1.getLastName()%>">
                                <input type="hidden" name="userAddress" value="<%=user1.getAddress()%>">
                                <input type="hidden" name="userPhoneNumber" value="<%=user1.getPhoneNumber()%>">
                                <input type="hidden" name="userPosition" value="<%=user1.getPosition()%>">
                                <input type="hidden" name="userIsStaff" value="<%=user1.getIsStaff()%>">
                            </form>
                        </td>
                        <td>
                            <form action="staffEdit.jsp" method="post">
                                <button type="submit" class="button-success pure-button">Edit</button>
                                <input type="hidden" name="userID" value="<%=user1.getUserID()%>">
                                <input type="hidden" name="userEmail" value="<%=user1.getEmail()%>">
                                <input type="hidden" name="userPassword" value="<%=user1.getPassword()%>">
                                <input type="hidden" name="userFirstName" value="<%=user1.getFirstName()%>">
                                <input type="hidden" name="userLastName" value="<%=user1.getLastName()%>">
                                <input type="hidden" name="userAddress" value="<%=user1.getAddress()%>">
                                <input type="hidden" name="userPhoneNumber" value="<%=user1.getPhoneNumber()%>">
                                <input type="hidden" name="userPosition" value="<%=user1.getPosition()%>">
                                <input type="hidden" name="userIsStaff" value="<%=user1.getIsStaff()%>">
                            </form>
                            
                        </td>
                        
                    </tr>
                    <%}%>
                </tbody>
            </table>
                
                
            
            </div>
                
             
    </body>
</html>