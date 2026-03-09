<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Student List</title>

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
    height:100vh;
    overflow:hidden;
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

/* Container */
.container{
 
     width:95%;
    margin:auto;

}
.table-wrapper{
    height:75vh;
    overflow-y:auto;
}

/* Table */
table{
    width:100%;
    border-collapse:collapse;
    background:white;
    border-radius:10px;
    overflow:hidden;
    box-shadow:0 8px 20px rgba(0,0,0,0.2);
}

th{
    background:#4e73df;
    color:white;
    padding:12px;
}

td{
    padding:10px;
    text-align:center;
}
td:last-child{
    white-space: nowrap;
    width:160px;
}
tr:nth-child(even){
    background:#f2f2f2;
}

tr:hover{
    background:#d1f5e8;
    transition:0.3s;
}

h1{
    text-align:center;
    color:white;
    margin-bottom:20px;
}

.btn{
    display:inline-block;
    padding:6px 14px;
    margin:3px;
    border-radius:6px;
    text-decoration:none;
    font-size:14px;
    font-weight:500;
    transition:0.3s ease;
}

.update-btn{
    background:#1cc88a;
    color:white;
}

.update-btn:hover{
    background:#17a673;
    transform:translateY(-2px);
    box-shadow:0 4px 8px rgba(0,0,0,0.2);
}
.delete-btn{
    background:#e74a3b;
    color:white;
}

.delete-btn:hover{
    background:#c0392b;
    transform:translateY(-2px);
    box-shadow:0 4px 8px rgba(0,0,0,0.2);
}
.action-buttons{
    display:flex;
    justify-content:center;
    gap:8px;
}

</style>

</head>
<body>

<!-- Navbar -->
<div class="navbar">
    <h2>🎓 Student Portal</h2>
    <div>
        <a href="/home">Home</a>
        <a href="/About">About</a>
        <a href="/enrollment">Enrollment</a>
        <a href="/student-List">Student-List</a>
    </div>
</div>
<div class="container">
<h1>Java Full-Stack Registered Students</h1>

<div class="table-wrapper">
<table>
<tr>
   <th>ID</th>
   <th>Name</th>
   <th>Email</th>
   <th>Gender</th>
   <th>Qualification</th>
   <th>Course</th>
   <th>Timings</th>
   <th>Duration</th>
   <th>Address</th>
   <th>Mobile</th>
   
</tr>

<c:forEach var="student" items="${students}">
<tr>
  <td>${student.id}</td>
  <td>${student.name}</td>
  <td>${student.email}</td>
  <td>${student.gender}</td>
  <td>${student.qualification}</td>
  <td>${student.course}</td>
  <td>${student.timings}</td>
  <td>${student.courseduration}</td>
  <td>${student.address}</td>
  <td>${student.mobileno}</td>
</tr>
</c:forEach>

</table>
</div>

</div>
</body>
</html>