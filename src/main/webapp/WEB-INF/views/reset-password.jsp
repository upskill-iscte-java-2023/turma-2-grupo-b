<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="plume.entities.PendingResetEntity"%>
<!DOCTYPE html><!-- This site was created in Webflow. https://www.webflow.com -->
<!-- Last Published: Tue Sep 05 2023 16:28:50 GMT+0000 (Coordinated Universal Time) -->
<html data-wf-page="64f615e4cfda04626e2eeeb9" data-wf-site="64f615e4cfda04626e2eee44">
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
    <link href="/images/favicon.svg" rel="shortcut icon" type="image/x-icon">
    <link href="/images/webclip.svg" rel="apple-touch-icon">
</head>
<body>
<div class="w-users-userformpagewrap full-page-wrapper">
    <c:if test="${empty param.reset}">
        <a href="/index/" class="form-page-logo-link w-inline-block"><img src="/images/Untitled-design-26_1.png"
                                                                          loading="lazy" alt="" class="form-page-logo"></a>
        <div class="w-users-userresetpasswordformwrapper admin-form-card center-align">
        <c:if test="${param.success}">
            <div tabindex="-1" class="w-users-userformsuccessstate">
                <div class="w-users-userformheader"><img src="/images/Email-Sent-Icon.svg" alt="" class="icon">
                    <h2 class="heading h3">Password Reset <br>Email Sent</h2>
                </div>
                <p>If we found an account associated with that email address, we&#x27;ve sent a link to reset your
                    password.</p>
            </div>
        </c:if>
        <form method="post" action="/index/sendreset">
            <div class="w-users-userformheader form-card-header">
                <h2 class="heading h3">Reset Password</h2>
                <p class="paragraph small">Enter your email and we will send you a password reset link.</p>
            </div>
            <input type="email" maxlength="256" placeholder="Enter your email" name="email" id="wf-reset-password-email"
                   aria-describedby="wf-reset-password-paragraph" class="text-field w-input" autocomplete="username"
                   required="" data-wf-user-form-input-type="email">
            <input type="submit" value="Send Reset Email" data-wait="Please wait..."
                   class="w-users-userformbutton button w-button">
        </form>
        <c:if test="${param.error}">
            <div style="display: flex" class="w-users-userformerrorstate form-error w-form-fail">
                <div class="user-form-error-msg"
                     wf-reset-pw-form-general-error-error="There was an error resetting your password. Please try again, or contact us if you continue to have problems.">
                    There was an error resetting your password. Please try again, or contact us if you continue to have
                    problems.
                </div>
            </div>
            </div>
        </c:if>
    </c:if>
    <c:if test="${not empty param.reset}">
        <form method="post" id="resetPasswordForm" action="/index/resetpass">
            <div class="w-users-userformheader form-card-header">
                <h2 class="heading h3">Reset Password</h2>
                <p class="paragraph small">Confirm your new password.</p>
            </div>
            <c:if test="${!param.hidden }">
            <input type="password" minlength="5" maxlength="256" placeholder="Enter your new password" name="password"
                   id="reset-password-field" aria-describedby="wf-reset-password-paragraph" class="text-field w-input"
                   required="" data-wf-user-form-input-type="password">
            </c:if>
            <c:if test="${param.hidden }">
            <input type="password" minlength="5" maxlength="256" placeholder="Enter your new password" name="password"
                   id="reset-password-field" aria-describedby="wf-reset-password-paragraph" class="text-field w-input"
                   disabled>
            </c:if>
            <input type="hidden" name="token" value="<%= PendingResetEntity.getToken()%>">
            <input type="hidden" name="email" value="<%= PendingResetEntity.getUsername()%>">
            <input type="submit" value="Create New Password" data-wait="Please wait..."
                   class="w-users-userformbutton button w-button">
        </form>
    </c:if>
    <c:if test="${param.reset && param.resetsuccess}">
        <p>Password reset successfully.</p>
    </c:if>
    <c:if test="${param.reset && !param.resetsuccess}">
        <p>Something went wrong, please contact us.</p>
    </c:if>
    <a href="/auth/login" class="below-card-link">Return to Login</a>
</div>
<script src="https://d3e54v103j8qbb.cloudfront.net/js/jquery-3.5.1.min.dc5e7f18c8.js?site=64f615e4cfda04626e2eee44"
        type="text/javascript" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0="
        crossorigin="anonymous"></script>
<!-- <script src="/js/webflow.js" type="text/javascript"></script> -->
</body>
</html>