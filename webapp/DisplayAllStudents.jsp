<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<% ResultSet rs = (ResultSet) request.getAttribute("resultset"); %>
<h1>All Student Details:</h1>
<table border="1">
<tr>
<th>StudentId</th>
<th>StudentName</th>
<th>StudentEmail</th>
<th>StudentAge</th>
<th>StudentCouirse</th>
<th>StudentCity</th>
<th>Update</th>
<th>Delete</th>
</tr>
<%
while(rs.next()) {
%>
<tr>
<td><%= rs.getInt(1) %></td>
<td><%= rs.getString(2) %></td>
<td><%= rs.getString(3) %></td>
<td><%= rs.getInt(4) %></td>
<td><%= rs.getString(5) %></td>
<td><%= rs.getString(6) %></td>
<td><a href="find-by-id?studentId=<%= rs.getInt(1) %>">UPDATE</a></td>
<td><a href="delete-by-id?studentId=<%= rs.getInt(1) %>" onClick="return confirm('delete?');">DELETE</a></td>

</tr>
<%
}
%>
</table>
<h2><a href="index.jsp">GO BACK TO DASHBOARD</a></h2>
</body>
</html>