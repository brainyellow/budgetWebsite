<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Budget Website</title>
    </head>
    <body>
        <form method="post" action="login.jsp">
            <table border="0" class= "table-responsive">
              <thead>
                  <tr>
                      <th><h3>Login Here</h3></th>
                  </tr>
              </thead>
              <tbody>
                  <tr>
                      <td>Username</td>
                      <td><input type="text" name="username" value="" /></td>
                  </tr>
                  <tr>
                      <td>Password</td>
                      <td><input type="password" name="password" value="" /></td>
                  </tr>
                  <tr>
                      <td><input type="submit" value="Login" /></td>
                  </tr>
                  <tr>
                      <td colspan="2">If you are not registered, please <a href="register.jsp">Click Here</a></td>
                  </tr>
              </tbody>
            </table>
        </form>
    </body>
</html>