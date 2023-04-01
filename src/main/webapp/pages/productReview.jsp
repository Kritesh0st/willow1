<!DOCTYPE html>
<html>
  <head>
    <title>Product | Review</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../css/style.css">
    <link rel="stylesheet" href="../css/stylex.css">
    <style>
      .dProdRevBody{padding-left:1.6em;}

      .dProdRevReviewTrunk{overflow:auto;}
      .dProdRevSingleTrunk{box-shadow:0px 0px 4px #000;border-radius:3px;}
      .dProdRevCrate{height:40px;width:30px;margin:0 3px;}
      .dProdRevCrate[data-review="profile"]{overflow:hidden;border-radius:50%;width:40px;margin:0;}
      .dProdRevCrate[data-review="text"]{height:auto;font-size:15px;margin:0;}
      .dProdRevUsername{font-weight:bold;}
      .dProdRevIcon{cursor: pointer;}
      .dProdRevSavebtn{font-family:var(--ff5);padding:5px 20px;background:#5d93ec;margin-right:10px;transition:.3s;
        border-radius:2px;color:#fff;font-style: 16px;letter-spacing:.05em;font-weight: 300;}
      .dProdRevSavebtn:hover{background:#3B71CA;}
      .dProdRevSavedMsgSloth{font-size: 15px;}
    </style>
  </head>
  <body>
    <div class="dProdRevBody out bor hw100 flex fdc jcsb">
      <div class="dProdRevReviewTrunk flex fdc plr5 pt5 bor">
        
        <!-- For Each Sloth -->
        <div class="dProdRevSingleTrunk flex p8 mb15 bor non">
          <div class="dProdRevCrate borx3" data-review="profile">
            <img src="image/tshirt1.jpg" alt="" class="dProdRevProfileSloth bor w100">
          </div>
          <div class="dProdRevCrate fg1 flex fdc pl10  bor" data-review="text">
            <div class="dProdRevUsername pb3 bor">
              Kritesh Thapa
            </div>
            <div class="dProdRevUserReview bor">
              Lorem ipsum dolor sit amet consectetur adipisicing elit. Molestias beatae velit ex, eligendi sit illo quod aut nostrum architecto ratione itaque magni quis suscipit impedit odit cupiditate? Exercitationem, rerum dignissimos!
            </div>
          </div>
          <div class="dProdRevCrate bor" data-review="start">
            <img src="icons/start-fill0.png" alt="" onclick="" class="dProdRevIcon w100 bor">
            <img src="icons/start-golden.png" alt="" onclick="" class="dProdRevIcon w100 bor none">
          </div>
          <div class="dProdRevCrate bor" data-review="hide">
            <img src="icons/eye.png" alt="" onclick="" class="dProdRevIcon w100 bor">
            <img src="icons/eye-slash.png" alt="" onclick="" class="dProdRevIcon w100 bor none">
          </div>
          <div class="dProdRevCrate bor" data-review="delete">
            <img src="icons/trash.png" alt="" onclick="" class="dProdRevIcon w100 bor">
          </div>
        </div>
        <!-- For Each End Sloth -->
        <!-- This div below is hidden -->
        <div class="dProdRevSingleTrunk flex p8 mb15 bor none"> <!-- This div is hidden -->
          <div class="dProdRevCrate bor" data-review="profile">
            <img src="image/tshirt2.jpg" alt="" class="dProdRevProfileSloth borx w100">
          </div>
          <div class="dProdRevCrate fg1 flex fdc pl10  bor" data-review="text">
            <div class="dProdRevUsername pb3 bor">
              Kritesh Thapa
            </div>
            <div class="dProdRevUserReview bor">
              Lorem ipsum dolor sit amet consectetur adipisicing elit. Molestias beatae velit ex, eligendi sit illo quod aut nostrum architecto ratione itaque magni quis suscipit impedit odit cupiditate? Exercitationem, rerum dignissimos!
            </div>
          </div>
          <a href="#" class="dProdRevCrate bor" data-review="start">
            <img src="../icons/start-fill0.png" alt="" onclick="" class="dProdRevIcon w100 bor">
            <img src="../icons/start-golden.png" alt="" onclick="" class="dProdRevIcon w100 bor none">
          </a>
          <a href="#" class="dProdRevCrate bor" data-review="hide">
            <img src="../icons/eye.png" alt="" onclick="" class="dProdRevIcon w100 bor">
            <img src="../icons/eye-slash.png" alt="" onclick="" class="dProdRevIcon w100 bor none">
          </a>
          <a href="#" class="dProdRevCrate bor" data-review="delete">
            <img src="../icons/trash.png" alt="" onclick="" class="dProdRevIcon w100 bor">
          </a>
        </div>
      </div>
      <div class="dProdRevButtonCrate flex bor">
        <a href="#" class="dProdRevSavebtn totext">Save</a>
        <div class="dProdRevSavedMsgSloth flexmid ff5 borx none">
          Saved sucessfully
        </div>
      </div>
    </div>
  </body>
</html>
