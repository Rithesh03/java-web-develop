<%@page import="java.io.*;"%>
<%@page import="java.sql.*;"%>
<html>
<body>
<form action="viewstu.jsp" method=post>
<table border=2 align=center>
<tr>
<td>Date</td>
<td><input type=date name=d1></td>
</tr>
<tr>
<th colspan=2><input type=submit name=b1 value=CLICK></th>
</tr>
</table>
<br>
<br>
<%
try
{
String n=request.getParameter("d1");
if(request.getParameter("b1")!=null)
{
//out.println(n);
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","root");
PreparedStatement ps=con.prepareStatement("select * from admin where date=?");
ps.setString(1,n);
ResultSet rs=ps.executeQuery();
if(!rs.next())
{
out.println("<script>alert('NO ONE HAS REGISTEREG');</script>");
}
else
{
%>
<table border=2 align=center>
<tr><td>Name<td>Date<td>Qualification<td>Fees<td>Phone No</td></tr>
<tr><td><%=rs.getString("name")%>
<td><%=rs.getString("date")%>
<td><%=rs.getString("qualification")%>
<td><%=rs.getString("fees")%>
<td><%=rs.getString("phoneno")%></tr>
<%
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