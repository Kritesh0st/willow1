<!DOCTYPE html>
<html>
  <head>
    <title>Product | List</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../css/style.css">
    <link rel="stylesheet" href="../css/stylex.css">
    <style>
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
    <div class="dProdListBody hw100 outx2">
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
                0.03%
              </td>
              <td>
                29,30,31,32,33
              </td>
              <td>
                18
              </td>
              <td>
                True
              </td>
              <td><a href="#" class="dProdListDetailLink txtx">
                Details
              </a></td>
            </tr>

          </table>
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