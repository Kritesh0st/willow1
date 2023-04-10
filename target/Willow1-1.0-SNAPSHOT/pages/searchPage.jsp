<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <title>Willow | 01</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../css/style.css">
    <link rel="stylesheet" href="../css/stylex.css">
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/stylex.css">
    <style>
      .mainbody{height:1000vh;}
      .nav_body{height: 100px;}

      .rest_body{height:400px;padding:1em 2.2em 1.6em 2.2em;}
      .searchimgbox{}
      .inrsearchimagebox{height:300px;width:280px;overflow:hidden;}
      .searchPrdDesc{font-family:var(--ff5);font-size:18px;padding:10px 0;}
      .searchPrdDesc:nth-child(1){font-size:30px;}
    </style>
  </head>
  <body>
    <div class="mainbody bor">
      <div class="nav_body">
        <div class="nav_body_desktop">
          <!--  SPACE FOR NAVBAR  -->
          <%@include file="include/navbar.jsp" %>
        </div>
        <div class="nav_body_mobile">
          <!--  SPACE FOR RESPONSIVE NAVBAR  -->
        </div>
      </div>
      <div class="rest_body bor">
       <div class="searchbody hw100 flex bor">
          <div class="searchimgbox bor flexmid pr30">
            <div class="inrsearchimagebox bor">
              <img src="image/cloth/hoodie.jpg" alt="" class="bor w100">
            </div>
          </div>
          <div class="searchTextBox fg1 bor pt30">
            <div class="searchPrdDesc bor">
              Shoes
            </div>
            <div class="searchPrdDesc bor">
              Proce
            </div>
            <div class="searchPrdDesc bor">
              Discount
            </div>
            <div class="searchPrdDesc bor">
              Final Porce
            </div>
            <div class="searchPrdDesc bor">
              Avilable sizes
            </div>
            <div class="searchPrdDesc bor">
              Shoes
            </div>
            
          </div>
       </div>
      </div>
        
    </div>
    <script src="js1/script1.js"></script>
    <script>
      //var land_carousle_left = document.querySelector(".land_carousle_left");
      //var land_carsoul_sloth = document.querySelectorAll(".land_carsoul_sloth");
    </script>
  </body>
</html>
