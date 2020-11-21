<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String firstname=request.getParameter("fname");
String lastname=request.getParameter("lname");
String email=request.getParameter("email");
String phone=request.getParameter("phone");
String budget=request.getParameter("budget");
String about=request.getParameter("about");
String seo=request.getParameter("seo");
String hosting=request.getParameter("hosting");
try
{    
	
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/sample","root","");
PreparedStatement ps=con.prepareStatement("insert into assginment(firstname,lastname,email,phone,budget,about,seo,hosting) values(?,?,?,?,?,?,?,?)");
ps.setString(1,firstname);
ps.setString(2,lastname);
ps.setString(3,email);
ps.setString(4,phone);
ps.setString(5,budget);
ps.setString(6,about);
ps.setString(7,seo);
ps.setString(8,hosting);


int n=ps.executeUpdate();
		{
	
	
response.sendRedirect("index.jsp");
}

con.close();
}
catch(Exception e)
{
	e.printStackTrace();
	
}



%>
</body>
</html>