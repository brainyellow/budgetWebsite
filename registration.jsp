<%@ page import ="java.sql.*" %>

<%

    Class.forName("com.mysql.jdbc.Driver");
    Connection conn = DriverManager.getConnection("jdbc:mysql://cs336-spr18.chigwigvjel3.us-east-2.rds.amazonaws.com:3306/IncomeTax", "maziz", "mark1995++");
    
    String username = request.getParameter("username");    
    String password = request.getParameter("password");
    String name = request.getParameter("name");
    String state = request.getParameter("state");
    String salary = request.getParameter("salary");
    String expenses = request.getParameter("expenses");
    Statement st = conn.createStatement();
    int i = st.executeUpdate("insert into User(username, password, name, state, salary) values ('" + username + "','" + password + "','" + name + "','" + state + "','" + salary + "');");
    int j = st.executeUpdate("insert into Budget(expenses, username) values ('" + expenses + "','" + username + "');");
    if (i > 0 && j < 0) {
        response.sendRedirect("regsuccess.jsp");
    } else {
        response.sendRedirect("index.jsp");
    }
%>