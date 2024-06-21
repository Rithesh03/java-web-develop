<%@page import="java.io.*;"%>
<%@page import="java.sql.*;"%>
<html>
<body>
<form action=statuschange.jsp method=post>
<table border=2>
<tr>
<th colspan=2>STAFF REMOVE</th>
</th>
<tr>
<td>ENTER THE STAFFID</td>
<td><input type=text name=t1></td>
</tr>
<tr>
<th colspan=2><input type=submit name=b1 value=INACTIVE></th>
<%
try
{
String id=request.getParameter("t1");
String s="Inactive";
if(request.getParameter("b1")!=null)
{
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","root");
PreparedStatement ps=con.prepareStatement("update manage set status=? where id=?");
ps.setString(2,id);
ps.setString(1,s);
int x=ps.executeUpdate();
if(x>0)
{
out.println("<script>alert('Inactivate');</script>");
}
else
{
out.println("<script>alert('failed');</script>");
}
}
}
catch(Exception e)
{
out.println(e);
}
%>
</table>
</form>
</body>
</html>