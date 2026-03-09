<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>About - Student Portal</title>

<style>
*{
    margin:0;
    padding:0;
    box-sizing:border-box;
    font-family:'Segoe UI', sans-serif;
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
}

.navbar a:hover{
    color:#1cc88a;
}

/* Content */
.container{
    width:80%;
    margin:40px auto;
    background:white;
    padding:40px;
    border-radius:15px;
    box-shadow:0 8px 20px rgba(0,0,0,0.2);
}

h1{
    margin-bottom:20px;
    color:#1e293b;
}

h3{
    margin-top:20px;
    color:#4e73df;
}

p, li{
    color:#475569;
    margin-top:8px;
}

ul{
    margin-left:20px;
}
</style>
</head>
<body>

<div class="navbar">
    <h2>🎓 Student Portal</h2>
    <div>
        <a href="/home">Home</a>
        <a href="/enrollment">Enrollment</a>
        <a href="/student-List">Student List</a>
        <a href="/Asbout">About</a>
    </div>
</div>

<div class="container">

<h1>About Student Portal Application</h1>

<p>
Student Portal is a web-based application developed using Spring Boot MVC architecture.
It allows administrators to manage student enrollments efficiently.
</p>

<h3>Key Features</h3>
<ul>
    <li>Student Registration</li>
    <li>Email Uniqueness Validation</li>
    <li>Course Duration Auto Assignment</li>
    <li>Update & Delete Operations</li>
    <li>DTO Pattern Implementation</li>
</ul>

<h3>Technology Stack</h3>
<ul>
    <li>Backend: Spring Boot, Spring MVC</li>
    <li>ORM: Spring Data JPA (Hibernate)</li>
    <li>Database: MySQL</li>
    <li>Frontend: JSP, CSS</li>
    <li>Architecture: Layered MVC Architecture</li>
</ul>

<h3>Concepts Used</h3>
<ul>
    <li>Dependency Injection & IoC</li>
    <li>@Controller, @Service, @Repository</li>
    <li>@Autowired Annotation</li>
    <li>JPA Repository</li>
</ul>

<h3>Developer</h3>
<p>
Developed by: Aaditya Yuvraj Mohite  
Computer Science Engineering Student
</p>

</div>

</body>
</html>