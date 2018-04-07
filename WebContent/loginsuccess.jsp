<%@ page import ="java.sql.*" %>
<!DOCTYPE html>
<html>
	<head>
		<title>Budget Website</title>	
	</head>
	<body style="font-family: helvetica;">
	<%
	Class.forName("com.mysql.jdbc.Driver");
    Connection conn = DriverManager.getConnection("jdbc:mysql://cs336-spr18.chigwigvjel3.us-east-2.rds.amazonaws.com:3306/IncomeTax", "maziz", "mark1995++");

    String username = (String) session.getAttribute("username");
    String name = null;
    String state= null;
    double salary = 0.0;
    double rate = 0.0;
    
    Statement st = conn.createStatement();
    ResultSet rs = st.executeQuery("SELECT name, state, salary from User where username='" + username + "';");
    while(rs.next()){
    	name = (String)rs.getString("name");
    	state = (String)rs.getString("state");
    	salary = (double)rs.getFloat("salary");
    }
    ResultSet rsrate = st.executeQuery("SELECT rate from TaxData where state='" + state + "';");
    while(rsrate.next())
    {
    	rate = (double)rsrate.getFloat("rate");
    }
    
    double eni = salary - (salary * rate);  
    %>
	
		<form method="post" action="adjuster.jsp">
		Welcome to Main Page, <%=name%>
		<p align="right"><a href='logout.jsp'>Logout</a> </p>
		
		
		<br/><br/><br/>
		
		
			<div align = "center">
				<h1>Salary and Tax Calculator</h1>
				<h2>Estimated Net Income: <%=eni%> </h2>
				<h2>Current State: <%=state%> </h2>
			</div>
            <table align = "center" border="0" width="0%" cellpadding="2">
               <thead>
                   <tr>
                       <th colspan="2">Adjust your information here</th>
                   </tr>
               </thead>
               <tbody>
                   <tr>
                       <td>State</td>
                       <td>
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
                       </td>
                   </tr>
                   <tr>
                       <td>Estimated Gross Salary</td>
                       <td><input type="number" name="salary" onfocus="this.value=''" value="" required/></td>
                   </tr>
                   <tr>
                       <td>Estimated Annual Expenses</td>
                       <td><input type="number" name="expenses" onfocus="this.value=''" value="" required/></td>
                   </tr>
                   	<td>
                   		<input type="submit" value="Submit" />
                   	</td>
               </tbody>
           </table>
      	</form>
	</body>
</html>
