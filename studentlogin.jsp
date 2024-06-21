<%@page import="java.io.*;"%>
<%@page import="java.sql.*;"%>
<html>
<body bgimage src="1.jsp"><center>
<form action="studentlogin.jsp" mention=post>
<table border=2 align=center>
<tr>
<th colspan=2><b>REGISTER</b></th>
</tr>
<tr>
<td>Name</td>
<td><input type=text name=t1></td>
</tr>
<tr>
<td>Address</td>
<td><textarea name=t3></textarea></td>
</tr>
<tr>
<td>Phone No</td>
<td><input type=text name=t2></td>
</tr>
<tr>
<td>Qualification</td>
<td><select name=s1>
<option>B.com</option>
<option>B.com(CA)</option>
<option>Bba</option>
<option>Ba</option>
<option>B.tech</option>
<option>Bsc</option>
<option>M.com</option>
<option>M.com(CA)</option>
<option>Mba</option>
<option>Ma</option>
<option>M.tech</option></td>
</select>
</tr>
<tr>
<th>Course Of Your Choice?</th>
</tr>
<tr>
<td><input type=checkbox name=c1 value=c,c++>C,C++</td>
<td><input type=checkbox name=c2 value=ASP/XML>ASP/XML</td>
</tr>
<tr>
<td><input type=checkbox name=c3 value=VB.NET>VB.NET</td>
<td><input type=checkbox name=c4 value=J2EE>J2EE</td>
</tr>
<tr>
<td><input type=checkbox name=c5 value=APS.NET>APS.NET</td>
<td><input type=checkbox name=c6 value=TALLY>TALLY</td>
</tr>
<tr>
<td><input type=checkbox name=c7 value=CAD>CAD</td>
<td><input type=checkbox name=c8 value=HTML>HTML</td>
</tr>
<tr>
<td><input type=checkbox name=c9 value=UNIX>UNIX</td>
<td><input type=checkbox name=c10 value=ORACLE>ORACLE</td>
</tr>
<tr>
<td><input type=checkbox name=c11 value=PROJECT>PROJECT</td>
<td><input type=checkbox name=c12 value=MULTIMEDIA>MULTIMEDIA</td>
</tr>
<tr>
<td><input type=checkbox name=c13 value=PHP>PHP</td>
<td><input type=checkbox name=c14 value=JAVA SCRIPT>JAVA SCRIPT</td>
</tr>
<tr>
<td><input type=checkbox name=c15 value=JAVA>JAVA</td>
<td><input type=checkbox name=c16 value=.NET>.NET</td>
</tr>
<tr>
<td><input type=checkbox name=c17 value=MS.OFFICE>MS.OFFICE</td>
<td><input type=checkbox name=c18 value=.C#>C#</td>
</tr>
<tr>
<td><input type=checkbox name=c19 value=DTP>DTP</td>
<td><input type=checkbox name=c20 value=OTHERS>OTHERS</td>
</tr>
<tr>
<th colspan=2><input type=submit name=b1 value=LOGIN></th>
</tr>
<%
try
{
String n=request.getParameter("t1");
String pn=request.getParameter("t2");
String ad=request.getParameter("t3");
String q=request.getParameter("s1");
if(request.getParameter("b1")!=null)
{
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","root");
PreparedStatement ps=con.prepareStatement("insert into java values(?,?,?,?)");
ps.setString(1,n);
ps.setString(2,pn);
ps.setString(3,q);
ps.setString(4,ad);
int x=ps.executeUpdate();
if(x>0)
{
response.sendRedirect("home.jsp");
out.println("<script>alert('login success');</script>");
}
else
{
out.println("<script>alert('login fail');</script>");
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