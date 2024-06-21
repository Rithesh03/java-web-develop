<%@page import="java.io.*;"%>
<%@page import="java.sql.*;"%>
<html>
<body>
<form action=manager.jsp method=post>
<table border=2>
<tr>
<th colspan=2>MANAGER</th>
</tr>
<%
try
{
Class.forName("com.mysql.jdbc.Driver");
Connection con1=DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","root");
PreparedStatement z=con1.prepareStatement("select max(id) from manage");
ResultSet rs=z.executeQuery();
if(rs.next())
{
int a=rs.getInt(1);
int b=a+1;
out.println("<tr><td>Staff Id<td><input type=text name=t1 value="+b+"></td></tr>");
} 
%>
<tr>
<td>Staff Name</td>
<td><input type=text name=t2></td>
</tr>
<tr>
<td>Phone No</td>
<td><input type=text name=t3></td>
</tr>
<tr>
<td>Gender</td>
<td><input type=radio name=r1 value=male>Male<input type=radio name=r1 value=female>Female</td>
</tr>
<tr>
<td>E Mail</td>
<td><input type=text name=t4></td>
</tr>
<tr>
<td>Qualification</td>
<td><select name=s1>
<option>c,c++</option>
<option>ASP/XML</option>
<option>VB.NET</option>
<option>J2EE</option>
<option>ASP.NET</option>
<option>TALLY</option>
<option>CAD</option>
<option>HTML</option>
<option>UNIX</option>
<option>ORACLE</option>
<option>PROJECT</option>
<option>MULTIMEDIA</option>
<option>PHP</option>
<option>DHTML,JAVA SCRIPT,VB SCRIPT</option>
<option>ADVANCED JAVA</option>
<option>.NET</option>
<option>MS.OFFICE</option>
<option>C#.NET</option>
<option>DTP</option>
<option>OTHERS</option></td>
</tr>
<tr>
<td>Position</td>
<td><input type=text name=t5></td>
</tr>
<tr>
<td>Date Of Joining</td>
<td><input type=date name=d1></td>
</tr>
<tr>
<td>Experience</td>
<td><input type=number name=t6></td>
</tr>
<tr>
<th><input type=submit name=b1 value=ADD></th>
<td><a href="removestaff.jsp"><input type=button name=z value=remove></a></td>
</tr>
<%
{
String id=request.getParameter("t1");
String n=request.getParameter("t2");
String pn=request.getParameter("t3");
String g=request.getParameter("r1");
String em=request.getParameter("t4");
String q=request.getParameter("s1");
String p=request.getParameter("t5");
String e=request.getParameter("t6");
String doj=request.getParameter("d1");
String status="active";
if(request.getParameter("b1")!=null)
{
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","root");
PreparedStatement ps=con.prepareStatement("insert into manage values(?,?,?,?,?,?,?,?,?,?)");
ps.setString(1,id);
ps.setString(2,n);
ps.setString(3,pn);
ps.setString(4,g);
ps.setString(5,em);
ps.setString(6,q);
ps.setString(7,p);
ps.setString(8,doj);
ps.setString(9,e);
ps.setString(10,status);
int x=ps.executeUpdate();
if(x>0)
{
out.println("<script>alert('login success');</script>");
}
else
{
out.println("<script>alert('login failed');</script>");
}
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