<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f2f2f2;
        text-align: center;
        padding: 40px;
    }
    
    #bg-video {
        position: fixed;
        right: 0;
        bottom: 0;
        min-width: 100%;
        min-height: 100%;
        z-index: -1;
        object-fit: cover;
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
	<video autoplay muted loop id="bg-video">
        <source src="b2ac148889b247bab198235951d29dfb.mp4" type="video/mp4">
         Your browser does not support HTML5 video.
    </video>
    
    <div class="profile-card">
        <h1>Welcome : ${sessionScope.my_name}</h1>
        <h3>Email : ${sessionScope.my_namee}</h3>
        <h3>Gender : ${sessionScope.my_nameee}</h3>
    </div>
    
    <button class="shbtn"><h2>Click to buy 🛒</h2></button>
    
    <script>
    document.querySelector(".shbtn").addEventListener("click", function () {
	      window.location.href = "shoppingpage.html";
	});
    </script>
</body>
</html>