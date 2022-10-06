<%@ page import="java.sql.*" %>
    <html>

    <head>
        <title>Sucess Story App by Ishan Software</title>
        <style>
            * {
                font-size: 40px;
            }
        </style>
    </head>

    <body>
        <center>
            <h1>Success Story App - Ishan Software</h1>
            <form>
                <input type="text" placeholder="Enter ur name " name="na" required />
                <br/><br/>
                <input type="text" placeholder="Enter ur company name  " name="company" required />
                <br/><br/>
                <input type="number" step="any" placeholder="Enter ur pkg " name="pkg" required />
                <br/><br/>
                <input type="submit" value="Save" name="btn" />
                <br/><br/>
            </form>
            <%
        if(request.getParameter("btn")!=null){
            String name=request.getParameter("na");
            String company=request.getParameter("company");
            double pkg=Double.parseDouble(request.getParameter("pkg"));
            try{
                DriverManager.registerDriver(new com.mysql.cj.jdbc.Driver());
                String url="jdbc:mysql://localhost:3306/kit25sept22";
                String un="root";
                String pw="";
                Connection conn = DriverManager.getConnection(url,un,pw);
                String sql="insert into student values (?,?,?)";
                PreparedStatement pst = conn.prepareStatement(sql);
                pst.setString(1,name);
                pst.setString(2,company);
                pst.setDouble(3,pkg);
                pst.executeUpdate();
                out.println("Thank U");

            }
            catch(SQLException e){
                out.println("issues" + e);
            }
        }
        %>
        </center>
    </body>

    </html>