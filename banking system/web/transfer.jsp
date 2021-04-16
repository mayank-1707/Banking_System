<%@page import="com.bank.entities.Message"%>
<%@page import="com.bank.entities.User"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.bank.dao.UserDao"%>
<%@page import="com.bank.helper.ConnectionProvider"%>

<!DOCTYPE html>
<html lang="en">

<head>
     <title>Banking System</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="shortcut icon" href="https://www.thesparksfoundationsingapore.org/images/logo_small.png" type="image/png">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

    <!--stylesheet-->
    <link rel="stylesheet" href="../css/style.css">

    <!--google fonts-->
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href='https://fonts.googleapis.com/css?family=Poppins' rel='stylesheet'>
    <link href='https://fonts.googleapis.com/css?family=Alegreya Sans SC' rel='stylesheet'>
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;500&display=swap" rel="stylesheet">

    <!-- Compiled and minified CSS -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">
    <!-- Compiled and minified JavaScript -->
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">

    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>
    <style>
        .mt-0 {
            padding: 10px;
            top: 0;
        }

        * {
            font-family: Poppins;
        }

        .footer {
            margin-top: 40px;
        }
    </style>
</head>

<body>
    <%@include file="nav_bar.jsp"%>   
    <div class="text-center">
    <%
         Message m=(Message)session.getAttribute("msg");   
         if(m!=null)
         {
            if(m.getType()=="error")
            {
                %>
                <div class="alert <%=m.getCssClass()%> "role="alert">
                <h4 class="alert-heading">Error!</h4>
                <%=m.getContent()%> 
                <p>Please fill form carefully</p>
                </div>
                <%
                session.removeAttribute("msg");
            }
            else if(m.getType()=="error1")
            {
                %>
                <div class="alert <%=m.getCssClass()%> "role="alert">
                <h4 class="alert-heading">Error!</h4>
                <%=m.getContent()%> 
                <p>Sorry!</p>
                </div>
                <%
                session.removeAttribute("msg");
            }
            
            else
            {
                %>
                <div class="alert <%=m.getCssClass()%> "role="alert">
                <h4 class="alert-heading">Done!</h4>
                <%=m.getContent()%> 
                <p>you can check your Account Status </p>
                </div>
                <%
                session.removeAttribute("msg");
            }
        }
            %>
    </div>
             <div class="center mt-0 #ffab00 accent-3">
                <h3><b><span><img src="https://www.thesparksfoundationsingapore.org/images/logo_small.png" style="height:60px;width:50px" /></span>Apna BANK</b></h3>
            </div>
   
    
    
    
    
            <form id="reg-form" action="transferServlet" method ="POST">        
                <div class="container">
                <br><br>
                <label for="to">Transfer From:</label>
                <select id="to" name="transferfrom" class="form-control" required>
                    <option  disabled selected>Choose</option>
                        <%
                            UserDao postd=new UserDao(ConnectionProvider.getConnection());
                            ArrayList<User> list=postd.getAllCategories();
                            for(User c:list)
                            {
                        %>
                            <option value="<%=c.getName()%>"><%=c.getName()%></option>
                        <%
                            }
                        %>            
                    </option>
                    </option>
                </select>
                <br>
                <label for="to">Transfer To:</label>
                <select id="to" name="transferto" class="form-control" required>
                    <option  disabled selected>Choose</option>
                        <%
                             postd=new UserDao(ConnectionProvider.getConnection());
                            ArrayList<User> list1=postd.getAllCategories();
                            for(User c:list1)
                            {
                                %>
                                <option value="<%=c.getName()%>"><%=c.getName()%></option>
                                <%
                            }
                        %>            
                    </option>
                </select>
            
                <br>
            <label for="amount">Amount:</label>
            <input type="number" class="form-control" name="amount" id="amount" required>
            <div class="text-center">
                <button class="btn mt-3 waves-effect waves-light" name="submit" type="submit" id="myBtn">Transfer</button>
            </div>
            <br>
        </form>
    </div>
    </div>
  
      <!-- Copyright -->
    <%@include file="footer.jsp" %>  
      <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>
</body>

</html>
