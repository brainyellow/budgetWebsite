<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Budget Website</title>
        <link rel="stylesheet" href="loginstyle.css">
    </head>
    <body>
				<div class="formBox">
					<form method="post" action="login.jsp">
                      	<h3>Sign In</h3>
                      	<p>Username</p>
                      	<input type="text" name="username" value="">
                      	<p>Password</p>
                      	<input type="password" name="password" value="">
                      	<input type="submit" value="Login">
                      	<a href="register.jsp">No Account? Register</a>
            		</form>
        		</div>
    </body>
</html>