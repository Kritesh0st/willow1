<!DOCTYPE html>
<html>
  <head>
    <title>Product | Add</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../css/style.css">
    <link rel="stylesheet" href="../css/stylex.css">
    <style>
      .dProdAddBody{padding:0 0 0 1.6em;}
      .inrDProdAddBody{overflow:hidden;}

      .dProdAddTitleSloth{font-size:28px;font-weight:600;letter-spacing:.05em}
      .dProdAddProdTrunk{width:76%;margin-right:1.6em;}
      .dProdAddTagsTrunk{width:24%;overflow: hidden;}
      .dProdAddSubTitleSloth{font-size:24px;font-weight:500;letter-spacing:.05em;}

      /* tags */
      .dProdAddSizeTable{border-spacing: 0px;}
      .dProdAddSizeCrate{height:500px;overflow:auto;}
      .dProdAddSizeCrate::-webkit-scrollbar {width: 1px;}
      .dProdAddSizeTable tr td{text-align:center;border:none;border-right:1px solid #333;border-bottom:1px solid #333;padding:5px;}
      .dProdAddSizeTable tr td:nth-child(1){width:10px;border-left:1px solid #333;}
      .dProdAddSizeTable tr:nth-child(1) td{border-top:1px solid #000;}
      .dProdAddSizeInput{width:100%;border:none;text-align: center;}
      .dProdAddSizeInput:focus{outline:none;}
     
      .dProdAddFormImageCrate{width:230px;}
      .dProdAddFromTitle{font-size:18px;width:25%;}
      .dProdAddFormInputCrate{width:75%;}
      .dProdAddFormInputSloth{font-size: 16px;}
      .dProdAddFormInputSloth:focus{outline:none;}
      .dProdAddFormInputSloth[data-input="textarea"]{resize:none;height: 100px;}

      .dProdAddFromImageSloth{height:240px;overflow:hidden;}
      .dProdAddFromImageUploadBtn::file-selector-button{padding:3px 10px;cursor: pointer;border:1px solid #666;
        border-radius:3px;transition:.3s;}
      .dProdAddFromImageUploadBtn::file-selector-button:hover{background:#ccc;}
      .dProdAddFromBtnSubmit,.dProdAddFromBtnReset{font-size:16px;padding:5px 20px;margin-right:10px;border-radius:3px;border:1px solid #3B71CA;
        cursor: pointer;color:#fff;transition:.3s;}
      .dProdAddFromBtnSubmit{background:#5d93ec;}
      .dProdAddFromBtnSubmit:hover{border:1px solid #5d93ec;background:#3B71CA;}
      .dProdAddFromBtnReset{border:1px solid #DC4C64;background:#fe6e86;}
      .dProdAddFromBtnReset:hover{border:1px solid #fe6e86;background:#DC4C64;}
    </style>
  </head>
  <body>
    <div class="dProdAddBody w100 out">
      <div class="inrDProdAddBody hw100 flex fdc out bor">
        <form  action="" method="post">
          <div class="dProdAddTitleSloth pb15 ff1 out">
            PRODUCT > Add
          </div>
          <div class="dProdAddBotTrukn h100 flex out bo">
            <div class="dProdAddProdTrunk bor out">
              <div class="dProdAddSubTitleSloth ff5 pb5 out">
                Product
              </div>
              <div class="dProdAddForm ptb10 flex bor">
                <div class="dProdAddFormTextsCrate fg1 bor">
                  <div class="dProdAddFormTrunk mb8 flex bor">
                    <div class="dProdAddFromTitle flex aic ff5 bor">Name</div>
                    <div class="dProdAddFormInputCrate bor">
                      <input type="text" class="dProdAddFormInputSloth ptb2 plr5 ff5 w100" data-input="text" placeholder="product name..." value="Rubber Shoes" name="name">
                    </div>
                  </div>
                  <div class="dProdAddFormTrunk mb8 flex bor">
                    <div class="dProdAddFromTitle flex ff5 bor">Description</div>
                    <div class="dProdAddFormInputCrate bor flex">
                      <textarea  class="dProdAddFormInputSloth ptb2 plr5 ff5 w100" data-input="textarea" placeholder="product description..." name="description">This is shoes</textarea>
                    </div>
                  </div>
                  <div class="dProdAddFormTrunk mb8 flex bor none">
                    <div class="dProdAddFromTitle flex ff5 bor">Image</div>
                    <div class="dProdAddFormInputCrate bor flex">
                      <input type="file" class="dProdAddFromImageUploadBtn w100 bor" value="Upload" name="image">
                    </div>
                  </div>
                  <div class="dProdAddFormTrunk mb8 flex bor">
                    <div class="dProdAddFromTitle flex aic ff5 bor">Category</div>
                    <div class="dProdAddFormInputCrate bor">
                      <select class="dProdAddFormInputSloth ptb2 plr5 ff5 w100" name="category">
                        <option value="both" class="dProdAddFromOption">
                          Both
                        </option>
                        <option value="male" class="dProdAddFromOption">
                          Male
                        </option>
                        <option value="female" class="dProdAddFromOption">
                          Female
                        </option>
                      </select>
                      <!-- <input type="text"  data-input="text" placeholder="product count..." value="14"> -->
                    </div>
                  </div>
                  <div class="dProdAddFormTrunk mb8 flex bor">
                    <div class="dProdAddFromTitle flex aic ff5 bor">Price</div>
                    <div class="dProdAddFormInputCrate bor">
                      <input type="text" class="dProdAddFormInputSloth ptb2 plr5 ff5 w100" data-input="text" placeholder="product price..." value="Rubber Shoes" name="price">
                    </div>
                  </div>
                  <div class="dProdAddFormTrunk mb8 flex bor none">
                    <div class="dProdAddFromTitle flex aic ff5 bor">Size</div>
                    <div class="dProdAddFormInputCrate bor">
                      <input type="text" class="dProdAddFormInputSloth ptb2 plr5 ff5 w100" data-input="text" placeholder="product size...(Ex:30,31,32 OR x,xl,xxl)" value="30,31,32">
                    </div>
                  </div>
                  <div class="dProdAddFormTrunk mb8 flex bor">
                    <div class="dProdAddFromTitle flex aic ff5 bor">Tags</div>
                    <div class="dProdAddFormInputCrate bor">
                      <input type="text" class="dProdAddFormInputSloth ptb2 plr5 ff5 w100" data-input="text" placeholder="product tags..." value="jeans, pant" name="tags">
                    </div>
                  </div>
                  <div class="dProdAddFormTrunk mb8 flex bor">
                    <div class="dProdAddFromTitle flex aic ff5 bor">Brand</div>
                    <div class="dProdAddFormInputCrate bor">
                      <input type="text" class="dProdAddFormInputSloth ptb2 plr5 ff5 w100" data-input="text" placeholder="product brand..." value="Nike" name="brand">
                    </div>
                  </div>
                  <div class="dProdAddFormTrunk mb8 flex bor none">
                    <div class="dProdAddFromTitle flex aic ff5 bor">Count</div>
                    <div class="dProdAddFormInputCrate bor">
                      <input type="text" class="dProdAddFormInputSloth ptb2 plr5 ff5 w100" data-input="text" placeholder="product count..." value="14">
                    </div>
                  </div>
                  <div class="dProdAddFromButtonTrunk pt10 flex bor">
                    <input type="submit" class="dProdAddFromBtnSubmit" value="Upload">
                    <input type="reset" class="dProdAddFromBtnReset" value="Reset">
                  </div>
                </div>
                <div class="dProdAddFormImageCrate pl20 bor">
                  <div class="dProdAddFromImageSloth mb10 borx2 br3">
                    <img src="../image/noimage.jpg" alt="" class="dProdAddFromImage w100 bor">
                  </div>
                  <input type="file" class="dProdAddFromImageUploadBtn w100" value="Upload">
                </div>
              </div>
            </div>
            <div class="dProdAddTagsTrunk bor flex fdc out">
              <div class="dProdAddSubTitleSloth ff5 pb5 out">
                Size & Count
              </div>
              <div class="dProdAddSizeCrate ptb10 bor">
                <table class="dProdAddSizeTable w100" cell>
                  <tr>
                    <td class="ff5">S.N.</td>
                    <td class="ff5">Size</td>
                    <td class="ff5">Count</td>
                  </tr>
                  <tr>
                    <td class="ff5 ">1</td>
                    <td class="ff5"><input type="text" class="dProdAddSizeInput" data-input="size" placeholder="size..." value="xl" name="size1"></td>
                    <td class="ff5"><input type="text" class="dProdAddSizeInput" data-input="size" placeholder="count..." value="12" name="count1"></td>
                  </tr>
                  <tr>
                    <td class="ff5 ">2</td>
                    <td class="ff5"><input type="text" class="dProdAddSizeInput" data-input="size" placeholder="size..." value="" name="size2"></td>
                    <td class="ff5"><input type="text" class="dProdAddSizeInput" data-input="size" placeholder="count..." value="" name="count2"></td>
                  </tr>
                  <tr>
                    <td class="ff5 ">3</td>
                    <td class="ff5"><input type="text" class="dProdAddSizeInput" data-input="size" placeholder="size..." value="" name="size3"></td>
                    <td class="ff5"><input type="text" class="dProdAddSizeInput" data-input="size" placeholder="count..." value="" name="count3"></td>
                  </tr>
                  <tr>
                    <td class="ff5 ">4</td>
                    <td class="ff5"><input type="text" class="dProdAddSizeInput" data-input="size" placeholder="size..." value="" name="size4"></td>
                    <td class="ff5"><input type="text" class="dProdAddSizeInput" data-input="size" placeholder="count..." value="" name="count4"></td>
                  </tr>
                  <tr>
                    <td class="ff5 ">5</td>
                    <td class="ff5"><input type="text" class="dProdAddSizeInput" data-input="size" placeholder="size..." value="" name="size5"></td>
                    <td class="ff5"><input type="text" class="dProdAddSizeInput" data-input="size" placeholder="count..." value="" name="count5"></td>
                  </tr>
                  <tr>
                    <td class="ff5 ">6</td>
                    <td class="ff5"><input type="text" class="dProdAddSizeInput" data-input="size" placeholder="size..." value="" name="size6"></td>
                    <td class="ff5"><input type="text" class="dProdAddSizeInput" data-input="size" placeholder="count..." value="" name="count6"></td>
                  </tr>
                  <tr>
                    <td class="ff5 ">7</td>
                    <td class="ff5"><input type="text" class="dProdAddSizeInput" data-input="size" placeholder="size..." value="" name="size7"></td>
                    <td class="ff5"><input type="text" class="dProdAddSizeInput" data-input="size" placeholder="count..." value="" name="count7"></td>
                  </tr>
                  <tr>
                    <td class="ff5 ">8</td>
                    <td class="ff5"><input type="text" class="dProdAddSizeInput" data-input="size" placeholder="size..." value="" name="size8"></td>
                    <td class="ff5"><input type="text" class="dProdAddSizeInput" data-input="size" placeholder="count..." value="" name="count8"></td>
                  </tr>
                  <tr>
                    <td class="ff5 ">9</td>
                    <td class="ff5"><input type="text" class="dProdAddSizeInput" data-input="size" placeholder="size..." value="" name="size9"></td>
                    <td class="ff5"><input type="text" class="dProdAddSizeInput" data-input="size" placeholder="count..." value="" name="count9"></td>
                  </tr>
                  <tr>
                    <td class="ff5 ">10</td>
                    <td class="ff5"><input type="text" class="dProdAddSizeInput" data-input="size" placeholder="size..." value="" name="size10"></td>
                    <td class="ff5"><input type="text" class="dProdAddSizeInput" data-input="size" placeholder="count..." value="" name="count10"></td>
                  </tr>
                  <tr>
                    <td class="ff5 ">11</td>
                    <td class="ff5"><input type="text" class="dProdAddSizeInput" data-input="size" placeholder="size..." value="" name="size11"></td>
                    <td class="ff5"><input type="text" class="dProdAddSizeInput" data-input="size" placeholder="count..." value="" name="count11"></td>
                  </tr>
                  <tr>
                    <td class="ff5 ">12</td>
                    <td class="ff5"><input type="text" class="dProdAddSizeInput" data-input="size" placeholder="size..." value="" name="size12"></td>
                    <td class="ff5"><input type="text" class="dProdAddSizeInput" data-input="size" placeholder="count..." value="" name="count12"></td>
                  </tr>
                  <tr>
                    <td class="ff5 ">13</td>
                    <td class="ff5"><input type="text" class="dProdAddSizeInput" data-input="size" placeholder="size..." value="" name="size13"></td>
                    <td class="ff5"><input type="text" class="dProdAddSizeInput" data-input="size" placeholder="count..." value="" name="count13"></td>
                  </tr>
                  <tr>
                    <td class="ff5 ">14</td>
                    <td class="ff5"><input type="text" class="dProdAddSizeInput" data-input="size" placeholder="size..." value="" name="size14"></td>
                    <td class="ff5"><input type="text" class="dProdAddSizeInput" data-input="size" placeholder="count..." value="" name="count14"></td>
                  </tr>
                  <tr>
                    <td class="ff5 ">15</td>
                    <td class="ff5"><input type="text" class="dProdAddSizeInput" data-input="size" placeholder="size..." value="" name="size15"></td>
                    <td class="ff5"><input type="text" class="dProdAddSizeInput" data-input="size" placeholder="count..." value="" name="count15"></td>
                  </tr>
                </table>
              </div>
            </div>
          </div>
        </form>
      </div>
    </div>
  </body>
</html>
<!-- 

name
Description
Image
Brand
Category - male female both
Price
Discount
Final price
Tags
Sizes & Count
Total count
Release date
Visibility

-->