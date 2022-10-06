<%@ page import="java.sql.*" %>
<%
if(request.getParameter("dr")!=null){
int rno=Integer.parseInt(request.getParameter("dr"));

  try{
                DriverManager.registerDriver(new com.mysql.cj.jdbc.Driver());
                String url="jdbc:mysql://localhost:3306/sms2oct22";
                String un="root";
                String pw="";
                Connection con = DriverManager.getConnection(url,un,pw);
                String sql="delete from  student where rno=?";
                PreparedStatement pst = con.prepareStatement(sql);
                pst.setInt(1,rno);
               
                pst.executeUpdate();
               
con.close();

            }
            catch(SQLException e){
                out.println("issues" + e);
            }
        }
%>
<html>
<head>
<title>Student Management System By Ishan Software</title>
<style>
*{
  font-size:40px;
}
.nav{
background-color:coral;

}
.nav a{
color:white;
text-decoration:none;
margin:50px;
}
td{
text-align:center;
}

</style>
</head>
<body>
<center>
<div class="nav">
<a href="index.jsp">Home</a>
<a href="create.jsp">Create</a>
</div>
<h1>Home Page</h1>
<table border="4" style="width:50%;">
<tr>
<th>Roll No</th>
<th>Name</th>
<th>Delete</th>
</tr>
<%
  try{

                DriverManager.registerDriver(new com.mysql.cj.jdbc.Driver());
                String url="jdbc:mysql://localhost:3306/sms2oct22";
                String un="root";
                String pw="";
                Connection con = DriverManager.getConnection(url,un,pw);
                String sql="select * from  student ";
                PreparedStatement pst = con.prepareStatement(sql);
                ResultSet rs=pst.executeQuery();
                while(rs.next()){
                int rno=rs.getInt(1);
                String name=rs.getString(2);
%>
<tr>
<td><%=rno %></td>
<td><%=name %></td>
<td><a href="?dr=<%=rno %>" onclick="return confirm('r u sure ??')">Delete</a></td>
</tr>
<%
}
con.close();
}
            catch(SQLException e){
                out.println("issues" + e);
            }
        
%>
</table>
</center>
</body>
</html>