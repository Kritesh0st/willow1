<%@page import="java.io.PrintWriter"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%--<%@include file="include/navbar.jsp" %>--%>
<%--<%@include file="include/featureproduct.jsp" %>--%>
<%
String plcheck = (String) session.getAttribute("plcheck");
if(plcheck==null){response.sendRedirect("user?page=indexx");}
%>
<!DOCTYPE html>
<html>
  <head>
    <title>Willow | 01</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/stylex.css">
    <style>
      .mainbody{height:1000vh;}
      .nav_body{height:auto;}
      .nav_body_desktop{z-index:3;}

      .land_subnav_box_outer{padding:1em 2.2em 1.6em 2.2em;}
      .land_subnav_li{padding:0 40px;}
      .land_subnav_ahr{text-decoration: none;color:#000;font-family:var(--ff5);font-weight:300;letter-spacing:0.1em;}
      .land_subnav_ahr:hover .land_subnav_ahr_span{width:100%;height:2px;background:#2a2a2a;bottom:-4px;left:0;transition:.3s;}
      
      .land_carousel_div_outer{padding:0 2.2em;}
      .land_carousel_div_inr{height:600px;}
      .land_carousel_lr{height:80px;width:50px;cursor: pointer;background:rgba(255,255,255,0);}
      .land_carousel_lr:hover{background:rgba(255,255,255,.5);transition:.3s;}
      .land_carousel_left{left:20px;}
      .land_carousel_right{right:20px;}
      .land_carsoul_sloth{overflow: hidden;z-index:-10;}

      .landcar_slide1_text_crate{height:400px;width:400px;transform: skew(-6.7deg);left:100px;
        background: rgba(112,173,196,.7);border:1px solid #70adc4;}
      .landcar_slide1_text{font-family:var(--ff5);font-weight:300;letter-spacing:0.1em;}
      .landcar_slide1_text_crate_inr{transform: skew(6.7deg);padding:30px;}
      .landcar_slide1_text1_sloth{letter-spacing:0.2em;font-size:16px;padding-left:16px;}
      .landcar_slide1_title_sloth{font-size:76px;text-align: center;margin-top:-10px;}
      .landcar_slide1_subtitle_sloth{font-size:18px;}
      .landcar_slide1_text2_sloth{font-size:14px;padding:8px 0;}
      .landcar_slide1_link1_sloth{font-size:14px;color:#fff;}
      .landcar_slide1_link1_sloth span{height:1px;width:100%;background:#fff;bottom:-4px;left:0;}
      .landcar_slide1_link1_sloth:hover span{bottom:-5px;height:2px;transition:.3s;}

      .landcar_slide2_text_crate{height:400px;width:500px;left:55%;padding:70px 0 0 80px;}
      .landcar_slide2_title_sloth{font-size:36px;}
      .landcar_slide2_text1_sloth{letter-spacing:0.1em;font-size:18px;padding:8px 0;}
      .landcar_slide2_link1_sloth span{height:1px;width:100%;background:#000;bottom:-4px;left:0;}
      .landcar_slide2_link1_sloth:hover span{bottom:-5px;height:2px;transition:.3s;}

      .landcar_slide3_text_crate{height:400px;width:550px;left:100px;}
      .landcar_slide3_title_sloth{font-size:90px;letter-spacing:.2em}
      .landcar_slide3_text1_sloth{letter-spacing:0.1em;font-size:26px;padding-bottom: 10px;}
      .landcar_slide3_link1_sloth{font-size:20px;color:#000;}
      .landcar_slide3_link1_sloth span{height:1px;width:100%;background:#000;bottom:-4px;left:0;}
      .landcar_slide3_link1_sloth:hover span{bottom:-5px;height:2px;transition:.3s;}

      .landcar_slide4_text_crate{height:400px;width:calc(50% - 100px);left:100px;}
      .landcar_slide4_title_sloth{font-size:60px;font-family:var(--ff5);font-weight:400;letter-spacing:0.2em;}
      .landcar_slide4_text1_sloth{font-size:20px;letter-spacing:.15em;padding:10px 0;}
      .landcar_slide4_link1_sloth{font-size:18px;color:#000;}
      .landcar_slide4_link1_sloth span{height:1px;width:100%;background:#000;bottom:-4px;left:0;}
      .landcar_slide4_link1_sloth:hover span{bottom:-5px;height:2px;transition:.3s;}

      .landcar_slide5_text_crate{height:400px;width:50%;left:50%;padding:40px 0 0 50px;}
      .landcar_slide5_title_sloth{font-size:60px;letter-spacing:.2em}
      .landcar_slide5_text1_sloth{font-size:16px;letter-spacing:.1em;padding:10px 0;}
      .landcar_slide5_link1_sloth{font-size:18px;color:#fff;}
      .landcar_slide5_link1_sloth span{height:1px;width:100%;background:#fff;bottom:-4px;left:0;}
      .landcar_slide5_link1_sloth:hover span{bottom:-5px;height:2px;transition:.3s;}
    </style>
  </head>
  <body>
    <div class="mainbody bor">
      <div class="nav_body">
        <div class="nav_body_desktop">
          <%@include file="include/navbar.jsp" %>
        </div>
        <div class="nav_body_mobile">
          <!--  SPACE FOR RESPONSIVE NAVBAR  -->
        </div>
      </div>
      <div class="rest_body bor">
        <div class="land_subnav_box_outer bor">
          <div class="land_subnav_box_inr bor">
            <ul class="land_subnav_ul bor flex">
              <li class="land_subnav_li flex bor">
                <a href="#" class="land_subnav_ahr flexmid bor rel">
                  Sale
                  <span class="land_subnav_ahr_span abs"></span>
                </a>
              </li>
              <li class="land_subnav_li flex bor">
                <a href="#" class="land_subnav_ahr flexmid bor rel">
                  Women
                  <span class="land_subnav_ahr_span abs"></span>
                </a>
              </li>
              <li class="land_subnav_li flex bor">
                <a href="#" class="land_subnav_ahr flexmid bor rel">
                  Men
                  <span class="land_subnav_ahr_span abs"></span>
                </a>
              </li>
              <li class="land_subnav_li flex bor">
                <a href="#" class="land_subnav_ahr flexmid bor rel">
                  Accessories
                  <span class="land_subnav_ahr_span abs"></span>
                </a>
              </li>
            </ul>
          </div>
        </div>
        <div class="land_carousel_div_outer bor">
          <div class="land_carousel_div_inr h100 bor flexmid jcsb rel">
            <div class="land_carousle_crate  hw100 abs bor">
              <!-- ------------------------------------------------------------------------------------------------------------- -->
            <div class="land_carsoul_sloth hw100 bor rel flex aic non">
                <img src="image/slide1.png" alt="" class="land_carousel_slide1 w100 abs">
                <div class="landcar_slide1_text_crate bor abs">
                  <div class="landcar_slide1_text_crate_inr hw100 bor">
                    <div class="landcar_slide1_text1_sloth landcar_slide1_text bor txtw ff5">
                      SPRING 2023
                    </div>
                    <div class="landcar_slide1_title_sloth landcar_slide1_text bor txtw ff5">
                      LOOKING FORWARD
                    </div>
                    <div class="landcar_slide1_subtitle_sloth landcar_slide1_text bor txtw ff5">
                      FRESH DELIVERY
                    </div>
                    <div class="landcar_slide1_text2_sloth landcar_slide1_text bor txtw ff5">
                      Discover your new season wardrobe now.
                    </div>
                    <a href="#" class="landcar_slide1_link1_sloth landcar_slide1_text bor txtw ff5 totext rel">
                      Men's Designer<span class="abs"></span></a>
                    &nbsp;
                    <a href="#" class="landcar_slide1_link1_sloth landcar_slide1_text bor txtw ff5 totext rel">
                      Men's Advance Mordern
                      <span class="abs"></span>
                    </a>
                  </div>
                </div>
              </div>
              <!-- ------------------------------------------------------------------------------------------------------------- -->
              <div class="land_carsoul_sloth hw100 bor rel flex aic none">
                <img src="image/slide2_2.png" alt="" class="land_carousel_slide1 w100 abs">
                <div class="landcar_slide2_text_crate bor abs">
                  <div class="landcar_slide2_title_sloth landcar_slide1_text">
                    Style: Casual Clothing
                  </div>
                  <div class="landcar_slide2_text1_sloth landcar_slide1_text bor ff5">
                    Find your new casual attire.
                  </div>
                  <a href="#" class="landcar_slide2_link1_sloth landcar_slide1_text bor ff5 totext rel">
                    Shop<span class="abs"></span></a>
                  &nbsp;
                  <a href="#" class="landcar_slide2_link1_sloth landcar_slide1_text bor txtw ff5 totext rel">
                      Dress Fashionably
                    <span class="abs"></span>
                  </a>
                </div>
              </div>
              <!-- ------------------------------------------------------------------------------------------------------------- -->
              <div class="land_carsoul_sloth hw100 bor rel flex aic none">
                <img src="image/slide3.png" alt="" class="land_carousel_slide3 w100 abs">
                <div class="landcar_slide3_text_crate bor abs">
                  <div class="landcar_slide3_title_sloth landcar_slide1_text txt">
                    SUMMER COLLECTION
                  </div>
                  <div class="landcar_slide3_text1_sloth landcar_slide1_text txt">
                    Discover trending styles from<br/>the spring/summer 2023 runways.
                  </div>
                  <a href="#" class="landcar_slide3_link1_sloth landcar_slide1_text totext rel">
                    Spring Designer<span class="abs"></span></a>&nbsp;
                  <a href="#" class="landcar_slide3_link1_sloth landcar_slide1_text totext rel">
                    Contemporary<span class="abs"></span></a>&nbsp;
                  <a href="#" class="landcar_slide3_link1_sloth landcar_slide1_text totext rel">
                    Get Inspired<span class="abs"></span></a>&nbsp;
                </div>
              </div>
              <!-- ------------------------------------------------------------------------------------------------------------- -->
              <div class="land_carsoul_sloth hw100 bor rel flex aic none">
                <img src="image/slide5.png" alt="" class="land_carousel_slide3 w100 abs">
                <div class="landcar_slide4_text_crate abs bor">
                  <div class="landcar_slide4_title_sloth">
                    Confident<br/>
                    Empower<br/>
                    Comfortable<br/>
                  </div>
                  <div class="landcar_slide4_text1_sloth">
                    A fresh new season of style has arrived.
                  </div>
                  <a href="#" class="landcar_slide4_link1_sloth rel totext">Latest Product<span class="abs"></span></a>&nbsp;
                  <a href="#" class="landcar_slide4_link1_sloth rel totext">Get Inspired<span class="abs"></span></a>&nbsp;
                </div>
              </div>
              <!-- ------------------------------------------------------------------------------------------------------------- -->
              <div class="land_carsoul_sloth hw100 bor rel flex aic none">
                <img src="image/slide4_1.png" alt="" class="land_carousel_slide3 w100 abs">
                <div class="landcar_slide5_text_crate abs bor">
                  <div class="landcar_slide5_title_sloth landcar_slide1_text txtw">
                    Style:Casual Clothing
                  </div>
                  <div class="landcar_slide5_text1_sloth landcar_slide1_text txtw">
                    The key is to wear what makes you feel<br/>good and confident.
                  </div>
                  <a href="#" class="landcar_slide5_link1_sloth landcar_slide1_text totext rel">Casual Attire<span class="abs"></span></a>&nbsp;
                  <a href="#" class="landcar_slide5_link1_sloth landcar_slide1_text totext rel">Shops<span class="abs"></span></a>&nbsp;
                </div>
              </div>
              <!-- ------------------------------------------------------------------------------------------------------------- -->
            </div>
            <div class="land_carousel_lr land_carousel_left bor abs flexmid zi1 cup">
              <img src="icons/thinner-arrow-left.png" alt="" class="land_carousle_left w100">
            </div>
            <div class="land_carousel_lr land_carousel_right bor abs flexmid zi1">
              <img src="icons/thinner-arrow-right.png" alt="" class="land_carousle_right w100">
            </div>
          </div>
        </div>
        <!-- ------------------------------------------------------------------------------------------------------------- -->
        <div class="discount_body bor"></div>
        <!-- ------------------------------------------------------------------------------------------------------------- -->
        <div class="prod_feature_div_outer bor non">
          <div class="prod_feature_div_inr bor">
            <%@include file="include/featureproduct.jsp" %>
          </div>
          <div class="prod_feature_div_inr bor">
            <%@include file="include/popularproduct.jsp" %>
          </div>
          <div class="prod_feature_div_inr bor">
            <!--  SPACE FOR FEATURE PRODUCT  -->
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