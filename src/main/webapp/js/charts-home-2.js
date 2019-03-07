/*global $, document, Chart, LINECHART, data, options, window*/
$(document).ready(function () {

    'use strict';

    // ------------------------------------------------------- //
    // Line Chart
    // ------------------------------------------------------ //
    var legendState = true;
    if ($(window).outerWidth() < 576) {
        legendState = false;
    }

    var LINECHART = $('#lineCahrt');
    var myLineChart = new Chart(LINECHART, {
        type: 'line',
        options: {
            scales: {
                xAxes: [{
                    display: true,
                    gridLines: {
                        display: true
                    }
                }],
                yAxes: [{
                    display: true,
                    gridLines: {
                        display: true
                    }
                }]
            },
            legend: {
                display: legendState
            }
        },
        data: {
            labels: ["11.28","11.29","11.30","12.01","12.02","12.03","12.04","12.05","12.06","12.07","12.08","12.09","12.10","12.11","12.12","12.13","12.14","12.15","12.16","12.17","12.18","12.19","12.20","12.21","12.22","12.23","12.24","12.25","12.26","12.27","12.28","12.29","12.30","12.31","01.01","01.02","01.03","01.04","01.05","01.06","01.07","01.08","01.09","01.10","01.11","01.12","01.13","01.14","01.15","01.16","01.17","01.18","01.19","01.20","01.21","01.22","01.23","01.24","01.25","01.26","01.27","01.28","01.29","01.30","01.31","02.01","02.02","02.03","02.04","02.05","02.06","02.07","02.08","02.09","02.10","02.11","02.12","02.13","02.14","02.15","02.16","02.17","02.18","02.19","02.20","02.21","02.22","02.23","02.24","02.25","02-26","02-27","02-28","03-01","03-02","03-03","03-04"],
            datasets: [
                {
                    label: "小辫儿",
                    fill: true,
                    lineTension: 0,
                    backgroundColor: "transparent",
                    borderColor: '#f15765',
                    pointBorderColor: '#da4c59',
                    pointHoverBackgroundColor: '#da4c59',
                    borderCapStyle: 'butt',
                    borderDash: [],
                    borderDashOffset: 0.0,
                    borderJoinStyle: 'miter',
                    borderWidth: 1,
                    pointBackgroundColor: "#fff",
                    pointBorderWidth: 2,
                    pointHoverRadius: 5,
                    pointHoverBorderColor: "#fff",
                    pointHoverBorderWidth: 2,
                    pointRadius: 1,
                    pointHitRadius: 0,
                    data: [17252,17986,12002,25473,22177,18257,13788,14048,19624,12105,19159,45547,16055,9879,12791,14430,10300,15109,24226,22460,11020,17132,15013,11086,22592,21636,16151,13756,18148,8113,12668,15402,16034,13259,14827,12999,10582,39074,8930,11692,10115,11300,13278,5288,11011,15189,10514,7453,10468,18709,16388,9870,38398,49921,12960,10826,11374,14727,13863,42738,64461,36416,25001,25299,22991,62586,21341,24903,28113,38594,64445,38832,71962,69476,55420,70007,31395,30793,32545,31966,38919,37868,116378,97071,41898,23559,97560,102607,52425,44661,19514,12990,19217,40951,31935,17804,65042],
                    spanGaps: false
                },
                {
                    label: "九郎",
                    fill: true,
                    lineTension: 0,
                    backgroundColor: "transparent",
                    borderColor: "#54e69d",
                    pointHoverBackgroundColor: "#44c384",
                    borderCapStyle: 'butt',
                    borderDash: [],
                    borderDashOffset: 0.0,
                    borderJoinStyle: 'miter',
                    borderWidth: 1,
                    pointBorderColor: "#44c384",
                    pointBackgroundColor: "#fff",
                    pointBorderWidth: 2,
                    pointHoverRadius: 5,
                    pointHoverBorderColor: "#fff",
                    pointHoverBorderWidth: 2,
                    pointRadius: 1,
                    pointHitRadius: 10,
                    data: [5990,5392,4859,5067,8441,6757,6326,5350,4890,4281,5511,6899,4928,4933,4933,4778,4513,5010,5368,6011,4934,3721,3394,3395,3968,5202,3945,3700,3933,3236,3313,3519,4309,4860,8295,5419,4579,7221,4799,4705,3625,3773,3582,6393,6413,13669,5028,10450,13619,11531,5217,6157,5726,6726,6578,5755,6099,6579,5829,7251,10294,10982,9063,10818,9578,10387,9493,10173,10114,11041,14597,15009,17660,18252,14580,16474,13201,13751,14341,12809,15248,13906,22244,19463,13396,10767,22693,18830,11452,10180,7047,6509,7055,7147,7470,8754,9030],
                    spanGaps: false
                }
            ]
        }
    });



    // ------------------------------------------------------- //
    // Line Chart 1
    // ------------------------------------------------------ //
    var LINECHART1 = $('#lineChart1');
    var myLineChart = new Chart(LINECHART1, {
        type: 'line',
        options: {
            scales: {
                xAxes: [{
                    display: true,
                    gridLines: {
                        display: false
                    }
                }],
                yAxes: [{
                    ticks: {
                        max: 40,
                        min: 0,
                        stepSize: 0.5
                    },
                    display: false,
                    gridLines: {
                        display: false
                    }
                }]
            },
            legend: {
                display: false
            }
        },
        data: {
            labels: ["A", "B", "C", "D", "E", "F", "G"],
            datasets: [
                {
                    label: "Total Overdue",
                    fill: true,
                    lineTension: 0,
                    backgroundColor: "transparent",
                    borderColor: '#6ccef0',
                    pointBorderColor: '#59c2e6',
                    pointHoverBackgroundColor: '#59c2e6',
                    borderCapStyle: 'butt',
                    borderDash: [],
                    borderDashOffset: 0.0,
                    borderJoinStyle: 'miter',
                    borderWidth: 3,
                    pointBackgroundColor: "#59c2e6",
                    pointBorderWidth: 0,
                    pointHoverRadius: 4,
                    pointHoverBorderColor: "#fff",
                    pointHoverBorderWidth: 0,
                    pointRadius: 4,
                    pointHitRadius: 0,
                    data: [20, 28, 30, 22, 24, 10, 7],
                    spanGaps: false
                }
            ]
        }
    });



    // ------------------------------------------------------- //
    // Pie Chart
    // ------------------------------------------------------ //
    var PIECHART = $('#pieChart');
    var myPieChart = new Chart(PIECHART, {
        type: 'doughnut',
        options: {
            cutoutPercentage: 80,
            legend: {
                display: false
            }
        },
        data: {
            labels: [
                "First",
                "Second",
                "Third",
                "Fourth"
            ],
            datasets: [
                {
                    data: [300, 50, 100, 60],
                    borderWidth: [0, 0, 0, 0],
                    backgroundColor: [
                        '#44b2d7',
                        "#59c2e6",
                        "#71d1f2",
                        "#96e5ff"
                    ],
                    hoverBackgroundColor: [
                        '#44b2d7',
                        "#59c2e6",
                        "#71d1f2",
                        "#96e5ff"
                    ]
                }]
        }
    });


    // ------------------------------------------------------- //
    // Bar Chart
    // ------------------------------------------------------ //
    var BARCHARTHOME = $('#barChartHome');
    var barChartHome = new Chart(BARCHARTHOME, {
        type: 'bar',
        options:
        {
            scales:
            {
                xAxes: [{
                    display: false	
                }],
                yAxes: [{
                    display: true
                }],
            },
            legend: {
                display: false
            }
        },
        data: {
            labels: ["January", "February", "March", "April", "May", "June", "July", "August", "September","October","November", "December",],
            datasets: [
                {
                    label: "月增长",
                    backgroundColor: [
                    	'#8AB859',
                        '#8AB859',
                        '#B46276',
                        '#8AB859',
                        '#8AB859',
                        '#8AB859',
                        '#8AB859',
                        '#8AB859',
                        '#8AB859',
                        '#8AB859',
                        '#8AB859',
                        '#8AB859'
                    ],
                    borderColor: [
                    	'#7D7D7D',
                        '#7D7D7D',
                        '#9B3F56',
                        '#7D7D7D',
                        '#7D7D7D',
                        '#7D7D7D',
                        '#7D7D7D',
                        '#7D7D7D',
                        '#7D7D7D',
                        '#7D7D7D',
                        '#7D7D7D',
                        '#7D7D7D'
                    ],
                    borderWidth: 1,
                    data: [13799,25300,594889,201644,182855,43262,45701,110405,88486,277091,465855,517438]
                }
            ]
        }
    });
    
 // ------------------------------------------------------- //
    // Bar Chart
    // ------------------------------------------------------ //
    var BARCHARTHOME = $('#barChartHome2');
    var barChartHome2 = new Chart(BARCHARTHOME, {
        type: 'bar',
        options:
        {
            scales:
            {
                xAxes: [{
                    display: false
                }],
                yAxes: [{
                    display: true
                }],
            },
            legend: {
                display: false
            }
        },
        data: {
            labels: ["January", "February", "March", "April", "May", "June", "July", "August", "September","October","November", "December"],
            datasets: [
                {
                    label: "月增长",
                    backgroundColor: [
                        '#8AB859',
                        '#8AB859',
                        '#8AB859',
                        '#8AB859',
                        '#8AB859',
                        '#8AB859',
                        '#8AB859',
                        '#8AB859',
                        '#8AB859',
                        '#8AB859',
                        '#8AB859',
                        '#8AB859'
                    ],
                    borderColor: [
                        '#7D7D7D',
                        'rgb(121, 106, 238)',
                        'rgb(121, 106, 238)',
                        'rgb(121, 106, 238)',
                        'rgb(121, 106, 238)',
                        'rgb(121, 106, 238)',
                        'rgb(121, 106, 238)',
                        'rgb(121, 106, 238)',
                        'rgb(121, 106, 238)',
                        'rgb(121, 106, 238)',
                        'rgb(121, 106, 238)',
                        'rgb(121, 106, 238)'
                    ],
                    borderWidth: 1,
                    data: [606392]
                }
            ]
        }
    });

});
