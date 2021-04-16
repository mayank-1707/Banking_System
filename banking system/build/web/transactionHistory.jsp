
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <title>Banking System</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <link href="css/new1.css" rel="stylesheet" type="text/css"/>
        <link href="css/style.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <link href="css/new1.css" rel="stylesheet" type="text/css"/>
        <link rel="shortcut icon" href="https://www.thesparksfoundationsingapore.org/images/logo_small.png" type="image/png">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

    <!--stylesheet-->
    <link rel="stylesheet" href="../css/style.css">

    <!--google fonts-->
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href='https://fonts.googleapis.com/css?family=Poppins' rel='stylesheet'>
    <link href="https://fonts.googleapis.com/css2?family=Poppins&display=swap" rel="stylesheet">
    <!-- Compiled and minified CSS -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">
    <!-- Compiled and minified JavaScript -->
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>
   <style>
    * {
      font-family: Poppins;
    }
    a:link {
      color: white;
    }
    a:hover {
      color: white;
      text-decoration: none;
    }
    h5 {
      color: teal
    }
   </style>
    
    </head>
    <body>
      <%@include file="nav_bar.jsp"%> 

    <div class="center head mt-0">
        <h2><b><span><img src="https://www.thesparksfoundationsingapore.org/images/logo_small.png" style="height:70px;width:60px" /></span>Transaction History</b></h2>
    </div>
  
  
  
   <div class="container" >
        <br>
        <div class="container-fluid table-responsive-sm" >
            <table class="table table-hover table-striped table-condensed table-bordered">
                <thead>
                    <tr>
                        <th class="text-center">Sr No.</th>
                        <th class="text-center">Sender</th>
                        <th class="text-center">Recipient</th>
                        <th class="text-center">Amount</th>
                        <th class="text-center">Timestamp</th>
                    </tr>
                </thead>
                <tbody>

                <%
                    Connection con=null; 
                    try
                    {
                        Class.forName("com.mysql.cj.jdbc.Driver");
                        con=DriverManager.getConnection("jdbc:mysql://localhost:3306/bank","root","Mayank@123");
                        String query="select * from transactionhistory";
                        Statement stmt=con.createStatement();
                        ResultSet rst=stmt.executeQuery(query);    
                        while(rst.next())    
                        {
                        %>
                        <tr>
                            <td class="center py-2"><%=rst.getInt("Sr_No")%></td>
                            <td class="center py-2"><%=rst.getString("Sender")%></td>
                            <td class="center py-2"><%=rst.getString("Recipient")%></td>
                            <td class="center py-2"><%=rst.getInt("Amount")%></td>
                            <td class="center py-2"><%=rst.getTimestamp("datetime")%></td>
                        </tr>
                        <%
                        }
                    }
                    catch(Exception e)
                    {
                        e.printStackTrace();
                    }
                %>
                
                </tbody>
            </table>

        </div>
  </div>
  <!-- Copyright -->
      <!-- Copyright -->
<%@include file="footer.jsp" %>  
      <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
        <script src="js/myjs.js" type="text/javascript"></script>
        <script src='https://kit.fontawesome.com/a076d05399.js' crossorigin='anonymous'></script>
    
    </body>
</html>
