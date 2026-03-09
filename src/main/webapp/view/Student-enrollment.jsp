<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Student Enrollment Form</title>
<style type="text/css">

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

/* ===== MAIN WRAPPER ===== */
/* Takes up exactly the space below the navbar, no overflow */
.main-container {
    position: fixed;
    top: 65px;         /* start right below navbar */
    left: 0;
    right: 0;
    bottom: 0;         /* fill to bottom of screen */
    display: flex;
    justify-content: center;
    align-items: center;
}

/* ===== FORM CONTAINER ===== */
.form-container{
    background:white;
    width:430px;
    margin:40px auto;
    padding:25px;
    border-radius:10px;
    box-shadow:0 8px 20px rgba(0,0,0,0.2);
}

/* ===== HEADINGS ===== */
h2 {
    text-align: center;
    margin-bottom: 16px;
    color: #1e293b;
    font-size: 21px;
}

/* ===== FORM GROUP ===== */
.form-group {
    margin-bottom: 11px;
}

label {
    font-weight: bold;
    font-size: 13px;
    margin-bottom: 4px;
    display: block;
    color: #334155;
}

input[type="text"], 
select {
    width: 100%;
    padding: 7px 9px;
    border-radius: 8px;
    border: 1px solid #cbd5e1;
    font-size: 13px;
    transition: 0.3s;
}

input[type="text"]:focus,
select:focus {
    border-color: #38bdf8;
    outline: none;
    box-shadow: 0 0 5px rgba(56,189,248,0.4);
}

.radio-group,
.checkbox-group {
    display: flex;
    gap: 15px;
    font-size: 13px;
    margin-top: 3px;
}

/* ===== SUBMIT BUTTON ===== */
input[type="submit"] {
    width: 100%;
    padding: 9px;
    background-color: #1e293b;
    color: white;
    border: none;
    border-radius: 8px;
    font-size: 14px;
    cursor: pointer;
    transition: 0.3s ease;
    margin-top: 4px;
}

input[type="submit"]:hover {
    background-color: #0f172a;
    transform: translateY(-2px);
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

<!-- MAIN -->
<div class="main-container">
<div class="form-container">

<h2>Student Enrollment Form</h2>

<h3 style="color:green; font-size:14px; margin-bottom:10px;">${message}</h3>

<c:form action="save" modelAttribute="student" method="post">

<div class="form-group">
    <label>Enter the Name:</label>
    <c:input path="name"/>
</div>

<div class="form-group">
    <label>Enter the Email:</label>
    <c:input path="email"/>
    <h4 style="color:red; font-size:12px; margin-top:3px;">${msg}</h4>
</div>

<div class="form-group">
    <label>Qualification:</label>
    <c:select path="qualification">
        <c:option value="BCA">BCA</c:option>
        <c:option value="BSc">BSc</c:option>
        <c:option value="BCS">BCS</c:option>
        <c:option value="MCA">MCA</c:option>
        <c:option value="MCS">MCS</c:option>
        <c:option value="BTECH">BTECH</c:option>
        <c:option value="BE">BE</c:option>
    </c:select>
</div>

<div class="form-group">
    <label>Gender:</label>
    <div class="radio-group">
        <c:radiobutton path="gender" value="Male"/> Male
        <c:radiobutton path="gender" value="Female"/> Female
    </div>
</div>

<div class="form-group">
    <label>Choose Course:</label>
    <c:select path="course">
        <c:option value="Java Full Stack">Java Full Stack Developer</c:option>
        <c:option value="Backend Python Developer">Backend Python Developer</c:option>
        <c:option value="SQL with Java">SQL with Java</c:option>
        <c:option value="Microservices and Rest API">Microservices and Rest API</c:option>
        <c:option value="Spring and SpringBoot">Spring and SpringBoot</c:option>
        <c:option value="Core Java">Core Java</c:option>
        <c:option value="Core Python">Core Python</c:option>
        <c:option value="Python Full Stack">Python Full Stack</c:option>
    </c:select>
</div>

<div class="form-group">
    <label>Timings:</label>
    <div class="checkbox-group">
        <c:checkbox path="timings" value="Morning"/> Morning
        <c:checkbox path="timings" value="Afternoon"/> Afternoon
        <c:checkbox path="timings" value="Evening"/> Evening
    </div>
</div>

<div class="form-group">
    <label>Enter the Address:</label>
    <c:input path="address"/>
</div>

<div class="form-group">
    <label>Enter the Mobile No:</label>
    <c:input path="mobileno"/>
</div>

<input type="submit" value="Save">

</c:form>

</div>
</div>

</body> 
</html>
