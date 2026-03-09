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


body{
    background: linear-gradient(to right, #4e73df, #1cc88a);
    padding-top:70px;
}


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



.dashboard{
    min-height: calc(100vh - 70px);
    display:flex;
    flex-direction:column;
    justify-content:center;
    align-items:center;
    gap:30px;
}


.cards{
    display:flex;
    gap:30px;
    flex-wrap:wrap;
    justify-content:center;
}


.card{
    background:white;
    padding:30px 40px;
    border-radius:15px;
    text-align:center;
    box-shadow:0px 10px 30px rgba(0,0,0,0.15);
    width:280px;
    transition:0.3s ease;
    
}


.card:hover{
    transform:translateY(-5px);
}


.count{
    font-size:28px;
    font-weight:bold;
    margin-top:10px;
    color:#1e293b;
}

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
<a href="/student-List">Student-List</a>
</div>

</div>



<!-- MAIN CONTENT -->
<div class="dashboard">

    <!-- Welcome Section -->
    <div class="hero">
        <h1>Welcome to Student Portal</h1>
        <p>Manage student enrollments, courses, and records easily.</p>
        <a href="/enrollment" class="btn">Enroll New Student</a>
    </div>


    <div class="cards">

        <div class="card">
            <h3>Total Students Enrolled in Courses</h3>
            <div class="count">
            
            <br>
            
            ${totalstudent}</div>
        </div>

        <div class="card">
            <h3>Java Full Stack Course Enrolled Students: </h3><br>
            <div class="count">
            
            ${count}<br><br>
            
          <a href="/Javafull" class="btn">Show Students-></a>
            </div>
        </div>

        <div class="card">
            <h3>Python Full Stack Course Enrolled Students:</h3>
            <div class="count">
            
            ${pythoncount }<br><br>
        <a href="/Pythonfull" class="btn">Show Students-></a>
            </div>
        </div>

    </div>

</div>