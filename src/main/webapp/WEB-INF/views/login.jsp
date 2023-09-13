<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html><!--  This site was totally hand made -->
<!--  Last Published: Tue Sep 05 2023 16:28:50 GMT+0000 (Coordinated Universal Time)  -->
<html>
<head>
  <meta charset="utf-8">
  <title>Plume Versao 2.0</title>
  <meta content="width=device-width, initial-scale=1" name="viewport">
  <meta content="Webflow" name="generator">
  <link href="/css/normalize.css" rel="stylesheet" type="text/css">
  <link href="/css/webflow.css" rel="stylesheet" type="text/css">
  <link href="/css/styles.css" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com" rel="preconnect">
  <link href="https://fonts.gstatic.com" rel="preconnect" crossorigin="anonymous">
  <script src="https://ajax.googleapis.com/ajax/libs/webfont/1.6.26/webfont.js" type="text/javascript"></script>
  <script type="text/javascript">WebFont.load({  google: {    families: ["Ubuntu:300,300italic,400,400italic,500,500italic,700,700italic","Oswald:200,300,400,500,600,700","Inter:regular,500,600,700","Libre Baskerville:regular,italic,700","Volkhov:regular,italic,700,700italic","Noto Serif:regular,italic,700,700italic"]  }});</script>
  <script type="text/javascript">!function(o,c){var n=c.documentElement,t=" w-mod-";n.className+=t+"js",("ontouchstart"in o||o.DocumentTouch&&c instanceof DocumentTouch)&&(n.className+=t+"touch")}(window,document);</script>
  <link href="/images/Favicon 1-2.png" rel="shortcut icon" type="image/x-icon">
  <link href="/images/webclip.svg" rel="apple-touch-icon">
</head>
<body>
  <div class="w-users-userformpagewrap full-page-wrapper">
    <a href="/index/" class="form-page-logo-link w-inline-block"><img src="/images/Untitled-design-26_1.png" loading="lazy" alt="" class="form-page-logo"></a>
    <div class="w-users-userloginformwrapper admin-form-card">
      <form method="post" action="/auth/login-attempt">
        <div class="w-users-userformheader form-card-header">
          <h2 class="heading h3">Log in</h2>
          <p class="paragraph small">Fill in your log in details below.</p>
        </div>
        <input type="email" maxlength="256" placeholder="Your email" name="username" id="wf-log-in-email" class="text-field w-input" autocomplete="username" required="">
        <input type="password" maxlength="256" placeholder="Your password" name="password" id="wf-log-in-password" class="text-field w-input" required="" >
        <input type="submit" value="Log In" data-wait="Please wait..." class="w-users-userformbutton button w-button">
        <div class="w-users-userformfooter form-card-footer"><span>Don&#x27;t have an account?</span>
          <a href="/auth/signup">Sign Up</a>
        </div>
      </form>
      <div style="display:none" class="w-users-userformerrorstate form-error w-form-fail">
        <div class="user-form-error-msg" >We&#x27;re having trouble logging you in. Please try again, or contact us if you continue to have problems.</div>
      </div>
    </div>
    <a href="/index/reset-password" class="below-card-link">Forgot your password?</a>
  </div>
 <!-- <script src="https://d3e54v103j8qbb.cloudfront.net/js/jquery-3.5.1.min.dc5e7f18c8.js?site=64f615e4cfda04626e2eee44" type="text/javascript" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script> -->
  <!--<script src="/js/webflow.js" type="text/javascript"></script>-->
</body>
</html>