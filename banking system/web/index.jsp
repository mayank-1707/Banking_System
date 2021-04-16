<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Banking System</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <link rel="shortcut icon" href="https://www.thesparksfoundationsingapore.org/images/logo_small.png" type="image/png">
        <link href="css/new1.css" rel="stylesheet" type="text/css"/>
        <link href="css/newcss.css" rel="stylesheet" type="text/css"/>
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
    <div class="center mt-0 #ffab00 accent-3">
      <h2><b><span><img src="https://www.thesparksfoundationsingapore.org/images/logo_small.png" style="height:70px;width:60px" /></span>Apna BANK</b></h2>
    </div>
  <!---3 col start-->
  <div class="row center sect">
    <!--end of card 1-->
    <!--second col-->
    <div class="col s4">
      <!-- Promo Content 2 goes here -->
      <div class="row">
        <div class="col s12 m6">
          <div class="card small">
              <div class="card-image">
              <img class="cust" src="img/transaction.jpg" style="height:180px;width:485px;align:center">
            </div>
                <button onclick="location.href='transfer.jsp'" style="color:black" class="waves-effect waves-light #ffab00 accent-4 btn-large"><b>Perform Transactions</b><i class="material-icons right">add_circle</i></button>
          </div>
        </div>
      </div>
    </div>
    <!--end of card 2-->
    <div class="col s4">
      <!-- Promo Content 1 goes here -->
      <div class="row">
        <div class="col s12 m6">
          <div class="card small">
            <div class="card-image">
              <img src="img/bank.jpg" style="height:180px;width:485px;align:center" >
            </div>
            
            <h5><b>Welcome to Apna Bank !</b></h5>
            <br />
            <p class="#00838f cyan darken-3"></p>
          </div>
        </div>
      </div>
    </div>
    <!--middle-->
    <div class="col s4">
      <!-- Promo Content 3 goes here -->
      <div class="row">
        <div class="col s12 m6">
          <div class="card small">
            <div class="card-image">
              <img class="cust" src="img/transactionhistory.jpg" style="height:180px;width:485px;align:center">
            </div>
            <button type="button" onclick="location.href='transactionHistory.jsp'" style="color:black" class="waves-effect waves-light #ffabff accent-4 btn-large"><b> Transaction History</b><i class="material-icons right">send</i></button>
          </div>
        </div>
      </div>
    </div>
    <!--end of card 1-->
  </div>
 
 <%@include file="footer.jsp"%>
 <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
        <script src="js/myjs.js" type="text/javascript"></script>
        <script src='https://kit.fontawesome.com/a076d05399.js' crossorigin='anonymous'></script>
    
    </body>
</html>
