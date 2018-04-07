<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<title>Budget Website</title>	
	</head>
	<body style="font-family: helvetica;">
		Welcome to Main Page, <%=session.getAttribute("username")%>
		<p align="right"><a href='logout.jsp'>Logout</a> </p>
		
		
		<br/><br/><br/>
		<div align = "center">
			<h1>Salary and Tax Calculator</h1>
			<h2>Estimated Net Income: </h2>
			<h2>Current State: </h2>
		</div>
		<form method="post" action="adjuster.jsp">
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
                   	<td>
                   		<input type="submit" value="Submit" />
                   	</td>
                   	</td>
               </tbody>
           </table>
        </form>
	</body>
</html>