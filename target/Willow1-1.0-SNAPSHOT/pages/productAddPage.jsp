<!DOCTYPE html>
<html>
  <head>
    <title>Product | Add</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/stylex.css">
<!--    <link rel="stylesheet" href="../css/style.css">
    <link rel="stylesheet" href="../css/stylex.css">-->
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

      .dProdAddBody{padding:0 1.6em;}
      .dProdAddTitleSloth{font-size:28px;font-weight:600;letter-spacing:.05em}
      /* .dProdAddFormBody{height:calc(100% - 40px);} */
      .dProdAddCol[data-col="1"]{order:1;}
      .dProdAddCol[data-col="2"]{order:2;}
      .dProdAddCol[data-col="3"]{order:3;}
      .dProdAddSubTitleSloth{font-family:var(--ff5);;font-size:24px;font-weight:500;letter-spacing:.05em;padding-bottom: 15px;}

      /* dProdAddCol[data-col="1"] */
      
      .dProdAddTextTable tr td{font-family:var(--ff5);font-size:18px;padding:5px 0;}
      .dProdAddTextTable tr:first-child td{padding-top: 0;}
      .dProdAddTableInput{font-family:var(--ff5);font-size:16px;width:100%;padding:2px 5px;border:1px solid #333;border-radius:3px;}
      .dProdAddTableInput:focus{outline:none;}
      .dProdAddTableInput[data-type="textarea"]{height:100px;resize:none;}
      .dProdAddFromImageUploadBtn::file-selector-button{padding:5px 10px;cursor: pointer;border:none;background: #5d93ec;
        border-radius:3px;transition:.3s;color:#fff;}
      .dProdAddFromImageUploadBtn::file-selector-button:hover{background:#3B71CA;}
      /* dProdAddCol[data-col="2"] */
      .dProdAddImageCrate{height:220px;width:190px;}
      

      /* dProdAddCol[data-col="3"] */
      .dProdAddSizeCountTable{width:220px;border-spacing: 0px;}
      .dProdAddSizeCountTable tr td{width:100px;text-align: center;font-family:var(--ff5);font-size:16px;
        border:1px solid #333;border-top:none;border-left:none;}
      .dProdAddSizeCountTable tr:first-child td{border-top: 1px solid #333;}
      .dProdAddSizeCountTable tr td:first-child{border-left: 1px solid #333;}
      .dProdAddSizeCountTable tr td:nth-child(1){width:40px;}
      .dProdAddSizeCountTable tr td input{text-align: center;font-family:var(--ff5);font-size:15px;width:100%;border:none;padding:2px;}
      .dProdAddSizeCountTable tr td input:focus{outline:none;}

      /* dProdAddFormBtn */
      .dProdAddFormBtn{font-size:16px;padding:5px 20px;margin-right:10px;border-radius:3px;background: #5d93ec;
        cursor: pointer;color:#fff;transition:.3s;border:none;}
      .dProdAddFormBtn:hover{background:#3B71CA;}
      .dProdAddFormBtn[data-btn="reset"]{background:#fe6e86;}
      .dProdAddFormBtn[data-btn="reset"]:hover{background:#DC4C64;}
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
          <div class="dashConatinerCrate hw100 flex bor" data-for="add">
            <!-- for product add -->
            <div class="dProdAddBody w100 bor">
              <div class="inrDProdAddBody hw100 flex fdc bor">
                <div class="dProdAddTitleSloth ff1 pb15">
                  PRODUCT > Add
                </div>
                <form action="user?page=productadd" class="dProdAddFormBody fg1 flex fdc bor" enctype="multipart/form-data" method="post">
                  <div class="dProdAddColumnTrunk flex hw100 bor">
                    
                    <div data-col="3" class="dProdAddCol pl20 bor">
                      <div class="dProdAddSubTitleSloth">Size & Count</div>
                      <table class="dProdAddSizeCountTable flex w100 bor">
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
                        <tr><td>1</td><td><input type='text' class='dProdAddSize' oninput="dProdAddFormOnchange(event)" value="x" placeholder='  size..' name='size1'></td><td><input type='text' class='dProdAddCount' oninput="dProdAddFormOnchange(event)" placeholder='  count..' value="5" name='count1'></td></tr>
                        <tr><td>2</td><td><input type='text' class='dProdAddSize' oninput="dProdAddFormOnchange(event)" value="xl" placeholder='  size..' name='size2'></td><td><input type='text' class='dProdAddCount' oninput="dProdAddFormOnchange(event)" placeholder='  count..' value="4" name='count2'></td></tr>
                        <tr><td>3</td><td><input type='text' class='dProdAddSize' oninput="dProdAddFormOnchange(event)" value="xxl" placeholder='  size..' name='size3'></td><td><input type='text' class='dProdAddCount' oninput="dProdAddFormOnchange(event)" placeholder='  count..' value="3" name='count3'></td></tr>
                        <tr><td>4</td><td><input type='text' class='dProdAddSize' oninput="dProdAddFormOnchange(event)" value="xxxl" placeholder='  size..' name='size4'></td><td><input type='text' class='dProdAddCount' oninput="dProdAddFormOnchange(event)" placeholder='  count..' value="6" name='count4'></td></tr>
                        <tr><td>5</td><td><input type='text' class='dProdAddSize' oninput="dProdAddFormOnchange(event)" value="" placeholder='  size..' name='size5'></td><td><input type='text' class='dProdAddCount' oninput="dProdAddFormOnchange(event)" placeholder='  count..' value="" name='count5'></td></tr>
                        <tr><td>6</td><td><input type='text' class='dProdAddSize' oninput="dProdAddFormOnchange(event)" value="" placeholder='  size..' name='size6'></td><td><input type='text' class='dProdAddCount' oninput="dProdAddFormOnchange(event)" placeholder='  count..' value="" name='count6'></td></tr>
                        <tr><td>7</td><td><input type='text' class='dProdAddSize' oninput="dProdAddFormOnchange(event)" value="" placeholder='  size..' name='size7'></td><td><input type='text' class='dProdAddCount' oninput="dProdAddFormOnchange(event)" placeholder='  count..' value="" name='count7'></td></tr>
                        <tr><td>8</td><td><input type='text' class='dProdAddSize' oninput="dProdAddFormOnchange(event)" value="" placeholder='  size..' name='size8'></td><td><input type='text' class='dProdAddCount' oninput="dProdAddFormOnchange(event)" placeholder='  count..' value="" name='count8'></td></tr>
                        <tr><td>9</td><td><input type='text' class='dProdAddSize' oninput="dProdAddFormOnchange(event)" value="" placeholder='  size..' name='size9'></td><td><input type='text' class='dProdAddCount' oninput="dProdAddFormOnchange(event)" placeholder='  count..' value="" name='count9'></td></tr>
                        <tr><td>10</td><td><input type='text' class='dProdAddSize' oninput="dProdAddFormOnchange(event)" value="" placeholder='  size..' name='size10'></td><td><input type='text' class='dProdAddCount' oninput="dProdAddFormOnchange(event)" placeholder='  count..' value="" name='count10'></td></tr>
                        <!-- <tr><td>11</td><td><input type='text' class='dProdAddSize' oninput="dProdAddFormOnchange(event)" placeholder='  size..' name='size11'></td><td><input type='text' class='dProdAddCount' oninput="dProdAddFormOnchange(event)" placeholder='  count..' name='count11'></td></tr>
                        <tr><td>12</td><td><input type='text' class='dProdAddSize' oninput="dProdAddFormOnchange(event)" placeholder='  size..' name='size12'></td><td><input type='text' class='dProdAddCount' oninput="dProdAddFormOnchange(event)" placeholder='  count..' name='count12'></td></tr>
                        <tr><td>13</td><td><input type='text' class='dProdAddSize' oninput="dProdAddFormOnchange(event)" placeholder='  size..' name='size13'></td><td><input type='text' class='dProdAddCount' oninput="dProdAddFormOnchange(event)" placeholder='  count..' name='count13'></td></tr>
                        <tr><td>14</td><td><input type='text' class='dProdAddSize' oninput="dProdAddFormOnchange(event)" placeholder='  size..' name='size14'></td><td><input type='text' class='dProdAddCount' oninput="dProdAddFormOnchange(event)" placeholder='  count..' name='count14'></td></tr>
                        <tr><td>15</td><td><input type='text' class='dProdAddSize' oninput="dProdAddFormOnchange(event)" placeholder='  size..' name='size15'></td><td><input type='text' class='dProdAddCount' oninput="dProdAddFormOnchange(event)" placeholder='  count..' name='count15'></td></tr> -->
                      </table>
                    </div>
                    <div data-col="2" class="dProdAddCol pl20 flex fdc bor">
                      <div class="dProdAddSubTitleSloth">Image</div>
                      <div class="dProdAddImageCrate flex borx1 br3">
                        <img src="../image/noimage.jpg" alt="" class="dProdAddImageSloth w100">
                      </div>
                    </div>
                    <div data-col="1" class="dProdAddCol fg1 bor">
                      <div class="dProdAddSubTitleSloth">Product</div>
                      <table class="dProdAddTextTable w100 bor">
                         <tr>
                          <td>
                            Name
                          </td>
                          <td>
                            <input type="text" class="dProdAddTableInput" data-type="text" oninput="dProdAddFormOnchange(event)" value="Orange sweater" placeholder="product name..." name="name">
                          </td>
                        </tr>
                        <tr>
                          <td>
                            Description
                          </td>
                          <td>
                            <textarea class="dProdAddTableInput" data-type="textarea" oninput="dProdAddFormOnchange(event)"  placeholder="product description..." name="description">This is a organge sweater.</textarea>
                          </td>
                        </tr>
                        <tr>
                          <td>
                            Category
                          </td>
                          <td>
                            <select class="dProdAddTableInput" data-type="select" oninput="dProdAddFormOnchange(event)"  name="select">
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
                            <input type="text" class="dProdAddTableInput" data-type="text" oninput="dProdAddFormOnchange(event)" value="3030" placeholder="product price..." name="price">
                          </td>
                        </tr>
                        <tr>
                          <td>
                            Tags
                          </td>
                          <td>
                            <input type="text" class="dProdAddTableInput" data-type="text" oninput="dProdAddFormOnchange(event)" value="ornage, sweater" placeholder="product tags..." name="tags">
                          </td>
                        </tr>
                        <tr>
                          <td>
                            Brand
                          </td>
                          <td>
                            <input type="text" class="dProdAddTableInput" data-type="text" oninput="dProdAddFormOnchange(event)" value="idk" placeholder="product brand..." name="brand">
                          </td>
                        </tr>
                        <tr>
                          <td>
                            Image
                          </td>
                          <td>
                            <input type="file" class = "dProdAddFromImageUploadBtn dProdAddInpImg" oninput="dProdAddFormOnchange(event)" accept="image/jpeg, image/png, image/jpg" name="file">
                          </td>
                        </tr>
                        <tr>
                          <td colspan="2" class="dPordAddFormWrongMsg ff5">
                            You need to fill up all the input of form.
                          </td>
                        </tr>
                      </table>
                    </div>
                  </div>
                  <div class="dProdAddButtonCrate">
                    <input type="submit" class="dProdAddFormBtn" data-btn="sumbit" value="Upload">
                    <input type="reset" class="dProdAddFormBtn" data-btn="reset" value="Reset">
                  </div>
                </form>
              </div>
            </div>
           
          </div>
        </div>
      </div>
    </div>
    <script>
      var dProdAddInpImg = document.querySelector(".dProdAddInpImg");
      var dProdAddImageSloth = document.querySelector(".dProdAddImageSloth");
      var dPordAddFormWrongMsg = document.querySelector(".dPordAddFormWrongMsg");
      var dProdAddTableInput = document.querySelectorAll(".dProdAddTableInput");
      var dProdAddFormBtn = document.querySelectorAll(".dProdAddFormBtn");
      var dProdAddSize = document.querySelectorAll(".dProdAddSize");
      var dProdAddCount = document.querySelectorAll(".dProdAddCount");

      dProdAddInpImg.addEventListener('change',()=>{
        dProdAddImageSloth.src = URL.createObjectURL(dProdAddInpImg.files[0]);
      });
      
      function dProdAddFormOnchange(event){
        for(var a=0;a<dProdAddTableInput.length;a++){
          if(dProdAddTableInput[a].value!="" && dProdAddInpImg.files.length!=0 && dProdAddSize[0].value!="" && dProdAddCount[0].value!=""){
            dProdAddFormBtn.disabled = false;
            dPordAddFormWrongMsg.innerText = "You can now submit the form"
          }
          else{
            dProdAddFormBtn.disabled = true;
            dPordAddFormWrongMsg.innerText = "You need to fill up all the input before submitting the form."
            break;
          }
        }
      }
      function cc(){
        var a = " <tr><td>";
        var b = "</td><td><input type='text' class='dProdAddSize' placeholder='  size..' name='size";
        var c = "'></td><td><input type='text' class='dProdAddCount' placeholder='  count..' name='count";
        var d = "'></td></tr>";
        for(var i=1;i<=15;i++){
          console.log(a+i+b+i+c+i+d)
        }
      }
    </script>
  </body>
</html>