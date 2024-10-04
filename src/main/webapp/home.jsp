<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>home</title>
</head>
<body>
<center>
<h1>Jntua college of engineering</h1><br>
<br>
<h2 style="color:red;"><%out.println(session.getAttribute("sem")); %></h2>
<h2 style="color:blue;"><%out.println(session.getAttribute("sub1"));  %></h2>
<h2 style="color:blue;"><% out.println(session.getAttribute("sub2"));  %></h2>
<h2 style="color:blue;"><% out.println(session.getAttribute("sub3"));  %></h2>
<h2 style="color:blue;"><% out.println(session.getAttribute("sub4"));  %></h2>
<h2 style="color:blue;"><% out.println(session.getAttribute("sub5"));  %></h2>
<h2 style="color:blue;"><% out.println(session.getAttribute("sub6"));  %></h2>
</body>
</center>
</html>