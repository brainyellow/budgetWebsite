<%@ page import ="java.sql.*"%>
<%@ page import ="java.math.*"%>
<!DOCTYPE html>
<html>
	<head>
		<title>Budget Website</title>	
		<link rel="stylesheet" href="css/mainpageStyle.css">
	</head>
	<body style="font-family: helvetica;">
	
	<%
	Class.forName("com.mysql.jdbc.Driver");
    Connection conn = DriverManager.getConnection("jdbc:mysql://budgetwebsite.cthtpprfbxoo.us-east-2.rds.amazonaws.com:3306/IncomeTax", "admin", "adminadmin");

    String username = (String) session.getAttribute("username");
    String name = null;
    String state= null;
    double salary = 0.0;
    double rate = 0.0;
    double expenses = 0.0;
    double netIncome = 0.0;
    double annualSavings  = 0.0;
    
    Statement st = conn.createStatement();
    ResultSet rs = st.executeQuery("SELECT U.name, U.state, U.salary, B.expenses from User U, Budget B where U.username = B.username and U.username='" + username + "';");
    while(rs.next()){
    	name = (String)rs.getString("name");
    	state = (String)rs.getString("state");
    	salary = rs.getDouble("salary");
    	expenses = rs.getDouble("expenses");
    }
    ResultSet rsTaxRate = st.executeQuery("SELECT rate from TaxData where state='" + state + "';");
    while(rsTaxRate.next())
    {
    	rate = rsTaxRate.getDouble("rate");
    }
    
    netIncome = salary - (salary * rate);
    annualSavings =  netIncome - expenses;
    BigDecimal bd = new BigDecimal(Double.toString(netIncome));
    bd = bd.setScale(2, BigDecimal.ROUND_HALF_UP);		//rounds to two decimal places
    netIncome = bd.doubleValue();
    %>
	<div class="mainBox">
		<form method="post" action="adjuster.jsp">
			<h4>Welcome, <%=name%></h4>
			
			<div align = "center">
				<div class="main_info">
					<h1>Your Budget Information</h1>
					<div class="whitespace"></div>
					<h3>$<%=netIncome%></h3>
					<h4>Estimated Annual Net Income</h4>
					<br>
					
					<h3>$<%=annualSavings%></h3>
					<h4>Annual Savings</h4>
					<div class="whitespace"></div>
					<h3><%=state%></h3>
					<h4>Current State</h4>
				</div>
			</div>
			
			<div class="h_line"></div>
                 <h3 style = "font-size: 26px">adjust your information</h3>
                       <p>State</p>
                      	 <select  name="state" size="1" required>
                      	 	<option value=""> Select State </option>
							<option value="Alabama">Alabama</option>
				      		<option value="Alaska">Alaska</option>
							<option value="Alaska">Arizona</option>
							<option value="Arkansas">Arkansas</option>
							<option value="California">California</option>
							<option value="Colorado">Colorado</option>
							<option value="Connecticut">Connecticut</option>
							<option value="Delaware">Delaware</option>
							<option value="Florida">Florida</option>
							<option value="Georgia">Georgia</option>
							<option value="Hawaii">Hawaii</option>
							<option value="Idaho">Idaho</option>
							<option value="Illinois">Illinois</option>
							<option value="Indiana">Indiana</option>
							<option value="Iowa">Iowa</option>
							<option value="Kansas">Kansas</option>
							<option value="Kentucky">Kentucky</option>
							<option value="Louisiana">Louisiana</option>
							<option value="Maine">Maine</option>
							<option value="Maryland">Maryland</option>
							<option value="Massachusetts">Massachusetts</option>
							<option value="Michigan">Michigan</option>
							<option value="Minnesota">Minnesota</option>
							<option value="Mississippi">Mississippi</option>
							<option value="Missouri">Missouri</option>
							<option value="Montana">Montana</option>
							<option value="Nebraska">Nebraska</option>
							<option value="Nevada">Nevada</option>
							<option value="New Hampshire">New Hampshire</option>
							<option value="New Jersey">New Jersey</option>
							<option value="New Mexico">New Mexico</option>
							<option value="New York">New York</option>
							<option value="New York">North Carolina</option>
							<option value="North Dakota">North Dakota</option>
							<option value="Ohio">Ohio</option>
							<option value="Oklahoma">Oklahoma</option>
							<option value="Oregon">Oregon</option>
							<option value="Pennsylvania">Pennsylvania</option>
							<option value="Rhode Island">Rhode Island</option>
							<option value="South Carolina">South Carolina</option>
							<option value="South Dakota">South Dakota</option>
							<option value="Tennessee">Tennessee</option>
							<option value="Texas">Texas</option>
							<option value="Utah">Utah</option>
							<option value="Vermont">Vermont</option>
							<option value="Virginia">Virginia</option>
							<option value="Washington">Washington</option>
							<option value="West Virginia">West Virginia</option>
							<option value="Wisconsin">Wisconsin</option>
							<option value="Wyoming">Wyoming</option>
						</select>
                      	<p>Estimated Annual Salary</p>
                      	<input type="number" min= "0" max= "2147483647" name="salary" onfocus="this.value=''" value="" required/>
                       	<p>Estimated Annual Expenses</p>
                       	<input type="number" min= "0" name="expenses" onfocus="this.value=''" value="" required/>
                   		<input type="submit" value="Submit Changes"/>
                   		<p align=right><a style = "color: #D0D0D0" href='logout.jsp'>Logout</a></p>
      	</form>
      	</div>
	</body>
</html>
