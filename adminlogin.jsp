<%@page import="java.io.*;"%>
<%@page import="java.sql.*;"%>
<html>
<body background=1.jpg>
<form action=adminlogin.jsp method=post>
<table border=2 align=center>
<tr>
<th colspan=2>ADMIN LOGIN</th>
</tr>
<tr>
<td>UserName</td>
<td><input type=text name=t1></td>
</tr>
<tr>
<td>Password</td>
<td><input type=password name=t2></td>
</tr>
<tr>
<th colspan=2><input type=submit name=b1 value=LOGIN></th>
</tr>
<%
try
{
String n=request.getParameter("t1");
String p=request.getParameter("t2");
if(request.getParameter("b1")!=null)
{
if(n.equalsIgnoreCase("admin")&&p.equalsIgnoreCase("admin"))
{
response.sendRedirect("adminregister.jsp");
out.println("<script>alert('login success')</script>");
}
else
{
out.println("<script>alert('login failed')</script>");
}
}
}
catch(Exception e)
{
System.out.println(e);
}
%>
</table>
</form>
</body>
</html>