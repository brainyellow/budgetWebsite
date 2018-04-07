<%@ page import ="java.sql.*" %>

<%

    Class.forName("com.mysql.jdbc.Driver");
    Connection conn = DriverManager.getConnection("jdbc:mysql://budgetwebsite.cthtpprfbxoo.us-east-2.rds.amazonaws.com:3306/IncomeTax", "admin", "adminadmin");
    
    String username = request.getParameter("username");    
    String password = request.getParameter("password");
    String name = request.getParameter("name");
    String state = request.getParameter("state");
    String salary = request.getParameter("salary");
    String expenses = request.getParameter("expenses");
    Statement st = conn.createStatement();
    String duplicate = null;
    ResultSet rs = st.executeQuery("SELECT * from User where username='" + username + "';");
    while(rs.next()){
        duplicate = rs.getString(1);
    }
    if (duplicate == null)
    {
        int i = st.executeUpdate("insert into User(username, password, name, state, salary) values ('" + username + "','" + password + "','" + name + "','" + state + "','" + salary + "');");
        int j = st.executeUpdate("insert into Budget(expenses, username) values ('" + expenses + "','" + username + "');");

        if (i > 0 && j < 0) {
            response.sendRedirect("regsuccess.jsp");
        } else {
            response.sendRedirect("index.jsp");
        }
    }else{
        out.println("This username already exists. Please choose a different one <a href='register.jsp'>try again</a>");
    }
%>