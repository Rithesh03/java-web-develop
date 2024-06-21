<%@page import="java.io.*;"%>
<%@page import="java.sql.*;"%>
<html>
<body>
<form action=sample.jsp method=post>
<table border=2>
<tr>
<th colspan=2>manager</th>
</tr>
<%try
{
Class.forName("com.mysql.jdbc.Driver");
Connection con1=DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","root");
PreparedStatement z=con1.prepareStatement("select max(id) from manage");
ResultSet rs=z.executeQuery();

if(rs.next()){
int a=rs.getInt(1);
int b = a+1;
out.println("<tr><td>staff id<td><input type=text name=t1 value="+b+"readOnly></td></tr>");
}
}
catch(Exception e){
out.println( e);

}
%>
</table>
</body></html>