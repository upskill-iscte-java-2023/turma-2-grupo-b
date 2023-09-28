<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html><!-- This site was totally hand made -->
<!-- Last Published: Tue Sep 05 2023 16:28:50 GMT+0000 (Coordinated Universal Time) -->
<html data-wf-page="64f615e4cfda04626e2eee46" data-wf-site="64f615e4cfda04626e2eee44">
<head>
    <meta charset="utf-8">
    <title>Plume - Index</title>
    <meta content="summary_large_image" name="twitter:card">
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
    <script type="text/javascript" src="/js/navscript.js"></script>
    <link href="/images/Favicon 1-2.png" rel="shortcut icon" type="image/x-icon">
    <link href="/images/webclip.svg" rel="apple-touch-icon">
</head>
<body class="body">


<!-- navbar tablet and below -->
<div class="nav-wrapper" style="background-image: url('/images/Fotos.png')">
    <div class="nav-leftwrapper">
        <a href="/index/">
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
                    <sec:authorize access="hasRole('ROLE_ANONYMOUS')">
                        <li><a class="listFonts">
                        <form method="GET" action="/auth/login">
                            <button type="submit" class="user-log-in-log-out">
                                Login
                            </button>
                        </form>
                        </a></li>
                    <li><a class="listFonts">
                        <form method="GET" action="/auth/signup">
                            <button type="submit" class="user-signup">
                                Signup
                            </button>
                        </form>
                    </a></li>
                    </sec:authorize>
                    <li><a class="listFonts" href="/index/subscription">Subscriptions</a></li>
                    <li><a class="listFonts" href="/index/our-team">Our Team</a></li>
                    <sec:authorize access="isAuthenticated()">
                        <li><a class="listFonts" href="/user/map">Start Birding</a></li>
                        <li><a class="listFonts" href="/user/challenges">Challenges</a></li>
                        <li><a class="listFonts" href="/user/plume-wiki">Plume Wiki</a></li>
                        <li><a class="listFonts" href="/user/dashboard">My Profile</a></li>
                    </sec:authorize>
                </ul>
            </nav>
        </div>
    </div>
</div>

<!-- navbar desktop -->

<div data-collapse="medium" data-animation="default" data-duration="400" data-easing="ease-out-quint"
     data-easing2="ease" data-no-scroll="1" role="banner" class="nav-bar w-nav">
    <div class="uui-navbar07_container-2">
        <a href="/index/" class="uui-navbar07_logo-link-2 w-nav-brand">
            <div href="/index/" class="uui-logo_component-2"><img src="/images/Untitled-design-26_1.png" loading="lazy"
                                                                  width="Auto" id="plume-home" alt=""
                                                                  class="uui-logo_logotype-2">
            </div>
        </a>
        <div role="navigation" class="uui-navbar07_menu-2 w-nav-menu">
            <div class="uui-navbar07_menu-left-2">
                <sec:authorize access="isAuthenticated()">
                    <div data-hover="true" data-delay="300" data-w-id="ec87134d-4ffb-4f4e-d2d8-b8ed9b742c4d"
                         class="uui-navbar07_menu-dropdown-2 w-dropdown">
                        <div class="uui-navbar07_dropdown-toggle-2 w-dropdown-toggle">
                            <div class="uui-dropdown-icon-2 w-embed">
                                <svg width="20" height="20" viewbox="0 0 20 20" fill="none"
                                     xmlns="http://www.w3.org/2000/svg">
                                    <path d="M5 7.5L10 12.5L15 7.5" stroke="currentColor" stroke-width="1.67"
                                          stroke-linecap="round" stroke-linejoin="round"></path>
                                </svg>
                            </div>
                            <div class="text-block-5">Explore</div>
                        </div>
                        <nav class="uui-navbar07_dropdown-list-2 w-dropdown-list">
                            <div class="uui-navbar07_dropdown-link-list-2">
                                <a href="/user/map" class="uui-navbar07_dropdown-link-2 w-inline-block">
                                    <div class="uui-navbar07_icon-wrapper-2">
                                        <div class="pricing-icon-1x1-xsmall-3 w-embed">
                                            <svg width="24" height="25" viewbox="0 0 24 25" fill="none"
                                                 xmlns="http://www.w3.org/2000/svg">
                                                <path d="M4.5 22.5V17.5M4.5 7.5V2.5M2 5H7M2 20H7M13 3.5L11.2658 8.00886C10.9838 8.74209 10.8428 9.10871 10.6235 9.41709C10.4292 9.6904 10.1904 9.92919 9.91709 10.1235C9.60871 10.3428 9.24209 10.4838 8.50886 10.7658L4 12.5L8.50886 14.2342C9.24209 14.5162 9.60871 14.6572 9.91709 14.8765C10.1904 15.0708 10.4292 15.3096 10.6235 15.5829C10.8428 15.8913 10.9838 16.2579 11.2658 16.9911L13 21.5L14.7342 16.9911C15.0162 16.2579 15.1572 15.8913 15.3765 15.5829C15.5708 15.3096 15.8096 15.0708 16.0829 14.8765C16.3913 14.6572 16.7579 14.5162 17.4911 14.2342L22 12.5L17.4911 10.7658C16.7579 10.4838 16.3913 10.3428 16.0829 10.1235C15.8096 9.92919 15.5708 9.6904 15.3765 9.41709C15.1572 9.10871 15.0162 8.74209 14.7342 8.00886L13 3.5Z"
                                                      stroke="currentColor" stroke-width="2" stroke-linecap="round"
                                                      stroke-linejoin="round"></path>
                                            </svg>
                                        </div>
                                    </div>
                                    <div class="uui-navbar07_item-right-2">
                                        <div class="uui-navbar07_item-heading-2">Start Birding</div>
                                        <div class="uui-text-size-small-2">Search for other user&#x27;s observations and
                                            hotspots around you
                                        </div>
                                    </div>
                                </a>
                                <a href="/user/dashboard" class="uui-navbar07_dropdown-link-2 w-inline-block">
                                    <div class="uui-navbar07_icon-wrapper-2">
                                        <div class="pricing-icon-1x1-xsmall-3 w-embed">
                                            <svg width="24" height="25" viewbox="0 0 24 25" fill="none"
                                                 xmlns="http://www.w3.org/2000/svg">
                                                <path d="M20 19.5V16.5H7C5.34315 16.5 4 17.8431 4 19.5M8.8 22.5H16.8C17.9201 22.5 18.4802 22.5 18.908 22.282C19.2843 22.0903 19.5903 21.7843 19.782 21.408C20 20.9802 20 20.4201 20 19.3V5.7C20 4.57989 20 4.01984 19.782 3.59202C19.5903 3.21569 19.2843 2.90973 18.908 2.71799C18.4802 2.5 17.9201 2.5 16.8 2.5H8.8C7.11984 2.5 6.27976 2.5 5.63803 2.82698C5.07354 3.1146 4.6146 3.57354 4.32698 4.13803C4 4.77976 4 5.61984 4 7.3V17.7C4 19.3802 4 20.2202 4.32698 20.862C4.6146 21.4265 5.07354 21.8854 5.63803 22.173C6.27976 22.5 7.11984 22.5 8.8 22.5Z"
                                                      stroke="currentColor" stroke-width="2" stroke-linecap="round"
                                                      stroke-linejoin="round"></path>
                                            </svg>
                                        </div>
                                    </div>
                                    <div class="uui-navbar07_item-right-2">
                                        <div class="uui-navbar07_item-heading-2">My Profile</div>
                                        <!-- change to href -->
                                        <div class="uui-text-size-small-2">Check your status, plume level and
                                            observations
                                        </div>
                                    </div>
                                </a>
                                <a href="/user/challenges" class="uui-navbar07_dropdown-link-2 w-inline-block">
                                    <div class="uui-navbar07_icon-wrapper-2">
                                        <div class="pricing-icon-1x1-xsmall-3 w-embed">
                                            <svg width="24" height="25" viewbox="0 0 24 25" fill="none"
                                                 xmlns="http://www.w3.org/2000/svg">
                                                <path d="M12 22.5C17.5228 22.5 22 18.0228 22 12.5C22 6.97715 17.5228 2.5 12 2.5C6.47715 2.5 2 6.97715 2 12.5C2 18.0228 6.47715 22.5 12 22.5Z"
                                                      stroke="currentColor" stroke-width="2" stroke-linecap="round"
                                                      stroke-linejoin="round"></path>
                                                <path d="M9.5 9.46533C9.5 8.98805 9.5 8.74941 9.59974 8.61618C9.68666 8.50007 9.81971 8.42744 9.96438 8.4171C10.1304 8.40525 10.3311 8.53429 10.7326 8.79239L15.4532 11.8271C15.8016 12.051 15.9758 12.163 16.0359 12.3054C16.0885 12.4298 16.0885 12.5702 16.0359 12.6946C15.9758 12.837 15.8016 12.949 15.4532 13.1729L10.7326 16.2076C10.3311 16.4657 10.1304 16.5948 9.96438 16.5829C9.81971 16.5726 9.68666 16.4999 9.59974 16.3838C9.5 16.2506 9.5 16.012 9.5 15.5347V9.46533Z"
                                                      stroke="currentColor" stroke-width="2" stroke-linecap="round"
                                                      stroke-linejoin="round"></path>
                                            </svg>
                                        </div>
                                    </div>
                                    <div class="uui-navbar07_item-right-2">
                                        <div class="uui-navbar07_item-heading-2">Challenges</div> <!-- change to href-->
                                        <div class="uui-text-size-small-2">See how many feather&#x27;s you&#x27;ve
                                            gathered
                                        </div>
                                    </div>
                                </a>
                                <a href="/user/plume-wiki" class="uui-navbar07_dropdown-link-2 w-inline-block">
                                    <div class="uui-navbar07_icon-wrapper-2">
                                        <div class="pricing-icon-1x1-xsmall-3 w-embed">
                                            <svg width="24" height="25" viewbox="0 0 24 25" fill="none"
                                                 xmlns="http://www.w3.org/2000/svg">
                                                <path d="M14 2.76953V6.90007C14 7.46012 14 7.74015 14.109 7.95406C14.2049 8.14222 14.3578 8.2952 14.546 8.39108C14.7599 8.50007 15.0399 8.50007 15.6 8.50007H19.7305M14 18L16.5 15.5L14 13M10 13L7.5 15.5L10 18M20 10.4882V17.7C20 19.3802 20 20.2202 19.673 20.862C19.3854 21.4265 18.9265 21.8854 18.362 22.173C17.7202 22.5 16.8802 22.5 15.2 22.5H8.8C7.11984 22.5 6.27976 22.5 5.63803 22.173C5.07354 21.8854 4.6146 21.4265 4.32698 20.862C4 20.2202 4 19.3802 4 17.7V7.3C4 5.61984 4 4.77976 4.32698 4.13803C4.6146 3.57354 5.07354 3.1146 5.63803 2.82698C6.27976 2.5 7.11984 2.5 8.8 2.5H12.0118C12.7455 2.5 13.1124 2.5 13.4577 2.58289C13.7638 2.65638 14.0564 2.77759 14.3249 2.94208C14.6276 3.1276 14.887 3.38703 15.4059 3.90589L18.5941 7.09411C19.113 7.61297 19.3724 7.8724 19.5579 8.17515C19.7224 8.44356 19.8436 8.7362 19.9171 9.0423C20 9.38757 20 9.75445 20 10.4882Z"
                                                      stroke="currentColor" stroke-width="2" stroke-linecap="round"
                                                      stroke-linejoin="round"></path>
                                            </svg>
                                        </div>
                                    </div>
                                    <div class="uui-navbar07_item-right-2">
                                        <div class="uui-navbar07_item-heading-2">Plume Wiki</div> <!-- change to href-->
                                        <div class="uui-text-size-small-2">Get to know your favourite species in detail
                                        </div>
                                    </div>
                                </a>
                                <a href="/error/404" class="uui-navbar07_dropdown-link-2 w-inline-block">
                                    <div class="uui-navbar07_icon-wrapper-2">
                                        <div class="pricing-icon-1x1-xsmall-3 w-embed">
                                            <svg width="24" height="25" viewbox="0 0 24 25" fill="none"
                                                 xmlns="http://www.w3.org/2000/svg">
                                                <path d="M9.13626 9.63628L4.92893 5.42896M4.92893 19.5711L9.16797 15.3321M14.8611 15.3638L19.0684 19.5711M19.0684 5.42896L14.8287 9.66862M22 12.5C22 18.0228 17.5228 22.5 12 22.5C6.47715 22.5 2 18.0228 2 12.5C2 6.97715 6.47715 2.5 12 2.5C17.5228 2.5 22 6.97715 22 12.5ZM16 12.5C16 14.7091 14.2091 16.5 12 16.5C9.79086 16.5 8 14.7091 8 12.5C8 10.2909 9.79086 8.5 12 8.5C14.2091 8.5 16 10.2909 16 12.5Z"
                                                      stroke="currentColor" stroke-width="2" stroke-linecap="round"
                                                      stroke-linejoin="round"></path>
                                            </svg>
                                        </div>
                                    </div>
                                    <div class="uui-navbar07_item-right-2">
                                        <div class="uui-navbar07_item-heading-2">Find a Nest</div>
                                        <!-- change to href -->
                                        <div class="uui-text-size-small-2">Our ecotourism focus, partners and nesting
                                            opportunities
                                        </div>
                                    </div>
                                </a>
                            </div>
                        </nav>
                    </div>
                </sec:authorize>
                <a href="/index/subscription" class="uui-navbar07_link-2 w-nav-link">Subscription Plans</a>
                <a href="/index/our-team" class="uui-navbar07_link-2 w-nav-link">Our Team</a>
            </div>
            <div class="uui-navbar07_menu-right-2">
                <div class="uui-navbar07_button-wrapper-2">
                    <sec:authorize access="isAuthenticated()">
                        <a href="/user/dashboard" class="profile-link w-inline-block">
                            <img src="${user.profilePicPath}" loading="lazy" alt="" class="profile-link-image">
                        </a>
                    </sec:authorize>
                    <sec:authorize access="hasRole('ROLE_ANONYMOUS')">
                        <form method="GET" action="/auth/signup">
                            <button type="submit" class="user-signup desktop">
                                Signup
                            </button>
                        </form>
                        <form method="GET" action="/auth/login">
                            <button type="submit" class="user-log-in-log-out desktop">
                                Login
                            </button>
                        </form>

                    </sec:authorize>
                </div>
            </div>
        </div>

    </div>
</div>
<div class="page-wrapper">
    <header class="header-image-landingpage">
        <div class="container">
            <div class="div-block-4">
                <p class="paragraph large"><em class="italic-text-2">Nature&#x27;s Elegance Captured</em></p>
                <a href="/auth/signup" class="button w-button">Start Birding</a>
            </div>
        </div>
    </header>
    <div class="site-body">
        <div class="container">
            <section class="section_layout80">
                <div class="page-padding-2">
                    <div class="layout80_component">
                        <div class="max-width-large-2">
                            <h2 class="heading-medium">Your birdwatching adventure begins with us!</h2>
                        </div>
                        <div class="w-layout-grid layout80-list">
                            <div class="layout80_item">
                                <div class="uui-layout80_image-wrapper"><img src="/images/Mockups_site_Plume.png"
                                                                             loading="lazy"
                                                                             sizes="(max-width: 479px) 100vw, (max-width: 767px) 88vw, (max-width: 1279px) 25vw, 317.32501220703125px"
                                                                             srcset="/images/Mockups_site_Plume.png 500w, /images/Mockups_site_Plume.png 800w, /images/Mockups_site_Plume.png 1080w, /images/Mockups_site_Plume.png 1524w"
                                                                             alt="Mockup" class="uui-layout80_image">
                                </div>
                                <h3 class="uui-heading-xxsmall">Share your findings</h3>
                                <div class="uui-space-xxsmall-2"></div>
                                <div class="uui-text-size-medium-2">Upload both pictures and audio files of your
                                    sightings
                                </div>
                            </div>
                            <div class="layout80_item">
                                <div class="uui-layout80_image-wrapper"><img src="/images/community-9.png"
                                                                             loading="lazy"
                                                                             sizes="(max-width: 479px) 100vw, (max-width: 767px) 88vw, (max-width: 1279px) 25vw, 317.3374938964844px"
                                                                             srcset="/images/community-9.png 500w, /images/community-9.png 800w, /images/community-9.png 1080w, /images/community-9.png 1524w"
                                                                             alt="Mockup" class="uui-layout80_image">
                                </div>
                                <h3 class="uui-heading-xxsmall">Engage with the community</h3>
                                <div class="uui-space-xxsmall-2"></div>
                                <div class="uui-text-size-medium-2">Keep track of your progress, compare achievements
                                    and get in touch with other birders
                                </div>
                            </div>
                            <div class="layout80_item">
                                <div class="uui-layout80_image-wrapper"><img src="/images/lounge-11.png" loading="lazy"
                                                                             sizes="(max-width: 479px) 100vw, (max-width: 767px) 88vw, (max-width: 1279px) 25vw, 317.3374938964844px"
                                                                             srcset="/images/lounge-11.png 500w, /images/lounge-11.png 800w, /images/lounge-11.png 1080w, /images/lounge-11.png 1524w"
                                                                             alt="Mockup" class="uui-layout80_image">
                                </div>
                                <h3 class="uui-heading-xxsmall">Ecotourism </h3>
                                <div class="uui-space-xxsmall-2"></div>
                                <div class="uui-text-size-medium-2">Contribute to the protection of natural and cultural
                                    heritage, supporting local economies.
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="uui-container-large-2"></div>
                </div>
            </section>
        </div>
        <div class="page-wrapper-3">
            <div class="global-styles w-embed">
                <style>
                    /* Snippet gets rid of top margin on first element in any rich text*/
                    .w-richtext > :first-child {
                        margin-top: 0;
                    }

                    /* Snippet gets rid of bottom margin on last element in any rich text*/
                    .w-richtext > :last-child, .w-richtext ol li:last-child, .w-richtext ul li:last-child {
                        margin-bottom: 0;
                    }

                    /* Snippet prevents all click and hover interaction with an element */
                    .clickable-off {
                        pointer-events: none;
                    }

                    /* Snippet enables all click and hover interaction with an element */
                    .clickable-on {
                        pointer-events: auto;
                    }

                    /* Snippet enables you to add class of div-square which creates and maintains a 1:1 dimension of a div.*/
                    .div-square::after {
                        content: "";
                        display: block;
                        padding-bottom: 100%;
                    }

                    /*Hide focus outline for main content element*/
                    main:focus-visible {
                        outline: -webkit-focus-ring-color auto 0px;
                    }

                    /* Make sure containers never lose their center alignment*/
                    .container-medium, .container-small, .container-large {
                        margin-right: auto !important;
                        margin-left: auto !important;
                    }

                    /*Reset buttons, and links styles*/
                    a {
                        color: inherit;
                        text-decoration: inherit;
                        font-size: inherit;
                    }

                    /*Apply "..." after 3 lines of text */
                    .text-style-3lines {
                        display: -webkit-box;
                        overflow: hidden;
                        -webkit-line-clamp: 3;
                        -webkit-box-orient: vertical;
                    }

                    /*Apply "..." after 2 lines of text */
                    .text-style-2lines {
                        display: -webkit-box;
                        overflow: hidden;
                        -webkit-line-clamp: 2;
                        -webkit-box-orient: vertical;
                    }
                </style>
            </div>
            <main class="main-wrapper">
                <div class="section-home-benefits">
                    <div class="container-6">
                        <div class="padding-vertical">
                            <div class="home-benefits-section">
                                <div class="home-benefits-wrapper">
                                    <div id="w-node-_191b8052-6286-aced-ff65-0edf1b20eef7-6e2eee46"
                                         class="home-benefits-content">
                                        <div data-w-id="191b8052-6286-aced-ff65-0edf1b20eef8"
                                             style="-webkit-transform:translate3d(0, 70px, 0) scale3d(1, 1, 1) rotateX(0) rotateY(0) rotateZ(0) skew(0, 0);-moz-transform:translate3d(0, 70px, 0) scale3d(1, 1, 1) rotateX(0) rotateY(0) rotateZ(0) skew(0, 0);-ms-transform:translate3d(0, 70px, 0) scale3d(1, 1, 1) rotateX(0) rotateY(0) rotateZ(0) skew(0, 0);transform:translate3d(0, 70px, 0) scale3d(1, 1, 1) rotateX(0) rotateY(0) rotateZ(0) skew(0, 0);opacity:0"
                                             class="margin-bottom">
                                            <h2 class="h2">An epic,<br>major benefit</h2>
                                        </div>
                                        <p data-w-id="191b8052-6286-aced-ff65-0edf1b20eefd"
                                           style="-webkit-transform:translate3d(0, 70px, 0) scale3d(1, 1, 1) rotateX(0) rotateY(0) rotateZ(0) skew(0, 0);-moz-transform:translate3d(0, 70px, 0) scale3d(1, 1, 1) rotateX(0) rotateY(0) rotateZ(0) skew(0, 0);-ms-transform:translate3d(0, 70px, 0) scale3d(1, 1, 1) rotateX(0) rotateY(0) rotateZ(0) skew(0, 0);transform:translate3d(0, 70px, 0) scale3d(1, 1, 1) rotateX(0) rotateY(0) rotateZ(0) skew(0, 0);opacity:0"
                                           class="standard-paragraph"><span>Every bird counts! Through Plume&#x27;s features, your birdwatching activity will contribute to ongoing research, environmental awareness and sustainability practices.</span>
                                        </p>
                                    </div>
                                    <div id="w-node-_191b8052-6286-aced-ff65-0edf1b20ef03-6e2eee46"
                                         data-w-id="191b8052-6286-aced-ff65-0edf1b20ef03"
                                         style="-webkit-transform:translate3d(0, 70px, 0) scale3d(1, 1, 1) rotateX(0) rotateY(0) rotateZ(0) skew(0, 0);-moz-transform:translate3d(0, 70px, 0) scale3d(1, 1, 1) rotateX(0) rotateY(0) rotateZ(0) skew(0, 0);-ms-transform:translate3d(0, 70px, 0) scale3d(1, 1, 1) rotateX(0) rotateY(0) rotateZ(0) skew(0, 0);transform:translate3d(0, 70px, 0) scale3d(1, 1, 1) rotateX(0) rotateY(0) rotateZ(0) skew(0, 0);opacity:0"
                                         class="home-benefits_product-images"><img
                                            src="/images/Mockups-site-Plume-5.png" loading="lazy"
                                            sizes="(max-width: 479px) 100vw, 440px"
                                            srcset="/images/Mockups-site-Plume-5-p-500.png 500w, /images/Mockups-site-Plume-5-p-800.png 800w, /images/Mockups-site-Plume-5-p-1080.png 1080w, /images/Mockups-site-Plume-5.png 1524w"
                                            alt="" class="decoration-benefits_trust">
                                        <div class="svg-arrow top-left w-embed">
                                            <svg width="500" height="auto" viewbox="0 0 274 246" fill="none"
                                                 xmlns="http://www.w3.org/2000/svg">
                                                <g clip-path="url(#clip0_3_252)">
                                                    <path d="M247.029 126.774C239.87 122.246 234.026 118.963 228.47 115.304C225.269 113.092 221.692 110.591 225.349 104.578C237.422 110.486 249.602 115.166 260.426 122.858C265.039 126.033 265.292 129.442 262.591 134.52C261.626 136.402 260.284 137.995 259.133 139.495C252.518 147.651 245.904 155.807 239.006 163.866C236.801 166.584 234.122 169.297 230.452 166.607C227.158 164.204 227.477 160.518 229.212 157.321C231.236 153.748 233.729 150.654 236.128 147.37C237.855 145.119 239.772 142.776 240.56 139.568C239.418 140.123 238.276 140.677 237.133 141.232C224.378 147.426 218.321 146.6 207.608 137.206C199.151 129.541 192.506 120.761 188.438 110.024C187.42 107.458 186.401 104.892 185.476 102.516C180.93 92.2461 175.258 90.7624 166.85 98.1411C162.551 101.877 159 106.662 155.171 110.875C143.867 123.898 133.906 125.204 119.597 115.201C108.865 107.7 100.046 98.3274 93.5205 86.8997C91.5637 83.3769 89.5139 79.6637 87.079 76.6084C82.9572 71.5471 79.3578 71.4115 75.5191 76.5715C71.2997 81.9164 68.1163 87.9354 64.6495 93.8565C62.1479 97.8963 60.306 102.322 57.5211 106.264C51.7609 114.241 43.8535 118.787 33.7326 116.874C26.1663 115.369 18.5115 113.2 11.1444 110.657C6.3275 108.993 2.47584 105.449 2.44949 98.1634C4.90665 98.8537 6.89008 99.5385 9.06389 100.131C16.8117 102.49 24.5595 104.849 32.5021 106.642C40.1614 108.337 45.6913 104.71 49.3529 98.2239C52.4389 92.4877 54.9582 86.5558 58.1372 81.0098C61.1214 76.0294 64.0126 70.8586 67.9353 66.8349C76.2635 57.8469 87.5355 58.2589 95.3096 67.9031C98.8691 72.2958 101.853 77.4388 104.554 82.4839C110.145 92.4817 118.03 100.424 127.256 106.774C134.977 111.97 138.679 111.35 144.806 104.608C149.88 99.0835 154.485 93.0806 160.214 88.4152C163.845 85.2397 168.98 83.2167 173.917 82.2321C182.462 80.4371 189.249 84.2041 193.251 91.9132C195.296 96.0994 197.244 100.568 198.528 105.124C201.746 115.568 208.684 123.5 216.387 130.589C220.146 133.943 224.113 135.313 229.253 132.817C234.393 130.32 239.901 129.059 247.029 126.774Z"
                                                          fill="currentColor"></path>
                                                </g>
                                            </svg>
                                        </div>
                                    </div>
                                </div>
                                <div class="home-benefits-wrapper margin-top">
                                    <div id="w-node-_191b8052-6286-aced-ff65-0edf1b20ef0a-6e2eee46"
                                         data-w-id="191b8052-6286-aced-ff65-0edf1b20ef0a"
                                         style="-webkit-transform:translate3d(0, 70px, 0) scale3d(1, 1, 1) rotateX(0) rotateY(0) rotateZ(0) skew(0, 0);-moz-transform:translate3d(0, 70px, 0) scale3d(1, 1, 1) rotateX(0) rotateY(0) rotateZ(0) skew(0, 0);-ms-transform:translate3d(0, 70px, 0) scale3d(1, 1, 1) rotateX(0) rotateY(0) rotateZ(0) skew(0, 0);transform:translate3d(0, 70px, 0) scale3d(1, 1, 1) rotateX(0) rotateY(0) rotateZ(0) skew(0, 0);opacity:0"
                                         class="home-benefits_product-images"><img src="/images/three_lines.svg"
                                                                                   loading="lazy" width="48" alt=""
                                                                                   class="decoration-benefits_lines-on-right"><img
                                            src="https://assets-global.website-files.com/62263b9f06588ee85f125b71/62263b9f06588ec753125b8d_decorative-spring.svg"
                                            loading="lazy" width="37.5" alt="" class="decoration-benefits_squiggle"><img
                                            src="https://assets-global.website-files.com/62263b9f06588ee85f125b71/62263b9f06588ede81125b89_dashboard-shadow.svg"
                                            loading="lazy" alt="" class="decoration-benefits_shadow"><img
                                            src="/images/destinos-de-ecoturismo-em-portugal-slide2.jpg" loading="lazy"
                                            width="210" sizes="(max-width: 479px) 70vw, 210px" alt=""
                                            srcset="/images/destinos-de-ecoturismo-em-portugal-slide2-p-500.jpg 500w, /images/destinos-de-ecoturismo-em-portugal-slide2-p-800.jpg 800w, /images/destinos-de-ecoturismo-em-portugal-slide2-p-1080.jpg 1080w, /images/destinos-de-ecoturismo-em-portugal-slide2.jpg 1920w"
                                            class="decoration-benefits_churn"><img
                                            src="/images/cocoon-eco-design-lodges.jpg" loading="lazy"
                                            srcset="/images/cocoon-eco-design-lodges-p-500.jpg 500w, /images/cocoon-eco-design-lodges-p-800.jpg 800w, /images/cocoon-eco-design-lodges-p-1080.jpg 1080w, /images/cocoon-eco-design-lodges.jpg 1400w"
                                            sizes="(max-width: 479px) 100vw, 300px" alt=""
                                            class="decoration-benefits-blue-box"><img
                                            src="/images/Praia-fluvial-de-Monsaraz-Portugal.webp" loading="lazy"
                                            width="240" sizes="(max-width: 479px) 70vw, 240px" alt=""
                                            srcset="/images/Praia-fluvial-de-Monsaraz-Portugal-p-500.webp 500w, /images/Praia-fluvial-de-Monsaraz-Portugal-p-800.webp 800w, /images/Praia-fluvial-de-Monsaraz-Portugal-p-1080.webp 1080w, /images/Praia-fluvial-de-Monsaraz-Portugal.webp 1180w"
                                            class="decoration-benefits_sales"></div>
                                    <div id="w-node-_191b8052-6286-aced-ff65-0edf1b20ef13-6e2eee46"
                                         class="home-benefits-content">
                                        <div data-w-id="191b8052-6286-aced-ff65-0edf1b20ef14"
                                             style="-webkit-transform:translate3d(0, 70px, 0) scale3d(1, 1, 1) rotateX(0) rotateY(0) rotateZ(0) skew(0, 0);-moz-transform:translate3d(0, 70px, 0) scale3d(1, 1, 1) rotateX(0) rotateY(0) rotateZ(0) skew(0, 0);-ms-transform:translate3d(0, 70px, 0) scale3d(1, 1, 1) rotateX(0) rotateY(0) rotateZ(0) skew(0, 0);transform:translate3d(0, 70px, 0) scale3d(1, 1, 1) rotateX(0) rotateY(0) rotateZ(0) skew(0, 0);opacity:0"
                                             class="margin-bottom margin-small">
                                            <h2 class="h2">Unlock nature, unlock discounts</h2>
                                        </div>
                                        <p data-w-id="191b8052-6286-aced-ff65-0edf1b20ef17"
                                           style="-webkit-transform:translate3d(0, 70px, 0) scale3d(1, 1, 1) rotateX(0) rotateY(0) rotateZ(0) skew(0, 0);-moz-transform:translate3d(0, 70px, 0) scale3d(1, 1, 1) rotateX(0) rotateY(0) rotateZ(0) skew(0, 0);-ms-transform:translate3d(0, 70px, 0) scale3d(1, 1, 1) rotateX(0) rotateY(0) rotateZ(0) skew(0, 0);transform:translate3d(0, 70px, 0) scale3d(1, 1, 1) rotateX(0) rotateY(0) rotateZ(0) skew(0, 0);opacity:0"
                                           class="standard-paragraph">Our partners will provide you with the best
                                            accommodation experiences tailored to your preferences and objectives in
                                            birdwatching, placing ecotourism as a central axis of our mission.</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="section-home-process">
                    <div class="container-6">
                        <div class="padding-vertical">
                            <div data-w-id="191b8052-6286-aced-ff65-0edf1b20ef4e"
                                 style="-webkit-transform:translate3d(0, 70px, 0) scale3d(1, 1, 1) rotateX(0) rotateY(0) rotateZ(0) skew(0, 0);-moz-transform:translate3d(0, 70px, 0) scale3d(1, 1, 1) rotateX(0) rotateY(0) rotateZ(0) skew(0, 0);-ms-transform:translate3d(0, 70px, 0) scale3d(1, 1, 1) rotateX(0) rotateY(0) rotateZ(0) skew(0, 0);transform:translate3d(0, 70px, 0) scale3d(1, 1, 1) rotateX(0) rotateY(0) rotateZ(0) skew(0, 0);opacity:0"
                                 class="margin-bottom margin-xlarge">
                                <h2 class="h2 text-align-center">Here’s how plume works</h2>
                            </div>
                            <div class="home-process-content_wrapper">
                                <div id="w-node-_191b8052-6286-aced-ff65-0edf1b20ef52-6e2eee46"
                                     class="home-process-block">
                                    <div data-w-id="191b8052-6286-aced-ff65-0edf1b20ef53"
                                         style="-webkit-transform:translate3d(0, 70px, 0) scale3d(1, 1, 1) rotateX(0) rotateY(0) rotateZ(0) skew(0, 0);-moz-transform:translate3d(0, 70px, 0) scale3d(1, 1, 1) rotateX(0) rotateY(0) rotateZ(0) skew(0, 0);-ms-transform:translate3d(0, 70px, 0) scale3d(1, 1, 1) rotateX(0) rotateY(0) rotateZ(0) skew(0, 0);transform:translate3d(0, 70px, 0) scale3d(1, 1, 1) rotateX(0) rotateY(0) rotateZ(0) skew(0, 0);opacity:0"
                                         class="margin-bottom"><img src="/images/1_6.png" loading="lazy" alt=""
                                                                    class="process-image"></div>
                                    <h3 class="h-small">Share your top bird discoveries</h3>
                                    <p class="standard-paragraph smaller">Either a photograph or a recording, share what
                                        you have spotted!</p>
                                </div>
                                <div id="w-node-_191b8052-6286-aced-ff65-0edf1b20ef59-6e2eee46"
                                     class="home-process-block">
                                    <div data-w-id="191b8052-6286-aced-ff65-0edf1b20ef5a"
                                         style="-webkit-transform:translate3d(0, 70px, 0) scale3d(1, 1, 1) rotateX(0) rotateY(0) rotateZ(0) skew(0, 0);-moz-transform:translate3d(0, 70px, 0) scale3d(1, 1, 1) rotateX(0) rotateY(0) rotateZ(0) skew(0, 0);-ms-transform:translate3d(0, 70px, 0) scale3d(1, 1, 1) rotateX(0) rotateY(0) rotateZ(0) skew(0, 0);transform:translate3d(0, 70px, 0) scale3d(1, 1, 1) rotateX(0) rotateY(0) rotateZ(0) skew(0, 0);opacity:0"
                                         class="margin-bottom"><img src="/images/8.png" loading="lazy" alt=""
                                                                    class="process-image"></div>
                                    <h3 class="h-small">Complete challenges and obtain achievements</h3>
                                    <p class="standard-paragraph smaller">Level up in Plume and keep track of your
                                        activities while having fun. Challenge yourself!</p>
                                </div>
                                <div id="w-node-_191b8052-6286-aced-ff65-0edf1b20ef60-6e2eee46"
                                     class="home-process-block">
                                    <div data-w-id="191b8052-6286-aced-ff65-0edf1b20ef61"
                                         style="-webkit-transform:translate3d(0, 70px, 0) scale3d(1, 1, 1) rotateX(0) rotateY(0) rotateZ(0) skew(0, 0);-moz-transform:translate3d(0, 70px, 0) scale3d(1, 1, 1) rotateX(0) rotateY(0) rotateZ(0) skew(0, 0);-ms-transform:translate3d(0, 70px, 0) scale3d(1, 1, 1) rotateX(0) rotateY(0) rotateZ(0) skew(0, 0);transform:translate3d(0, 70px, 0) scale3d(1, 1, 1) rotateX(0) rotateY(0) rotateZ(0) skew(0, 0);opacity:0"
                                         class="margin-bottom"><img src="/images/9.png" loading="lazy" alt=""
                                                                    class="process-image"></div>
                                    <h3 class="h-small">Get discounts and opportunities</h3>
                                    <p class="standard-paragraph smaller">The more you play, the more you win. Embrace
                                        nature and benefit from our ecotouristic associates in your next birdwatching
                                        trip!</p>
                                </div>
                                <div id="w-node-_191b8052-6286-aced-ff65-0edf1b20ef67-6e2eee46"
                                     class="home-process-block">
                                    <div data-w-id="191b8052-6286-aced-ff65-0edf1b20ef68"
                                         style="-webkit-transform:translate3d(0, 70px, 0) scale3d(1, 1, 1) rotateX(0) rotateY(0) rotateZ(0) skew(0, 0);-moz-transform:translate3d(0, 70px, 0) scale3d(1, 1, 1) rotateX(0) rotateY(0) rotateZ(0) skew(0, 0);-ms-transform:translate3d(0, 70px, 0) scale3d(1, 1, 1) rotateX(0) rotateY(0) rotateZ(0) skew(0, 0);transform:translate3d(0, 70px, 0) scale3d(1, 1, 1) rotateX(0) rotateY(0) rotateZ(0) skew(0, 0);opacity:0"
                                         class="margin-bottom"><img src="/images/10.png" loading="lazy" alt=""
                                                                    class="process-image"></div>
                                    <h3 class="h-small">Share with friends and fellow birders</h3>
                                    <p class="standard-paragraph smaller">Connect with others and engage with a larger
                                        community focused on nature, the environment and animal welfare.</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="section-home-testimonial">
                    <div class="container-6">
                        <div class="padding-vertical">
                            <div class="slider-wrapper"><img
                                    src="https://assets-global.website-files.com/62263b9f06588ee85f125b71/6230ad0a692e781519770ce9_Group%205.svg"
                                    loading="lazy" style="opacity:0" data-w-id="191b8052-6286-aced-ff65-0edf1b20ef1d"
                                    alt="" class="testimonial-decor-2">
                                <div data-delay="4000" data-animation="cross" class="slider-horizontal w-slider"
                                     data-autoplay="true" data-easing="ease" data-hide-arrows="false"
                                     data-disable-swipe="false" data-autoplay-limit="0" data-nav-spacing="3"
                                     data-duration="500" data-infinite="true">
                                    <div class="slider-mask w-slider-mask">
                                        <div class="slider-slide w-slide">
                                            <div class="testimonial-card">
                                                <div class="testimonial-image-wrap"><img
                                                        src="https://assets-global.website-files.com/612eb5edd38dcc60eef8c11a/612eb5edd38dccc6fcf8c13e_angle.svg"
                                                        alt="" class="horizontal-angle"><img src="/images/stringio.png"
                                                                                             alt="Testimonial Image"
                                                                                             sizes="(max-width: 767px) 90vw, (max-width: 1279px) 37vw, 416px"
                                                                                             srcset="/images/stringio.png 500w, /images/stringio.png 750w"
                                                                                             class="testimonial-image">
                                                </div>
                                                <div class="testimonial-content">
                                                    <div class="height-100px">
                                                        <h4 class="quote-content">&quot;Partnering with Plume has
                                                            enriched our extensive collection. Their user-contributed
                                                            photos and observations give us real-time data that&#x27;s
                                                            invaluable to our research. Together, we&#x27;re pioneering
                                                            the next level of birdwatching.&quot;</h4>
                                                    </div>
                                                    <div class="author-block"><img src="/images/14.png" alt=""
                                                                                   class="author-image">
                                                        <div>
                                                            <h4 class="author-name">The Cornell Lab of Ornithology</h4>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="slider-slide w-slide">
                                            <div class="testimonial-card">
                                                <div class="testimonial-image-wrap"><img
                                                        src="https://assets-global.website-files.com/612eb5edd38dcc60eef8c11a/612eb5edd38dccc6fcf8c13e_angle.svg"
                                                        alt="" class="horizontal-angle"><img src="/images/302361366.jpg"
                                                                                             alt="Testimonial Image"
                                                                                             sizes="(max-width: 767px) 90vw, (max-width: 1279px) 37vw, 416px"
                                                                                             srcset="/images/302361366.jpg 500w, /images/302361366.jpg 800w, /images/302361366.jpg 1024w"
                                                                                             class="testimonial-image">
                                                    <a href="#" class="play-button w-inline-block w-lightbox">
                                                        <script type="application/json" class="w-json">{
                                                            "items": [
                                                                {
                                                                    "url": "https://vimeo.com/130820761",
                                                                    "originalUrl": "https://vimeo.com/130820761",
                                                                    "width": 940,
                                                                    "height": 529,
                                                                    "thumbnailUrl": "https://i.vimeocdn.com/video/522826368_1280.jpg",
                                                                    "html": "<iframe class=\"embedly-embed\" src=\"//cdn.embedly.com/widgets/media?src=https%3A%2F%2Fplayer.vimeo.com%2Fvideo%2F130820761%3Fapp_id%3D122963&dntp=1&url=https%3A%2F%2Fvimeo.com%2F130820761&image=https%3A%2F%2Fi.vimeocdn.com%2Fvideo%2F522826368_1280.jpg&key=96f1f04c5f4143bcb0f2e68c87d65feb&type=text%2Fhtml&schema=vimeo\" width=\"940\" height=\"529\" scrolling=\"no\" frameborder=\"0\" allow=\"autoplay; fullscreen\" allowfullscreen=\"true\"></iframe>",
                                                                    "type": "video"
                                                                }
                                                            ],
                                                            "group": ""
                                                        }</script>
                                                    </a>
                                                </div>
                                                <div class="testimonial-content">
                                                    <div class="height-100px">
                                                        <h4 class="quote-content">&quot;Our collaboration with Plume has
                                                            been a game changer. Their passionate community of
                                                            birdwatchers aligns perfectly with our eco-conscious
                                                            travelers. We&#x27;re thrilled to offer special discounts to
                                                            Plume members, further promoting sustainable and mindful
                                                            travel.&quot;</h4>
                                                    </div>
                                                    <div class="author-block"><img src="/images/1_3.png" alt=""
                                                                                   class="author-image">
                                                        <div>
                                                            <h4 class="author-name">Reserva Alecrim EcoSuite &amp;
                                                                Glamping</h4>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="left-arrow w-slider-arrow-left">
                                        <div class="w-icon-slider-left"></div>
                                    </div>
                                    <div class="right-arrow w-slider-arrow-right">
                                        <div class="w-icon-slider-right"></div>
                                    </div>
                                    <div class="slide-nav-2 w-slider-nav w-slider-nav-invert w-round"></div>
                                </div>
                                <img src="https://assets-global.website-files.com/62263b9f06588ee85f125b71/62263b9f06588ede81125b89_dashboard-shadow.svg"
                                     loading="lazy" alt="" class="decoration-benefits_shadow">
                                <div class="testimonial-shadow"></div>
                                <img src="https://assets-global.website-files.com/62263b9f06588ee85f125b71/6230ad0a692e780eae770ce8_Group%206.svg"
                                     loading="lazy" style="opacity:0" data-w-id="191b8052-6286-aced-ff65-0edf1b20ef4a"
                                     alt="" class="testimonial-decor">
                            </div>
                        </div>
                    </div>
                </div>
                <div class="section-business-logos">
                    <div class="container-6">
                        <div class="padding-vertical">
                            <div class="business-logo-section">
                                <div data-w-id="191b8052-6286-aced-ff65-0edf1b20eee4"
                                     style="-webkit-transform:translate3d(0, 70px, 0) scale3d(1, 1, 1) rotateX(0) rotateY(0) rotateZ(0) skew(0, 0);-moz-transform:translate3d(0, 70px, 0) scale3d(1, 1, 1) rotateX(0) rotateY(0) rotateZ(0) skew(0, 0);-ms-transform:translate3d(0, 70px, 0) scale3d(1, 1, 1) rotateX(0) rotateY(0) rotateZ(0) skew(0, 0);transform:translate3d(0, 70px, 0) scale3d(1, 1, 1) rotateX(0) rotateY(0) rotateZ(0) skew(0, 0);opacity:0"
                                     class="margin-bottom margin-xlarge">
                                    <h3 class="h-small text-align-center">Trusted by Responsible Partners</h3>
                                </div>
                                <div data-w-id="191b8052-6286-aced-ff65-0edf1b20eee7"
                                     style="-webkit-transform:translate3d(0, 70px, 0) scale3d(1, 1, 1) rotateX(0) rotateY(0) rotateZ(0) skew(0, 0);-moz-transform:translate3d(0, 70px, 0) scale3d(1, 1, 1) rotateX(0) rotateY(0) rotateZ(0) skew(0, 0);-ms-transform:translate3d(0, 70px, 0) scale3d(1, 1, 1) rotateX(0) rotateY(0) rotateZ(0) skew(0, 0);transform:translate3d(0, 70px, 0) scale3d(1, 1, 1) rotateX(0) rotateY(0) rotateZ(0) skew(0, 0);opacity:0"
                                     class="business-logos_wrapper">
                                    <div class="business-logos"><img
                                            src="https://assets-global.website-files.com/62263b9f06588ee85f125b71/62263b9f06588e6886125b9e_Webflow%20Logo.svg"
                                            loading="lazy" alt=""></div>
                                    <div class="business-logos"><img src="/images/1_4.png" loading="lazy" alt=""></div>
                                    <div class="business-logos"><img src="/images/reserva-1_5.png" loading="lazy"
                                                                     alt=""></div>
                                    <div class="business-logos"><img src="/images/National-Geographic-Logo.png"
                                                                     loading="lazy"
                                                                     sizes="(max-width: 767px) 20vw, (max-width: 991px) 19vw, (max-width: 1279px) 12vw, 135.1999969482422px"
                                                                     srcset="/images/National-Geographic-Logo.png 500w, /images/National-Geographic-Logo.png 800w, /images/National-Geographic-Logo.png 1080w, /images/National-Geographic-Logo.png 1600w, /images/National-Geographic-Logo.png 2000w, /images/National-Geographic-Logo.png 3840w"
                                                                     alt=""></div>
                                    <div id="w-node-_191b8052-6286-aced-ff65-0edf1b20eef0-6e2eee46"
                                         class="business-logos"><img src="/images/upskill_1_6.png" loading="lazy"
                                                                     alt=""></div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </main>
        </div>
    </div>
</div>
<div class="header-image---home black-gradient">
    <div class="div-block-2">
        <div class="container w-container">
            <div class="text-box _550px center-align" style="margin-bottom: 35px">
                <h2 class="heading h2">Don&#x27;t miss our latest news</h2>
                <p class="paragraph large">Keep up with the flock, now straight into your inbox!</p>
                <div class="spacer _16"></div>
                <div class="email-form center-align w-form">
                    <form id="wf-form-Subscribe-Form" name="wf-form-Subscribe-Form" data-name="Subscribe Form"
                          method="get" class="email-form" data-wf-page-id="64f615e4cfda04626e2eee46"
                          data-wf-element-id="4b7eae9c-8abc-9b14-e6a2-0d470afd457b">
                        <div class="email-subscribe"><input type="email" class="text-field no-margin w-input"
                                                            maxlength="256" name="Email-2" data-name="Email 2"
                                                            placeholder="Enter your email" id="Email-2"
                                                            required=""><input type="submit" value="Subscribe"
                                                                               data-wait="Please wait..."
                                                                               class="button dark w-button"></div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="footer">
    <div class="footer-container w-container">
        <div class="w-layout-grid footer-grid">
            <div id="w-node-b8d7be4a-ce45-83ab-5947-02d204c8bff0-cf3fcb86" class="footer-logo-block">
                <a data-ix="logo" href="/index/" aria-current="page" class="footer-logo w-nav-brand w--current"><img
                        src="/images/Untitled-design-26_1.png" width="204" alt="" class="image-3"></a>
                <p class="paragraph small">Built by Potato Labs Inc.<br>for Plumers with lots of Plumage<br></p>
                <div class="spacer _16"></div>
                <div class="paragraph small">© 2023 Potato Labs Inc. All Potatoes Reserved.</div>
            </div>
            <div class="footer-links-container">
                <h5 class="footer-header">Website</h5>
                <a href="/index/" aria-current="page" class="footer-link w--current">Home</a>
                <a href="/index/contact" class="footer-link">Contact us</a>
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
<script src="https://d3e54v103j8qbb.cloudfront.net/js/jquery-3.5.1.min.dc5e7f18c8.js?site=64f615e4cfda04626e2eee44"
        type="text/javascript" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0="
        crossorigin="anonymous"></script>
<script src="/js/webflow.js" type="text/javascript"></script>
</body>
</html>