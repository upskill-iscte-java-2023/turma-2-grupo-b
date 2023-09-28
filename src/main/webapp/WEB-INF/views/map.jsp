<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<!DOCTYPE html><!-- This site was totally hand made -->
<!-- Last Published: Thu Sep 07 2023 18:14:17 GMT+0000 (Coordinated Universal Time) -->
<html data-wf-page="64f615e4cfda04626e2eeeaa" data-wf-site="64f615e4cfda04626e2eee44">
<head>
    <meta charset="utf-8">
    <title>Map</title>
    <meta content="width=device-width, initial-scale=1" name="viewport">
    <meta content="Webflow" name="generator">
    <link href="/css/webflow.css" rel="stylesheet" type="text/css">
    <link href="/css/mapstyles.css" rel="stylesheet" type="text/css">
    <link href="/css/normalize.css" rel="stylesheet" type="text/css">
    <link href="/css/styles.css" rel="stylesheet" type="text/css">
    <link href='https://fonts.googleapis.com/css?family=Ubuntu' rel='stylesheet'>
    <link href="https://fonts.googleapis.com" rel="preconnect">
    <link href="https://fonts.gstatic.com" rel="preconnect" crossorigin="anonymous">
    <script async defer
            src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDJBRTp3Y0iJppaKELytW_tmBrF2DDqCpg&callback=initMap">
        <script
            type="text/javascript">WebFont.load({google: {families: ["Ubuntu:300,300italic,400,400italic,500,500italic,700,700italic","Oswald:200,300,400,500,600,700","Inter:regular,500,600,700","Libre Baskerville:regular,italic,700","Volkhov:regular,italic,700,700italic","Noto Serif:regular,italic,700,700italic"]}})
            ;</script>
    <script type="text/javascript">!function (o, c) {
        var n = c.documentElement, t = " w-mod-";
        n.className += t + "js", ("ontouchstart" in o || o.DocumentTouch && c instanceof DocumentTouch) && (n.className += t + "touch")
    }(window, document);</script>
    <script src="/js/maps.js" type="text/javascript"></script>
    <link href="/images/Favicon 1-2.png" rel="shortcut icon" type="image/x-icon">
    <link href="/images/webclip.svg" rel="apple-touch-icon">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm"
            crossorigin="anonymous"></script>
    <script type="text/javascript" src="/js/navscript.js"></script>
</head>
<body>

<!-- Navbar Tablet and Below -->
<div class="nav-wrapper">
    <div class="nav-leftwrapper">
        <a href="/index/" style="position: relative; top: 5px;">
            <img src="/images/Untitled-design-26_1.png">
        </a>

    </div>
    <div class="nav-rightwrapper">
        <div class="Hamburger-menu-bg" id="Hamburger-menu-bg"></div>
        <div id="Hamburger-menu">
            <div id="Hamburger-menu-bar" onclick="menuOnClick()">
                <div id="Hamburger-bar1" class="Hamburger-bar"></div>
                <div id="Hamburger-bar2" class="Hamburger-bar"></div>
                <div id="Hamburger-bar3" class="Hamburger-bar"></div>
            </div>
            <nav class="Hamburger-nav" id="Hamburger-nav">
                <ul class="hamburger-list">
                    <sec:authorize access="isAuthenticated()">
                        <li class="Profile-picture-list">
                            <a href="/user/dashboard" class="profile-link w-inline-block">
                                <img src="${user.profilePicPath}" loading="lazy" alt="" class="profile-link-image">
                            </a>
                        </li>
                    </sec:authorize>
                    <li><a class="listFonts" href="/user/dashboard">Dashboard</a></li>
                    <li><a class="listFonts" href="/user/plume-wiki">Plume Wiki</a></li>
                    <li><a class="listFonts" href="/user/payments" class="navbar2_link w-nav-link">Rewards 🪶</a></li>
                    <li><a class="listFonts" href="/user/my-observations">My Observations</a></li>
                    <li><a class="listFonts" href="/user/challenges">Challenges</a></li>
                    <li><a class="listFonts" href="/user/settings">Account Settings</a></li>
                    <li><a class="listFonts" href="/user/my-subscriptions">Subscriptions</a></li>
                    <li>
                        <form method="POST" action="/auth/logout">
                            <button type="submit" class="user-log-in-log-out">
                                Logout
                            </button>
                        </form>
                    </li>
                </ul>
            </nav>
        </div>
    </div>
</div>
<!-- end of navbar tablet and below -->
<!-- navbar Desktop -->

<div data-collapse="medium" data-animation="default" data-duration="400" fs-scrolldisable-element="smart-nav"
     data-easing="ease" data-easing2="ease" role="banner" class="navbar-2 w-nav maintain-desktop">
    <div class="navbar-container">
        <a href="/index/" class="navbar2_logo-link w-nav-brand"><img src="../images/Untitled-design-26.png"
                                                                     loading="lazy" alt=""
                                                                     class="navbar2_logo desktop"><img
                src="../images/1_5.png" loading="lazy" width="150" height="Auto" alt=""
                class="navbar2_logo show-mobile-only"></a>
        <nav role="navigation" id="w-node-_2cc41a78-d014-b7fd-7229-2969f8957a3c-f8957a37"
             class="navbar2_menu is-page-height-tablet w-nav-menu">
            <a href="/user/dashboard" class="navbar2_link w-nav-link">Dashboard</a>
            <a href="/user/plume-wiki" aria-current="page" class="navbar2_link w-nav-link w--current">Plume
                Wiki</a>
            <a href="/user/payments" class="navbar2_link w-nav-link">Rewards 🪶</a>
            <div class="mobile-menu-wrap-side">
                <div class="side-bar">
                    <div class="w-layout-grid sidebar-menu-grid">
                        <a href="#" id="w-node-_2cc41a78-d014-b7fd-7229-2969f8957a46-f8957a37"
                           class="sidebar-menu-item w-inline-block">
                            <div class="sidemenu-icon w-embed">
                                <svg width="24" height="24" viewbox="0 0 24 24" fill="none"
                                     xmlns="http://www.w3.org/2000/svg">
                                    <path d="M8.12598 14C8.57002 15.7252 10.1361 17 12 17C13.8638 17 15.4299 15.7252 15.874 14"
                                          stroke="CurrentColor" stroke-width="2" stroke-linecap="round"
                                          stroke-linejoin="round"></path>
                                    <path d="M3 10.5651C3 9.9907 3 9.70352 3.07403 9.43905C3.1396 9.20478 3.24737 8.98444 3.39203 8.78886C3.55534 8.56806 3.78202 8.39175 4.23539 8.03912L11.0177 2.764C11.369 2.49075 11.5447 2.35412 11.7387 2.3016C11.9098 2.25526 12.0902 2.25526 12.2613 2.3016C12.4553 2.35412 12.631 2.49075 12.9823 2.764L19.7646 8.03913C20.218 8.39175 20.4447 8.56806 20.608 8.78886C20.7526 8.98444 20.8604 9.20478 20.926 9.43905C21 9.70352 21 9.9907 21 10.5651V17.8C21 18.9201 21 19.4801 20.782 19.908C20.5903 20.2843 20.2843 20.5903 19.908 20.782C19.4802 21 18.9201 21 17.8 21H6.2C5.07989 21 4.51984 21 4.09202 20.782C3.71569 20.5903 3.40973 20.2843 3.21799 19.908C3 19.4801 3 18.9201 3 17.8V10.5651Z"
                                          stroke="CurrentColor" stroke-width="2" stroke-linecap="round"
                                          stroke-linejoin="round"></path>
                                </svg>
                            </div>
                            <div>Home</div>
                        </a>
                        <a href="#" id="w-node-_2cc41a78-d014-b7fd-7229-2969f8957a4a-f8957a37"
                           class="sidebar-menu-item w-inline-block">
                            <div class="sidemenu-icon w-embed">
                                <svg width="24" height="24" viewbox="0 0 24 24" fill="none"
                                     xmlns="http://www.w3.org/2000/svg">
                                    <path d="M6.5 13L7.28446 14.5689C7.54995 15.0999 7.68269 15.3654 7.86003 15.5954C8.01739 15.7996 8.20041 15.9826 8.40455 16.14C8.63462 16.3173 8.9001 16.4501 9.43108 16.7155L11 17.5L9.43108 18.2845C8.9001 18.5499 8.63462 18.6827 8.40455 18.86C8.20041 19.0174 8.01739 19.2004 7.86003 19.4046C7.68269 19.6346 7.54995 19.9001 7.28446 20.4311L6.5 22L5.71554 20.4311C5.45005 19.9001 5.31731 19.6346 5.13997 19.4046C4.98261 19.2004 4.79959 19.0174 4.59545 18.86C4.36538 18.6827 4.0999 18.5499 3.56892 18.2845L2 17.5L3.56892 16.7155C4.0999 16.4501 4.36538 16.3173 4.59545 16.14C4.79959 15.9826 4.98261 15.7996 5.13997 15.5954C5.31731 15.3654 5.45005 15.0999 5.71554 14.5689L6.5 13Z"
                                          stroke="CurrentColor" stroke-width="2" stroke-linecap="round"
                                          stroke-linejoin="round"></path>
                                    <path d="M15 2L16.1786 5.06442C16.4606 5.79765 16.6016 6.16426 16.8209 6.47264C17.0153 6.74595 17.254 6.98475 17.5274 7.17909C17.8357 7.39836 18.2024 7.53937 18.9356 7.82138L22 9L18.9356 10.1786C18.2024 10.4606 17.8357 10.6016 17.5274 10.8209C17.254 11.0153 17.0153 11.254 16.8209 11.5274C16.6016 11.8357 16.4606 12.2024 16.1786 12.9356L15 16L13.8214 12.9356C13.5394 12.2024 13.3984 11.8357 13.1791 11.5274C12.9847 11.254 12.746 11.0153 12.4726 10.8209C12.1643 10.6016 11.7976 10.4606 11.0644 10.1786L8 9L11.0644 7.82138C11.7976 7.53937 12.1643 7.39836 12.4726 7.17909C12.746 6.98475 12.9847 6.74595 13.1791 6.47264C13.3984 6.16426 13.5394 5.79765 13.8214 5.06442L15 2Z"
                                          stroke="CurrentColor" stroke-width="2" stroke-linecap="round"
                                          stroke-linejoin="round"></path>
                                </svg>
                            </div>
                            <div>My Observations</div>
                        </a>
                        <a href="#" id="w-node-_2cc41a78-d014-b7fd-7229-2969f8957a4e-f8957a37"
                           class="sidebar-menu-item w-inline-block">
                            <div class="sidemenu-icon w-embed">
                                <svg width="24" height="24" viewbox="0 0 24 24" fill="none"
                                     xmlns="http://www.w3.org/2000/svg">
                                    <path d="M15.5455 9.92543C15.9195 9.26103 16.2313 8.66151 16.4236 8.20521C17.3573 5.98947 16.434 3.44077 14.1769 2.40112C11.9199 1.36148 9.65341 2.4395 8.65871 4.52093C6.75657 3.2157 4.21918 3.40739 2.81989 5.44424C1.42059 7.48108 1.85975 10.142 3.77629 11.594C4.6461 12.253 6.36636 13.2242 7.98596 14.0884M16.2972 11.7499C15.8751 9.482 13.9454 7.82334 11.5156 8.27415C9.08592 8.72497 7.51488 10.9171 7.84335 13.299C8.10725 15.2127 9.56392 19.7027 10.1264 21.394C10.2032 21.6248 10.2415 21.7402 10.3175 21.8206C10.3837 21.8907 10.4717 21.9416 10.5655 21.9638C10.6732 21.9894 10.7923 21.9649 11.0306 21.916C12.7765 21.5575 17.3933 20.574 19.1826 19.8457C21.4096 18.9392 22.5589 16.4841 21.6981 14.153C20.8372 11.8219 18.4723 10.9815 16.2972 11.7499Z"
                                          stroke="CurrentColor" stroke-width="2" stroke-linecap="round"
                                          stroke-linejoin="round"></path>
                                </svg>
                            </div>
                            <div>Challenges</div>
                        </a>
                        <a href="#" id="w-node-_2cc41a78-d014-b7fd-7229-2969f8957a52-f8957a37"
                           class="sidebar-menu-item w-inline-block">
                            <div class="sidemenu-icon w-embed">
                                <svg width="24" height="24" viewbox="0 0 24 24" fill="none"
                                     xmlns="http://www.w3.org/2000/svg">
                                    <path d="M3 20C5.33579 17.5226 8.50702 16 12 16C15.493 16 18.6642 17.5226 21 20"
                                          stroke="CurrentColor" stroke-width="2" stroke-linecap="round"
                                          stroke-linejoin="round"></path>
                                    <path d="M12 12C14.4853 12 16.5 9.98528 16.5 7.5C16.5 5.01472 14.4853 3 12 3C9.51472 3 7.5 5.01472 7.5 7.5C7.5 9.98528 9.51472 12 12 12Z"
                                          stroke="CurrentColor" stroke-width="2" stroke-linecap="round"
                                          stroke-linejoin="round"></path>
                                </svg>
                            </div>
                            <div>Account settings</div>
                        </a>
                        <a href="#" id="w-node-_2cc41a78-d014-b7fd-7229-2969f8957a56-f8957a37"
                           class="sidebar-menu-item w-inline-block">
                            <div class="sidemenu-icon w-embed">
                                <svg width="24" height="24" viewbox="0 0 24 24" fill="none"
                                     xmlns="http://www.w3.org/2000/svg">
                                    <path d="M6 6L8 4M8 4L6 2M8 4H6C3.79086 4 2 5.79086 2 8M18 18L16 20M16 20L18 22M16 20H18C20.2091 20 22 18.2091 22 16M10.189 6.5C10.8551 3.91216 13.2042 2 16 2C19.3137 2 22 4.68629 22 8C22 10.7957 20.0879 13.1449 17.5001 13.811M14 16C14 19.3137 11.3137 22 8 22C4.68629 22 2 19.3137 2 16C2 12.6863 4.68629 10 8 10C11.3137 10 14 12.6863 14 16Z"
                                          stroke="CurrentColor" stroke-width="2" stroke-linecap="round"
                                          stroke-linejoin="round"></path>
                                </svg>
                            </div>
                            <div>Subscriptions</div>
                        </a>
                        <a href="#" id="w-node-_2cc41a78-d014-b7fd-7229-2969f8957a5a-f8957a37"
                           class="sidebar-menu-item w-inline-block">
                            <div class="sidemenu-icon w-embed">
                                <svg width="24" height="24" viewbox="0 0 24 24" fill="none"
                                     xmlns="http://www.w3.org/2000/svg">
                                    <path d="M22 10H2M22 11V8.2C22 7.0799 22 6.51984 21.782 6.09202C21.5903 5.7157 21.2843 5.40974 20.908 5.21799C20.4802 5 19.9201 5 18.8 5H5.2C4.0799 5 3.51984 5 3.09202 5.21799C2.7157 5.40973 2.40973 5.71569 2.21799 6.09202C2 6.51984 2 7.0799 2 8.2V15.8C2 16.9201 2 17.4802 2.21799 17.908C2.40973 18.2843 2.71569 18.5903 3.09202 18.782C3.51984 19 4.07989 19 5.2 19H11.5M18 21C18 21 21 19.5701 21 17.4252V14.9229L18.8124 14.1412C18.2868 13.9529 17.712 13.9529 17.1864 14.1412L15 14.9229V17.4252C15 19.5701 18 21 18 21Z"
                                          stroke="CurrentColor" stroke-width="2" stroke-linecap="round"
                                          stroke-linejoin="round"></path>
                                </svg>
                            </div>
                            <div>Payments</div>
                        </a>
                    </div>
                </div>
            </div>
        </nav>
        <div id="w-node-_2cc41a78-d014-b7fd-7229-2969f8957a5e-f8957a37" class="navbar2_button-wrapper">
            <a href="/user/dashboard" class="profile-link w-inline-block">
                <img src="${user.profilePicPath}" loading="lazy" alt="" class="profile-link-image">
            </a>
            <div class="navbar2_menu-button w-nav-button">
                <div class="menu-icon2">
                    <div class="menu-icon2_line-top"></div>
                    <div class="menu-icon2_line-middle">
                        <div class="menu-icon_line-middle-inner-2"></div>
                    </div>
                    <div class="menu-icon2_line-bottom"></div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- end of navbar desktop -->

<!-- page section -->
<div class="page-wrapper-2">

    <div class="w-layout-vflex flex-block-2">
        <div class="w-layout-hflex"></div>
    </div>

    <!-- First Modal: Continue Button -->
    <div class="modal fade" id="modal" tabindex="-1" aria-labelledby="continue-modal" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered">
            <div class="modal-content" style="background-color: transparent; border: none">
                <div class="modal-body">
                    <--
                    <div class="frame"
                         style="display: flex; flex-direction: column; justify-content: center; align-items: center">
                        <%--                        <img src="../images/UploadSightinglogotest.png" alt="Upload Sighting modal logo" class="centered-image">--%>
                        <div style="padding: 5px">
                            <h1 style="font-size: 32px">Upload your Sighting</h1>
                        </div>
                        <div style="padding: 5px; width: 90%; display: flex; flex-direction: column">
                            <label for="description">Description:</label>
                            <input id="description" type="text"  style="height: 40px">
                        </div>
                        <div style="padding: 5px; width: 90%; display: flex; flex-direction: column">
                            <label for="simplename">Guess your bird:</label>
                            <input id="simplename" type="text" style="height: 40px">
                        </div>
                        <div style="padding: 5px; width: 90%; display: flex; flex-direction: column">
                            <label for="observedOn" style="width: 100%">When was this?</label>
                            <input type="date" style="padding: 5px;" id="observedOn">
                        </div>
                        <div style="display: flex; align-items: center; justify-content: center; margin-top: 20px">
                            <button type="button" class="btn btn-primary" data-bs-toggle="modal"
                                    data-bs-target="#modal2">
                                Continue
                            </button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- second modal // photo upload -->
    <div class="modal fade" id="modal2" tabindex="-1" aria-labelledby="upload-modal" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered">
            <div class="modal-content" style="background: transparent; border: none">
                <div class="modal-body">
                    <div class="frame">
                        <div class="center">
                            <div class="title">
                                <h1></h1>
                            </div>
                            <div class="frame">
                                <div class="center">
                                    <div class="bar"></div>
                                    <div class="title">Drag and Nest your Photo</div>
                                    <div class="dropzone">
                                        <div class="content">
                                            <img src="https://100dayscss.com/codepen/upload.svg" class="upload">
                                            <span class="filename"></span>
                                            <input type="file" class="input" style="visibility: hidden">
                                        </div>
                                    </div>
                                    <img src="https://100dayscss.com/codepen/syncing.svg" class="syncing">
                                    <img src="https://100dayscss.com/codepen/checkmark.svg" class="done">
                                    <button type="button" class="upload-btn" name="uploadbutton">Upload file</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>


<div class="map-wrapper" id="map-wrapper">
    <div class="map" id="map">
        <!-- Google Map will be rendered here -->
    </div>

    <div class="button-container" style="z-index: 99">
        <a class="desktop-button-wrap desktop">
            <button class="upload-button desktop" style="display: flex; justify-content: center; align-items: center"
                    data-bs-toggle="modal" data-bs-target="#modal">
                <span class="button-text" style="padding-right: 10px">Upload Picture</span>
                <img src="/images/Upload_Mobile.png" alt="Upload Picture" class="button-icon">
            </button>
        </a>
        <div class="file-input-wrapper mobile">
            <form id="camera-photo-form">
            <input type="file" accept="image/" capture="environment" id="camera-photo">
            <label for="camera-photo" class="take-picture-button "></label>
            </form>
        </div>
        <input type="file" accept="image/" id="mobile-upload" class="mobile" style="display: none;">
        <label for="mobile-upload" class="upload-button-mobile mobile"></label>
    </div>
</div>
<div class="flex-block-2-bottom">bottom bar</div>


<!--Footer section -->
<div class="footer">
    <div class="footer-container w-container">
        <div class="w-layout-grid footer-grid">
            <div id="w-node-b8d7be4a-ce45-83ab-5947-02d204c8bff0-cf3fcb86" class="footer-logo-block">
                <a data-ix="logo" href="/index/" class="footer-logo w-nav-brand"><img
                        src="/images/Untitled-design-26_1.png" width="204" alt="" class="image-3"></a>
                <p class="paragraph small">Built by Potato Labs Inc.<br>for Plumers with lots of Plumage<br></p>
                <div class="spacer _16"></div>
                <div class="paragraph small">© 2023 Potato Labs Inc. All Potatoes Reserved.</div>
            </div>
            <div class="footer-links-container">
                <h5 class="footer-header">Website</h5>
                <a href="/index/" class="footer-link">Home</a>
                <a href="/index/contact" class="footer-link">Contact Us</a>
                <a href="/index/terms" class="footer-link">Terms &amp; Conditions</a>
                <a href="/index/privacy-policy" class="footer-link">Privacy Policy</a>
            </div>
            <div class="footer-links-container">
                <h5 class="footer-header">Membership</h5>
                <sec:authorize access="hasRole('ROLE_ANONYMOUS')">
                    <a href="/auth/login" class="footer-link">Login</a>
                    <a href="/auth/signup" class="footer-link">Sign Up</a>
                </sec:authorize>
                <sec:authorize access="isAuthenticated()">
                    <a href="/auth/logout" class="footer-link">Logout</a>
                </sec:authorize>
                <sec:authorize access="isAuthenticated()">
                    <a href="/user/dashboard" class="footer-link">User Account</a>
                </sec:authorize>
                <a href="/index/reset-password" class="footer-link">Reset Password </a>
            </div>
        </div>
    </div>
</div>
</div>
<script src="https://d3e54v103j8qbb.cloudfront.net/js/jquery-3.5.1.min.dc5e7f18c8.js?site=64f615e4cfda04626e2eee44"
        type="text/javascript" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0="
        crossorigin="anonymous"></script>
<script src="../../js/webflow.js" type="text/javascript"></script>
</body>
</html>