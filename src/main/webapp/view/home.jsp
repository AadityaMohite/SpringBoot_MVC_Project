<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Student Portal - Home</title>

<style>

*{
margin:0;
padding:0;
box-sizing:border-box;
}

html,body{
height:100%;
font-family:Arial, sans-serif;
background:linear-gradient(135deg,#eef2f3,#d9e4f5);
}

/* NAVBAR */

.navbar{
position:fixed;
top:0;
width:100%;
height:65px;
background:#1e293b;
padding:0 50px;
display:flex;
justify-content:space-between;
align-items:center;
box-shadow:0px 4px 12px rgba(0,0,0,0.3);
z-index:1000;
}

.logo{
color:white;
font-size:22px;
font-weight:bold;
}

.nav-links a{
color:#cbd5e1;
text-decoration:none;
margin-left:30px;
font-size:15px;
position:relative;
transition:0.3s;
}

.nav-links a:hover{
color:#38bdf8;
}

.nav-links a::after{
content:"";
position:absolute;
width:0%;
height:2px;
left:0;
bottom:-5px;
background:#38bdf8;
transition:0.3s;
}

.nav-links a:hover::after{
width:100%;
}


/* MAIN SECTION */

.main{
height:100vh;
display:flex;
justify-content:center;
align-items:center;
padding-top:65px;
}

/* HERO BOX */

.hero{
background:white;
padding:50px 60px;
border-radius:15px;
text-align:center;
box-shadow:0px 10px 30px rgba(0,0,0,0.15);
width:600px;
}

.hero h1{
font-size:32px;
color:#1e293b;
margin-bottom:15px;
}

.hero p{
font-size:16px;
color:#475569;
margin-bottom:30px;
}

/* BUTTON */

.btn{
display:inline-block;
padding:12px 30px;
background:#1e293b;
color:white;
text-decoration:none;
border-radius:8px;
font-size:16px;
transition:0.3s;
}

.btn:hover{
background:#0f172a;
transform:translateY(-3px);
}

</style>

</head>
<body>


<!-- NAVBAR -->

<div class="navbar">

<div class="logo">🎓 Student Portal</div>

<div class="nav-links">
<a href="/enrollment">Enrollment</a>
<a href="/home">Home</a>
<a href="/About">About</a>
<a href="/Student-List">Student-List</a>
</div>

</div>



<!-- MAIN CONTENT -->

<div class="main">

<div class="hero">

<h1>Welcome to Student Portal</h1>

<p>
Manage student enrollments, courses, and records easily using this portal.
</p>

<a href="/enrollment" class="btn">Enroll New Student</a>

</div>

</div>


</body>
</html>