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
    font-family: 'Segoe UI', sans-serif;
}

/* Background */
body{
    background: linear-gradient(to right, #4e73df, #1cc88a);
    padding-top:70px;
}

/* Navbar */
.navbar{
    position:fixed;
    top:0;
    width:100%;
    height:60px;
    background:white;
    display:flex;
    justify-content:space-between;
    align-items:center;
    padding:0 40px;
    box-shadow:0 4px 10px rgba(0,0,0,0.2);
}

.navbar h2{
    color:#4e73df;
}

.navbar a{
    text-decoration:none;
    color:#333;
    margin-left:20px;
    font-weight:500;
    transition:0.3s;
}

.navbar a:hover{
    color:#1cc88a;
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