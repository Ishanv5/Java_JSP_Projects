<html>
<head>
<title>
 Square Root App By Ishan Software 
</title>
<style>*{font-size:40px;}
body{
background-color:coral;
}
h1{
background-color:black;
color:white;
}
</style>
<script>
   function check(){
      let num=document.getElementById("num");
      let ans=document.getElementById("ans");
      if(num.value==""){
        alert("Sry Bro ! You haven't fill ");
        //ans.innerHTML="";
        num.focus();
        return false;
   }
     let n=parseFloat(num.value);
if(n<0){
 alert("Sry Bro ! You have fill negative nos  ");
        ans.innerHTML="";
        num.focus();
        return false;
}
        return true;
   }
</script>
</head>
<body>
<center>
<h1>Square Root App</h1>
<form onSubmit="return check()">
<input type="number " placeholder="Enter integer " name="num" id="num" step="any"/>
<br/><br/>
<input type="submit" value="Find Square Root" name="btn" />
</form>
<%
   if(request.getParameter("btn")!=null){
   double num=Double.parseDouble(request.getParameter("num"));
double res=Math.sqrt(num);
String msg="res = " + String.format("%.2f",res);
%>
   <h1 id="ans"><%=msg %> </h1>
<%
   }
%>
</center>
</body>
</html>