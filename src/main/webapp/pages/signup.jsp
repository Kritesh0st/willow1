<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
  <head>
    <title>Sign Up | 01</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/stylex.css">
    <style>
      .signupBody{height:100vh;}
      .signupNavbarDiv{height: 80px;}
      
      .signupbg5{background:var(--col5);}

      .signupFormBody{width:360px;height:auto;}
      .signupTitleSloth{font-size:30px;}
      .signupTextSloth{font-size:18px;font-family:var(--ff5);}
      .signupInputSloth{font-size:16px;font-family:var(--ff5);padding:3px 8px;border:1px solid #666;border-radius:3px;}
      .signinButtonSloth[data-num="1"]:hover{border:1px solid var(--col1);background:var(--col1);transition:.3s;}
      .signupInputSloth:focus {outline:none;}

      .signupForgetPwSloth{font-size:14px;}
      .signupButtonSloth{font-size:16px;border:1px solid var(--col3);cursor: pointer;background:var(--col3);color:#fff;}
      .signupButtonSloth[data-num="1"]{border:1px solid var(--col1);background:var(--col1);}
      .signupButtonSloth[data-num="2"]{border:1px solid #666;background:#fff;color:#000;}
    </style>
  </head>
  <body>
    <div class="signupBody bor flex fdc">
      <div class="signupNavbarDiv bor">
          <%@include file="../include/navbartwo.jsp" %>
      </div>
      <div class="signupMainContent bor flexmid fg1">
        <form class="signupFormBody borx2 flex fdc plr20 pt5 pb15 br3" action="user?page=newUser" method="post">
          <div class="signupTitleSloth ff5 tac ptb10">Sign Up</div>
          
          <div class="signupTextSloth bor pb5" data-num="1">Name</div>
          <div class="signupInputCrate bor pb10" data-num="1">
            <input type="text" class="signupInputSloth w100" data-num="1" name="fullname" value="Kritesh Thapa">
          </div>
          <div class="signupTextSloth bor pb5" data-num="1">Email</div>
          <div class="signupInputCrate bor pb10" data-num="1">
            <input type="text" class="signupInputSloth w100" data-num="1" name="email" value="kritesh@gmail.com">
          </div>
          <div class="signupTextSloth bor pb5" data-num="1">Phone Number</div>
          <div class="signupInputCrate bor pb10" data-num="1">
            <input type="text" class="signupInputSloth w100" data-num="1" name="number" value="9876543210">
          </div>
          <div class="signupTextSloth bor pb5" data-num="1">Password</div>
          <div class="signupInputCrate bor pb5" data-num="1">
            <input type="text" class="signupInputSloth w100" data-num="1" name="password" value="password123">
          </div>
          

          <div class="signupTermsCrate flex jcfs bor pb5">
            <input type="checkbox" class="signupChecboxSloth borx mr5">
            <a href="#" class="signupForgetPwSloth ff5 txtx bor">Terms of Services & Privacy Policy</a>
          </div>
          <div class="signupButtonCrate bor flex pt5" data-num="1">
            <input type="submit" class="signupButtonSloth ff5 w100 p5 br4" value="Sign Up" data-num="1">
          </div>
          <div class="signupButtonCrate flex bor pt12 none" data-num="2">
            <a href="#" class="signupButtonSloth ff5 w100 p5 br4 totext tac" data-num="2">Sign Up With Google</a>
          </div>
          
        </form>
      </div>
    </div>
    <script src="../js1/script1.js"></script>
    <script>
      //var mainbody = document.querySelector(".mainbody");
      //var inrgmblock = document.querySelectorAll(".inrgmblock");
    </script>
  </body>
</html>


<!-- 
  
Name
Email
Password
Phone number
Address

Sign Up Button
Sign Up with google
Forget Password


-->
