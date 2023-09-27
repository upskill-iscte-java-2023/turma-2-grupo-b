<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html><!-- This site was totally hand made -->
<!-- Last Published: Tue Sep 05 2023 16:28:50 GMT+0000 (Coordinated Universal Time) -->
<html data-wf-page="64f615e4cfda04626e2eeeaf" data-wf-site="64f615e4cfda04626e2eee44">
<head>
    <meta charset="utf-8">
    <title>Plume_Wiki</title>
    <meta content="Plume_Wiki" property="og:title">
    <meta content="Plume_Wiki" property="twitter:title">
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
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
            crossorigin="anonymous"></script>
    <script type="text/javascript" src="/js/navscript.js"></script>
</head>
<body>
<div class="page-wrapper-5">
    <div class="global-styles w-embed">
        <style>
            /* Make text look crisper and more legible in all browsers */
            body {
                -webkit-font-smoothing: antialiased;
                -moz-osx-font-smoothing: grayscale;
                font-smoothing: antialiased;
                text-rendering: optimizeLegibility;
            }

            /* Focus state style for keyboard navigation for the focusable elements */
            *[tabindex]:focus-visible,
            input[type="file"]:focus-visible {
                outline: 0.125rem solid #4d65ff;
                outline-offset: 0.125rem;
            }

            /* Get rid of top margin on first element in any rich text element */
            .w-richtext > :not(div):first-child, .w-richtext > div:first-child > :first-child {
                margin-top: 0 !important;
            }

            /* Get rid of bottom margin on last element in any rich text element */
            .w-richtext > :last-child, .w-richtext ol li:last-child, .w-richtext ul li:last-child {
                margin-bottom: 0 !important;
            }

            /* Prevent all click and hover interaction with an element */
            .pointer-events-off {
                pointer-events: none;
            }

            /* Enables all click and hover interaction with an element */
            .pointer-events-on {
                pointer-events: auto;
            }

            /* Create a class of .div-square which maintains a 1:1 dimension of a div */
            .div-square::after {
                content: "";
                display: block;
                padding-bottom: 100%;
            }

            /* Make sure containers never lose their center alignment */
            .container-medium, .container-small, .container-large {
                margin-right: auto !important;
                margin-left: auto !important;
            }

            /*
            Make the following elements inherit typography styles from the parent and not have hardcoded values.
            Important: You will not be able to style for example "All Links" in Designer with this CSS applied.
            Uncomment this CSS to use it in the project. Leave this message for future hand-off.
            */
            /*
            a,
            .w-input,
            .w-select,
            .w-tab-link,
            .w-nav-link,
            .w-dropdown-btn,
            .w-dropdown-toggle,
            .w-dropdown-link {
              color: inherit;
              text-decoration: inherit;
              font-size: inherit;
            }
            */
            /* Apply "..." after 3 lines of text */
            .text-style-3lines {
                display: -webkit-box;
                overflow: hidden;
                -webkit-line-clamp: 3;
                -webkit-box-orient: vertical;
            }

            /* Apply "..." after 2 lines of text */
            .text-style-2lines {
                display: -webkit-box;
                overflow: hidden;
                -webkit-line-clamp: 2;
                -webkit-box-orient: vertical;
            }

            /* Adds inline flex display */
            .display-inlineflex {
                display: inline-flex;
            }

            /* These classes are never overwritten */
            .hide {
                display: none !important;
            }

            @media screen and (max-width: 991px) {
                .hide, .hide-tablet {
                    display: none !important;
                }
            }

            @media screen and (max-width: 767px) {
                .hide-mobile-landscape {
                    display: none !important;
                }
            }

            @media screen and (max-width: 479px) {
                .hide-mobile {
                    display: none !important;
                }
            }

            .margin-0 {
                margin: 0rem !important;
            }

            .padding-0 {
                padding: 0rem !important;
            }

            .spacing-clean {
                padding: 0rem !important;
                margin: 0rem !important;
            }

            .margin-top {
                margin-right: 0rem !important;
                margin-bottom: 0rem !important;
                margin-left: 0rem !important;
            }

            .padding-top {
                padding-right: 0rem !important;
                padding-bottom: 0rem !important;
                padding-left: 0rem !important;
            }

            .margin-right {
                margin-top: 0rem !important;
                margin-bottom: 0rem !important;
                margin-left: 0rem !important;
            }

            .padding-right {
                padding-top: 0rem !important;
                padding-bottom: 0rem !important;
                padding-left: 0rem !important;
            }

            .margin-bottom {
                margin-top: 0rem !important;
                margin-right: 0rem !important;
                margin-left: 0rem !important;
            }

            .padding-bottom {
                padding-top: 0rem !important;
                padding-right: 0rem !important;
                padding-left: 0rem !important;
            }

            .margin-left {
                margin-top: 0rem !important;
                margin-right: 0rem !important;
                margin-bottom: 0rem !important;
            }

            .padding-left {
                padding-top: 0rem !important;
                padding-right: 0rem !important;
                padding-bottom: 0rem !important;
            }

            .margin-horizontal {
                margin-top: 0rem !important;
                margin-bottom: 0rem !important;
            }

            .padding-horizontal {
                padding-top: 0rem !important;
                padding-bottom: 0rem !important;
            }

            .margin-vertical {
                margin-right: 0rem !important;
                margin-left: 0rem !important;
            }

            .padding-vertical {
                padding-right: 0rem !important;
                padding-left: 0rem !important;
            }
        </style>
    </div>
    <main class="main-wrapper-2">
        <!-- Navbar Tablet and Below -->
        <div class="nav-wrapper" style="background-image: url('/images/Fotos.png')">
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
                            <li><form method="POST" action="/auth/logout">
                                <button type="submit" class="user-log-in-log-out">
                                    Logout
                                </button>
                            </form></li>
                        </ul>
                    </nav>
                </div>
            </div>
        </div>

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
        <header class="content-wrap">
            <div class="padding-global">
                <div class="container-medium">
                    <div class="padding-section-small">
                        <div class="text-align-center">
                            <h1 class="heading-style-h2">Discover birds and all about them</h1>
                            <div class="margin-bottom-2 margin-medium">
                                <p class="text-color-grey">Search over 400 species of birds via Plume database</p>
                            </div>
                        </div>
                        <form action="/search" class="search-form w-form"><input type="search"
                                                                                 class="form_input-2 is-search-input w-input"
                                                                                 autofocus="true" maxlength="256"
                                                                                 name="query"
                                                                                 placeholder="Type some keyword to find birds"
                                                                                 id="search" required=""><input
                                type="submit" value="Search" class="button-3 hide w-button">
                            <div id="w-node-_17034b2c-512c-cefb-60a5-f04579aabe1c-6e2eeeaf" class="search-icon w-embed">
                                <svg width="24" height="24" viewbox="0 0 24 24" fill="none"
                                     xmlns="http://www.w3.org/2000/svg">
                                    <path fill-rule="evenodd" clip-rule="evenodd"
                                          d="M11.5 2C6.25329 2 2 6.25329 2 11.5C2 16.7467 6.25329 21 11.5 21C13.7631 21 15.8415 20.2086 17.4733 18.8875L20.2929 21.7071C20.6834 22.0976 21.3166 22.0976 21.7071 21.7071C22.0976 21.3166 22.0976 20.6834 21.7071 20.2929L18.8875 17.4733C20.2086 15.8415 21 13.7631 21 11.5C21 6.25329 16.7467 2 11.5 2ZM4 11.5C4 7.35786 7.35786 4 11.5 4C15.6421 4 19 7.35786 19 11.5C19 15.6421 15.6421 19 11.5 19C7.35786 19 4 15.6421 4 11.5Z"
                                          fill="black"></path>
                                </svg>
                            </div>
                        </form>
                        <div class="content-wrap margin-top margin-medium">
                            <div class="w-layout-grid _3-col-grid art-grid _4-col">

                                <c:forEach items="${plume_wiki}" var="bird">
                                    <div class="art-card with-animation"><img src="../images/Rectangle-11.png" loading="lazy" alt="" class="art-image">
                                        <div class="action-icon w-embed" style="display: none"> <!-- apagar este div desformata todos os blocos, logo, hidden -->
                                            <svg width="32" height="32" viewbox="0 0 32 32" fill="none"
                                                 xmlns="http://www.w3.org/2000/svg">
                                                <rect width="32" height="32" rx="8" fill="white"></rect>
                                                <path fill-rule="evenodd" clip-rule="evenodd"
                                                      d="M15.9951 10.478C14.4352 9.11477 12.1282 8.8358 10.3366 10.3665C8.39879 12.0223 8.11723 14.8108 9.64965 16.7827C10.2313 17.5312 11.3667 18.6557 12.4577 19.6856C13.5616 20.7275 14.6629 21.712 15.206 22.193C15.2094 22.196 15.2129 22.1991 15.2164 22.2022C15.2674 22.2475 15.331 22.3038 15.3919 22.3497C15.4649 22.4046 15.5696 22.4728 15.7095 22.5145C15.8954 22.57 16.0953 22.57 16.2813 22.5145C16.4211 22.4728 16.5259 22.4046 16.5988 22.3497C16.6597 22.3038 16.7233 22.2475 16.7743 22.2022C16.7779 22.1991 16.7813 22.196 16.7847 22.193C17.3278 21.712 18.4291 20.7275 19.533 19.6856C20.6241 18.6557 21.7594 17.5312 22.3411 16.7827C23.8676 14.8184 23.6295 12.0083 21.6471 10.3607C19.8357 8.85506 17.5533 9.11425 15.9951 10.478Z"
                                                      fill="#EB5757"></path>
                                            </svg>
                                        </div>
                                        <div class= "art-card-context vertical">
                                            <a href="#" class="flex-box w-inline-block">
                                            </a>
                                            <div class="bird-info">
                                                <p class="h5 bird-header">${bird.commonName}</p><p>
                                                <p class="font-italic"><small class="text-muted">${bird.scientificName}</small></p></p>
                                         <%--       <h5 class="heading-style-h4">${bird.commonName}</h5>
                                                <h6 class="heading-style-h5">${bird.scientificName}</h6>--%>

                                                <img src="https://storage.googleapis.com/plume-wiki/${bird.scientificName}.jpg" class="bird-image rounded float-start" alt="...">
                                                <div class="overlay"><p>Taxon ID: ${bird.taxonId}</p></div>
                                                <p class = "text-color-grey p-desc">${bird.description}</p>
                                            </div>

                                        </div>
                                    </div>
                                </c:forEach>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </header>
    </main>
</div>
<script src="https://d3e54v103j8qbb.cloudfront.net/js/jquery-3.5.1.min.dc5e7f18c8.js?site=64f615e4cfda04626e2eee44"
        type="text/javascript" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0="
        crossorigin="anonymous"></script>
<script src="../../js/webflow.js" type="text/javascript"></script>
<%--<script>
    const artCards = document.querySelectorAll('.art-card');

    artCards.forEach((card) => {
        const birdInfo = card.querySelector('.bird-info');

        card.addEventListener('click', () => {
            birdInfo.style.display = birdInfo.style.display === 'none' ? 'block' : 'none';
        });
    });
</script>--%>

<script>
    $(document).ready(function() {
        $('#search').on('input', function() {
            let searchTerm = $(this).val().toLowerCase();

            $('.art-card.with-animation').each(function() {
                let birdCommonName = $(this).find('.h5.bird-header').text().toLowerCase();
                let birdScientificName = $(this).find('.text-muted').text().toLowerCase();
                if (birdCommonName.indexOf(searchTerm) !== -1 || birdScientificName.indexOf(searchTerm) !== -1) {
                    $(this).show();
                } else {
                    $(this).hide();
                }
            });
        });
    });$('#search').on('keydown', function(e) {
        if (e.key === 'Enter') {
            e.preventDefault();
            e.stopPropagation();
        }
    });
</script>
</body>
</html>