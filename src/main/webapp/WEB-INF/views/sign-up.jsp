<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html><!-- This site was totally hand made -->
<!-- Last Published: Tue Sep 05 2023 16:28:50 GMT+0000 (Coordinated Universal Time) -->
<html data-wf-page="64f615e4cfda04626e2eeed0" data-wf-site="64f615e4cfda04626e2eee44">
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
    <script type="text/javascript">WebFont.load({google: {families: ["Ubuntu:300,300italic,400,400italic,500,500italic,700,700italic", "Oswald:200,300,400,500,600,700", "Inter:regular,500,600,700", "Libre Baskerville:regular,italic,700", "Volkhov:regular,italic,700,700italic", "Noto Serif:regular,italic,700,700italic"]}});</script>
    <script type="text/javascript">!function (o, c) {
        var n = c.documentElement, t = " w-mod-";
        n.className += t + "js", ("ontouchstart" in o || o.DocumentTouch && c instanceof DocumentTouch) && (n.className += t + "touch")
    }(window, document);</script>
    <link href="/images/Favicon 1-2.png" rel="shortcut icon" type="image/x-icon">
    <link href="/images/webclip.svg" rel="apple-touch-icon">
</head>
<body>
<div class="w-users-userformpagewrap full-page-wrapper">
    <a href="/index/" class="form-page-logo-link w-inline-block"><img src="/images/Untitled-design-26_1.png"
                                                                      loading="lazy" alt="" class="form-page-logo"></a>
    <div class="w-users-usersignupformwrapper admin-form-card">

        <form method="post" action="/auth/register" id="registrationform">
            <div class="w-users-userformheader form-card-header">
                <h2 class="heading h3">Sign up</h2>
            </div>
            <input type="email" id="wf-sign-up-email" placeholder="Your email" maxlength="256" name="Email"
                   class="text-field w-input" autocomplete="username" required="" data-wf-user-form-input-type="email">
            <input type="text" class="text-field w-input" maxlength="256" name="Name" data-name="field"
                   data-wf-user-field="wf-user-field-name" placeholder="Your Name" fieldtype="" id="wf-sign-up-name"
                   required="">
            <input type="password" id="wf-sign-up-password" placeholder="Your password" maxlength="256" name="Password"
                   class="text-field w-input" required="" data-wf-user-form-input-type="password">
            <label class="w-checkbox checkbox-field">
                <input type="checkbox" class="w-checkbox-input check-box" name="Checkbox" data-name="Checkbox"
                       data-wf-user-field="wf-user-field-accept-privacy" placeholder="" id="wf-sign-up-accept-privacy"
                       required="">
                <span class="checkbox-label w-form-label" for="Checkbox">I agree to this website&#x27;s
            <a href="privacy-policy" target="_blank">privacy policy</a>
            and
            <a href="terms-conditions" target="_blank">terms of service</a>
          </span>
            </label>
            <input type="submit" value="Sign Up" class="w-users-userformbutton button w-button" id="form-submit"
                   data-bs-toggle="#modal" data-bs-target="#modal">
            <div class="w-users-userformfooter form-card-footer"><span>Already have an account?</span>
                <a href="/auth/login">Log In</a>
            </div>
        </form>

        <c:if test="${param.error}">
        <div class="w-users-userformerrorstate w-form-fail">
            <div class="user-form-error-msg">There was an error signing you up. Please try again, or contact us if you
                continue to have problems.
            </div>
            </c:if>

            <!-- Modal -->
            <c:if test="${param.success}">
                <div class="modal fade" id="modal" tabindex="-1" aria-labelledby="continue-modal" aria-hidden="true"
                     style="display: flex">
                    <div class="modal-dialog modal-dialog-centered">
                        <div class="modal-content" style="background-color: transparent; border: none">
                            <div class="modal-body">
                                <div class="frame-signup"
                                     style="display: flex; flex-direction: column; justify-content: center; align-items: center">
                                    <div class="w-users-userformheader form-card-header">
                                        <h2 class="heading h3">Account Creation Successful!

                                        Please Check your Email</h2>
                                    </div>
                                    <form action="/auth/verification" method="POST">
                                        <div>
                                            <input type="text" name="verification-text" id="verification-text"
                                                   placeholder="Your Verification Code"
                                                   maxlength="7" class="text-field w-input" required
                                                   title="Code field cannot be empty" style="padding-bottom: 10px">
                                        </div>
                                        <div style="display: flex; align-items: center; justify-content: center">
                                            <input type="submit" class="w-users-userformbutton button w-button"
                                                   id="codeSubmit" style="width: 50%; padding-top: 10px">
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </c:if>
        </div>
        <!-- JavaScript to handle form submission when the button is clicked -->
        <!-- <script src="https://d3e54v103j8qbb.cloudfront.net/js/jquery-3.5.1.min.dc5e7f18c8.js?site=64f615e4cfda04626e2eee44" type="text/javascript" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script> -->
        <script src="/js/webflow.js" type="text/javascript"></script>
    </div>
</div>
</body>
</html>