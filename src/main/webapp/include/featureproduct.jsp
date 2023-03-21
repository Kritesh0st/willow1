<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%--<c:forEach items="${productlist}" var="pl">--%>
<!DOCTYPE html>
<html>
  <head>
    <title>Product | 01</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../css/style.css">
    <link rel="stylesheet" href="../css/stylex.css">
    <script src="https://kit.fontawesome.com/5045e83b56.js" crossorigin="anonymous"></script>
    <style>
      .productBody{height:auto;padding:80px 2.2em;}
      .prod_main_title_crate{padding-bottom: 20px;}
      .prod_main_title{font-family:var(--ff5);font-size:24px;font-weight:300;letter-spacing:.1em;}
      .prod_main_title_more{font-family:var(--ff5);font-size:16px;font-weight:300;letter-spacing:.1em;}
      .prod_main_title_more span{height:1px;width:100%;background:#000;bottom:-4px;left:0;}
      .prod_main_title_more:hover span{bottom:-5px;height:2px;}
      .prod_list_box{overflow: auto;}
      .prod_list_box:focus {outline: none;}
      .prod_list_box::-webkit-scrollbar {width:0;height:2px;}
      .prod_list_box::-webkit-scrollbar-track{box-shadow: inset 0 0 5px grey;border-radius: 10px;}
      .prod_list_box::-webkit-scrollbar-thumb{background:rgba(170,170,170,.2);border-radius:10px;transition: 0.3s;}
      .prod_list_box::-webkit-scrollbar-thumb:hover {background: rgba(170,170,170,.5);cursor:pointer;}

      .inr_prod_list_box{width:100%;}
      .prod_sloth{width:20%;padding:15px;padding-bottom:10px;}
      .prod_image_sloth{height:260px;overflow:hidden;margin-bottom: 10px;}

      .prod_ff5{font-family:var(--ff5);font-weight:300;padding:2px 0;}
      .prod_review_start_icon{height:16px;width:16px;}
      .prod_newitem_sloth{color:#00f;}
      .prod_name_sloth{color: #000;}
      .prod_discount_price_sloth{color:var(--col1);}
      .prod_price_sloth{text-decoration: line-through;}
      .prod_review_crate{padding:0;}
    </style>
  </head>
  <body>
    <div class="productBody bor">
      <div class="prod_body_inr borx3">
        <div class="prod_main_title_crate flex jcsb aic bor">
          <div class="prod_main_title bor">
            FEATURE PRODUCT
          </div>
          <div class="prod_main_title_more bor flex rel cup">
            View More
            <span class="abs"></span>
          </div>
        </div>
        <div class="prod_list_box bor">
          <div class="inr_prod_list_box bor flex ">

            <!-- FOR EACH SLOTH -->
            <c:forEach items="${productlist}" var="pl">
            <div class="prod_sloth bor br3">
              <div class="inr_prod_sloth bor flex fdc">
                <div class="prod_image_sloth borx2 br3">
                  <img src="image/cloth/tshirt1.jpg" alt="" class="prod_img_img w100">
                </div>
                <div class="prod_newitem_sloth prod_ff5 bor">New!</div>
                <div class="prod_name_sloth prod_ff5 bor">
                 ${pl.name}
                </div>
                <div class="prod_discount_price_sloth prod_ff5 bor">
                  RS ${pl.price} (20% off)
                </div>
                <div class="prod_price_sloth prod_ff5 bor">RS 3000</div>
                <div class="prod_review_crate prod_ff5 bor flex">
                  <div class="prod_review_start_crate flex aic pr10 bor">
                    <!-- FOR EACH SLOTH -->
                    <img src="icons/start.png" alt="" class="prod_review_start_icon w100">
                    <img src="icons/start.png" alt="" class="prod_review_start_icon w100">
                    <img src="icons/start.png" alt="" class="prod_review_start_icon w100">
                    <img src="icons/start.png" alt="" class="prod_review_start_icon w100">
                    <!-- FOR EACH END SLOTH -->
                    <!-- FOR EACH SLOTH -->
                    <img src="icons/start-stroke.png" alt="" class="prod_review_start_icon w100">
                    <!-- FOR EACH END SLOTH -->
                  </div>
                  <div class="prod review_count_sloth prod_ff5">
                    (${pl.rcount})
                  </div>
                </div>
              </div>
            </div>
            </c:forEach>
          <!-- FOR EACH END SLOTH -->
            
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
