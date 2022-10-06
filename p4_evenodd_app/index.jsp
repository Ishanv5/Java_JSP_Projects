<html>
<head>
<title>
Even Odd App By Ishan Software 
</title>
<style>*{font-size:40px;}</style>
</head>
<body>
<center>
<h1>Even Odd App</h1>
<form>
<input type="number " placeholder="Enter integer " name="num" required/>
<br/><br/>
<input type="submit" value="Find Even/Odd" name="btn"/>
</form>
<%
   if(request.getParameter("btn")!=null){
     String num=request.getParameter("num");
     int n=Integer.parseInt(num);
     String res=n%2==0?"Even" : "Odd";
     out.println("res : " + res);
   }
%>
</center>
</body>
</html>