 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>
    <html>
<head>
<style>
#tbl{
width:80%;
height:400px;
border-collapse:collapse;
}

#tbl td,#tbl th{
border:1px solid #fff;
text-align:center;
padding:10px;
}

#tbl thead tr{
background-color:#5555ff;
color:#ffffff;
font-size:20px;

}
.delete{
background-color:#f55;
padding:5px;
border:1px solid #f55;
border-radius:5px;
font-weight:bold;
color:#fff;
}

.delete:hover
{
cursor:pointer;
background-color:#fff;
color:#f55;
}

</style>
<script type="text/javascript" src="table_script.js"></script>
</head>
<body>
<div id="wrapper">

<%
try
{
Class.forName("com.mysql.cj.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/sample","root","");
Statement statement = con.createStatement();
ResultSet resultset = statement.executeQuery("select * from assginment");
%>
<table id="tbl" >
<thead>
<tr>
<th>fistName</th>
<th>lastName</th>
<th>email</th>
<th>phone</th>
<th>budget</th>
<th>Project about</th>
<th>Importance</th>
<th>Hosting</th>
<th>sdate</th>
</tr>
</thead>
<% 
while (resultset.next()) {
	%>
	
	<tr>
	<td><%= resultset.getString("firstname") %></td>
	<td><%= resultset.getString("lastname") %></td>
	<td><%= resultset.getString("email") %></td>
	<td><%= resultset.getString("phone") %></td>
	<td><%= resultset.getString("budget") %></td>
	<td><%= resultset.getString("about") %></td>
	<td><%= resultset.getString("seo") %></td>
	<td><%= resultset.getString("hosting") %></td>
	<td><%= resultset.getString("timestamp") %></td>

	
	</tr>
	<%

}
con.close();
}
catch(Exception e)
{
	e.printStackTrace();
	
}

%>

</table>
</div>

</body>
</html>