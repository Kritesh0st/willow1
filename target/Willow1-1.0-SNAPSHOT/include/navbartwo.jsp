<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Support.index"%>
<%
String navtwopage = request.getParameter("page");
%>
<!DOCTYPE html>
<html>
  <head>
    <title>Navbar | 02</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../css/style.css">
    <link rel="stylesheet" href="../css/stylex.css">
    <style>
      .navbartwoBody{height:auto;padding:1.4em 2.2em 1em 2.2em;}
      .narbartwoTitle{font-family:var(--ff1);font-weight:600;font-size:28px;}
      .navbartwoLinks{font-family:var(--ff5);margin-left:1.5em;letter-spacing:.1em;font-size:16px;cursor: pointer;}
      .navtwoLogo{width:30px;height:30px;padding:4px;cursor: pointer;}
    </style>
  </head>
  <body>
    <div class="navbartwoBody bor">
      <div class="inrNavbartwo bor flex jcsb">
        <div class="narbartwoLeftCarte bor">
          <a href="user?page=index" class="narbartwoTitle totext">
            WILLOW
          </a>
        </div>
        <div class="narbartwoRightCarte bor flexmid jcfe">
        <%
          boolean toDisplayLoginsBool = false;
          if(!navtwopage.equals("signup")){toDisplayLoginsBool=true;}
          String toDisplaySignUp = new index().signedInOrOut(toDisplayLoginsBool);
          String toDisplaySignIn = new index().signedInOrOut(!toDisplayLoginsBool);
        %>
          <a href="#" class="navbartwoLinks totext flexmid bor">
            Home
            <img src="icons/globe.png" alt="" class="navtwoLogo bor">
          </a>
          <a href="user?page=signup" class="navbartwoLinks totext flexmid bor <%=toDisplaySignUp%>">
            Sign Up
            <img src="icons/globe.png" alt="" class="navtwoLogo bor">
          </a>
          <a href="user?page=signin" class="navbartwoLinks totext flexmid bor <%=toDisplaySignIn%>">
            Sign In
            <img src="icons/globe.png" alt="" class="navtwoLogo bor">
          </a>
          <a href="#" class="navbartwoLinks totext flexmid bor">
            Languge
            <img src="icons/globe.png" alt="" class="navtwoLogo bor">
          </a>
        </div>
      </div>
    </div>
  </body>
</html>
