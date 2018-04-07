<%@ page import ="java.sql.*" page language="java"  contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"%>
    <%
	    Class.forName("com.mysql.jdbc.Driver");
	    Connection conn = DriverManager.getConnection("jdbc:mysql://budgetwebsite.cthtpprfbxoo.us-east-2.rds.amazonaws.com:3306/IncomeTax", "admin", "adminadmin");
    	//String state = session.getAttribute("state");
    
    %>
