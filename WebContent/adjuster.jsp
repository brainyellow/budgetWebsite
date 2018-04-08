<%@ page import ="java.sql.*" %>
    <%
	    Class.forName("com.mysql.jdbc.Driver");
	    Connection conn = DriverManager.getConnection("jdbc:mysql://budgetwebsite.cthtpprfbxoo.us-east-2.rds.amazonaws.com:3306/IncomeTax", "admin", "adminadmin");
	    String state = request.getParameter("state");
	    String salary = request.getParameter("salary");
	    String expenses = request.getParameter("expenses");
	    String username = (String)session.getAttribute("username");
	    
	    Statement stUserUpdate = conn.createStatement();
	    stUserUpdate.executeUpdate("UPDATE User SET state = '" + state + "',salary = " + salary + " WHERE username = '" + username + "';");
		
	    Statement stBudgetUpdate = conn.createStatement();
	    stBudgetUpdate.executeUpdate("UPDATE Budget SET expenses =" + expenses + " WHERE username = '" + username + "';");
    	
	    response.sendRedirect("loginsuccess.jsp");
	    if (conn != null){
	    	conn.close();
	    }
    %>
