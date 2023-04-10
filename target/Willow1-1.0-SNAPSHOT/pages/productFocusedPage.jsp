<%@page import="Support.index"%>
<%@page import="Model.Product"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <title>Product | 01</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/stylex.css">    
    <link rel="stylesheet" href="../css/style.css">
    <link rel="stylesheet" href="../css/stylex.css">
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

      .dProdFocBody{padding:0 1.6em;}
      .dProdFocTitleSloth{font-size:28px;font-weight:600;letter-spacing:.05em}
      .dProdFocMainContainer{height:calc(100% - 50px);}
      .dProdFocMainContainer::-webkit-scrollbar {width: 1px;}

      /* table */
      .dProdFocTableCrate{overflow:auto;}
      .dProdFocTable{border-spacing:0;}
      .dProdFocTable tr td{text-align: center;border:1px solid #000;border-top:none;border-left:none;padding:2px 0;}
      .dProdFocTable tr td:nth-child(1){border-left:1px solid #000;}
      .dProdFocTable tr:nth-child(1) td{border-top:1px solid #000;font-weight:600;}
      .dProdFocTable tr td:nth-child(2){text-align-last: left;padding-left:8px;}
      /* .dProdFocTdTitle{} */

      /* buttons */
      .dProdFocSavebtn{font-family:var(--ff5);padding:6px 20px;background:#5d93ec;margin-right:10px;transition:.3s;
        border-radius:2px;color:#fff;font-style: 16px;letter-spacing:.05em;font-weight: 300;border:none;cursor: pointer;}
      .dProdFocSavebtn:hover{background:#3B71CA;}
      .dProdFocSavedMsgSloth{font-size: 15px;}
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
          <div class="dashConatinerCrate hw100 bor" data-for="detail">
            <!-- for product detail -->
            <div class="dProdFocBody hw100 out">
              <div class="inrdProdFocBody hw100 out">
                <div class="dProdFocTitleSloth pb15 ff1 out">
                  PRODUCT > Foused List
                </div>
                <div class="dProdFocMainContainer flex bor">
                  <form action="" class="flex fdc jcsb hw100 bor" method="post">
                    <div class="dProdFocTableCrate bor">
                      <table class="dProdFocTable bor w100">
                        <tr>
                          <td class="dProdFocTdTitle">Id</td>
                          <td class="dProdFocTdTitle">Name</td>
                          <td class="dProdFocTdTitle">Brand</td>
                          <td class="dProdFocTdTitle">Price</td>
                          <td class="dProdFocTdTitle">Avilable size</td>
                          <td class="dProdFocTdTitle">Total count</td>
                          <td class="dProdFocTdTitle">Feature</td>
                          <td class="dProdFocTdTitle">Popular</td>
                          <td class="dProdFocTdTitle">New</td>
                          <td class="dProdFocTdTitle">Edit</td>
                        </tr>

                        <!-- FOR EACH  -->
                        <c:forEach items="${popularPList}" var="prlist">
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
                            ${prlist.avilablesize}
                          </td>
                          <td>
                            ${prlist.totalcount}
                          </td>
                          <td>
                            ${prlist.focused1}
                          </td>
                          <td>
                            ${prlist.focused2}
                          </td>
                          <td>
                            ${prlist.focused3}
                          </td>
                          <td>
                            <a href="user?page=dashboard&product=productedit&id=${prlist.id}" class="txtx bor" data-btn="1">Edit</a>
                          </td>
                        </tr>
                        </c:forEach>
                        <!-- FOR EACH  -->

                      </table>
                    </div>
                    <div class="dProdFocButtonCrate flex pt15 bor">
                      <input type="submit" class="dProdFocSavebtn" value="Save">
                      <div class="dProdFocSavedMsgSloth flexmid ff5 bor none">
                        Saved sucessfully
                      </div>
                    </div>
                  </form>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </body>
</html>
