<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%--<%@include file="productAdd.jsp" %>--%>
<%
String pagep = request.getParameter("page");
String product = request.getParameter("product");
String displayAdd="none";
String displayEdit="none";
String displayDetails="none";
String displayFocused="none";
String displayList="none";
if(pagep!=null && product!=null){
    if(product.equals("productadd")){displayAdd="";}
    else if(product.equals("productedit")){displayEdit="";}
    else if(product.equals("productdetails")){displayDetails="";}
    else if(product.equals("productfocused")){displayFocused="";}
    else if(product.equals("productlist")){displayList="";}
}
%>
<!DOCTYPE html>
<html>
  <head>
    <title>Dashboard | 01</title>
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
    </style>
  </head>
  <body>
    <div class="dashBody bor">
      <div class="inrDashBody bor hw100 flex">
        <div class="dashMainOptionsCrate out rel">
          <div class="dashMoptTitleSloth ff1 bor pb15">
            WILLOW
          </div>
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
            <img src="icons/home.png" alt="" class="dashMoptMiniTitleIcon ml20 mr10 out">
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
            <img src="icons/home.png" alt="" class="dashMoptMiniTitleIcon ml20 mr10 out">
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
            <img src="icons/home.png" alt="" class="dashMoptMiniTitleIcon ml20 mr10 out">
            <a href="#" class="dashMoptMiniTitleSloth pt3 out totext">
              Log Out
            </a>
          </div>
          <!-- ---------------------------------------- SPAN ---------------------------------------- -->
          <div class="dashLineOne mt10 mb15 none"></div>
          <!-- ---------------------------------------- SPAN ---------------------------------------- -->
        </div>
        <div class="dashMainContainer outx3">
          <div class="dashConatinerCrate hw100 bor <%=displayAdd%>" data-for="add">
            <!-- for product add -->
            <%@include file="productAdd.jsp" %>
          </div>
          <div class="dashConatinerCrate hw100 bor <%=displayEdit%>" data-for="add">
            <!-- for product add -->
            <%@include file="productEdit.jsp" %>
          </div>
          <div class="dashConatinerCrate hw100 bor <%=displayList%>" data-for="add">
            <!-- for product add -->
            <%@include file="productList.jsp" %>
          </div>
          <div class="dashConatinerCrate hw100 bor <%=displayFocused%>" data-for="add">
            <!-- for product add -->
            <%@include file="productFocused.jsp" %>
          </div>
          <div class="dashConatinerCrate hw100 bor <%=displayAdd%> none" data-for="add">
            <!-- for product add -->
            <%@include file="productAdd.jsp" %>
          </div>
        </div>
      </div>
    </div>
  </body>
</html>
