<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Student Enrollment Form</title>

<style>

body {
    font-family: Arial, sans-serif;
    background: linear-gradient(to right, #4e73df, #1cc88a);
    display: flex;
    justify-content: center;
    align-items: center;
    min-height: 100vh;   /* Changed from height to min-height */
    margin: 0;
}

.form-container {
    background: white;
    padding: 20px 30px;   /* Reduced padding */
    border-radius: 12px;
    box-shadow: 0px 8px 20px rgba(0,0,0,0.2);
    width: 450px;         /* Slightly smaller width */
    max-height: 95vh;     /* Prevent overflow */
}

h2 {
    text-align: center;
    margin-bottom: 15px;
    color: #4e73df;
    font-size: 20px;
}

.form-group {
    margin-bottom: 10px;   /* Reduced spacing */
}

label {
    font-weight: bold;
    font-size: 14px;
    margin-bottom: 4px;
    display: block;
}

input[type="text"], 
select {
    width: 100%;
    padding: 6px;
    border-radius: 6px;
    border: 1px solid #ccc;
    font-size: 13px;
}

.radio-group,
.checkbox-group {
    display: flex;
    gap: 10px;
    font-size: 13px;
}

input[type="submit"] {
    width: 100%;
    padding: 8px;
    background-color: #4e73df;
    color: white;
    border: none;
    border-radius: 6px;
    font-size: 14px;
    cursor: pointer;
}

</style>

</head>
<body>

<div class="form-container">

<h2>Student Enrollment Form</h2>

<h3>${message }</h3>


<c:form action="save" modelAttribute="student" method="post">

<div class="form-group">
<label>Enter the Name:</label>
<c:input path="name"/>
</div>

<div class="form-group">
<label>Enter the Email:</label>
<c:input path="email"/>
</div>

<div class="form-group">
<label>Qualification:</label>
<c:select path="qualification">
<c:option value="BCA">BCA</c:option>
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

</body>
</html>