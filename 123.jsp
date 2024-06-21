<%@page import="java.io.*;"%>
<%@page import="java.sql.*;"%>
<html>
<body>
<form action=123.jsp method=post>
<table border=2>
<tr>
<td>id</td>
<td><input type=text name=n1 ></td>
</tr>
<tr>
<th colspan=2><input type=submit name=b1 value=click></th>
</tr>
<%
try
{
String id=request.getParameter("n1");
String s="active";
if(request.getParameter("b1")!=null)
{
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","root");
PreparedStatement ps=con.prepareStatement("select* from manage where id=? and status=?");
ps.setString(1,id);
ps.setString(2,s);
ResultSet rs=ps.executeQuery();
%>
<table border=2 align=center>
<tr>
<td>id<td>staffname<td>phoneno<td>gender<td>email<td>qualification<td>position<td>doj<td>experiance<td>status</td>
</tr>
<%
while(rs.next())
{
%>
<tr>
<td><%=rs.getString("id")%></td>
<td><%=rs.getString("staffname")%></td>
<td><%=rs.getString("phoneno")%></td>
<td><%=rs.getString("gender")%></td>
<td><%=rs.getString("email")%></td>
<td><%=rs.getString("qualification")%></td>
<td><%=rs.getString("position")%></td>
<td><%=rs.getString("doj")%></td>
<td><%=rs.getString("experiance")%></td>
<td><a href="statuschange.jsp"><input type=button name=z value=click></a></td>
</tr>
<%
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