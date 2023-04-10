<%@page import="java.util.List"%>
<%@page import="Model.SizeCount"%>
<%@page import="Support.index"%>
<%@page import="Model.Product"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
  <head>
    <title>Product | Edit</title>
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

      .dProdEditBody{padding:0 1.6em;}
      .dProdEditTitleSloth{font-size:28px;font-weight:600;letter-spacing:.05em}
      .dProdEditFormBody{height:calc(100% - 45px);}
      .dProdEditColumnTrunk{height:calc(100% - 30px);}
      .dProdEditCol[data-col="1"]{order:1;overflow:auto;height:calc(100% - 15px);}
      .dProdEditCol[data-col="2"]{order:2;}
      .dProdEditCol[data-col="3"]{order:3;}
      .dProdEditCol[data-col="1"]::-webkit-scrollbar {width: 10px;}
      .dProdEditCol[data-col="1"]::-webkit-scrollbar-track{box-shadow: inset 0 0 5px grey;border-radius: 10px;}
      .dProdEditCol[data-col="1"]::-webkit-scrollbar-thumb{background:rgba(170,170,170,.5);border-radius:10px;transition: 0.3s;}
      .dProdEditCol[data-col="1"]::-webkit-scrollbar-thumb:hover {background: rgba(170,170,170,.5);cursor:pointer;}
      .dProdEditSubTitleSloth{font-family:var(--ff5);font-size:24px;font-weight:500;letter-spacing:.05em;
        padding-bottom: 15px;}

      /* dProdEditCol[data-col="1"] */
      .dProdEditTextTable tr td{font-family:var(--ff5);font-size:18px;padding:5px 0;}
      .dProdEditTextTable tr:first-child td{padding-top: 0;}
      .dProdEditTableInput{font-family:var(--ff5);font-size:16px;width:100%;padding:2px 5px;border:1px solid #333;border-radius:3px;}
      .dProdEditTableInput:focus{outline:none;}
      .dProdEditTableInput[data-type="textarea"]{height:100px;resize:none;}
      .dProdEditFromImageUploadBtn::file-selector-button{padding:5px 10px;cursor: pointer;border:none;background: #5d93ec;
        border-radius:3px;transition:.3s;color:#fff;}
      .dProdEditFromImageUploadBtn::file-selector-button:hover{background:#3B71CA;}
      /* dProdEditCol[data-col="2"] */
      .dProdEditImageCrate{height:220px;width:190px;}
      

      /* dProdEditCol[data-col="3"] */
      .dProdEditSizeCountTable{width:220px;border-spacing: 0px;overflow:auto;}
      .dProdEditSizeCountTable tr td{width:100px;text-align: center;font-family:var(--ff5);font-size:16px;
        border:1px solid #333;border-top:none;border-left:none;}
      .dProdEditSizeCountTable tr:first-child td{border-top: 1px solid #333;}
      .dProdEditSizeCountTable tr td:first-child{border-left: 1px solid #333;}
      .dProdEditSizeCountTable tr td:nth-child(1){width:40px;}
      .dProdEditSizeCountTable tr td input{text-align: center;font-family:var(--ff5);font-size:15px;width:100%;border:none;padding:2px;}
      .dProdEditSizeCountTable tr td input:focus{outline:none;}

      /* dProdEditFormBtn */
      .dProdEditFormBtn{font-size:16px;padding:5px 20px;margin-right:10px;border-radius:3px;background: #5d93ec;
        cursor: pointer;color:#fff;transition:.3s;border:none;}
      .dProdEditFormBtn:hover{background:#3B71CA;}
      .dProdEditFormBtn[data-btn="reset"]{background:#fe6e86;}
      .dProdEditFormBtn[data-btn="reset"]:hover{background:#DC4C64;}
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
          <div class="dashConatinerCrate hw100 flex bor" data-for="edit">
            <!-- for product add -->
            <div class="dProdEditBody w100 bor">
              <div class="inrdProdEditBody hw100 flex fdc bor">
                <div class="dProdEditTitleSloth ff1 pb15">
                  PRODUCT > Edit
                </div>
                <form action="user?page=productedit&id=${productdetail.id}" class="dProdEditFormBody hw100 fg1 flex fdc bor" enctype="multipart/form-data" method="post">
                  <div class="dProdEditColumnTrunk flex hw100 bor">
                    
                    <div data-col="3" class="dProdEditCol pl20 bor">
                      <div class="dProdEditSubTitleSloth">Size & Count</div>
                      <table class="dProdEditSizeCountTable flex w100 bor">
                        <tr>
                          <td>
                            S.N.
                          </td>
                          <td>
                            Size
                          </td>
                          <td>
                            Count
                          </td>
                        </tr>
                        <c:forEach items="${productsizecount}" var="psc">
                            <tr><td>${psc.id} <input type="hidden" value="${psc.pid}" name="hiddenpid${psc.id}"></td><td><input type='text' class='dProdEditSize' value="${psc.size}" placeholder='  size..' name='size${psc.id}'></td><td><input type='text' class='dProdEditCount' placeholder='  count..' value="${psc.count}" name='count${psc.id}'></td></tr>  
                        </c:forEach>
                        <%
                        List<SizeCount> scc =(List<SizeCount>) request.getAttribute("productsizecount");
                        for(int scid=scc.size()+1;scid<=10;scid++){
                        %>
                            <tr><td><%=scid%> <input type="hidden" value="${psc.pid}" name="hiddenpid<%=scid%>"></td><td><input type='text' class='dProdEditSize' value="" placeholder='  size..' name='size<%=scid%>'></td><td><input type='text' class='dProdEditCount' pl><aceholder='  count..' value="" name='count<%=scid%>'></td></tr>
                        <%}%>
                      </table>
                    </div>
                    <div data-col="2" class="dProdEditCol pl20 flex fdc bor">
                      <div class="dProdEditSubTitleSloth">Image</div>
                      <div class="dProdEditImageCrate flex borx1 br3">
                        <img src="${productdetail.image}" alt="" class="dProdEditImageSloth w100">
                      </div>
                    </div>
                    <div data-col="1" class="dProdEditCol h100 fg1 bor">
                      <div class="dProdEditSubTitleSloth">Product</div>
                      <table class="dProdEditTextTable hw100 pb50 bor">
                        
                         <tr>
                          <td>
                            Name
                          </td>
                          <td>
                            <input type="text" class="dProdEditTableInput" data-type="text"
                              value="${productdetail.name}"
                              placeholder="product name..." name="name" required>
                          </td>
                        </tr>
                        <tr>
                          <td>
                            Description
                          </td>
                          <td>
                            <textarea class="dProdEditTableInput" data-type="textarea"  placeholder="product description..." name="description" required>
${productdetail.description}
                            </textarea>
                          </td>
                        </tr>
                        <tr>
                          <td>
                            Brand
                          </td>
                          <td>
                            <input type="text" class="dProdEditTableInput" data-type="text"
                            value="${productdetail.brand}"
                            placeholder="product name..." name="brand" required>
                          </td>
                        </tr>
                        <tr>
                          <td>
                            Category
                          </td>
                          <td>
                            <select class="dProdEditTableInput" data-type="select"  name="category" required>
                              <option value="both">Both</option>
                              <option value="male">male</option>
                              <option value="female">female</option>
                            </select>
                          </td>
                        </tr>
                        <tr>
                          <td>
                            Price
                          </td>
                          <td>
                            <input type="text" class="dProdEditTableInput" data-type="text" 
                            value="${productdetail.price}"
                            name="price" placeholder="product price..." required>
                          </td>
                        </tr>
                        <tr>
                          <td>
                            Discount
                          </td>
                          <td>
                            <input type="text" class="dProdEditTableInput" data-type="text" 
                            value="${productdetail.discount}" 
                            placeholder="product price..." name="discount" required>
                          </td>
                        </tr>
                        <tr>
                          <td>
                            Tags
                          </td>
                          <td>
                            <input type="text" class="dProdEditTableInput" data-type="text" 
                            value="${productdetail.tags} "
                            placeholder="product tags..." name="tags" required>
                          </td>
                        </tr>
                        <tr>
                          <td>
                            Release Date
                          </td>
                          <td>
                            <%
                                Product prd =(Product) request.getAttribute("productdetail");
                                String revDate = new index().revStrDate(prd.getReleasedate());
                                String focused1Str="",focused2Str="",focused3Str="";
                                if(prd.isFocused1()){focused1Str="checked";}
                                if(prd.isFocused2()){focused2Str="checked";}
                                if(prd.isFocused3()){focused3Str="checked";}
                            %>
                            <input type="date" class="dProdEditTableInput" data-type="text" 
                            value="<%=revDate%>" 
                            name="releasedate" required>
                          </td>
                        </tr>
                        <tr>
                          <td>
                            Visibility
                          </td>
                          <td>
                            <select class="dProdEditTableInput" data-type="select"  name="visibility" required>
                              <option value="true">True</option>
                              <option value="false">False</option>
                            </select>
                          </td>
                        </tr>
                        <tr>
                          <td>
                            Focused
                          </td>
                          <td>
                            <input type="checkbox" id="focused1" name="focused1" value="true" <%=focused1Str%>>
                            <label for="focused1">Feature</label>&nbsp;&nbsp;
                            <input type="checkbox" id="focused2" name="focused2" value="true" <%=focused2Str%>>
                            <label for="focused2">Popular</label>
                          </td>
                        </tr>
                        <tr>
                          <td>
                            Image
                          </td>
                          <td>
                            <input type="hidden" value="${productdetail.image}" name="hiddenimage">
                            <input type="file" class = "dProdEditFromImageUploadBtn dProdEditInpImg" accept="image/jpeg, image/png, image/jpg" name="file">
                          </td>
                        </tr>
                      </table>
                            
                    </div>
                  </div>
                  <div class="dProdEditButtonCrate">
                    <input type="submit" class="dProdEditFormBtn" data-btn="sumbit" value="Update">
<!--                    <input type="reset" class="dProdEditFormBtn" data-btn="reset" value="Reset">-->
                  </div>
                </form>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <script>
      var dProdEditInpImg = document.querySelector(".dProdEditInpImg");
      var dProdEditImageSloth = document.querySelector(".dProdEditImageSloth");
      dProdEditInpImg.addEventListener('change',()=>{
        dProdEditImageSloth.src = URL.createObjectURL(dProdEditInpImg.files[0]);
      });
    </script>
  </body>
</html>

<!-- 
  

<input type="file" accept="application/pdf,application/vnd.ms-excel" name="file">

name
description
brand
category
price
discoount
tags
release date
visibility
focused

 -->