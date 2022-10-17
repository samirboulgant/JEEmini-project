<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>

<head>

    <meta charset="UTF-8">
<meta http-equiv="Content-type" content="text/html; charset=UTF-8">
    <meta content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1" name="viewport" />

    <meta content="noindex, nofollow" name="robots" />
    <link href="https://fonts.googleapis.com" rel="dns-prefetch" />
    <link href="//s.w.org" rel="dns-prefetch" />
    <link  href="https://fonts.gstatic.com" rel="preconnect" />
    <link href="https://marketplace.exertiowp.com/feed/" rel="alternate" title="Exertio WordPress Theme » Feed"
        type="application/rss+xml" />
    <link href="https://marketplace.exertiowp.com/comments/feed/" rel="alternate"
        title="Exertio WordPress Theme » Comments Feed" type="application/rss+xml" />
    <script type="text/javascript">
        window._wpemojiSettings = { "baseUrl": "https:\/\/s.w.org\/images\/core\/emoji\/13.1.0\/72x72\/", "ext": ".png", "svgUrl": "https:\/\/s.w.org\/images\/core\/emoji\/13.1.0\/svg\/", "svgExt": ".svg", "source": { "concatemoji": "https:\/\/marketplace.exertiowp.com\/wp-includes\/js\/wp-emoji-release.min.js?ver=5.8.2" } };
        !function (e, a, t) { var n, r, o, i = a.createElement("canvas"), p = i.getContext && i.getContext("2d"); function s(e, t) { var a = String.fromCharCode; p.clearRect(0, 0, i.width, i.height), p.fillText(a.apply(this, e), 0, 0); e = i.toDataURL(); return p.clearRect(0, 0, i.width, i.height), p.fillText(a.apply(this, t), 0, 0), e === i.toDataURL() } function c(e) { var t = a.createElement("script"); t.src = e, t.defer = t.type = "text/javascript", a.getElementsByTagName("head")[0].appendChild(t) } for (o = Array("flag", "emoji"), t.supports = { everything: !0, everythingExceptFlag: !0 }, r = 0; r < o.length; r++)t.supports[o[r]] = function (e) { if (!p || !p.fillText) return !1; switch (p.textBaseline = "top", p.font = "600 32px Arial", e) { case "flag": return s([127987, 65039, 8205, 9895, 65039], [127987, 65039, 8203, 9895, 65039]) ? !1 : !s([55356, 56826, 55356, 56819], [55356, 56826, 8203, 55356, 56819]) && !s([55356, 57332, 56128, 56423, 56128, 56418, 56128, 56421, 56128, 56430, 56128, 56423, 56128, 56447], [55356, 57332, 8203, 56128, 56423, 8203, 56128, 56418, 8203, 56128, 56421, 8203, 56128, 56430, 8203, 56128, 56423, 8203, 56128, 56447]); case "emoji": return !s([10084, 65039, 8205, 55357, 56613], [10084, 65039, 8203, 55357, 56613]) }return !1 }(o[r]), t.supports.everything = t.supports.everything && t.supports[o[r]], "flag" !== o[r] && (t.supports.everythingExceptFlag = t.supports.everythingExceptFlag && t.supports[o[r]]); t.supports.everythingExceptFlag = t.supports.everythingExceptFlag && !t.supports.flag, t.DOMReady = !1, t.readyCallback = function () { t.DOMReady = !0 }, t.supports.everything || (n = function () { t.readyCallback() }, a.addEventListener ? (a.addEventListener("DOMContentLoaded", n, !1), e.addEventListener("load", n, !1)) : (e.attachEvent("onload", n), a.attachEvent("onreadystatechange", function () { "complete" === a.readyState && t.readyCallback() })), (n = t.source || {}).concatemoji ? c(n.concatemoji) : n.wpemoji && n.twemoji && (c(n.twemoji), c(n.wpemoji))) }(window, document, window._wpemojiSettings);
    </script>
    <style type="text/css">
        img.wp-smiley,
        img.emoji {
            display: inline !important;
            border: none !important;
            box-shadow: none !important;
            height: 1em !important;
            width: 1em !important;
            margin: 0 .07em !important;
            vertical-align: -0.1em !important;
            background: none !important;
            padding: 0 !important;
        }
    </style>
    <link href="https://marketplace.exertiowp.com/wp-includes/css/dist/block-library/style.min.css?ver=5.8.2"
        id="wp-block-library-css" media="all" rel="stylesheet" type="text/css" />
    <link
        href="https://marketplace.exertiowp.com/wp-content/plugins/woocommerce/packages/woocommerce-blocks/build/wc-blocks-vendors-style.css?ver=6.3.3"
        id="wc-blocks-vendors-style-css" media="all" rel="stylesheet" type="text/css" />
    <link
        href="https://marketplace.exertiowp.com/wp-content/plugins/woocommerce/packages/woocommerce-blocks/build/wc-blocks-style.css?ver=6.3.3"
        id="wc-blocks-style-css" media="all" rel="stylesheet" type="text/css" />
    <link
        href="https://marketplace.exertiowp.com/wp-content/plugins/redux-framework/redux-core/extendify-sdk/public/build/extendify-utilities.css?ver=13.4"
        id="extendify-sdk-utility-classes-css" media="all" rel="stylesheet" type="text/css" />
    <link href="https://marketplace.exertiowp.com/wp-content/plugins/contact-form-7/includes/css/styles.css?ver=5.5.3"
        id="contact-form-7-css" media="all" rel="stylesheet" type="text/css" />
    <link
        href="https://marketplace.exertiowp.com/wp-content/plugins/woocommerce/assets/css/woocommerce-layout.css?ver=6.0.0"
        id="woocommerce-layout-css" media="all" rel="stylesheet" type="text/css" />
    <link
        href="https://marketplace.exertiowp.com/wp-content/plugins/woocommerce/assets/css/woocommerce-smallscreen.css?ver=6.0.0"
        id="woocommerce-smallscreen-css" media="only screen and (max-width: 768px)" rel="stylesheet" type="text/css" />
    <link href="https://marketplace.exertiowp.com/wp-content/plugins/woocommerce/assets/css/woocommerce.css?ver=6.0.0"
        id="woocommerce-general-css" media="all" rel="stylesheet" type="text/css" />
    <style id="woocommerce-inline-inline-css" type="text/css">
        .woocommerce form .form-row .required {
            visibility: visible;
        }
    </style>
    <link href="https://fonts.googleapis.com/css?family=Poppins:400,500,600&subset=latin,latin-ext"
        id="exertio-theme-fonts-css" media="all" rel="stylesheet" type="text/css" />
    <link href="https://marketplace.exertiowp.com/wp-content/themes/exertio/css/owl.carousel.min.css?ver=5.8.2"
        id="owl-carousel-css" media="all" rel="stylesheet" type="text/css" />
    <link href="https://marketplace.exertiowp.com/wp-content/themes/exertio/css/bootstrap.min.css?ver=5.8.2"
        id="bootstrap-css" media="all" rel="stylesheet" type="text/css" />
    <link href="https://marketplace.exertiowp.com/wp-content/themes/exertio/css/smoke.min.css?ver=5.8.2"
        id="smoke-style-css" media="all" rel="stylesheet" type="text/css" />
    <link href="https://marketplace.exertiowp.com/wp-content/themes/exertio/css/pretty-checkbox.min.css?ver=5.8.2"
        id="pretty-checkbox-css" media="all" rel="stylesheet" type="text/css" />
    <link href="https://marketplace.exertiowp.com/wp-content/themes/exertio/css/toastr.min.css?ver=5.8.2"
        id="toastr-style-css" media="all" rel="stylesheet" type="text/css" />
    <link href="https://marketplace.exertiowp.com/wp-content/plugins/woocommerce/assets/css/select2.css?ver=6.0.0"
        id="select2-css" media="all" rel="stylesheet" type="text/css" />
    <link href="https://marketplace.exertiowp.com/wp-content/themes/exertio/css/all.min.css?ver=5.8.2"
        id="web-font-icons-css" media="all" rel="stylesheet" type="text/css" />
    <link href="https://marketplace.exertiowp.com/wp-content/themes/exertio/css/richtext.min.css?ver=5.8.2"
        id="richtext-css" media="all" rel="stylesheet" type="text/css" />
    <link href="https://marketplace.exertiowp.com/wp-content/themes/exertio/css/flexslider.css?ver=5.8.2"
        id="flexslider-css" media="all" rel="stylesheet" type="text/css" />
    <link href="https://marketplace.exertiowp.com/wp-content/themes/exertio/css/protip.min.css?ver=5.8.2"
        id="protip-css" media="all" rel="stylesheet" type="text/css" />
    <link href="https://marketplace.exertiowp.com/wp-content/themes/exertio/css/youtube-popup.css?ver=5.8.2"
        id="youtube-popup-css" media="all" rel="stylesheet" type="text/css" />
    <link href="https://marketplace.exertiowp.com/wp-content/themes/exertio/css/sbmenu.css?ver=5.8.2"
        id="exertio-sbmenu-css" media="all" rel="stylesheet" type="text/css" />
    <link href="https://marketplace.exertiowp.com/wp-content/themes/exertio/css/theme.css?ver=5.8.2"
        id="exertio-style-css" media="all" rel="stylesheet" type="text/css" />
    <link href="https://marketplace.exertiowp.com/wp-content/themes/exertio/css/ion-rangeslider.min.css?ver=5.8.2"
        id="ion-rangeslider-css" media="all" rel="stylesheet" type="text/css" />
    <link href="https://marketplace.exertiowp.com/wp-content/themes/exertio/css/custom_style.css?ver=5.8.2"
        id="theme_custom_css-css" media="all" rel="stylesheet" type="text/css" />

    <style id="theme_custom_css-inline-css" type="text/css">
        h2,
        h1 {
            color: #242424
        }

        .btn-theme,
        .post-excerpt .wp-block-button .wp-block-button__link,
        .post-excerpt .wp-block-search__button,
        .post-excerpt .wp-block-file .wp-block-file__button,
        .post-password-form input[type='submit'],
        .woocommerce #respond input#submit.alt,
        .woocommerce a.button.alt,
        .woocommerce button.button.alt,
        .woocommerce input.button.alt,
        .woocommerce #respond input#submit,
        .woocommerce a.button,
        .woocommerce button.button,
        .woocommerce input.button,
        .jconfirm-buttons .btn-primary,
        .woocommerce .exertio-my-account .woocommerce-MyAccount-content .button {
            border: 1px solid #93c5fd;
            background-color: #93c5fd;
            color: #FFF;
        }

        .btn-theme:hover,
        .post-excerpt .wp-block-button .wp-block-button__link:hover,
        .post-excerpt .wp-block-search__button:hover,
        .post-excerpt .wp-block-file .wp-block-file__button:hover,
        .post-password-form input[type='submit']:hover,
        .woocommerce #respond input#submit.alt:hover,
        .woocommerce a.button.alt:hover,
        .woocommerce button.button.alt:hover,
        .woocommerce input.button.alt:hover,
        .woocommerce #respond input#submit:hover,
        .woocommerce a.button:hover,
        .woocommerce button.button:hover,
        .woocommerce input.button:hover,
        .jconfirm-buttons .btn-primary:hover,
        .woocommerce .exertio-my-account .woocommerce-MyAccount-content .button:hover {
            background-color: #93c5fd;
            box-shadow: 0 0.5rem 1.125rem -0.5rem rgba(254, 105, 106, 0.9);
            color: #FFF !important;
            border: 1px solid #93c5fd;
        }

        .btn-theme-secondary {
            border: 1px solid #000000;
            background-color: #000000;
            color: #FFF;
        }

        .btn-theme-secondary:hover {
            background-color: #000000;
            box-shadow: 0 0.5rem 1.125rem -0.5rem rgba(0, 0, 0, 0.9);
            color: #FFF !important;
            border: 1px solid #000000;
        }


        a:hover,
        .fr-hero3-content span,
        .fr-latest-content-service span.reviews i,
        .fr-latest-details p span,
        .call-actionz .parallex-text h5,
        .agent-1 .card-body .username,
        .widget-inner-icon,
        .widget-inner-text .fa-star,
        .fr-client-sm p,
        .fr-latest-style ul li .fr-latest-profile i,
        .fr-latest-container span.readmore,
        .fr-browse-category .fr-browse-content ul li a.view-more,
        .fr-footer .fr-bottom p a,
        .fr-latest2-content-box .fr-latest2-price ul li p.info-in,
        .fr-top-contents .fr-top-details span.rating i,
        .fr-top-contents .fr-top-details p .style-6,
        .fr-h-star i,
        .fr-latest-jobs .owl-nav i,
        .project-list-2 .top-side .user-name a,
        .project-list-2 .bottom-side ul.features li i,
        .service-side .heading a,
        .exertio-services-box .exertio-service-desc span.rating i,
        .exertio-services-box .exertio-services-bottom .style-6,
        .exertio-services-list-2 .exertio-services-2-meta div.rating i,
        .exertio-services-list-2 .exertio-services-2-meta p a.author,
        .exertio-services-2-meta ul li span.style-6,
        .project-sidebar .heading a,
        .fr-employ-content .fr-employer-assets .btn-theme,
        .fr-btn-grid a,
        .fr3-product-price p i,
        .fr3-product-btn .btn,
        .fr3-job-detail .fr3-job-text p.price-tag,
        .fr3-job-detail .fr3-job-img p i,
        .fr-lance-content3 .fr-lance-price2 p,
        .fr-lance-content3 .fr-lance-detail-box .fr-lance-usr-details p i,
        .fr-hero-details-content .fr-hero-details-information .fr-hero-m-deails ul li:last-child i,
        .fr-expertise-product .fr-expertise-details span,
        .fr-m-products ul li p i,
        .fr-services2-box .fr-services2-sm-1 span,
        .fr-sign-bundle-content p span,
        .testimonial-section-fancy .details h4+span,
        .fr-latest-content h3 a:hover,
        .fr-blog-f-details .fr-latest-style-detai ul li i,
        blockquote::after,
        .exertio-comms .comment-user .username a,
        .exertio-comms .comment-user .username,
        .sidebar .nav .nav-item.active>.nav-link i,
        .sidebar .nav .nav-item.active>.nav-link .menu-title,
        .sidebar .nav .nav-item.active>.nav-link .menu-arrow,
        .sidebar .nav:not(.sub-menu)>.nav-item:hover>.nav-link,
        .most-viewed-widget .main-price,
        .footer a,
        .navbar .navbar-menu-wrapper .navbar-nav .nav-item.dropdown .navbar-dropdown .dropdown-item.wallet-contanier h4,
        .pro-box .pro-meta-box .pro-meta-price span {
            color: #93c5fd
        }

        .sb-header .sb-menu li:not(:last-child) a:hover,
        .sb-header .sb-menu li:not(:last-child) a:focus,
        .sb-header .sb-menu li:not(:last-child) a:active,
        .fr-latest-content-service p a:hover,
        .fr-browse-category .fr-browse-content ul li a:hover,
        .fr-footer .fr-footer-content ul li a:hover,
        .fr-right-detail-box .fr-right-detail-content .fr-right-details2 h3:hover,
        .fr-right-detail-box .fr-right-detail-content .fr-right-details2 h3:hover,
        .blog-sidebar .widget ul li a:hover,
        .woocommerce .woocommerce-MyAccount-navigation ul li a:hover,
        .woocommerce .woocommerce-MyAccount-navigation ul li.is-active a {
            color: #93c5fd
        }

        .sb-menu ul ul li>a::before,
        .exertio-loader .exertio-dot,
        .exertio-loader .exertio-dots span {
            background: #93c5fd;
        }

        .select2-container--default .select2-results__option--highlighted[data-selected],
        .select2-container--default .select2-results__option--highlighted[aria-selected],
        .fr-hero2-video i,
        .exertio-pricing-2-main .exertio-pricing-price,
        .services-filter-2 .services-grid-icon.active,
        .services-filter-2 .services-list-icon.active,
        .fl-navigation li.active,
        .project-sidebar .range-slider .irs--round .irs-from,
        .project-sidebar .range-slider .irs--round .irs-to,
        .project-sidebar .range-slider .irs--round .irs-single,
        .project-sidebar .range-slider .irs--round .irs-bar,
        .fr-employ-content .fr-employer-assets .btn-theme:hover,
        .fr-services2-h-style h3::before,
        .fr-latest-t-content .fr-latest-t-box a:hover,
        .tagcloud a.tag-cloud-link:hover,
        .wp-block-tag-cloud .tag-cloud-link:hover,
        .page-links .current .no,
        .nav-pills .nav-link.active,
        .nav-pills .show>.nav-link,
        .deposit-box .depoist-header .icon,
        .deposit-footer button,
        .review-modal .modal-header {
            color: #FFF;
            background-color: #93c5fd;
        }

        .fr-footer .fr-footer-icons ul li a i:hover,
        .fr-latest-pagination .pagination .page-item.active .page-link,
        .fr-latest-pagination .page-link:hover,
        .fl-search-blog .input-group .input-group-append .blog-search-btn,
        .card-body .pretty.p-switch input:checked~.state.p-info::before,
        .fr-sign-form label.radio input:checked+span,
        .user-selection-modal label.radio input:checked+span {
            background-color: #93c5fd !important;
            border-color: #93c5fd;
        }

        .fr-hero2-form .style-bind,
        .fr-hero2-video a,
        .fl-navigation li.active,
        .project-sidebar .range-slider .irs--round .irs-handle,
        .fr-employ-content .fr-employer-assets .btn-theme,
        .fr3-product-btn .btn,
        .slider-box .flexslider.fr-slick-thumb .flex-active-slide,
        .fr-plan-basics-2 .fr-plan-content button,
        .heading-dots .h-dot.line-dot,
        .heading-dots .h-dot,
        .post-excerpt .wp-block-button.is-style-outline .wp-block-button__link:not(.has-text-color),
        .pretty input:checked~.state.p-success-o label::before,
        .pretty.p-toggle .state.p-success-o label::before,
        .additional-fields-container .pretty.p-switch input:checked~.state.p-primary::before,
        .additional-fields-container .irs--round .irs-handle,
        .review-modal .button_reward .pretty.p-switch input:checked~.state.p-info::before {
            border-color: #93c5fd;
        }

        .pretty input:checked~.state.p-warning label::after,
        .pretty.p-toggle .state.p-warning label::after,
        .pretty.p-default:not(.p-fill) input:checked~.state.p-success-o label::after,
        .additional-fields-container .pretty input:checked~.state.p-primary label::after,
        .additional-fields-container .pretty input:checked~.state.p-primary label::after,
        .additional-fields-container .irs--round .irs-bar,
        .additional-fields-container .irs--round .irs-from,
        .additional-fields-container .irs--round .irs-to,
        .review-modal .button_reward .pretty.p-switch.p-fill input:checked~.state.p-info::before {
            background-color: #93c5fd !important;
        }

        .project-sidebar .range-slider .irs--round .irs-from::before,
        .project-sidebar .range-slider .irs--round .irs-to::before,
        .fr-m-contents,
        .additional-fields-container .irs--round .irs-to::before,
        .additional-fields-container .irs--round .irs-from::before {
            border-top-color: #93c5fd;
        }
    </style>

    <link href="https://fonts.googleapis.com/css?family=Poppins:500&display=swap&ver=1639986459" media="print"
        onload="this.media='all'" rel="stylesheet" />
    
    <script id="jquery-core-js" src="https://marketplace.exertiowp.com/wp-includes/js/jquery/jquery.min.js?ver=3.6.0"
        type="text/javascript">
        </script>
    <script id="jquery-migrate-js"
        src="https://marketplace.exertiowp.com/wp-includes/js/jquery/jquery-migrate.min.js?ver=3.3.2"
        type="text/javascript">
        </script>
    <script id="owl-carousel-js"
        src="https://marketplace.exertiowp.com/wp-content/themes/exertio/js/owl.carousel.min.js?ver=5.8.2"
        type="text/javascript">
        </script>
    <link href="https://marketplace.exertiowp.com/wp-json/" rel="https://api.w.org/" />
    <link href="https://marketplace.exertiowp.com/wp-json/wp/v2/pages/227" rel="alternate" type="application/json" />
    <link href="https://marketplace.exertiowp.com/xmlrpc.php?rsd" rel="EditURI" title="RSD"
        type="application/rsd+xml" />
    <link href="https://marketplace.exertiowp.com/wp-includes/wlwmanifest.xml" rel="wlwmanifest"
        type="application/wlwmanifest+xml" />
    <meta content="WordPress 5.8.2" name="generator" />
    <meta content="WooCommerce 6.0.0" name="generator" />
    <link href="https://marketplace.exertiowp.com/project-search/" rel="canonical" />
    <link href="https://marketplace.exertiowp.com/?p=227" rel="shortlink" />
    <link
        href="https://marketplace.exertiowp.com/wp-json/oembed/1.0/embed?url=https%3A%2F%2Fmarketplace.exertiowp.com%2Fproject-search%2F"
        rel="alternate" type="application/json+oembed" />
    <link
        href="https://marketplace.exertiowp.com/wp-json/oembed/1.0/embed?url=https%3A%2F%2Fmarketplace.exertiowp.com%2Fproject-search%2F&format=xml"
        rel="alternate" type="text/xml+oembed" />
    <meta content="Redux 4.3.5" name="framework" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">


    
    <style class="redux-options-output" id="exertio_theme_options-dynamic-css" title="dynamic-css">
        body {
            font-family: Poppins;
            line-height: 24px;
            font-weight: normal;
            font-style: normal;
            color: #242424;
            font-size: 16px;
            font-display: swap;
        }

        h1 {
            font-family: Poppins;
            line-height: 54px;
            font-weight: 500;
            font-style: normal;
            color: #000000;
            font-size: 34px;
            font-display: swap;
        }

        h2 {
            font-family: Poppins;
            line-height: 42px;
            font-weight: 500;
            font-style: normal;
            color: #000000;
            font-size: 30px;
            font-display: swap;
        }

        h3 {
            font-family: Poppins;
            line-height: 36px;
            font-weight: 500;
            font-style: normal;
            color: #000000;
            font-size: 26px;
            font-display: swap;
        }

        h4 {
            font-family: Poppins;
            line-height: 27px;
            font-weight: 500;
            font-style: normal;
            color: #000000;
            font-size: 20px;
            font-display: swap;
        }

        h5 {
            font-family: Poppins;
            line-height: 24px;
            font-weight: 500;
            font-style: normal;
            color: #000000;
            font-size: 18px;
            font-display: swap;
        }

        h6 {
            font-family: Poppins;
            line-height: 21px;
            font-weight: 500;
            font-style: normal;
            color: #000000;
            font-size: 14px;
            font-display: swap;
        }

        p {
            font-family: Poppins;
            line-height: 30px;
            font-weight: normal;
            font-style: normal;
            color: #777777;
            font-size: 16px;
            font-display: swap;
        }
    </style>
    <style>
        .project-sidebar .panel-heading a::before {
            font-family: 'FontAwesome' !important;
        }
    </style>
    <script charset="utf-8" type="text/javascript" src="JAVASCRIPT/offers.js"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
    <link  rel="stylesheet" href="CSS/pop up.css">
    

</head>

<body onload="loaded();" class="page-template page-template-page-project-search page-template-page-project-search-php page page-id-227 theme-exertio woocommerce-no-js elementor-default elementor-kit-12">
	
	<!-- navbar -->
	
	<%@ include file="/WEB-INF/view/navbar.jsp" %>
	
    <!-- Header -->

    <section class="fr-list-side-bar section-padding actionbar_space" style="background-color:#fafafa;">
        <div class="container">
            <div class="row">
                <div class="col-lg-4 col-xs-12 col-sm-12 col-md-12 col-xl-4">
                    <div class="project-sidebar">
                        <div class="heading">
                            <h4>
                                Filtres De Recherche
                            </h4>
                            <a style="color: rgb(96 165 250);" href="">
                                Effacer Les Filtres
                            </a>
                        </div>
                        <div class=" project-widgets">
                            <form>

                                <div class="pb-5 panel panel-default">
                                    <div class="panel-heading active">
                                        <a class="" data-bs-toggle="collapse" href="#category-widget" role="button">
                                            Profession
                                        </a>
                                    </div>
                                    <div class="panel-collapse collapse show" id="category-widget" role="tabpanel">
                                        <div class="panel-body add-search">
                                            <ul class="mb-5 main">
                                            	<c:forEach var="prof" items="${sessionScope.SESSION_PROFS }">
	                                                <li class="">
	                                                    <div class="pretty p-icon p-thick p-curve">
	                                                        <input id="${prof.getNom()}" name="category[]" type="checkbox"
	                                                            value="${prof.getNom() }"/>
	                                                        <div class="state p-warning">
	                                                            <i class="icon fa fa-check">
	                                                            </i>
	                                                            <label>
	                                                            </label>
	                                                        </div>
	                                                    </div>
	                                                    <label for="${prof.getNom()}">
	                                                        ${prof.getNom()}
	                                                    </label>
	                                                    <ul>
	                                                    </ul>
	                                                </li>
                                                </c:forEach>
                                                
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                                <div class="panel panel-default">
                                    <div class="panel-heading active">
                                        <a class="" data-bs-toggle="collapse" href="#city-widget" role="button">
                                            Ville
                                        </a>
                                    </div>
                                    <div class="panel-collapse collapse show" id="city-widget" role = "tabpanel1">
                                        <div class="panel-body add-search">
                                            <ul class="main">
                                           		<c:forEach var="ville" items="${sessionScope.SESSION_VILLES }">
	                                                <li class="">
	                                                    <div class="pretty p-icon p-thick p-curve">
	                                                        <input id="${ ville.getNom() }" name="city[]" type="checkbox"
	                                                            value="${ville.getNom() }"  />
	                                                        <div class="state p-warning">
	                                                            <i class="icon fa fa-check">
	                                                            </i>
	                                                            <label>
	                                                            </label>
	                                                        </div>
	                                                    </div>
	                                                    <label for="${ ville.getNom() }">
	                                                        ${ville.getNom()}
	                                                    </label>
	
	                                                </li>
	                                            </c:forEach>
                                               
                                            </ul>
                                        </div>
                                    </div>
                                </div>

                                <div class="submit-btn">
                                    <input name="sort" type="hidden" value="" />
                                    <button class="btn btn-theme btn-block"
                                        style="background-color: rgb(96 165 250); border-color: rgb(96 165 250);"
                                        type="button" onclick="filter();">
                                        Filter Result
                                    </button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
                <div class="col-xl-8 col-xs-12 col-sm-12 col-md-12 col-lg-8">
                    <div class="row">
                        <div class="col-xl-12 col-xs-12 col-sm-12 col-md-12">
                            <div class="services-filter-2">
                                <form>
                                    <div class="heading-area">
                                        <h4 class="resultat">
                                            ${sessionScope.OffersLists.size()} résultats trouvés
                                        </h4>
                                    </div>
                                    <div class="filters">
                                        <select onchange="sort();" class="default-select" id="order" name="order_by">
                                            <option value="">
                                                Trier par
                                            </option>
                                            <option value="new-old">
                                                Date (la plus récente)
                                            </option>
                                            <option value="old-new">
                                                Date (la plus ancienne)
                                            </option>
                                        </select>
                                    </div>
                                </form>
                            </div>
                        </div>

                        <div id="offers">
                        	<c:forEach var="offer" items="${sessionScope.OffersLists }" varStatus="loop"> 
                        	
                        		<!-- modal -->
						        <div class="modal fade" id="largeModal${ loop.index }" tabindex="-1" role="dialog" aria-labelledby="basicModal" aria-hidden="true">
						            <div class="modal-dialog modal-lg">
						                <div class="modal-content">
						                    <div class="modal-body">
						                        <!-- carousel -->
						                        <div id='carouselExampleIndicators${ loop.index }' class='carousel slide' data-ride='carousel'>
						                            <ol class='carousel-indicators'>
						                           	 	<c:forEach var="image" items="${ sessionScope.photosOffer.get(loop.index) }" varStatus="loop1">	
						                           	 		<li data-target='#carouselExampleIndicators${ loop.index }' data-slide-to='${ loop1.index }' ${ loop1.index == 0 ? "class='active'" : ""}></li>
						                           	 	</c:forEach>
						                                
						                            </ol>
						                            <div class='carousel-inner'>
						                            
						                            	<c:forEach var="image" items="${ sessionScope.photosOffer.get(loop.index) }" varStatus="loop1">							                           	
						                            		<div class='carousel-item ${ loop1.index == 0 ? "active" : ""}'>
							                                    <img class='img-size' src='OfferImages/${image}'/>
							                                </div>
						                        		</c:forEach>

						                            </div>
						                            <a class='carousel-control-prev' href='#carouselExampleIndicators${ loop.index }' role='button' data-slide='prev'>
						                                <span class='carousel-control-prev-icon' aria-hidden='true'></span>
						                                <span class='sr-only'>Previous</span>
						                            </a>
						                            <a class='carousel-control-next' href='#carouselExampleIndicators${ loop.index }' role='button' data-slide='next'>
						                                <span class='carousel-control-next-icon' aria-hidden='true'></span>
						                                <span class='sr-only'>Next</span>
						                            </a>
						                        </div>
						                    </div>
						                    <div class="modal-footer">
						                        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
						                    </div>
						                </div>
						            </div>
						        </div>
                        		
	                            <div class="offer border-4 col-xl-12 col-xs-12 col-lg-12 col-sm-12 col-md-12">
	
	                                <div class="fr-right-detail-box" style="border:3px solid #f2f2f2; border-radius:10px;">
	                                    <div class="fr-right-detail-content">
	                                        <div class="fr-right-details-products">
	                                            <div class="fr-right-views">
	                                                <ul>
	                                                    <li>
	                                                        <span>
	                                                            ${offer.get(4) }
	                                                        </span>
	                                                    </li>
	                                                </ul>
	                                            </div>
	
	                                            <div class="fr-right-details2">
	
	                                                <h3 title="Assemble a 3D activity of 35 seconds">
	                                                     ${offer.get(0)}
	                                                </h3>
	
	                                            </div>
	                                            <div class="fr-right-product">
	                                                <ul class="skills">
	                                                    <li class="">
	                                                        <a href=""> ${offer.get(3)}</a>
	                                                    </li>
	                                                </ul>
	                                            </div>
	
	                                            <div class="fr-right-index">
	                                                <p>
	                                                     ${offer.get(1)}
	                                                </p>
	                                            </div>
	                                        </div>
	                                    </div>
	                                    <div class="fr-right-information">
	                                        <div class="fr-right-list">
	                                            <ul>
	                                                <li>
	                                                    <p class="heading">
	                                                        Date D'offre :
	                                                    </p>
	                                                    <div>
	                                                        <p class="date">
	                                                            ${offer.get(5)}
	                                                        </p>
	                                                    </div>
	                                                </li>
	                                                <li>
	                                                    <p class="heading">
	                                                        Ville :
	                                                    </p>
	                                                    <span class="city">
	                                                         ${offer.get(2)}
	                                                    </span>
	                                                </li>
	
	                                            </ul>
	                                        </div>
	                                        <div class="fr-right-bid">
	                                            <ul>
	                                            	<c:if test="${ sessionScope.photosOffer.get(loop.index).size() > 0 }">
	                                            		<li>
	                                            			<a href="#" style="background-color: rgb(96 165 250); border-color: rgb(96 165 250);" class="btn btn-theme" data-toggle="modal" data-target="#largeModal${ loop.index }">afficher les images</a>
                                            			</li>
	                                            	</c:if>                                            	                                            	
	                                                <li>
	                                                    <a class="btn btn-theme"
	                                                        style="background-color: rgb(96 165 250); border-color: rgb(96 165 250);"
	                                                        href="ChatRoom?user_id=${ offer.get(7) }">
	                                                        Contacter Le Client
	                                                    </a>
	                                                </li>
	                                            </ul>
	                                        </div>
	                                    </div>
	                                </div>
	                                
	                            </div>
	                        </c:forEach>         

                        </div>


                    </div>
                </div>
            </div>
        </div>
    </section>

	<script type="text/javascript" src="JAVASCRIPT/pop up.js"></script>
    <script type="text/javascript">
        (function () {
            var c = document.body.className;
            c = c.replace(/woocommerce-no-js/, 'woocommerce-js');
            document.body.className = c;
        })();
    </script>
    <script id="regenerator-runtime-js"
        src="https://marketplace.exertiowp.com/wp-includes/js/dist/vendor/regenerator-runtime.min.js?ver=0.13.7"
        type="text/javascript">
        </script>
    <script id="wp-polyfill-js"
        src="https://marketplace.exertiowp.com/wp-includes/js/dist/vendor/wp-polyfill.min.js?ver=3.15.0"
        type="text/javascript">
        </script>
    <script id="contact-form-7-js-extra" type="text/javascript">
        /* <![CDATA[ */
        var wpcf7 = { "api": { "root": "https:\/\/marketplace.exertiowp.com\/wp-json\/", "namespace": "contact-form-7\/v1" }, "cached": "1" };
/* ]]> */
    </script>
    <script id="contact-form-7-js"
        src="https://marketplace.exertiowp.com/wp-content/plugins/contact-form-7/includes/js/index.js?ver=5.5.3"
        type="text/javascript">
        </script>
    <script id="jquery-blockui-js"
        src="https://marketplace.exertiowp.com/wp-content/plugins/woocommerce/assets/js/jquery-blockui/jquery.blockUI.min.js?ver=2.7.0-wc.6.0.0"
        type="text/javascript">
        </script>
    <script id="wc-add-to-cart-js-extra" type="text/javascript">
        /* <![CDATA[ */
        var wc_add_to_cart_params = { "ajax_url": "\/wp-admin\/admin-ajax.php", "wc_ajax_url": "\/?wc-ajax=%%endpoint%%", "i18n_view_cart": "View cart", "cart_url": "https:\/\/marketplace.exertiowp.com\/cart\/", "is_cart": "", "cart_redirect_after_add": "no" };
/* ]]> */
    </script>
    <script id="wc-add-to-cart-js"
        src="https://marketplace.exertiowp.com/wp-content/plugins/woocommerce/assets/js/frontend/add-to-cart.min.js?ver=6.0.0"
        type="text/javascript">
        </script>
    <script id="js-cookie-js"
        src="https://marketplace.exertiowp.com/wp-content/plugins/woocommerce/assets/js/js-cookie/js.cookie.min.js?ver=2.1.4-wc.6.0.0"
        type="text/javascript">
        </script>
    <script id="woocommerce-js-extra" type="text/javascript">
        /* <![CDATA[ */
        var woocommerce_params = { "ajax_url": "\/wp-admin\/admin-ajax.php", "wc_ajax_url": "\/?wc-ajax=%%endpoint%%" };
/* ]]> */
    </script>
    <script id="woocommerce-js"
        src="https://marketplace.exertiowp.com/wp-content/plugins/woocommerce/assets/js/frontend/woocommerce.min.js?ver=6.0.0"
        type="text/javascript">
        </script>
    <script id="wc-cart-fragments-js-extra" type="text/javascript">
        /* <![CDATA[ */
        var wc_cart_fragments_params = { "ajax_url": "\/wp-admin\/admin-ajax.php", "wc_ajax_url": "\/?wc-ajax=%%endpoint%%", "cart_hash_key": "wc_cart_hash_7460a81f9377fe99b2393912b2b57635", "fragment_name": "wc_fragments_7460a81f9377fe99b2393912b2b57635", "request_timeout": "5000" };
/* ]]> */
    </script>
    <script id="wc-cart-fragments-js"
        src="https://marketplace.exertiowp.com/wp-content/plugins/woocommerce/assets/js/frontend/cart-fragments.min.js?ver=6.0.0"
        type="text/javascript">
        </script>
    <script id="nicescroll-js"
        src="https://marketplace.exertiowp.com/wp-content/themes/exertio/js/jquery.nicescroll.min.js?ver=5.8.2"
        type="text/javascript">
        </script>
    <script id="jquery.imageview-js"
        src="https://marketplace.exertiowp.com/wp-content/themes/exertio/js/jquery.imageview.js?ver=5.8.2"
        type="text/javascript">
        </script>
    <script id="sb-menu-js" src="https://marketplace.exertiowp.com/wp-content/themes/exertio/js/sbmenu.js?ver=5.8.2"
        type="text/javascript">
        </script>
    <script id="isotope-js" src="https://marketplace.exertiowp.com/wp-content/themes/exertio/js/isotope.js?ver=5.8.2"
        type="text/javascript">
        </script>
    <script id="imagesloaded-js" src="https://marketplace.exertiowp.com/wp-includes/js/imagesloaded.min.js?ver=4.1.4"
        type="text/javascript">
        </script>
    <script id="masonry-js" src="https://marketplace.exertiowp.com/wp-includes/js/masonry.min.js?ver=4.2.2"
        type="text/javascript">
        </script>
    <script id="bootstrap-js-js"
        src="https://marketplace.exertiowp.com/wp-content/themes/exertio/js/bootstrap.bundle.min.js?ver=5.8.2"
        type="text/javascript">
        </script>
    <script id="smoke-js-js" src="https://marketplace.exertiowp.com/wp-content/themes/exertio/js/smoke.min.js?ver=5.8.2"
        type="text/javascript">
        </script>
    <script id="toastr-js" src="https://marketplace.exertiowp.com/wp-content/themes/exertio/js/toastr.min.js?ver=5.8.2"
        type="text/javascript">
        </script>
    <script id="exertio-select2-js"
        src="https://marketplace.exertiowp.com/wp-content/themes/exertio/js/select2.full.min.js?ver=5.8.2"
        type="text/javascript">
        </script>
    <script id="jquery-ui-core-js"
        src="https://marketplace.exertiowp.com/wp-includes/js/jquery/ui/core.min.js?ver=1.12.1" type="text/javascript">
        </script>
    <script id="jquery-ui-mouse-js"
        src="https://marketplace.exertiowp.com/wp-includes/js/jquery/ui/mouse.min.js?ver=1.12.1" type="text/javascript">
        </script>
    <script id="jquery-ui-sortable-js"
        src="https://marketplace.exertiowp.com/wp-includes/js/jquery/ui/sortable.min.js?ver=1.12.1"
        type="text/javascript">
        </script>
    <script id="jquery-richtext-js"
        src="https://marketplace.exertiowp.com/wp-content/themes/exertio/js/jquery.richtext.min.js?ver=5.8.2"
        type="text/javascript">
        </script>
    <script id="jquery.flexslider-js"
        src="https://marketplace.exertiowp.com/wp-content/themes/exertio/js/jquery.flexslider.js?ver=5.8.2"
        type="text/javascript">
        </script>
    <script id="exertio-rating-js"
        src="https://marketplace.exertiowp.com/wp-content/themes/exertio/js/rating.js?ver=5.8.2" type="text/javascript">
        </script>
    <script id="protip-js" src="https://marketplace.exertiowp.com/wp-content/themes/exertio/js/protip.min.js?ver=5.8.2"
        type="text/javascript">
        </script>
    <script id="youtube-popup-js"
        src="https://marketplace.exertiowp.com/wp-content/themes/exertio/js/youtube-popup-jquery.js?ver=5.8.2"
        type="text/javascript">
        </script>
    <script id="waypoints-js"
        src="https://marketplace.exertiowp.com/wp-content/themes/exertio/js/jquery.waypoints.min.js?ver=5.8.2"
        type="text/javascript">
        </script>
    <script id="counter-js" src="https://marketplace.exertiowp.com/wp-content/themes/exertio/js/counter.js?ver=5.8.2"
        type="text/javascript">
        </script>
    <script id="ion-rangeslider-js"
        src="https://marketplace.exertiowp.com/wp-content/themes/exertio/js/ion.rangeslider.min.js?ver=5.8.2"
        type="text/javascript">
        </script>
    <script id="exertio-theme-js-extra" type="text/javascript">
        /* <![CDATA[ */
        var localize_vars_frontend = { "freelanceAjaxurl": "https:\/\/marketplace.exertiowp.com\/wp-admin\/admin-ajax.php", "AreYouSure": "Are you sure?", "Msgconfirm": "Confirmation", "remove": "Remove", "cancel": "Cancel", "AccDel": "Delete, Anyway", "proCancel": "Cancel, Anyway", "confimYes": "Yes", "confimNo": "No", "awardDate": "Award Date", "awardName": "Award Name", "selectImage": "Image", "projectURL": "Project url", "projectName": "Project Name", "expeName": "Experience Title", "expeCompName": "Company Name", "startDate": "Start Date", "endDate": "End Date", "endDatemsg": "Leave it empty to set it current job", "expeDesc": "Description", "eduName": "Education Title", "eduInstName": "Institute Name", "eduEndDatemsg": "Leave it empty to set it current education", "proAdminCost": "5", "YesSure": "Yes, I am sure", "serviceBuy": "Are you sure you want to purchase this service?", "maxFaqAllowed": "5", "maxVideoAllowed": "5", "maxAllowedFields": "Allowed number of fields limit reached", "faqNo": "FAQ No", "is_reset": "", "reset_status": { "status": false, "r_msg": "", "requested_id": "" }, "activation_is_set": "", "activation_is_set_msg": { "activation_status": false, "status_msg": "" }, "project_search_link": "https:\/\/marketplace.exertiowp.com\/project-search\/", "services_search_link": "https:\/\/marketplace.exertiowp.com\/services-search\/", "employer_search_link": "https:\/\/marketplace.exertiowp.com\/employer-search\/", "freelancer_search_link": "https:\/\/marketplace.exertiowp.com\/freelancer-search\/", "searchTalentText": "Serach Talent", "searchEmpText": "Search Employer", "findJobText": "Find Job", "searchServiceText": "Get job done", "is_rtl": "", "exertio_local": "en", "exertio_notification": "", "notification_time": "600000" };
/* ]]> */
    </script>
    <script id="exertio-theme-js"
        src="https://marketplace.exertiowp.com/wp-content/themes/exertio/js/custom-script.js?ver=5.8.2"
        type="text/javascript">
        </script>
    <script id="exertio-charts-js"
        src="https://marketplace.exertiowp.com/wp-content/themes/exertio/js/chart.min.js?ver=5.8.2"
        type="text/javascript">
        </script>
    <script id="exertio-stats-js"
        src="https://marketplace.exertiowp.com/wp-content/themes/exertio/js/stats.js?ver=5.8.2" type="text/javascript">
        </script>
    <script id="wp-embed-js" src="https://marketplace.exertiowp.com/wp-includes/js/wp-embed.min.js?ver=5.8.2"
        type="text/javascript">
    </script>
    <script>
    	function loaded(){
    		var searchs = document.getElementsByClassName("search-finder")
    		   for(var i = 0; i<searchs.length;i++){
    			   searchs[i].setAttribute("style", "display:none;");
    		   }
    	}
    </script>
    <input id="freelance_ajax_url" type="hidden" value="https://marketplace.exertiowp.com/wp-admin/admin-ajax.php" />
    <input id="gen_nonce" type="hidden" value="e610c39347" />
    <input id="nonce_error" type="hidden" value="Something went wrong" />
</body>

</html>