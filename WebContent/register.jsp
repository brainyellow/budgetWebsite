<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Register</title>
    </head>
    <body>
        <form method="post" action="registration.jsp">
            <table border="0" width="0%" cellpadding="2">
               <thead>
                   <tr>
                       <th colspan="2">Enter your information here</th>
                   </tr>
               </thead>
               <tbody>
                   <tr>
                       <td>Name(first+last)</td>
                       <td><input type="text" name="name" value="" /></td>
                   </tr>
                   <tr>
                       <td>Username</td>
                       <td><input type="text" name="username" value="" /></td>
                   </tr>
                   <tr>
                       <td>Password</td>
                       <td><input type="password" name="password" value="" /></td>
                   </tr>
                   <tr>
                       <td>State</td>
                       <td>
                      	 <select  name="state" size="1" >
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
                       <td><input type="number" name="salary" onfocus="this.value=''" value="" /></td>
                   </tr>
                   <tr>
                       <td>Estimated Annual Expenses</td>
                       <td><input type="number" name="expenses" onfocus="this.value=''" value="" /></td>
                   </tr>
                   <tr>
                       <td><input type="submit" value="Submit" /></td>
                   </tr>
                   <tr>
                       <td colspan="2">If you are already registered, please <a href="index.jsp">Login Here</a></td>
                   </tr>
               </tbody>
           </table>
        </form>
    </body>
</html>