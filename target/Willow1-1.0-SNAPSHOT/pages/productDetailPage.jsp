<%@page import="Model.SizeCount"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
  <head>
    <title>Product | Detail</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/stylex.css">
    <style>
      .dashBody{height:100vh;padding:1.4em 2.2em;}
      .dashLineOne{height:1px;width:100%;background: #666;}

      .dashMainOptionsCrate{width:16%;}
      .dashMainContainer{width:84%;}
      .dashMoptMiniTitleIcon{height:26px;width:26px;}

      .dashMoptTitleSloth{font-size:28px;font-weight:600;}
      .dashMoptSubTitleSloth{font-size:18px;font-weight:500;text-transform:uppercase;letter-spacing:.05em;}
      .dashMoptMiniTitleCrate{padding:5px 0;}
      .dashMoptMiniTitleSloth{font-size:16px;font-weight:300;letter-spacing:.05em;}

      .dProdDtlBody{padding:0 1.6em;}
      .dProdDtlTitleSloth{font-size:28px;font-weight:600;letter-spacing:.05em}
      .dProdDtlSubTitleSloth{font-size:24px;font-weight:600;letter-spacing:.05em;overflow:hidden;}
      .dProdDtlMainContainer{height:calc(100% - 80px);}
      .dProdDtlLeftTrunk,.dProdDtlRightTrunk{overflow:auto;}
      .dProdDtlLeftTrunk::-webkit-scrollbar,.dProdDtlRightTrunk::-webkit-scrollbar {width: 1px;}
      
      
      /* dProdDtlLeftTrunk */
      /* .dProdDtlLeftTrunk{overflow:auto;} */
      .dProdDtlImageCrate{height:200px;width:190px;}
      .dProdDtlImageSloth{height:200px;width:190px;border:5px solid #999;overflow:hidden;}
      .dProdDtlTableCrate tr td{font-family:var(--ff5);padding:2px 0;}
      .dProdDtlSizeCountTable{border-spacing:0;}
      .dProdDtlSizeCountTable tr td{font-family:var(--ff5);text-align: center;border:1px solid #000;border-top:none;
        border-left:none;padding:2px 8px;}
      .dProdDtlSizeCountTable tr td:nth-child(1){border-left:1px solid #000;}
      .dProdDtlSizeCountTable tr:nth-child(1) td{border-top:1px solid #000;}
      .dProdDtlButtonSloth{font-family:var(--ff5);padding:5px 20px;background:#5d93ec;margin-right:10px;transition:.3s;
        border-radius:2px;color:#fff;font-style: 16px;letter-spacing:.05em;font-weight: 300;}
      .dProdDtlButtonSloth:hover{background:#3B71CA;}
      .dProdDtlButtonSloth[data-btn="2"]{background:#fe6e86;}
      .dProdDtlButtonSloth[data-btn="2"]:hover{background:#DC4C64;}
      .dProdDtlButtonCrate{padding-bottom: 30px;}
      /* dProdDtlRightTrunk */
    </style>
  </head>
  <body>
    <div class="dashBody bor">
      <div class="inrDashBody bor hw100 flex">
        <div class="dashMainOptionsCrate out rel">
          <a href="user?page=index" class="dashMoptTitleSloth ff1 bor pb15 totext">
            WILLOW
          </a>
          <div class="dashMoptSubTitleCrate ff5 pb">
            <div class="dashMoptSubTitleSloth">
              Product
            </div>
          </div>
          <div class="dashMoptMiniTitleCrate flex aic out">
            <img src="icons/home.png" alt="" class="dashMoptMiniTitleIcon ml20 mr10 out">
            <a href="user?page=dashboard&product=productadd" class="dashMoptMiniTitleSloth pt3 out totext">
              Add
            </a>
          </div>
          <div class="dashMoptMiniTitleCrate flex aic out">
            <img src="icons/home.png" alt="" class="dashMoptMiniTitleIcon ml20 mr10 out">
            <a href="user?page=dashboard&product=productedit" class="dashMoptMiniTitleSloth pt3 out totext">
              Edit
            </a>
          </div>
          <div class="dashMoptMiniTitleCrate flex aic out">
            <img src="icons/home.png" alt="" class="dashMoptMiniTitleIcon ml20 mr10 out">
            <a href="user?page=dashboard&product=productlist" class="dashMoptMiniTitleSloth pt3 out totext">
              List
            </a>
          </div>
          <div class="dashMoptMiniTitleCrate flex aic out">
            <img src="icons/home.png" alt="" class="dashMoptMiniTitleIcon ml20 mr10 out">
            <a href="user?page=dashboard&product=productfocused" class="dashMoptMiniTitleSloth pt3 out totext">
              Focused
            </a>
          </div>
          <div class="dashMoptMiniTitleCrate flex aic out">
            <img src="icons/home.png" alt="" class="dashMoptMiniTitleIcon ml20 mr10 out">
            <a href="#" class="dashMoptMiniTitleSloth pt3 out totext">
              Order, Sold
            </a>
          </div>
          <!-- ---------------------------------------- SPAN ---------------------------------------- -->
          <div class="dashLineOne mt10 mb15"></div>
          <!-- ---------------------------------------- SPAN ---------------------------------------- -->
          <div class="dashMoptSubTitleCrate ff5 pb">
            <div class="dashMoptSubTitleSloth">
              Customer
            </div>
          </div>
          <div class="dashMoptMiniTitleCrate flex aic out">
            <img src="../icons/home.png" alt="" class="dashMoptMiniTitleIcon ml20 mr10 out">
            <a href="#" class="dashMoptMiniTitleSloth pt3 out totext">
              Details
            </a>
          </div>
          <!-- ---------------------------------------- SPAN ---------------------------------------- -->
          <div class="dashLineOne mt10 mb15"></div>
          <!-- ---------------------------------------- SPAN ---------------------------------------- -->
          <div class="dashMoptSubTitleCrate ff5 pb">
            <div class="dashMoptSubTitleSloth">
              Sales
            </div>
          </div>
          <div class="dashMoptMiniTitleCrate flex aic out">
            <img src="../icons/home.png" alt="" class="dashMoptMiniTitleIcon ml20 mr10 out">
            <a href="#" class="dashMoptMiniTitleSloth pt3 out totext">
              Details
            </a>
          </div>
          <!-- ---------------------------------------- SPAN ---------------------------------------- -->
          <div class="dashLineOne mt10 mb15"></div>
          <!-- ---------------------------------------- SPAN ---------------------------------------- -->
          <div class="dashMoptSubTitleCrate ff5 pb">
            <div class="dashMoptSubTitleSloth">
              Settings
            </div>
          </div>
          <div class="dashMoptMiniTitleCrate flex aic out">
            <img src="../icons/home.png" alt="" class="dashMoptMiniTitleIcon ml20 mr10 out">
            <a href="#" class="dashMoptMiniTitleSloth pt3 out totext">
              Log Out
            </a>
          </div>
          <!-- ---------------------------------------- SPAN ---------------------------------------- -->
          <div class="dashLineOne mt10 mb15 none"></div>
          <!-- ---------------------------------------- SPAN ---------------------------------------- -->
        </div>
        <div class="dashMainContainer out">
          <div class="dashConatinerCrate hw100 bor" data-for="detail">
            <!-- for product detail -->
            <div class="dProdDtlBody hw100 out bor">
              <div class="inrdProdDtlBody hw100 out bor">
                <div class="dProdDtlTitleSloth ff1 pb15 out">
                  PRODUCT > Details
                </div>
                <div class="dProdDtlSubTitleCrate flex pb5 ff1 out">
                  <div class="dProdDtlSubTitleSloth w40 ff1">
                    Shoes
                  </div>
                  <div class="dProdDtlSubTitleSloth w60 ff1 bor">Review</div>
                </div>
                <div class="dProdDtlMainContainer flex bor out">
                  <div class="dProdDtlLeftTrunk w40 flex fdc out bor">
                    <div class="dProdDtlImageCrate flex mb10">
                      <div class="dProdDtlImageSloth mb10 br3 ">
                        <img src="${productdetail.image}" alt="" class="w100">
                      </div>
                    </div>
                    <table class="dProdDtlTableCrate pb15 w100 bor">
                      <tr>
                        <td>Name</td>
                        <td>
                          ${productdetail.name}
                        </td>
                      </tr>
                      <tr>
                        <td>Description</td>
                        <td>
                          ${productdetail.description}
                        </td>
                      </tr>
                      <tr>
                        <td>Brand</td>
                        <td>
                          ${productdetail.brand}
                        </td>
                      </tr>
                      <tr>
                        <td>Category</td>
                        <td>
                          ${productdetail.category}
                        </td>
                      </tr>
                      <tr>
                        <td>Price</td>
                        <td>
                          NRS ${productdetail.price}
                        </td>
                      </tr>
                      <tr>
                        <td>Discount</td>
                        <td>
                          ${productdetail.discount}%
                        </td>
                      </tr>
                      <tr>
                        <td>Final price</td>
                        <td>
                          NRS ${productdetail.discountedprice}
                        </td>
                      </tr>
                      <tr>
                        <td>Tags</td>
                        <td>
                          ${productdetail.tags}
                        </td>
                      </tr>
                      <tr>
                        <td>Size & Count</td>
                        <td>
                          <table class="dProdDtlSizeCountTable bor">
                            <tr>
                              <td>Id</td>
                              <td>Size</td>
                              <td>Count ${productsizecount.size()}
                              </td>
                            </tr>
                            
                            <c:forEach items="${productsizecount}" var="psc">
                            <tr>
                              <td>${psc.id}</td>
                              <td>${psc.size}</td>
                              <td>${psc.count}</td>
                            </tr>
                            </c:forEach>
                            
                          </table>
                        </td>
                      </tr>
                      <tr>
                        <td>Total count</td>
                        <td>
                          ${productdetail.totalcount}
                        </td>
                      </tr>
                      <tr>
                        <td>Release date</td>
                        <td>
                          ${productdetail.name}
                        </td>
                      </tr>
                      <tr>
                        <td>Visibility</td>
                        <td>
                          ${productdetail.name}
                        </td>
                      </tr>
                      <tr>
                        <td>Focused</td>
                        <td>
                          ${productdetail.name}
                        </td>
                      </tr>
                    </table>
                    <div class="dProdDtlButtonCrate flex bor">
                      <a href="user?page=dashboard&product=productedit&id=${productdetail.id}" class="dProdDtlButtonSloth totext bor" data-btn="1">Edit</a>
                      <a href="user?page=dashboard&product=productedit&id=1${productdetail.id}" class="dProdDtlButtonSloth totext bor" data-btn="2">Delete</a>
                    </div>
                  </div>
                  <div class="dProdDtlRightTrunk w60 out borx">
                    <!-- -------------------- REVIEW LIST SLOTH -------------------- -->
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </body>
</html>
