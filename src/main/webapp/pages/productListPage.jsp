<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <title>Product | List</title>
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

      .dProdListBody{padding:0 1.6em;}
      .dProdListTitleSloth{font-size:28px;font-weight:600;letter-spacing:.05em}
      .dProdListMainContainer{height:calc(100% - 35px);overflow:auto;}
      .dProdListMainContainer::-webkit-scrollbar {width: 1px;}

      /* table */
      .dProdListTable{border-spacing:0;}
      .dProdListTable tr td{text-align: center;border:1px solid #000;border-top:none;border-left:none;padding:2px 0;}
      .dProdListTable tr td:nth-child(1){border-left:1px solid #000;}
      .dProdListTable tr:nth-child(1) td{border-top:1px solid #000;font-weight:600;}
      .dProdListTable tr td:nth-child(2){text-align-last: left;padding-left:8px;}
      /* .dProdListTdTitle{} */
    </style>
  </head>
  <body>
    <div class="dashBody bor">
      <div class="inrDashBody bor hw100 flex">
        <div class="dashMainOptionsCrate flex fdc out rel">
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
            <a href="user?page=order" class="dashMoptMiniTitleSloth pt3 out totext">
              Order
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
            <img src="icons/home.png" alt="" class="dashMoptMiniTitleIcon ml20 mr10 out">
            <a href="user?page=userlist" class="dashMoptMiniTitleSloth pt3 out totext">
              List
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
            <img src="icons/home.png" alt="" class="dashMoptMiniTitleIcon ml20 mr10 out">
            <a href="user?page=saleslist" class="dashMoptMiniTitleSloth pt3 out totext">
              List
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
            <img src="icons/home.png" alt="" class="dashMoptMiniTitleIcon ml20 mr10 out">
            <a href="user?page=signout" class="dashMoptMiniTitleSloth pt3 out totext">
              Log Out
            </a>
          </div>
          <!-- ---------------------------------------- SPAN ---------------------------------------- -->
          <div class="dashLineOne mt10 mb15 none"></div>
          <!-- ---------------------------------------- SPAN ---------------------------------------- -->
        </div>
        <div class="dashMainContainer out">
          <div class="dashConatinerCrate hw100 bor" data-for="list">
            <div class="dProdListBody w100 out">
              <div class="inrdProdListBody hw100 out">
                <div class="dProdListTitleSloth pb15 ff1 out">
                  PRODUCT > List
                </div>
                <div class="dProdListMainContainer bor">
                  <table class="dProdListTable bor w100">
                    <tr>
                      <td class="dProdListTdTitle">Id</td>
                      <td class="dProdListTdTitle">Name</td>
                      <td class="dProdListTdTitle">Brand</td>
                      <td class="dProdListTdTitle">Price</td>
                      <td class="dProdListTdTitle">Discount</td>
                      <td class="dProdListTdTitle">Avilable size</td>
                      <td class="dProdListTdTitle">Total count</td>
                      <td class="dProdListTdTitle">Visibility</td>
                      <td class="dProdListTdTitle">Details</td>
                    </tr>
                    <c:forEach items="${productlist}" var="prlist">
                    <tr>
                      <td>
                        ${prlist.id}
                      </td>
                      <td>
                        ${prlist.name}
                      </td>
                      <td>
                        ${prlist.brand}
                      </td>
                      <td>
                        ${prlist.price}
                      </td>
                      <td>
                        ${prlist.discount}%
                      </td>
                      <td>
                        ${prlist.avilablesize}
                      </td>
                      <td>
                        ${prlist.totalcount}
                      </td>
                      <td>
                        ${prlist.visibility}
                      </td>
                      <td><a href="user?page=dashboard&product=productdetails&id=${prlist.id}" class="dProdListDetailLink txtx">
                        Details
                      </a></td>
                    </tr>
                    </c:forEach>
                  </table>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </body>
</html>
