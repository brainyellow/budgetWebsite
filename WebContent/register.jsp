<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Register</title>
        <link rel="stylesheet" href="registerStyle.css">
    </head>
    <body>
    <div class="formBox">
        <form method="post" action="registration.jsp">
        				<h4>REGISTER</h4>
                       <h3>Enter your information here</h3>
                       <p>Full Name</p>
                       <input type="text" pattern="[a-zA-Z\s]+" title = "Only letters allowed" name="name" value="" required/>
                       <p>Username</p>
                       <input type="text" pattern="[a-zA-Z0-9]+" title = "Only alphanumeric characters allowed" name="username" value="" required/>
                       <p>Password</p>
                       <input type="password" name="password" value="" required/>
                       <p>State</p>
                       <select  name="state" size="1" required>
                      	 	<option value="">Select State </option>
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
                       <p>Estimated Annual Gross Salary</p>
                       <input type="number" min= "0"  max= "2147483647" name="salary" onfocus="this.value=''" value="" required/>
                       <p>Estimated Annual Expenses</p>
                       <input type="number" min= "0"  name="expenses" onfocus="this.value=''" value="" required/>
                       <input type="submit" value="Submit" />
                       <a href="index.jsp">Have an account? Login Here</a>
        </form>
        </div>
    </body>
</html>
