<%@page import="java.io.PrintWriter"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%--<%@include file="include/navbar.jsp" %>--%>
<%
String plcheck = (String) session.getAttribute("plcheck");
out.print("plcheck value = "+plcheck);
if(plcheck==null){response.sendRedirect("user?page=index");}
%>
<!DOCTYPE html>
<html>
  <head>
    <title>Willow | 01</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/stylex.css">
    <style>
      .mainbody{height:200vh;}
      .nav_body{height: 100px;}

      .land_subnav_box_outer{padding:1em 2.2em;}
      .land_subnav_li{padding:0 40px;}
      .land_subnav_ahr{text-decoration: none;color:#000;font-family:var(--ff5);font-weight:300;letter-spacing:0.1em;}
      .land_subnav_ahr:hover .land_subnav_ahr_span{width:100%;height:2px;background:#2a2a2a;bottom:-4px;left:0;transition:.3s;}
      
      .land_carousel_div_outer{padding:0 2.2em;}
      .land_carousel_div_inr{height:600px;}
      .land_carousel_lr{height:80px;width:50px;}

      .prod_feature_div_outer{padding:0 2.2em;}
    </style>
  </head>
  <body>
    <div class="mainbody bor">
      <div class="nav_body">
        <div class="nav_body_desktop">
            <%@include file="include/navbar.jsp" %>
        </div>
        <div class="nav_body_mobile"></div>
      </div>
      <div class="rest_body bor">
        <div class="land_subnav_box_outer borx">
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
        <div class="land_carousel_div_outer borx">
          <div class="land_carousel_div_inr h100 bor flexmid jcsb rel">
            <div class="vdfvm  hw100 abs borx3 bg"></div>
            <div class="land_carousel_lr land_carousel_left borx3 flexmid bg5 zi1">L</div>
            <div class="land_carousel_lr land_carousel_right borx3 flexmid bg5 zi1">R</div>
          </div>
        </div>

        <div class="prod_feature_div_outer borx">
          <div class="prod_feature_div_inr borr" style="height:400px;">
            <%@include file="include/featureproduct.jsp" %>
          </div>
        </div>
      </div>
    </div>
    <script src="js1/script1.js"></script>
    <script>
      //var mainbody = document.querySelector(".mainbody");
      //var inrgmblock = document.querySelectorAll(".inrgmblock");
    </script>
  </body>
</html>