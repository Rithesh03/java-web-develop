<%@page import="java.io.*;"%>
<%@page import="java.sql.*;"%>
<%@page import="java.util.*;"%>
<html>
<body background="image\img5.jpg" style="background-repeat:no-repeat;background-size:100% 100%">
<form action=adminregister.jsp methed=post>
<table border=2 align=center>
<tr>
<th colspan=2>ADMIN REGISTER</th>
</tr>
<%
try
{
Class.forName("com.mysql.jdbc.Driver");
Connection con1=DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","root");
PreparedStatement z=con1.prepareStatement("select max(Emquiryid) from admin");
ResultSet rs=z.executeQuery();
if(rs.next())
{
int a=rs.getInt(1);
int b=a+1;
out.println("<tr><td>Enquiry Id<td><input type=text name=t1 value="+b+"></td></tr>");
} 
%>
<tr>
<td>Name</td>
<td><input type=text name=t2></td>
</tr>
<tr>
<td>Father Name</td>
<td><input type=text name=t3></td>
</tr>
<tr>
<td>Date Of Birth</td>
<td><input type=date name=d1></td>
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
<td>Needs</td>
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
<td>Phone No</td>
<td><input type=text name=t4></td>
</tr>
<tr>
<td>EMail</td>
<td><input type=text name=t5></td>
</tr>
<tr>
<td>Date</td>
<td><input type=date name=d2></td>
</tr>
<tr>
<td>Staff</td>
<td><input type=text name=t6></td>
</tr>
<tr>
<td>Fees</td>
<td><input type=text name=t7></td>
</tr>
<tr>
<td>Time</td>
<td><input type=time name=t8></td>
</tr>
<tr>
<th colspan=2><input type=submit name=b1 value=INSERT></th>
</tr>
<%
{
String ei=request.getParameter("t1");
String n=request.getParameter("t2");
String fn=request.getParameter("t3");
String dob=request.getParameter("d1");
String q=request.getParameter("s1");
String pn=request.getParameter("t4");
String em=request.getParameter("t5");
String d=request.getParameter("d2");
String s=request.getParameter("t6");
String f=request.getParameter("t7");
String t=request.getParameter("t8");
String aa=request.getParameter("c1");
String bb=request.getParameter("c2");
String cc=request.getParameter("c3");
String dd=request.getParameter("c4");
String ee=request.getParameter("c5");
String ff=request.getParameter("c6");
String gg=request.getParameter("c7");
String hh=request.getParameter("c8");
String ii=request.getParameter("c9");
String jj=request.getParameter("c10");
String kk=request.getParameter("c11");
String ll=request.getParameter("c12");
String mm=request.getParameter("c13");
String nn=request.getParameter("c14");
String oo=request.getParameter("c15");
String pp=request.getParameter("c16");
String qq=request.getParameter("c17");
String rr=request.getParameter("c18");
String ss=request.getParameter("c19");
String tt=request.getParameter("c20");
if(request.getParameter("b1")!=null)
{
Class.forName("com.mysql.jdbc.Driver");
Connection c=DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","root");
PreparedStatement ps=c.prepareStatement("insert into admin values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
ps.setString(1,ei);
ps.setString(2,n);
ps.setString(3,fn);
ps.setString(4,dob);
ps.setString(5,q);
ps.setString(6,pn);
ps.setString(7,em);
ps.setString(8,d);
ps.setString(9,s);
ps.setString(10,f);
ps.setString(11,t);
ps.setString(12,aa);
ps.setString(13,bb);
ps.setString(14,cc);
ps.setString(15,dd);
ps.setString(16,ee);
ps.setString(17,ff);
ps.setString(18,gg);
ps.setString(19,hh);
ps.setString(20,ii);
ps.setString(21,jj);
ps.setString(22,kk);
ps.setString(23,ll);
ps.setString(24,mm);
ps.setString(25,nn);
ps.setString(26,oo);
ps.setString(27,pp);
ps.setString(28,qq);
ps.setString(29,rr);
ps.setString(30,ss);
ps.setString(31,tt);
int x=ps.executeUpdate();
if(x>0)
{
out.println("<script>alert('login success');</script>");
}
else
{
out.println("<script.alert('insert failed');</script>");
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