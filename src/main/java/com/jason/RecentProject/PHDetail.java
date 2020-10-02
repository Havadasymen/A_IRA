package com.jason.RecentProject;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.luwei.Dbcon;

import java.io.*;
import java.util.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.sql.*;
/**
 * Servlet implementation class PHDetai
 */
@WebServlet("/PHDetail")
public class PHDetail extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PHDetail() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub

	      // Set response content type
	      response.setContentType("text/html");
	      
		try {
	         // Register JDBC driver
	         Class.forName("com.mysql.jdbc.Driver");

	         // Open a connection
	         Connection con = Dbcon.getCon();
	         // Execute SQL query
	         Statement stmt = con.createStatement();
	         String sql;
	         sql = "SELECT * FROM ph";
	         ResultSet rs = stmt.executeQuery(sql);
	         
	         // Extract data from result set
	         while(rs.next()){
	            //Retrieve by column name
	            int id = rs.getInt("_id");
	            String phName = rs.getString("name");
	            String cardNo = rs.getString("cardNo");
	            String policyName = rs.getString("policyName");
	            String policyP = rs.getString("policyP");
	            String agentID = rs.getString("agentID");
	            String dob = rs.getString("dob");
	            String gender = rs.getString("gender");
	            String occupation = rs.getString("occupation");
	            String income = rs.getString("income");
	            String address = rs.getString("address");
	            request.setAttribute("id", id);
	            request.setAttribute("phName", phName);
	            request.setAttribute("cardNo", cardNo);
	            request.setAttribute("policyName", policyName);
	            request.setAttribute("policyP", policyP);
	            request.setAttribute("agentID", agentID);
	            request.setAttribute("dob", dob);
	            request.setAttribute("gender", gender);
	            request.setAttribute("occupation", occupation);
	            request.setAttribute("income", income);
	            request.setAttribute("address", address);
	         }
	         // Clean-up environment
	         rs.close();
	         stmt.close();
	         con.close();
	      } catch(SQLException se) {
	         //Handle errors for JDBC
	         se.printStackTrace();
	      } catch(Exception e) {
	         //Handle errors for Class.forName
	         e.printStackTrace();
	      } finally {

	      } //end try
		request.getRequestDispatcher("PHDetail.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
