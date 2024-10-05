<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>exam</title>
</head>
<body>

<h1>Jntua college of enginering</h1><br><br>
<%out.println(session.getAttribute("qno")); %>)<p><%out.println(session.getAttribute("question")); %></p>
<br><br>
<br><br>
<form action="Validation_Servlet">
<input type="radio" name="answer"value="A"> <%out.println(session.getAttribute("a")); %><br>
<input type="radio" name="answer"value="B"> <%out.println(session.getAttribute("b")); %><br>
<input type="radio" name="answer"value="C"> <%out.println(session.getAttribute("c")); %><br>
<input type="radio" name="answer" value="D"> <%out.println(session.getAttribute("d")); %><br>
<br><br>
<input type="submit" value="next">
</form>

</body>
</html>