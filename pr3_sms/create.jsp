<%@ page import="java.sql.*" %>
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
<h1>Create  Page</h1>
<form>
<input type="number" name="r" placeholder="Enter rno" min="1" required/>
<br/><br/>
<input type="text" name="n" placeholder="Enter name"  required/>
<br/><br/>
<input type="submit" value="Save" name="btn" />
<br/><br/>
</form>
<%
if(request.getParameter("btn")!=null){
int rno=Integer.parseInt(request.getParameter("r"));
String name=request.getParameter("n");
  try{
                DriverManager.registerDriver(new com.mysql.cj.jdbc.Driver());
                String url="jdbc:mysql://localhost:3306/sms2oct22";
                String un="root";
                String pw="";
                Connection con = DriverManager.getConnection(url,un,pw);
                String sql="insert into student values(?,?)";
                PreparedStatement pst = con.prepareStatement(sql);
                pst.setInt(1,rno);
                pst.setString(2,name);
                pst.executeUpdate();
                out.println(rno + " created ");
con.close();

            }
            catch(SQLException e){
                out.println("issues" + e);
            }
        }
%>
</center>
</body>
</html>