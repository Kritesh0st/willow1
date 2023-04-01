<!DOCTYPE html>
<html>
  <head>
    <title>Product | Focused</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../css/style.css">
    <link rel="stylesheet" href="../css/stylex.css">
    <style>
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
    <div class="dProdFocBody hw100 outx2">
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
                </tr>
                <tr>
                  <td>
                    1
                  </td>
                  <td>
                    Grey Strong Shoes
                  </td>
                  <td>
                    Nike
                  </td>
                  <td>
                    8090
                  </td>
                  <td>
                    29,30,31,32,33
                  </td>
                  <td>
                    18
                  </td>
                  <td>
                    <input type="checkbox" class="dProdFocFeCheckbox" onclick="">
                  </td>
                  <td>
                    <input type="checkbox" class="dProdFocFeCheckbox" onclick="">
                  </td>
                  <td>
                    <input type="checkbox" class="dProdFocFeCheckbox" onclick="">
                  </td>
                </tr>
              </table>
            </div>
        
            <div class="dProdFocButtonCrate flex bor">
              <input type="submit" class="dProdFocSavebtn" value="Save">
              <div class="dProdFocSavedMsgSloth flexmid ff5 borx none">
                Saved sucessfully
              </div>
            </div>

          </form>

        </div>
      </div>
    </div>
  </body>
</html>
<!-- 
<td>Id</td>
<td>Name</td>
<td>Brand</td>
<td>Price</td>
<td>Discount</td>
<td>Avilable size</td>
<td>Total count</td>
<td>Visibility</td>

id
name
brand
price
discount
avilable size
total count


id size count clothid
1   x    5      15
2   xl   6      15
3   x    5      18
4   x    6      20

 -->