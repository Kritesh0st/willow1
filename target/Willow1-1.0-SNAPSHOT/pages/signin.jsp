<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <title>Sign In | 01</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/stylex.css">
    <style>
      .signinBody{height:100vh;}
      .signinNavbarDiv{height:auto;}
      
      .signinbg5{background:var(--col5);}

      .signinFormBody{width:360px;height:auto;}
      .signinTitleSloth{font-size:30px;}
      .signinTextSloth{font-size:18px;font-family:var(--ff5);}
      .signinInputSloth{font-size:16px;font-family:var(--ff5);border:1px solid #666;padding:3px 8px;border-radius:3px;}
      .signinInputSloth:focus {outline:none;}

      .signinButtonSloth{font-size:16px;border:1px solid var(--col3);cursor: pointer;background:var(--col3);color:#fff;}
      .signinButtonSloth[data-num="1"]{border:1px solid var(--col1);background:var(--col1);}
      .signinButtonSloth[data-num="2"]{border:1px solid #666;background:#fff;color:#000;}
    </style>
  </head>
  <body>
    <div class="signinBody bor flex fdc">
      <div class="signinNavbarDiv bor">
          <%@include file="../include/navbartwo.jsp" %>
      </div>
      <div class="signinMainContent bor flexmid fg1">
        <form class="signinFormBody borx2 flex fdc plr20 pt5 pb15 br3" action="user?page=signedin" method="post">
          <div class="signinTitleSloth ff5 tac ptb10">Sign In</div>
          
          <div class="signinTextSloth bor pb5" data-num="1">Email</div>
          <div class="signinInputCrate bor pb10" data-num="1">
           <input type="text" class="signinInputSloth w100" data-num="1" name="email" value="kritesh@gmail.com">
          </div>
          <div class="signinTextSloth bor pb5" data-num="1">Password</div>
          <div class="signinInputCrate bor pb10" data-num="1">
            <input type="text" class="signinInputSloth w100" data-num="1" name="pasword" value="password123">
          </div>
          

          <div class="signinButtonCrate bor flex pt5" data-num="1">
            <input type="submit" class="signinButtonSloth ff5 w100 p5 br4" value="Sign In" data-num="1">
          </div>
          <div class="signinButtonCrate flex bor pt12 none" data-num="2">
            <a href="#" class="signinButtonSloth ff5 w100 p5 br4 totext tac" data-num="2">Sign In With Google</a>
          </div>
          <div class="signinForgetPwCrate flexmid bor p5">
            <a href="#" class="signinForgetPwSloth ff5 txtx bor">Forget Password</a>
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
