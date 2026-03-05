<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<h2>Student Enrollment Form</h2>

<c:form action=""   modelAttribute="student">
<table>

<tr>

 <td>Enter the Name:</tr>
 <td><form:input path="name"/></td>

</tr>

<tr>

 <td>Enter the email:</tr>
 <td><form:input path="email"/></td>

</tr>

<tr>

 <td>Enter the Qualification:<td>
 <td>
<c:select path="qualification">
<c:option value="BCA">BCA</c:option>
<c:option value="BCS">BCS</c:option>
<c:option value="MCA">MCA</c:option>
<c:option value="MCS">MCS</c:option>
<c:option value="BTECH">BTECH</c:option>
<c:option value="BE">BE</c:option>
</c:select>
</td>

</tr>




</table>

</c:form>



</body>
</html>