<%@page import="Support.index"%>
<%
String usercheck = (String) session.getAttribute("usercheck");
String username = (String) session.getAttribute("username");
boolean toDisplayLoginsBool = false;
String firstname = "Hello";
if(username!=null){
    toDisplayLoginsBool=true;
    firstname = new index().extractFirstName(username);
}          
String toDisplayUsername = new index().signedInOrOut(toDisplayLoginsBool);
String toDisplaySignIn = new index().signedInOrOut(!toDisplayLoginsBool);
%>
<!DOCTYPE html>
<html>
  <head>
    <title>Navbar | 01</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../css/style.css">
    <link rel="stylesheet" href="../css/stylex.css">
    <style>
      .navbarBody{height:auto;padding:1.4em 2.2em 1em 2.2em;}
      .nav_title{font-family:var(--ff1);font-weight:600;font-size:28px;}
      .nav_searchbox{width:30em;}
      .nav_logo{width:30px;height:30px;padding:4px;cursor: pointer;}
      .nav_Searchlogo_search{height:28px;width:28px;}
      .nav_Searchlogo_times{height:24px;width:24px;}

      .nav_li_signin:hover .nav_signin_option{display:block;transition:.3s;z-index:3;}
      .nav_li_language:hover .nav_language_option{display:block;}
      .nav_li{margin-left:1.5em;}
      .nav_ahr{font-family:var(--ff5);text-decoration: none;color:#000;letter-spacing:.1em;font-size:16px;cursor: pointer;}
      .nav_logo_downarrow{width:22px;height:22px;margin-top:5px;cursor: pointer;}
      .nav_input_Search{font-family:var(--ff5);letter-spacing:.1em;padding:0 10px;border:none;}
      .nav_input_Search:focus {outline:none;}
      .nav_language_option{top:30px;left:0;display: none;}
      .nav_lang_ne{padding:3px 10px;margin-top:5px;cursor: pointer;}

      .nav_signin_option{width:360px;top:30px;padding:16px;display: none;}
      .nav_signin_top{padding-bottom: 8px;}
      .nav_signin_title{font-size:20px;font-weight:500;letter-spacing:0.05em;}
      .nav_signin_signout{letter-spacing: 0.1em}
      .nav_sigin_li{padding:8px 0;}
      .nav_sigin_logo{height:20px;width:20px;}
      .nav_signin_ahr{text-decoration: none;color: #000;margin-left:15px;}
      .nav_signin_ahr:hover .nav_sigin_li_span{background:#000;width:100%;height:2px;bottom:-1px;transition:.3s;}
      
      .nav_signin_mid_title{font-size:20px;font-weight:500;letter-spacing:0.05em;padding-top:10px;}
    </style>
  </head>
  <body>
    <div class="navbarBody bor">
      <div class="nav_inrbody bor flex jcsb">
        <div class="nav_left bor">
          <a href="user?page=index" class="nav_title totext">
            WILLOW x<%=toDisplayLoginsBool%>y
          </a>
        </div>
        <div class="nav_mid bor fg1 flex jcc">
          <div class="nav_searchbox borx2 br3 flex">
            <div class="nav_searchbox_left bor flexmid">
              <img src="icons/search.png" alt="" class="nav_logo nav_Searchlogo_search bor">
            </div>
            <div class="nav_searchbox_mid bor fg1">
              <input type="text" class="nav_input_Search bor hw100" placeholder="Search for products">
            </div>
            <div class="nav_searchbox_right bor flexmid">
              <img src="icons/times.png" alt="" class="nav_logo nav_Searchlogo_times bor">
            </div>
          </div>
        </div>
        <div class="nav_right bor">
          <ul class="nav_ulbox bor flex">
            <li class="nav_li nav_li_signin bor flexmid rel <%=toDisplayUsername%>">
              <a href="user?page=profile" class="nav_ahr bor flexmid">Hi, <%=firstname%></a>&nbsp;
              <img src="icons/arrow-down.png" alt="" class="nav_logo nav_logo_downarrow bor">
              <div class="nav_signin_option borx3 abs bgw zi2 br3">
                <div class="nav_signin_top bor flex jcsb">
                  <div class="nav_signin_title bor"><%=firstname%>'s Account</div>
                  <a href="user?page=signout" class="nav_signin_signout bor flexmid totext">Sign Out</a>
                </div>
                <div class="nav_signin_mid bor">
                  <ul class="nav_signin_ul bor">
                    <li class="nav_sigin_li bor flex">
                      <img src="../icons/cart.png" alt="" class="nav_sigin_logo nav_sigin_logo_cart bor">
                      <a href="#" class="nav_signin_ahr flex bor rel">
                        Purchase
                        <span class="nav_sigin_li_span abs"></span>
                      </a>
                    </li>
                    <li class="nav_sigin_li bor flex">
                      <img src="../icons/cart.png" alt="" class="nav_sigin_logo nav_sigin_logo_cart bor">
                      <a href="#" class="nav_signin_ahr flex bor rel">
                        Purchase
                        <span class="nav_sigin_li_span abs"></span>
                      </a>
                    </li>
                    <li class="nav_sigin_li bor flex">
                      <img src="../icons/cart.png" alt="" class="nav_sigin_logo nav_sigin_logo_cart bor">
                      <a href="#" class="nav_signin_ahr flex bor rel">
                        Purchase
                        <span class="nav_sigin_li_span abs"></span>
                      </a>
                    </li>
                    <li class="nav_sigin_li bor flex">
                      <img src="../icons/cart.png" alt="" class="nav_sigin_logo nav_sigin_logo_cart bor">
                      <a href="#" class="nav_signin_ahr flex bor rel">
                        Purchase
                        <span class="nav_sigin_li_span abs"></span>
                      </a>
                    </li>
                    <li class="nav_sigin_li bor flex">
                      <img src="../icons/cart.png" alt="" class="nav_sigin_logo nav_sigin_logo_cart bor">
                      <a href="#" class="nav_signin_ahr flex bor rel">
                        Purchase
                        <span class="nav_sigin_li_span abs"></span>
                      </a>
                    </li>
                  </ul>
                </div>
                <div class="nav_signin_mid_title bor">
                  Account Setting
                </div>
                <div class="nav_signin_mid bor">
                  <ul class="nav_signin_ul bor">
                    <li class="nav_sigin_li bor flex">
                      <img src="../icons/cart.png" alt="" class="nav_sigin_logo nav_sigin_logo_cart bor">
                      <a href="#" class="nav_signin_ahr flex bor rel">
                        Purchase
                        <span class="nav_sigin_li_span abs"></span>
                      </a>
                    </li>
                    <li class="nav_sigin_li bor flex">
                      <img src="../icons/cart.png" alt="" class="nav_sigin_logo nav_sigin_logo_cart bor">
                      <a href="#" class="nav_signin_ahr flex bor rel">
                        Purchase
                        <span class="nav_sigin_li_span abs"></span>
                      </a>
                    </li>
                  </ul>
                </div>
              </div>
            </li>
            <li class="nav_li bor flexmid <%=toDisplaySignIn%>">
              <a href="user?page=signin" class="nav_ahr bor flexmid">Sign In</a>&nbsp;
              <img src="icons/signin.png" alt="" class="nav_logo nav_logo_cart bor">
            </li>
            <li class="nav_li bor flexmid">
              <a href="user?page=cart" class="nav_ahr bor flexmid">Cart</a>&nbsp;
              <img src="icons/cart.png" alt="" class="nav_logo nav_logo_cart bor">
            </li>
            <li class="nav_li bor flexmid">
              <a href="user?page=purchased" class="nav_ahr bor flexmid">Purchased</a>&nbsp;
              <img src="icons/package.png" alt="" class="nav_logo nav_logo_cart bor">
            </li>
            
          </ul>
        </div>
      </div>
    </div>
  </body>
</html>
