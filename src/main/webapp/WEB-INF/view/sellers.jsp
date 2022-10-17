<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <meta http-equiv="Content-type" content="text/html; charset=UTF-8">
    <meta content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1" name="viewport" />

    <meta content="noindex, nofollow" name="robots" />
    <link href="https://fonts.googleapis.com" rel="dns-prefetch" />
    <link href="//s.w.org" rel="dns-prefetch" />
    <link href="https://fonts.gstatic.com" rel="preconnect" />


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
    <link href="https://marketplace.exertiowp.com/wp-includes/css/dist/block-library/style.min.css?ver=5.8.2" id="wp-block-library-css" media="all" rel="stylesheet" type="text/css" />
    <link href="https://marketplace.exertiowp.com/wp-content/plugins/woocommerce/packages/woocommerce-blocks/build/wc-blocks-vendors-style.css?ver=6.3.3" id="wc-blocks-vendors-style-css" media="all" rel="stylesheet" type="text/css" />
    <link href="https://marketplace.exertiowp.com/wp-content/plugins/woocommerce/packages/woocommerce-blocks/build/wc-blocks-style.css?ver=6.3.3" id="wc-blocks-style-css" media="all" rel="stylesheet" type="text/css" />
    <link href="https://marketplace.exertiowp.com/wp-content/plugins/redux-framework/redux-core/extendify-sdk/public/build/extendify-utilities.css?ver=13.4" id="extendify-sdk-utility-classes-css" media="all" rel="stylesheet" type="text/css" />
    <link href="https://marketplace.exertiowp.com/wp-content/plugins/contact-form-7/includes/css/styles.css?ver=5.5.3" id="contact-form-7-css" media="all" rel="stylesheet" type="text/css" />
    <link href="https://marketplace.exertiowp.com/wp-content/plugins/woocommerce/assets/css/woocommerce-layout.css?ver=6.0.0" id="woocommerce-layout-css" media="all" rel="stylesheet" type="text/css" />
    <link href="https://marketplace.exertiowp.com/wp-content/plugins/woocommerce/assets/css/woocommerce-smallscreen.css?ver=6.0.0" id="woocommerce-smallscreen-css" media="only screen and (max-width: 768px)" rel="stylesheet" type="text/css" />
    <link href="https://marketplace.exertiowp.com/wp-content/plugins/woocommerce/assets/css/woocommerce.css?ver=6.0.0" id="woocommerce-general-css" media="all" rel="stylesheet" type="text/css" />
    <style id="woocommerce-inline-inline-css" type="text/css">
        .woocommerce form .form-row .required {
            visibility: visible;
        }
    </style>
    <link href="https://fonts.googleapis.com/css?family=Poppins:400,500,600&subset=latin,latin-ext" id="exertio-theme-fonts-css" media="all" rel="stylesheet" type="text/css" />
    <link href="https://marketplace.exertiowp.com/wp-content/themes/exertio/css/owl.carousel.min.css?ver=5.8.2" id="owl-carousel-css" media="all" rel="stylesheet" type="text/css" />
    <link href="https://marketplace.exertiowp.com/wp-content/themes/exertio/css/bootstrap.min.css?ver=5.8.2" id="bootstrap-css" media="all" rel="stylesheet" type="text/css" />
    <link href="https://marketplace.exertiowp.com/wp-content/themes/exertio/css/smoke.min.css?ver=5.8.2" id="smoke-style-css" media="all" rel="stylesheet" type="text/css" />
    <link href="https://marketplace.exertiowp.com/wp-content/themes/exertio/css/pretty-checkbox.min.css?ver=5.8.2" id="pretty-checkbox-css" media="all" rel="stylesheet" type="text/css" />
    <link href="https://marketplace.exertiowp.com/wp-content/themes/exertio/css/toastr.min.css?ver=5.8.2" id="toastr-style-css" media="all" rel="stylesheet" type="text/css" />
    <link href="https://marketplace.exertiowp.com/wp-content/plugins/woocommerce/assets/css/select2.css?ver=6.0.0" id="select2-css" media="all" rel="stylesheet" type="text/css" />
    <link href="https://marketplace.exertiowp.com/wp-content/themes/exertio/css/all.min.css?ver=5.8.2" id="web-font-icons-css" media="all" rel="stylesheet" type="text/css" />
    <link href="https://marketplace.exertiowp.com/wp-content/themes/exertio/css/richtext.min.css?ver=5.8.2" id="richtext-css" media="all" rel="stylesheet" type="text/css" />
    <link href="https://marketplace.exertiowp.com/wp-content/themes/exertio/css/flexslider.css?ver=5.8.2" id="flexslider-css" media="all" rel="stylesheet" type="text/css" />
    <link href="https://marketplace.exertiowp.com/wp-content/themes/exertio/css/protip.min.css?ver=5.8.2" id="protip-css" media="all" rel="stylesheet" type="text/css" />
    <link href="https://marketplace.exertiowp.com/wp-content/themes/exertio/css/youtube-popup.css?ver=5.8.2" id="youtube-popup-css" media="all" rel="stylesheet" type="text/css" />
    <link href="https://marketplace.exertiowp.com/wp-content/themes/exertio/css/sbmenu.css?ver=5.8.2" id="exertio-sbmenu-css" media="all" rel="stylesheet" type="text/css" />
    <link href="https://marketplace.exertiowp.com/wp-content/themes/exertio/css/theme.css?ver=5.8.2" id="exertio-style-css" media="all" rel="stylesheet" type="text/css" />
    <link href="https://marketplace.exertiowp.com/wp-content/themes/exertio/css/ion-rangeslider.min.css?ver=5.8.2" id="ion-rangeslider-css" media="all" rel="stylesheet" type="text/css" />
    <link href="https://marketplace.exertiowp.com/wp-content/themes/exertio/css/custom_style.css?ver=5.8.2" id="theme_custom_css-css" media="all" rel="stylesheet" type="text/css" />

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

    <link href="https://fonts.googleapis.com/css?family=Poppins:500&display=swap&ver=1639986459" media="print" onload="this.media='all'" rel="stylesheet" />

    <script id="jquery-core-js" src="https://marketplace.exertiowp.com/wp-includes/js/jquery/jquery.min.js?ver=3.6.0" type="text/javascript">
    </script>
    <script id="jquery-migrate-js" src="https://marketplace.exertiowp.com/wp-includes/js/jquery/jquery-migrate.min.js?ver=3.3.2" type="text/javascript">
    </script>
    <script id="owl-carousel-js" src="https://marketplace.exertiowp.com/wp-content/themes/exertio/js/owl.carousel.min.js?ver=5.8.2" type="text/javascript">
    </script>
    <link href="https://marketplace.exertiowp.com/wp-json/" rel="https://api.w.org/" />
    <link href="https://marketplace.exertiowp.com/wp-json/wp/v2/pages/227" rel="alternate" type="application/json" />
    <link href="https://marketplace.exertiowp.com/xmlrpc.php?rsd" rel="EditURI" title="RSD" type="application/rsd+xml" />
    <link href="https://marketplace.exertiowp.com/wp-includes/wlwmanifest.xml" rel="wlwmanifest" type="application/wlwmanifest+xml" />

    <link href="https://marketplace.exertiowp.com/project-search/" rel="canonical" />
    <link href="https://marketplace.exertiowp.com/?p=227" rel="shortlink" />
    <link href="https://marketplace.exertiowp.com/wp-json/oembed/1.0/embed?url=https%3A%2F%2Fmarketplace.exertiowp.com%2Fproject-search%2F" rel="alternate" type="application/json+oembed" />
    <link href="https://marketplace.exertiowp.com/wp-json/oembed/1.0/embed?url=https%3A%2F%2Fmarketplace.exertiowp.com%2Fproject-search%2F&format=xml" rel="alternate" type="text/xml+oembed" />
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
    <link href="https://unpkg.com/tailwindcss@^2/dist/tailwind.min.css" rel="stylesheet">
    <script src="JAVASCRIPT/sellers.js" type="text/javascript"></script>

</head>

<body onload="loaded();" style="background-color:#fafafa;" class="page-template page-template-page-project-search page-template-page-project-search-php page page-id-227 theme-exertio woocommerce-no-js elementor-default elementor-kit-12">

    <!-- navbar -->

	<%@ include file="/WEB-INF/view/navbar.jsp" %>

    <!-- Header -->

    <section class="fr-list-side-bar section-padding actionbar_space mx-4" style="background-color:#fafafa;">
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
                        <div class="project-widgets">
                            <form action="Sellers" method="post">
                                <div class="panel panel-default">
                                    <div class="panel-heading active">
                                        <a class="" data-bs-toggle="collapse" href="#category-widget" role="button">
                                            Profession
                                        </a>
                                    </div>
                                    <div class="panel-collapse collapse show" id="category-widget" role="tabpanel">
                                        <div class="panel-body add-search">
                                            <ul class="main">
                                                <c:forEach var="prof" items="${sessionScope.SESSION_PROFS }">
                                                	<c:set var="codeprofession" value="${ prof.getCodeProfession() }"/>
                                                	<c:set var="contains" value="null" />
													<c:forEach var="item" items="${requestScope.selectedprofessions}">
													  <c:if test="${item eq codeprofession}">
													    <c:set var="contains" value="checked" />
													  </c:if>
													</c:forEach>
                                                    <li class="">
                                                        <div class="pretty p-icon p-thick p-curve">
                                                            <input id="${prof.getNom()}" name="category[]" type="checkbox" value="${prof.getCodeProfession() }" ${ contains } onchange="filterButton();" />
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
                                    <div class="panel-collapse collapse show" id="city-widget" role="tabpanel1">
                                        <div class="panel-body add-search">
                                            <ul class="main">
                                                <c:forEach var="ville" items="${sessionScope.SESSION_VILLES }">
                                                	<c:set var="villecode" value="${ ville.getCodeVille() }"/>
                                                	<c:set var="contains" value="null" />
													<c:forEach var="item" items="${requestScope.selectedvilles}">
													  <c:if test="${item eq villecode}">
													    <c:set var="contains" value="checked" />
													  </c:if>
													</c:forEach>
	                                                <li class="">
	                                                    <div class="pretty p-icon p-thick p-curve">
	                                                        <input id="${ ville.getNom() }" name="city[]" type="checkbox" value="${ villecode }" ${ contains} onchange="filterButton();"/>
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
                                    <button id='filterbutton' disabled class="btn btn-theme btn-block" style="background-color: rgb(96 165 250); border-color: rgb(96 165 250);" type="submit">
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
                                            ${sessionScope.sellerList.size()} résultats trouvés
                                        </h4>
                                    </div>

                                </form>
                            </div>
                        </div>

                        <div id="sellers" class="grid grid-cols-1 sm:grid-cols-2 md:grid-cols-2 lg:grid-cols-3 gap-6">
                        	<c:forEach var="seller" items="${sessionScope.sellerList}">
	                            <div class="border-2 w-full bg-white rounded-lg sahdow-2xl p-12 flex flex-col justify-center items-center">
	                                <div class="mb-8">
	                                    <img class="object-center object-cover rounded-full h-36 w-36" src="./SellerImages/${ seller.get(1) }" alt="photo">
	                                </div>
	                                <div class="text-center">
	                                    <p class="text-m text-black font-bold mb-2">${ seller.get(2) }</p>
	                                    <p class="text-sm mb-2 text-yellow-600 font-normal">${seller.get(3) }</p>
	                                    <a href="SellerProfile?seller_id=${ seller.get(0) }" class="bg-blue-400 hover:bg-blue-700 text-white font-bold py-1 px-12 rounded-full">
	                                        Consulter
	                                      </a>
	                                </div>
	                            </div>
                            </c:forEach>
                            
                        </div>


                    </div>
                </div>
            </div>
        </div>
    </section>



    <script id="regenerator-runtime-js" src="https://marketplace.exertiowp.com/wp-includes/js/dist/vendor/regenerator-runtime.min.js?ver=0.13.7" type="text/javascript">
    </script>
    <script id="wp-polyfill-js" src="https://marketplace.exertiowp.com/wp-includes/js/dist/vendor/wp-polyfill.min.js?ver=3.15.0" type="text/javascript">
    </script>

    <script id="contact-form-7-js" src="https://marketplace.exertiowp.com/wp-content/plugins/contact-form-7/includes/js/index.js?ver=5.5.3" type="text/javascript">
    </script>
    <script id="jquery-blockui-js" src="https://marketplace.exertiowp.com/wp-content/plugins/woocommerce/assets/js/jquery-blockui/jquery.blockUI.min.js?ver=2.7.0-wc.6.0.0" type="text/javascript">
    </script>

    <script id="wc-add-to-cart-js" src="https://marketplace.exertiowp.com/wp-content/plugins/woocommerce/assets/js/frontend/add-to-cart.min.js?ver=6.0.0" type="text/javascript">
    </script>
    <script id="js-cookie-js" src="https://marketplace.exertiowp.com/wp-content/plugins/woocommerce/assets/js/js-cookie/js.cookie.min.js?ver=2.1.4-wc.6.0.0" type="text/javascript">
    </script>

    <script id="woocommerce-js" src="https://marketplace.exertiowp.com/wp-content/plugins/woocommerce/assets/js/frontend/woocommerce.min.js?ver=6.0.0" type="text/javascript">
    </script>

    <script id="wc-cart-fragments-js" src="https://marketplace.exertiowp.com/wp-content/plugins/woocommerce/assets/js/frontend/cart-fragments.min.js?ver=6.0.0" type="text/javascript">
    </script>
    <script id="nicescroll-js" src="https://marketplace.exertiowp.com/wp-content/themes/exertio/js/jquery.nicescroll.min.js?ver=5.8.2" type="text/javascript">
    </script>
    <script id="jquery.imageview-js" src="https://marketplace.exertiowp.com/wp-content/themes/exertio/js/jquery.imageview.js?ver=5.8.2" type="text/javascript">
    </script>
    <script id="sb-menu-js" src="https://marketplace.exertiowp.com/wp-content/themes/exertio/js/sbmenu.js?ver=5.8.2" type="text/javascript">
    </script>
    <script id="isotope-js" src="https://marketplace.exertiowp.com/wp-content/themes/exertio/js/isotope.js?ver=5.8.2" type="text/javascript">
    </script>
    <script id="imagesloaded-js" src="https://marketplace.exertiowp.com/wp-includes/js/imagesloaded.min.js?ver=4.1.4" type="text/javascript">
    </script>
    <script id="masonry-js" src="https://marketplace.exertiowp.com/wp-includes/js/masonry.min.js?ver=4.2.2" type="text/javascript">
    </script>
    <script id="bootstrap-js-js" src="https://marketplace.exertiowp.com/wp-content/themes/exertio/js/bootstrap.bundle.min.js?ver=5.8.2" type="text/javascript">
    </script>
    <script id="smoke-js-js" src="https://marketplace.exertiowp.com/wp-content/themes/exertio/js/smoke.min.js?ver=5.8.2" type="text/javascript">
    </script>
    <script id="toastr-js" src="https://marketplace.exertiowp.com/wp-content/themes/exertio/js/toastr.min.js?ver=5.8.2" type="text/javascript">
    </script>
    <script id="exertio-select2-js" src="https://marketplace.exertiowp.com/wp-content/themes/exertio/js/select2.full.min.js?ver=5.8.2" type="text/javascript">
    </script>
    <script id="jquery-ui-core-js" src="https://marketplace.exertiowp.com/wp-includes/js/jquery/ui/core.min.js?ver=1.12.1" type="text/javascript">
    </script>
    <script id="jquery-ui-mouse-js" src="https://marketplace.exertiowp.com/wp-includes/js/jquery/ui/mouse.min.js?ver=1.12.1" type="text/javascript">
    </script>
    <script id="jquery-ui-sortable-js" src="https://marketplace.exertiowp.com/wp-includes/js/jquery/ui/sortable.min.js?ver=1.12.1" type="text/javascript">
    </script>
    <script id="jquery-richtext-js" src="https://marketplace.exertiowp.com/wp-content/themes/exertio/js/jquery.richtext.min.js?ver=5.8.2" type="text/javascript">
    </script>
    <script id="jquery.flexslider-js" src="https://marketplace.exertiowp.com/wp-content/themes/exertio/js/jquery.flexslider.js?ver=5.8.2" type="text/javascript">
    </script>
    <script id="exertio-rating-js" src="https://marketplace.exertiowp.com/wp-content/themes/exertio/js/rating.js?ver=5.8.2" type="text/javascript">
    </script>
    <script id="protip-js" src="https://marketplace.exertiowp.com/wp-content/themes/exertio/js/protip.min.js?ver=5.8.2" type="text/javascript">
    </script>
    <script id="youtube-popup-js" src="https://marketplace.exertiowp.com/wp-content/themes/exertio/js/youtube-popup-jquery.js?ver=5.8.2" type="text/javascript">
    </script>
    <script id="waypoints-js" src="https://marketplace.exertiowp.com/wp-content/themes/exertio/js/jquery.waypoints.min.js?ver=5.8.2" type="text/javascript">
    </script>
    <script id="counter-js" src="https://marketplace.exertiowp.com/wp-content/themes/exertio/js/counter.js?ver=5.8.2" type="text/javascript">
    </script>
    <script id="ion-rangeslider-js" src="https://marketplace.exertiowp.com/wp-content/themes/exertio/js/ion.rangeslider.min.js?ver=5.8.2" type="text/javascript">
    </script>

    <script id="exertio-theme-js" src="https://marketplace.exertiowp.com/wp-content/themes/exertio/js/custom-script.js?ver=5.8.2" type="text/javascript">
    </script>
    <script id="exertio-charts-js" src="https://marketplace.exertiowp.com/wp-content/themes/exertio/js/chart.min.js?ver=5.8.2" type="text/javascript">
    </script>
    <script id="exertio-stats-js" src="https://marketplace.exertiowp.com/wp-content/themes/exertio/js/stats.js?ver=5.8.2" type="text/javascript">
    </script>
    <script id="wp-embed-js" src="https://marketplace.exertiowp.com/wp-includes/js/wp-embed.min.js?ver=5.8.2" type="text/javascript">
    </script>
    <script>
        function loaded() {
            var searchs = document.getElementsByClassName("search-finder")
            for (var i = 0; i < searchs.length; i++) {
                searchs[i].setAttribute("style", "display:none;");
            }
            document.getElementById("sellers").removeAttribute("style")
        }
    </script>

</body>

</html>