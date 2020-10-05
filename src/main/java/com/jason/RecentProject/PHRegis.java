package com.luwei;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.Statement;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.luwei.Dbcon;

/**
 * Servlet implementation class PHRegis
 */
@WebServlet("/PHRegis")
public class PHRegis extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PHRegis() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {
  
            String name = request.getParameter("name");
            String cardNo = request.getParameter("cardNo");
            String policyName = request.getParameter("policyName");
            String policyP = request.getParameter("policyP");
            String agentID = request.getParameter("agentID");
            String dob = request.getParameter("dob");
            String gender = request.getParameter("gender");
            String occupation = request.getParameter("occupation");
            String income = request.getParameter("income");
            String address = request.getParameter("address");
            
            Connection con = Dbcon.getCon();
            Statement st = con.createStatement();
            String insertQuery = "insert into ph(name, cardNo, policyName, policyP, agentID,dob,gender,occupation,income,address) values('" + name + "','" + cardNo + "','" + policyName + "','" + policyP + "','" + agentID + "','"+dob+"','"+gender+"','"+occupation+"','"+income+"','"+address+"')";

            int i = st.executeUpdate(insertQuery);

            if (i != 0) {
                response.sendRedirect("PHDetail.jsp?msg=Registration_success");
            } else {
                response.sendRedirect("PHDetail.jsp?msg=Register Error");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
