<%@ page import="java.sql.*" %>
<html>
<head>
<title>What Next App by Ishan Software</title>
<style>
*{
font-size:40px;
}
</style>
</head>
<body>
<center>
<h1> What Next App</h1>
<form>
<input type="text" name="na" placeholder="Enter Name " required/>
<br/><br/>
<input type="radio" name="c" value="Job" checked=true/>Job
<input type="radio" name="c" value="Ms" />Ms
<input type="radio" name="c" value="Mba" />Mba
<br/><br/>
<input type="submit" name="btn"/>
</form>
<%
if(request.getParameter("btn")!=null){
            String name=request.getParameter("na");
            String choice=request.getParameter("c");
           
            try{
                DriverManager.registerDriver(new com.mysql.cj.jdbc.Driver());
                String url="jdbc:mysql://localhost:3306/kit2oct22";
                String un="root";
                String pw="";
                Connection con = DriverManager.getConnection(url,un,pw);
                String sql="insert into student(name,choice) values(?,?)";
                PreparedStatement pst = con.prepareStatement(sql);
                pst.setString(1,name);
                pst.setString(2,choice);
                pst.executeUpdate();
                out.println("Thank U");
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