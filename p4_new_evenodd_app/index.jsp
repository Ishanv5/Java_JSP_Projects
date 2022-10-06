<html>
<head>
<title>
Even Odd App By Ishan Software 
</title>
<style>*{font-size:40px;}</style>
<script>
   function check(){
      let num=document.getElementById("num");
      let ans=document.getElementById("ans");
      if(num.value==""){
        alert("Sry Bro ! You haven't fill ");
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
<h1>Even Odd App</h1>
<form onSubmit="return check()">
<input type="number " placeholder="Enter integer " name="num" id="num"/>
<br/><br/>
<input type="submit" value="Find Even/Odd" name="btn" />
</form>
<%
   if(request.getParameter("btn")!=null){
     String num=request.getParameter("num");
     int n=Integer.parseInt(num);
     String res=n%2==0?"Even" : "Odd";
%>
   <h1 id="ans"><%=res %> </h1>
<%
   }
%>
</center>
</body>
</html>