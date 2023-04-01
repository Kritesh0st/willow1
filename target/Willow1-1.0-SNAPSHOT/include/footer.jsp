<!DOCTYPE html>
<html>
  <head>
    <title>Footer | 01</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../css/style.css">
    <link rel="stylesheet" href="../css/stylex.css">
    <style>
      .footerBody{height:auto;background:#1a1a1a;color:#ccc;padding:1em 2.2em;}
      .footertexts{font-family:var(--ff5);font-size:16px;font-weight:300;line-height:24px;letter-spacing:.05em;}
      .footerTopCrateSloth,.footerBotSloth{width:33%;}
      .footerTopCrateSloth{padding:80px 100px 70px 20px;}
      .footerTopTitleSloth[data-top-title]{font-size:26px;font-family:var(--ff5);font-weight:300;padding-bottom: 10px;
        letter-spacing:.05em;}

      .footerLogoImg{height:28px;width:28px;}
      .footerTopAhr,.footerTop3Ahr{color:#ccc;letter-spacing:.05em;}
      .footerTopAhr:hover,.footerTop3Ahr:hover{text-decoration: underline;}
      .footerLink{padding-left:20px;color:#ccc;text-decoration: none;letter-spacing:.05em;}
      .footerLink:hover{text-decoration: underline;}

      .footerSpanDecor{height:1px;width:100%;background:#999;}
    </style>
  </head>
  <body>
    <div class="footerBody bor flex fdc rel">
      <div class="footerTopCrate bor flex jcsb">
        <div class="footerTopCrateSloth footerTopCrateSloth1st bor flex fdc">
          <div class="footerTopTitleSloth bor" data-top-title="1">
            Willow
          </div>
          <div class="footerTop1stText footertexts bor">
            We believe in creating a seamless and enjoyable shopping experience
          </div>
        </div>
        <div class="footerTopCrateSloth footerTopCrateSloth2nd bor flex fdc">
          <div class="footerTopTitleSloth bor" data-top-title="2">
            Navigation Menu
          </div>
          <div class="footerTop2ndAnchorLinkCrate flex fdc bor">
            <div class="footerTop2LinkCrate bor aife flex">
              <img src="icons/home-fff.png" alt="" class="footerLogoImg bor mr7">
              <a href="#" class="footerTopAhr totext flex aic bor pb3" data-num="1">Home</a>
            </div>
            <div class="footerTop2LinkCrate bor aife flex">
              <img src="icons/package2-fff.png" alt="" class="footerLogoImg bor mr7">
              <a href="#" class="footerTopAhr totext flex aic bor pb3" data-num="2">Product</a>
            </div>
            <div class="footerTop2LinkCrate bor aife flex">
              <img src="icons/contact-fff.png" alt="" class="footerLogoImg bor mr7">
              <a href="#" class="footerTopAhr totext flex aic bor pb3" data-num="3">Contact</a>
            </div>
          </div>
        </div>
        <div class="footerTopCrateSloth footerTopCrateSloth3rd bor flex fdc">
          <div class="footerTopTitleSloth bor" data-top-title="3">
            Contact Us
          </div>
          <div class="footerTop3rdAnchorLinkCrate flex fdc bor">
            <div class="footerTop3LinkCrate bor aife flex">
              <img src="icons/phone-fff.png" alt="" class="footerLogoImg bor mr7">
              <a href="#" class="footerTop3Ahr totext flex aic bor pb3" data-num="1">+977 9818863189</a>
            </div>
            <div class="footerTop3LinkCrate bor aife flex">
              <img src="icons/message-fff.png" alt="" class="footerLogoImg bor mr7">
              <a href="#" class="footerTop3Ahr totext flex aic bor pb3" data-num="1">kritesh@gmail.com</a>
            </div>
            <div class="footerTop3LinkCrate bor aife flex">
              <img src="icons/location-fff.png" alt="" class="footerLogoImg bor mr7">
              <a href="#" class="footerTop3Ahr totext flex aic bor pb3" data-num="1">Kusunti, Lalitpur 44700</a>
            </div>
          </div>
        </div>
      </div>
      <span class="footerSpanDecor"></span>
      <div class="footerBottomCrate bor flex jcsb pt20 pb10">
        <div class="footerBotSloth footerBotSloth1st flexmid jcfs bor">
          <a href="#" class="footerLink" data-footer-bot-link="1">Privacy Policy</a>
        </div>
        <div class="footerBotSloth footerBotSloth2nd flexmid jcfs bor">
          <a href="#" class="footerLink" data-footer-bot-link="1">Terms of use</a>
        </div>
        <div class="footerBotSloth footerBotSloth3rd flexmid jcfs bor">
          <a href="#" class="footerLink" data-footer-bot-link="1">&copy;Copyright</a>
        </div>
      </div>
    </div>
  </body>
</html>
