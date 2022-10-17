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
                            data: [0, 0, 0, 0, 20, 40, 15, 35, 25, 50, 30, 20]
                        },
                        {
                            label: "Offres",
                            borderColor: gradientStrokeRed,
                            backgroundColor: gradientStrokeRed,
                            hoverBackgroundColor: gradientStrokeRed,
                            legendColor: gradientLegendRed,
                            pointRadius: 0,
                            fill: false,
                            borderWidth: 1,
                            fill: 'origin',
                            data: [0, 0, 0, 0, 40, 30, 20, 10, 50, 15, 35, 40]
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


            var trafficChartData = {
                datasets: [{
                    data: [30, 30, 40, 50, 100, 15, 200],
                    backgroundColor: [
                        gradientStrokeBlue,
                        gradientStrokeGreen,
                        gradientStrokeRed,
                        gradientStrokeViolet,
                        gradientStrokeYellow,
                        gradientStrokePurple,
                        gradientStrokeGrey
                    ],
                    hoverBackgroundColor: [
                        gradientStrokeBlue,
                        gradientStrokeGreen,
                        gradientStrokeRed,
                        gradientStrokeViolet,
                        gradientStrokeYellow,
                        gradientStrokePurple,
                        gradientStrokeGrey
                    ],
                    borderColor: [
                        gradientStrokeBlue,
                        gradientStrokeGreen,
                        gradientStrokeRed,
                        gradientStrokeViolet,
                        gradientStrokeYellow,
                        gradientStrokePurple,
                        gradientStrokeGrey
                    ],
                    legendColor: [
                        gradientLegendBlue,
                        gradientLegendGreen,
                        gradientLegendRed,
                        gradientLegendViolet,
                        gradientLegendYellow,
                        gradientLegendPurple,
                        gradientLegendGrey
                    ]
                }],

                // These labels appear in the legend and in the tooltips when hovering different arcs
                labels: [
                    'Search Engines (',
                    'Direct Click (',
                    'Bookmarks Click (',
                    'testing (',
                    'hello (',
                    "funck off (",
                    'yeesss ('
                ]
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
                            text.push(trafficChartData.labels[i]);
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

            var trafficChartCanvas = $("#traffic-chart-1").get(0).getContext("2d");
            var trafficChart = new Chart(trafficChartCanvas, {
                type: 'doughnut',
                data: trafficChartData,
                options: trafficChartOptions
            });
            $("#traffic-chart-legend-1").html(trafficChart.generateLegend());
        }

    });
})(jQuery);