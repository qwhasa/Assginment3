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
<h1>Web Desgin Quote Form</h1>
<form action="save.jsp" method="post">
Enter your firstname
<input type="text" name="fname" id="fname"  required/><br>
Enter your lastname
<input type="text" name="lname" id="lname"  required/><br>
Enter your email
<input type="text" name="email" id="email"  required/><br>
Enter your phone
<input type="number" name="phone" id="phone"  required/><br>
Enter your budget
<input type="number" name="budget" id="budget"  required/><br>
Project about
<input type="text" name="about" id="about"  required/><br>
Importance
<select name="seo" id="seo">
  <option value="easy">easy</option>
  <option value="medium">medium</option>
  <option value="hard">hard</option>
</select>
Hosting or not?
<select name="hosting" id="hosting">
  <option value="yes">yes</option>
  <option value="no">no</option>

</select>


<input type="submit" value="Submit Form" id="btn"/>
<a href="view.jsp" >View</a>
</form>

</div>

</body>
</html>