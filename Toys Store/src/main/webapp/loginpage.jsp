<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="logincss.css">
</head>
<body>
 <form action="mylogin" method="post">
   <div class="login-container">
   <h2>Login</h2>
   <table id="mytbl">
     <tr>
       <td><input type="text" name="email1" placeholder="Enter your email..." required/></td>
     </tr>
     <tr>
       <td><input type="password" name="pass1" placeholder="Enter your password..." required/></td>
     </tr>
     <tr>
       <td><input type="submit" value="submit" /></td>
     </tr>
     </table>
     </div>
   </form>
</body>
</html>