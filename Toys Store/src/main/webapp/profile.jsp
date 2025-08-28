<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f2f2f2;
        text-align: center;
        padding: 40px;
    }
    .profile-card {
        background: #fff;
        padding: 20px;
        border-radius: 10px;
        box-shadow: 0px 4px 8px rgba(0,0,0,0.1);
        display: inline-block;
    }
    h1 {
        color: #333;
    }
    p {
        font-size: 18px;
        color: #555;
    }
    .shbtn {
        color:red; 
        text-align:center; 
        display: flex; 
        justify-content: center;
        align-items: center; 
        position: relative;
        margin-left:550px;
        top: 80px; 
        background-color:teal;
        border-radius: 10%;
        }
</style>
</head>
<body>
    <div class="profile-card">
        <h1>Welcome, <%= request.getAttribute("uname") %>!</h1>
        <p><b>Email:</b> <%= request.getAttribute("uemail") %></p>
        <p><b>Gender:</b> <%= request.getAttribute("ugender") %></p>
    </div>
    
    <button class="shbtn"><h2>Click to buy 🛒<h2></h2></button>
    
    <script>
    document.querySelector(".shbtn").addEventListener("click", function () {
	      window.location.href = "shoppingpage.html";
	});
    </script>
</body>
</html>