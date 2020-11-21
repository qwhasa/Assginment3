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



try
{    
	
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/sample","root","");
PreparedStatement ps=con.prepareStatement("delete from assginment a where firstname=?");
ps.setString(1,firstname);


int n=ps.executeUpdate();
		{
	
	
response.sendRedirect("view.jsp");
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