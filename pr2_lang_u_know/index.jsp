<%@ page import="java.sql.*" %>
<html>
<head>
<title>Languages U Know by Ishan Software</title>
<style>
*{
font-size:40px;
}
</style>
</head>
<body>
<center>
<h1>Languages U Know App</h1>
<form>
<input type="text" name="na" placeholder="Enter Name " required/>
<br/><br/>
<input type="checkbox" name="python" value="python" />Python
<input type="checkbox" name="java" value="java" />Java
<input type="checkbox" name="js" value="js" />JS
<br/><br/>
<input type="submit" name="btn"/>
</form>
<%
if(request.getParameter("btn")!=null){
            String name=request.getParameter("na");
            String python=request.getParameter("python");
            String java=request.getParameter("java");
            String js=request.getParameter("js");
String language="";
            if(python!=null)
                  language+=" python";
            if(java!=null)
                  language+=" java";
            if(js!=null)
                  language+=" js";
            try{
                DriverManager.registerDriver(new com.mysql.cj.jdbc.Driver());
                String url="jdbc:mysql://localhost:3306/kc2oct22";
                String un="root";
                String pw="";
                Connection con = DriverManager.getConnection(url,un,pw);
                String sql="insert into student values(?,?)";
                PreparedStatement pst = con.prepareStatement(sql);
                pst.setString(1,name);
                pst.setString(2,language);
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