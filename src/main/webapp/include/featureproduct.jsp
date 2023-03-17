<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
  <head>
    <title>Product | 01</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../css/style.css">
    <link rel="stylesheet" href="../css/stylex.css">
    <script src="https://kit.fontawesome.com/5045e83b56.js" crossorigin="anonymous"></script>
    <style>
      .productBody{height:auto;padding:1em 2.2em;}
      .prod_main_title{font-family:var(--ff5);font-size:24px;font-weight:300;letter-spacing:.1em;padding-bottom: 20px;}
      .prod_list_box{overflow: auto;}
      .prod_listlist_box{width:134%;}
      .prod_box{width:14%;padding:20px;}
      .prod_img_box{height:220px;overflow:hidden;}
      .prod_img_qickview{font-family:var(--ff5);font-size:20px;bottom:0;letter-spacing:.1em;color:#fff;
        background:rgba(255,255,255,.5);cursor: pointer;height:0;overflow: hidden;padding:0;opacity:0;
        text-shadow:0 0 3px #000;font-weight:300;}
      .prod_img_box:hover .prod_img_qickview{height:auto;padding:5px 10px;bottom:10px;transition:.3s;opacity:1;}
      .prod_single_name,.prod_single_price{font-family:var(--ff5);font-size:20px;letter-spacing:.1em;padding:3px 0;}
      .prod_single_name{padding-top:15px;}
      .prod_single_price{font-size:16px;}
      .prod_start{height:20px;margin-right:5px;}
      
      .prod_list_box:focus {outline: none;}
      .prod_list_box::-webkit-scrollbar {width:0;height:2px;}
      .prod_list_box::-webkit-scrollbar-track{box-shadow: inset 0 0 5px grey;border-radius: 10px;}
      .prod_list_box::-webkit-scrollbar-thumb{background:rgba(170,170,170,.2);border-radius:10px;transition: 0.3s;}
      .prod_list_box::-webkit-scrollbar-thumb:hover {background: rgba(170,170,170,.5);cursor:pointer;}
    </style>
  </head>
  <body>
    <div class="productBody bor">
      <div class="prod_body_inr bor">
        <div class="prod_main_title">
          FEATURE PRODUCT
        </div>
        <div class="prod_list_box bor">
          <div class="prod_listlist_box bor flex">
            productlist
            <c:forEach items="${productlist}" var="productlist">
            <div class="prod_box flex fdc borx3 br3">
             <div class="prod_img_box bor flex jcc rel">
              <img src="../image/test-img.png" alt="" class="prod_img w100">
              <div class="prod_img_qickview abs bor br3">
                Quick View
              </div>
             </div>
             <div class="prod_single_name bor">
              T-Shirt
             </div>
             <div class="prod_single_price bor">
              NRS 3000
             </div>
             <div class="prod_single_reviewstart bor flex jcfs">
              <img src="../svg/start-solid.svg" alt="" class="prod_start bor">
              <img src="../svg/start-solid.svg" alt="" class="prod_start bor">
              <img src="../svg/start-solid.svg" alt="" class="prod_start bor">
              <img src="../svg/start-stroke.svg" alt="" class="prod_start bor">
              <img src="../svg/start-stroke.svg" alt="" class="prod_start bor">
             </div>
            </div>
            </c:forEach> 
              
          </div>
        </div>
      </div>
    </div>
    <script src="../js1/script1.js"></script>
    <script>
      //var mainbody = document.querySelector(".mainbody");
      //var inrgmblock = document.querySelectorAll(".inrgmblock");
    </script>
  </body>
</html>
