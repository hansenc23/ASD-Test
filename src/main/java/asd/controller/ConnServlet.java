package asd.controller;

import asd.model.dao.MongoDBConnector;
import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


public class ConnServlet extends HttpServlet {
    private MongoDBConnector connector;  
     
    @Override 
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        connector = new MongoDBConnector();        
        response.setContentType("text/html;charset=UTF-8");  
        HttpSession session = request.getSession();                
        RequestDispatcher rs = request.getRequestDispatcher("index.jsp");
        rs.forward(request, response);
    }    
  
}
