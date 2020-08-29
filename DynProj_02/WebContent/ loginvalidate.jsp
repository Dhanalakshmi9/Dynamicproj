<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>validation</title>
</head>
<body>
	<% 
	String username=request.getParameter("username");
	String password=request.getParameter("password");
		if(validate(username,password)){
			%>
			<jsp:forward page="Success.jsp"></jsp:forward>
			<%
		
		}
		else{
			response.sendRedirect("login.jsp");
		}
	
	%>
	<%!
	
	public boolean validate(String un,String pw){
		if(un.equals( "dhana")&& pw.equals("dhana")){
			return true;
		}
		else{
			return false;
		}
	}
	%>
</body>
</html>