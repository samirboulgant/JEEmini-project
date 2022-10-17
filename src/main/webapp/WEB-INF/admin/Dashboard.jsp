<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Admin</title>
    <!-- plugins:css -->
    <link rel="stylesheet" href="../assets/vendors/mdi/css/materialdesignicons.min.css">
    <link rel="stylesheet" href="../assets/vendors/css/vendor.bundle.base.css">
    <!-- endinject -->
    <!-- Plugin css for this page -->
    <!-- End plugin css for this page -->
    <!-- inject:css -->
    <!-- endinject -->
    <!-- Layout styles -->
    <link rel="stylesheet" href="../assets/css/style.css">
    <!-- End layout styles -->
    <script src="https://code.iconify.design/2/2.1.0/iconify.min.js"></script>
</head>

<body>
    <div class="container-scroller">

        <!-- partial:partials/_navbar.html -->
        <nav class="navbar default-layout-navbar col-lg-12 col-12 p-0 fixed-top d-flex flex-row">
            <div class="text-center navbar-brand-wrapper d-flex align-items-center justify-content-center">
                <a class="navbar-brand brand-logo" href="index.html"><img src="../IMAGES/Logo.png" alt="logo" /></a>
                <a class="navbar-brand brand-logo-mini" href="index.html"><img src="../IMAGES/Logo-mini.png" alt="logo" /></a>
            </div>
            <div class="navbar-menu-wrapper d-flex align-items-stretch">
                <button class="navbar-toggler navbar-toggler align-self-center" type="button" data-toggle="minimize">
                    <span class="mdi mdi-menu"></span>
                </button>

                <ul class="navbar-nav navbar-nav-right">
                    <li class="nav-item nav-profile dropdown">
                        <a class="nav-link dropdown-toggle" id="profileDropdown" href="#" data-bs-toggle="dropdown" aria-expanded="false">
                            <div class="nav-profile-img">
                                <img alt="${sessionScope.SESSION_ADMIN.getNom()} ${sessionScope.SESSION_ADMIN.getPrenom()}" src="https://ui-avatars.com/api/?name=${sessionScope.SESSION_ADMIN.getPrenom()}+${sessionScope.SESSION_ADMIN.getNom()}&background=40d1f2&color=fff" alt="image">
                            </div>
                            <div class="nav-profile-text">
                                <p class="my-1 pt-2 text-black">${sessionScope.SESSION_ADMIN.getNom()} ${sessionScope.SESSION_ADMIN.getPrenom()}</p>
                            </div>
                        </a>
                    </li>
                </ul>
                <button class="navbar-toggler navbar-toggler-right d-lg-none align-self-center" type="button" data-toggle="offcanvas">
                   <span class="mdi mdi-menu"></span>
                </button>
            </div>
        </nav>
        <!-- partial -->
        <div class="container-fluid page-body-wrapper">
            <!-- partial:partials/_sidebar.html -->
            <nav class="sidebar sidebar-offcanvas" id="sidebar">
                <ul class="nav">
                    <li class="nav-item mt-4">
                        <a class="nav-link" href="Dashboard">
                            <span class="menu-title">tableau de bord</span>
                            <i class="mdi mdi-home menu-icon"></i>
                        </a>
                    </li>

                    <li class="nav-item">
                        <a class="nav-link" href="Users">
                            <span class="menu-title">Utilisateurs</span>
                            <i class="mdi mdi-contacts menu-icon"></i>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="Offres">
                            <span class="menu-title">Offres</span>
                            <i class="mdi mdi-format-list-bulleted menu-icon"></i>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="../Logout">
                            <span class="menu-title">Se Déconnecter</span>
                            <i class="mdi mdi-power menu-icon"></i>
                        </a>
                    </li>


                </ul>
            </nav>
            <!-- partial -->
            <div class="main-panel">
                <div class="content-wrapper">
                    <div class="page-header">
                        <h3 class="page-title">
                            <span class="page-title-icon bg-gradient-primary text-white me-2">
                              <i class="mdi mdi-home"></i>
                            </span> tableau de bord
                        </h3>

                    </div>
                    <div class="row">
                        <div class="col-md-4 stretch-card grid-margin mb-5">
                            <div class="card bg-gradient-danger card-img-holder text-white">
                                <div class="card-body">
                                    <img src="../assets/images/dashboard/circle.svg" class="card-img-absolute" alt="circle-image" />
                                    <h4 class="font-weight-normal mb-3">Utilisateurs <i class="mdi mdi-account mdi-24px float-right"></i>
                                    </h4>
                                    <h2 class="mb-5">${ sessionScope.NumUsers }</h2>

                                </div>
                            </div>
                        </div>
                        <div class="col-md-4 stretch-card grid-margin mb-5">
                            <div class="card bg-gradient-info card-img-holder text-white">
                                <div class="card-body">
                                    <img src="../assets/images/dashboard/circle.svg" class="card-img-absolute" alt="circle-image" />
                                    <h4 class="font-weight-normal mb-3">Artisans <span class="iconify" data-width="24" data-height="24" data-icon="mdi:account-hard-hat"></span>
                                        
                                    </h4>
                                    <h2 class="mb-5">${ sessionScope.NumSellers}</h2>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4 stretch-card grid-margin mb-5">
                            <div class="card bg-gradient-success card-img-holder text-white">
                                <div class="card-body">
                                    <img src="../assets/images/dashboard/circle.svg" class="card-img-absolute" alt="circle-image" />
                                    <h4 class="font-weight-normal mb-3">Offres <i class="mdi mdi-tag mdi-24px float-right"></i>
                                    </h4>
                                    <h2 class="mb-5">${ sessionScope.NumOffres }</h2>

                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12 grid-margin stretch-card">
                            <div class="card">
                                <div class="card-body">
                                    <div class="clearfix">
                                        <h4 class="card-title float-left">Statistiques (2022)</h4>
                                        <div id="visit-sale-chart-legend" class="rounded-legend legend-horizontal legend-top-right float-right"></div>
                                    </div>
                                    <canvas id="visit-sale-chart" class=""></canvas>
                                </div>
                            </div>
                        </div>

                    </div>
                    <div class="row">
                        <div class="col-md-6 grid-margin stretch-card">
                            <div class="card">
                                <div class="card-body">
                                    <h4 class="card-title">Villes</h4>
                                    <canvas id="traffic-chart"></canvas>
                                    <div id="traffic-chart-legend" class="rounded-legend legend-vertical legend-bottom-left pt-4"></div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6 grid-margin stretch-card">
                            <div class="card">
                                <div class="card-body">
                                    <h4 class="card-title">Professions</h4>
                                    <canvas id="traffic-chart-1"></canvas>
                                    <div id="traffic-chart-legend-1" class="rounded-legend legend-vertical legend-bottom-left pt-4"></div>
                                </div>
                            </div>
                        </div>
                    </div>




                </div>

                <!-- partial -->
            </div>
            <!-- main-panel ends -->
        </div>
        <!-- page-body-wrapper ends -->
    </div>
    <!-- container-scroller -->
    <script src="data.json"></script>
    <!-- plugins:js -->
    <script src="../assets/vendors/js/vendor.bundle.base.js"></script>
    <!-- endinject -->
    <!-- Plugin js for this page -->
    <script src="../assets/vendors/chart.js/Chart.min.js"></script>
    <script src="../assets/js/jquery.cookie.js" type="text/javascript"></script>
    <!-- End plugin js for this page -->
    <!-- inject:js -->
    <script src="../assets/js/off-canvas.js"></script>
    <script src="../assets/js/hoverable-collapse.js"></script>
    <script src="../assets/js/misc.js"></script>
    <!-- endinject -->
    <!-- Custom js for this page -->
    <script src="../assets/js/todolist.js"></script>
    <!-- End custom js for this page -->
    <script>
        (function($) {
            'use strict';
            $(function() {

                Chart.defaults.global.legend.labels.usePointStyle = true;
                if ($("#visit-sale-chart").length) {
                    Chart.defaults.global.legend.labels.usePointStyle = true;
                    var ctx = document.getElementById('visit-sale-chart').getContext("2d");

                    var gradientStrokeViolet = ctx.createLinearGradient(0, 0, 0, 181);
                    gradientStrokeViolet.addColorStop(0, 'rgba(218, 140, 255, 1)');
                    gradientStrokeViolet.addColorStop(1, 'rgba(154, 85, 255, 1)');
                    var gradientLegendViolet = 'linear-gradient(to right, rgba(218, 140, 255, 1), rgba(154, 85, 255, 1))';

                    var gradientStrokeBlue = ctx.createLinearGradient(0, 0, 0, 360);
                    gradientStrokeBlue.addColorStop(0, 'rgba(54, 215, 232, 1)');
                    gradientStrokeBlue.addColorStop(1, 'rgba(177, 148, 250, 1)');
                    var gradientLegendBlue = 'linear-gradient(to right, rgba(54, 215, 232, 1), rgba(177, 148, 250, 1))';

                    var gradientStrokeRed = ctx.createLinearGradient(0, 0, 0, 300);
                    gradientStrokeRed.addColorStop(0, 'rgba(255, 191, 150, 1)');
                    gradientStrokeRed.addColorStop(1, 'rgba(254, 112, 150, 1)');
                    var gradientLegendRed = 'linear-gradient(to right, rgba(255, 191, 150, 1), rgba(254, 112, 150, 1))';

                    var gradientStrokeYellow = ctx.createLinearGradient(0, 0, 0, 300);
                    gradientStrokeYellow.addColorStop(0, 'rgba(247, 239, 89, 1)');
                    gradientStrokeYellow.addColorStop(1, 'rgba(250, 183, 2, 1)');
                    var gradientLegendYellow = 'linear-gradient(to right, rgba(247, 239, 89, 1), rgba(250, 183, 2, 1))';

                    var myChart = new Chart(ctx, {
                        type: 'bar',
                        data: {
                            labels: ['JAN', 'FEB', 'MAR', 'APR', 'MAY', 'JUN', 'JUL', 'AUG', 'SEP', 'OCT', 'NOV', 'DEC'],
                            datasets: [{
                                    label: "Utilisateurs",
                                    borderColor: gradientStrokeBlue,
                                    backgroundColor: gradientStrokeBlue,
                                    hoverBackgroundColor: gradientStrokeBlue,
                                    legendColor: gradientLegendBlue,
                                    pointRadius: 0,
                                    fill: false,
                                    borderWidth: 1,
                                    fill: 'origin',
                                    data: ${sessionScope.usersByDate}
                                }, {
                                    label: "Offres",
                                    borderColor: gradientStrokeRed,
                                    backgroundColor: gradientStrokeRed,
                                    hoverBackgroundColor: gradientStrokeRed,
                                    legendColor: gradientLegendRed,
                                    pointRadius: 0,
                                    fill: false,
                                    borderWidth: 1,
                                    fill: 'origin',
                                    data: ${sessionScope.offresByDate}
                                },

                            ]
                        },
                        options: {
                            responsive: true,
                            legend: false,
                            legendCallback: function(chart) {
                                var text = [];
                                text.push('<ul>');
                                for (var i = 0; i < chart.data.datasets.length; i++) {
                                    text.push('<li><span class="legend-dots" style="background:' +
                                        chart.data.datasets[i].legendColor +
                                        '"></span>');
                                    if (chart.data.datasets[i].label) {
                                        text.push(chart.data.datasets[i].label);
                                    }
                                    text.push('</li>');
                                }
                                text.push('</ul>');
                                return text.join('');
                            },
                            scales: {
                                yAxes: [{
                                    ticks: {
                                        display: false,
                                        min: 0,
                                        stepSize: 20,
                                        max: 80
                                    },
                                    gridLines: {
                                        drawBorder: false,
                                        color: 'rgba(235,237,242,1)',
                                        zeroLineColor: 'rgba(235,237,242,1)'
                                    }
                                }],
                                xAxes: [{
                                    gridLines: {
                                        display: false,
                                        drawBorder: false,
                                        color: 'rgba(0,0,0,1)',
                                        zeroLineColor: 'rgba(235,237,242,1)'
                                    },
                                    ticks: {
                                        padding: 20,
                                        fontColor: "#9c9fa6",
                                        autoSkip: true,
                                    },
                                    categoryPercentage: 0.5,
                                    barPercentage: 0.5
                                }]
                            }
                        },
                        elements: {
                            point: {
                                radius: 0
                            }
                        }
                    })
                    $("#visit-sale-chart-legend").html(myChart.generateLegend());
                }

                if ($("#traffic-chart").length) {
                    var gradientStrokeBlue = ctx.createLinearGradient(0, 0, 0, 181);
                    gradientStrokeBlue.addColorStop(0, 'rgba(54, 215, 232, 1)');
                    gradientStrokeBlue.addColorStop(1, 'rgba(177, 148, 250, 1)');
                    var gradientLegendBlue = 'linear-gradient(to right, rgba(54, 215, 232, 1), rgba(177, 148, 250, 1))';

                    var gradientStrokeRed = ctx.createLinearGradient(0, 0, 0, 50);
                    gradientStrokeRed.addColorStop(0, 'rgba(255, 191, 150, 1)');
                    gradientStrokeRed.addColorStop(1, 'rgba(254, 112, 150, 1)');
                    var gradientLegendRed = 'linear-gradient(to right, rgba(255, 191, 150, 1), rgba(254, 112, 150, 1))';

                    var gradientStrokeGreen = ctx.createLinearGradient(0, 0, 0, 300);
                    gradientStrokeGreen.addColorStop(0, 'rgba(6, 185, 157, 1)');
                    gradientStrokeGreen.addColorStop(1, 'rgba(132, 217, 210, 1)');
                    var gradientLegendGreen = 'linear-gradient(to right, rgba(6, 185, 157, 1), rgba(132, 217, 210, 1))';

                    var gradientStrokeYellow = ctx.createLinearGradient(0, 0, 0, 300);
                    gradientStrokeYellow.addColorStop(0, 'rgba(247, 239, 89, 1)');
                    gradientStrokeYellow.addColorStop(1, 'rgba(255, 201, 54, 1)');
                    var gradientLegendYellow = 'linear-gradient(to right, rgba(247, 239, 89, 1), rgba(255, 201, 54, 1))';

                    var gradientStrokePurple = ctx.createLinearGradient(0, 0, 0, 300);
                    gradientStrokePurple.addColorStop(0, 'rgba(255, 156, 242, 1)');
                    gradientStrokePurple.addColorStop(1, 'rgba(255, 46, 228, 1)');
                    var gradientLegendPurple = 'linear-gradient(to right, rgba(255, 156, 242, 1), rgba(255, 46, 228, 1))';

                    var gradientStrokeGrey = ctx.createLinearGradient(0, 0, 0, 300);
                    gradientStrokeGrey.addColorStop(0, 'rgba(217, 217, 217, 1)');
                    gradientStrokeGrey.addColorStop(1, 'rgba(168,168,168, 1)');
                    var gradientLegendGrey = 'linear-gradient(to right, rgba(217, 217, 217, 1), rgba(168,168,168, 1))';
                    
                    var gradientStrokeGreenLite = ctx.createLinearGradient(0, 0, 0, 300);
                    gradientStrokeGreenLite.addColorStop(0, 'rgba(190, 255, 133, 1)');
                    gradientStrokeGreenLite.addColorStop(1, 'rgba(108, 199, 28, 1)');
                    var gradientLegendGreenLite = 'linear-gradient(to right, rgba(190, 255, 133, 1), rgba(108, 199, 28, 1))';
                    
                    var gradientStrokeOrange = ctx.createLinearGradient(0, 0, 0, 300);
                    gradientStrokeOrange.addColorStop(0, 'rgba(255, 160, 97, 1)');
                    gradientStrokeOrange.addColorStop(1, 'rgba(247, 113, 25, 1)');
                    var gradientLegendOrange = 'linear-gradient(to right, rgba(255, 160, 97, 1), rgba(247, 113, 25, 1))';

                    
                    var trafficChartData = {
                        datasets: [{
                            data: ${villeCounts},
                            backgroundColor: [
                                gradientStrokeBlue,
                                gradientStrokeGreen,
                                gradientStrokeRed,
                                gradientStrokeViolet,
                                gradientStrokeYellow,
                                gradientStrokePurple,
                                gradientStrokeGrey,
                                gradientStrokeGreenLite,
                                
                            ],
                            hoverBackgroundColor: [
                                gradientStrokeBlue,
                                gradientStrokeGreen,
                                gradientStrokeRed,
                                gradientStrokeViolet,
                                gradientStrokeYellow,
                                gradientStrokePurple,
                                gradientStrokeGrey,
                                gradientStrokeGreenLite,
                                
                            ],
                            borderColor: [
                                gradientStrokeBlue,
                                gradientStrokeGreen,
                                gradientStrokeRed,
                                gradientStrokeViolet,
                                gradientStrokeYellow,
                                gradientStrokePurple,
                                gradientStrokeGrey,
                                gradientStrokeGreenLite,
                                
                            ],
                            legendColor: [
                                gradientLegendBlue,
                                gradientLegendGreen,
                                gradientLegendRed,
                                gradientLegendViolet,
                                gradientLegendYellow,
                                gradientLegendPurple,
                                gradientLegendGrey,
                                gradientLegendGreenLite,
                                
                            ]
                        }],

                        // These labels appear in the legend and in the tooltips when hovering different arcs
                        labels: ${villeNames}
                    };
                    var trafficChartOptions = {
                        responsive: true,
                        animation: {
                            animateScale: true,
                            animateRotate: true
                        },
                        legend: false,
                        legendCallback: function(chart) {
                            var text = [];
                            text.push('<ul>');
                            for (var i = 0; i < trafficChartData.datasets[0].data.length; i++) {
                                text.push('<li><span class="legend-dots" style="background:' +
                                    trafficChartData.datasets[0].legendColor[i] +
                                    '"></span>');
                                if (trafficChartData.labels[i]) {
                                    text.push(trafficChartData.labels[i]) ;
                                }
                                text.push('<span class="float-right">' + Math.round((trafficChartData.datasets[0].data[i] / trafficChartData.datasets[0].data.reduce((a, b) => a + b, 0)) * 100) + "%" + ')</span>')
                                text.push('</li>');
                            }
                            text.push('</ul>');
                            return text.join('');
                        }
                    };
                    var trafficChartCanvas = $("#traffic-chart").get(0).getContext("2d");
                    var trafficChart = new Chart(trafficChartCanvas, {
                        type: 'doughnut',
                        data: trafficChartData,
                        options: trafficChartOptions
                    });
                    $("#traffic-chart-legend").html(trafficChart.generateLegend());

                    
                }
                
                if ($("#traffic-chart-1").length) {
                    var gradientStrokeBlue = ctx.createLinearGradient(0, 0, 0, 181);
                    gradientStrokeBlue.addColorStop(0, 'rgba(54, 215, 232, 1)');
                    gradientStrokeBlue.addColorStop(1, 'rgba(177, 148, 250, 1)');
                    var gradientLegendBlue = 'linear-gradient(to right, rgba(54, 215, 232, 1), rgba(177, 148, 250, 1))';

                    var gradientStrokeRed = ctx.createLinearGradient(0, 0, 0, 50);
                    gradientStrokeRed.addColorStop(0, 'rgba(255, 191, 150, 1)');
                    gradientStrokeRed.addColorStop(1, 'rgba(254, 112, 150, 1)');
                    var gradientLegendRed = 'linear-gradient(to right, rgba(255, 191, 150, 1), rgba(254, 112, 150, 1))';

                    var gradientStrokeGreen = ctx.createLinearGradient(0, 0, 0, 300);
                    gradientStrokeGreen.addColorStop(0, 'rgba(6, 185, 157, 1)');
                    gradientStrokeGreen.addColorStop(1, 'rgba(132, 217, 210, 1)');
                    var gradientLegendGreen = 'linear-gradient(to right, rgba(6, 185, 157, 1), rgba(132, 217, 210, 1))';

                    var gradientStrokeYellow = ctx.createLinearGradient(0, 0, 0, 300);
                    gradientStrokeYellow.addColorStop(0, 'rgba(247, 239, 89, 1)');
                    gradientStrokeYellow.addColorStop(1, 'rgba(255, 201, 54, 1)');
                    var gradientLegendYellow = 'linear-gradient(to right, rgba(247, 239, 89, 1), rgba(255, 201, 54, 1))';

                    var gradientStrokePurple = ctx.createLinearGradient(0, 0, 0, 300);
                    gradientStrokePurple.addColorStop(0, 'rgba(255, 156, 242, 1)');
                    gradientStrokePurple.addColorStop(1, 'rgba(255, 46, 228, 1)');
                    var gradientLegendPurple = 'linear-gradient(to right, rgba(255, 156, 242, 1), rgba(255, 46, 228, 1))';

                    var gradientStrokeGrey = ctx.createLinearGradient(0, 0, 0, 300);
                    gradientStrokeGrey.addColorStop(0, 'rgba(217, 217, 217, 1)');
                    gradientStrokeGrey.addColorStop(1, 'rgba(168,168,168, 1)');
                    var gradientLegendGrey = 'linear-gradient(to right, rgba(217, 217, 217, 1), rgba(168,168,168, 1))';
                    
                    var gradientStrokeGreenLite = ctx.createLinearGradient(0, 0, 0, 300);
                    gradientStrokeGreenLite.addColorStop(0, 'rgba(190, 255, 133, 1)');
                    gradientStrokeGreenLite.addColorStop(1, 'rgba(108, 199, 28, 1)');
                    var gradientLegendGreenLite = 'linear-gradient(to right, rgba(190, 255, 133, 1), rgba(108, 199, 28, 1))';
                    
                    var gradientStrokeOrange = ctx.createLinearGradient(0, 0, 0, 300);
                    gradientStrokeOrange.addColorStop(0, 'rgba(255, 160, 97, 1)');
                    gradientStrokeOrange.addColorStop(1, 'rgba(247, 113, 25, 1)');
                    var gradientLegendOrange = 'linear-gradient(to right, rgba(255, 160, 97, 1), rgba(247, 113, 25, 1))';

                    
                    var trafficChartData1 = {
                        datasets: [{
                            data: ${professionCounts},
                            backgroundColor: [
                                gradientStrokeBlue,
                                gradientStrokeGreen,
                                gradientStrokeRed,
                                gradientStrokeViolet,
                                gradientStrokeYellow,
                                gradientStrokePurple,
                                gradientStrokeGrey,
                                gradientStrokeGreenLite,
                                
                            ],
                            hoverBackgroundColor: [
                                gradientStrokeBlue,
                                gradientStrokeGreen,
                                gradientStrokeRed,
                                gradientStrokeViolet,
                                gradientStrokeYellow,
                                gradientStrokePurple,
                                gradientStrokeGrey,
                                gradientStrokeGreenLite,
                                
                            ],
                            borderColor: [
                                gradientStrokeBlue,
                                gradientStrokeGreen,
                                gradientStrokeRed,
                                gradientStrokeViolet,
                                gradientStrokeYellow,
                                gradientStrokePurple,
                                gradientStrokeGrey,
                                gradientStrokeGreenLite,
                                
                            ],
                            legendColor: [
                                gradientLegendBlue,
                                gradientLegendGreen,
                                gradientLegendRed,
                                gradientLegendViolet,
                                gradientLegendYellow,
                                gradientLegendPurple,
                                gradientLegendGrey,
                                gradientLegendGreenLite,
                                
                            ]
                        }],

                        // These labels appear in the legend and in the tooltips when hovering different arcs
                        labels1: ${professionNames}
                    };
                    var trafficChartOptions1 = {
                        responsive: true,
                        animation: {
                            animateScale: true,
                            animateRotate: true
                        },
                        legend: false,
                        legendCallback: function(chart) {
                            var text = [];
                            text.push('<ul>');
                            for (var i = 0; i < trafficChartData1.datasets[0].data.length; i++) {
                                text.push('<li><span class="legend-dots" style="background:' +
                                    trafficChartData1.datasets[0].legendColor[i] +
                                    '"></span>');
                                if (trafficChartData1.labels1[i]) {
                                    text.push(trafficChartData1.labels1[i]);
                                }
                                text.push('<span class="float-right">' + Math.round((trafficChartData1.datasets[0].data[i] / trafficChartData1.datasets[0].data.reduce((a, b) => a + b, 0)) * 100) + "%" + ')</span>')
                                text.push('</li>');
                            }
                            text.push('</ul>');
                            return text.join('');
                        }
                    };
                   
                    var trafficChartCanvas1 = $("#traffic-chart-1").get(0).getContext("2d");
                    var trafficChart1 = new Chart(trafficChartCanvas1, {
                        type: 'doughnut',
                        data: trafficChartData1,
                        options: trafficChartOptions1
                    });
                    $("#traffic-chart-legend-1").html(trafficChart1.generateLegend());
                }

            });
        })(jQuery);
    </script>
</body>

</html>