<!DOCTYPE html>
<html>
  <head>
    <title>Product | Details</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../css/style.css">
    <link rel="stylesheet" href="../css/stylex.css">
    <style>
      .dProdDtlBody{padding:0 1.6em;overflow:auto}
      .dProdDtlTitleSloth{font-size:28px;font-weight:600;letter-spacing:.05em}
      .dProdDtlSubTitleSloth{font-size:24px;font-weight:600;letter-spacing:.05em;overflow:hidden;}
      .dProdDtlMainContainer{height:calc(100% - 80px);}
      .dProdDtlLeftTrunk,.dProdDtlRightTrunk{overflow:auto;}
      .dProdDtlLeftTrunk::-webkit-scrollbar,.dProdDtlRightTrunk::-webkit-scrollbar {width: 1px;}
      
      /* dProdDtlLeftTrunk */
      .dProdDtlImageCrate{height:215px;width:205px;}
      .inrdProdDtlImageCrate{height:200px;width:190px;overflow:hidden}
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
    <div class="dProdDtlBody hw100 out">
      <div class="inrdProdDtlBody hw100 out">
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
            <div class="dProdDtlImageCrate pb10 p7 mb10 br3 bor borx3">
                <div class="inrdProdDtlImageCrate hw100 bor out">
                    <img src="image/tshirt2.jpg" alt="" class="w100">
                </div>
            </div>
            <table class="dProdDtlTableCrate pb15 w100 bor">
              <tr>
                <td>Name</td>
                <td>
                  Grey Strong Shoes
                </td>
              </tr>
              <tr>
                <td>Description</td>
                <td>
                  Its a shoes. Its color is grey.
                </td>
              </tr>
              <tr>
                <td>Brand</td>
                <td>
                  Nike
                </td>
              </tr>
              <tr>
                <td>Category</td>
                <td>
                  Male
                </td>
              </tr>
              <tr>
                <td>Price</td>
                <td>
                  NRS 8090
                </td>
              </tr>
              <tr>
                <td>Discount</td>
                <td>
                  0.03%
                </td>
              </tr>
              <tr>
                <td>Final price</td>
                <td>
                  NRS 8088
                </td>
              </tr>
              <tr>
                <td>Tags</td>
                <td>
                  shoes, male
                </td>
              </tr>
              <tr>
                <td>Size & Count</td>
                <td>
                  <table class="dProdDtlSizeCountTable bor">
                    <tr>
                      <td>Id</td>
                      <td>Size</td>
                      <td>Count</td>
                    </tr>
                    <tr>
                      <td>1</td>
                      <td>xxl</td>
                      <td>23</td>
                    </tr>
                  </table>
                </td>
              </tr>
              <tr>
                <td>Total count</td>
                <td>
                  32
                </td>
              </tr>
              <tr>
                <td>Release date</td>
                <td>
                  31-03-2023
                </td>
              </tr>
              <tr>
                <td>Visibility</td>
                <td>
                  True
                </td>
              </tr>
              <tr>
                <td>Focused</td>
                <td>
                  Feature, Popular, None
                </td>
              </tr>
            </table>
            <div class="dProdDtlButtonCrate flex bor">
              <a href="#" class="dProdDtlButtonSloth totext bor" data-btn="1">Edit</a>
              <a href="#" class="dProdDtlButtonSloth totext bor" data-btn="2">Delete</a>
            </div>
          </div>
          <div class="dProdDtlRightTrunk w60 out bor">
            <!-- -------------------- REVIEW LIST SLOTH -------------------- -->
            <%@include file="productReview.jsp" %>
          </div>
        </div>
      </div>
    </div>
  </body>
</html>
<!-- 

Name
Description
Image
Brand
Category
Price
Discount
Final price
Tags
Sizes & Count
Total count
Release date
Visibility

 -->