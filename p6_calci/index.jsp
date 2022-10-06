<html>

<head>
    <title> Calculator by Ishan Software</title>
    <style>
        * {
            font-size: 40px;
            font-family: sans-serif;
        }
        
        body {
            background-color: aliceblue;
        }
    </style>

    <head>

        <body>
            <center>
                <h1>Calculator by Ishan Software</h1>
                <form>
                    <input type="number" step="any" placeholder="Enter First Nos " name="num1" required/>
                    <br/><br/>
                    <input type="number" step="any" placeholder="Enter Second Nos " name="num2" required/>
                    <br/><br/>
                    <input type="submit" value="Addition" name="add" class="btn" />
                    <input type="submit" value="Subtraction" name="sub" class="btn" />
                    <input type="submit" value="Multiplication" name="mul" class="btn" />
                    <input type="submit" value="Division" name="div" class="btn" />
                </form>
                <% 
             if(request.getParameter("add")!=null){
                double n1=Double.parseDouble(request.getParameter("num1"));
                double n2=Double.parseDouble(request.getParameter("num2"));
                double res=n1+n2;
                out.println("res : " + res );
             }
             else if(request.getParameter("sub")!=null){
                double n1=Double.parseDouble(request.getParameter("num1"));
                double n2=Double.parseDouble(request.getParameter("num2"));
                double res=n1-n2;
                out.println("res : " + res );
             }
             else if(request.getParameter("mul")!=null){
                double n1=Double.parseDouble(request.getParameter("num1"));
                double n2=Double.parseDouble(request.getParameter("num2"));
                double res=n1*n2;
                out.println("res : " + res );
             }
             else if(request.getParameter("div")!=null){
                double n1=Double.parseDouble(request.getParameter("num1"));
                double n2=Double.parseDouble(request.getParameter("num2"));
                double res=n1/n2;
                out.println("res : " + res );
             }
            %>
            </center>
        </body>

</html>