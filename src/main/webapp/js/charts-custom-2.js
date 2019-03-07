/*global $, document*/
$(document).ready(function () {

    'use strict';


    // ------------------------------------------------------- //
    // Charts Gradients
    // ------------------------------------------------------ //
    var ctx1 = $("canvas").get(0).getContext("2d");
    var gradient1 = ctx1.createLinearGradient(150, 0, 150, 300);
    gradient1.addColorStop(0, 'rgba(133, 180, 242, 0.91)');
    gradient1.addColorStop(1, 'rgba(255, 119, 119, 0.94)');

    var gradient2 = ctx1.createLinearGradient(146.000, 0.000, 154.000, 300.000);
    gradient2.addColorStop(0, 'rgba(104, 179, 112, 0.85)');
    gradient2.addColorStop(1, 'rgba(76, 162, 205, 0.85)');


    // ------------------------------------------------------- //
    // Line Chart
    // ------------------------------------------------------ //
    var LINECHARTEXMPLE   = $('#lineChartExample');
    var lineChartExample = new Chart(LINECHARTEXMPLE, {
        type: 'line',
        options: {
            legend: {labels:{fontColor:"#777", fontSize: 12}},
            scales: {
                xAxes: [{
                    display: true,
                    gridLines: {
                        color: '#eee'
                    }
                }],
                yAxes: [{
                    display: true,
                    gridLines: {
                        color: '#eee'
                    }
                }]
            },
        },
        data: {
            labels: ["January", "February", "March", "April", "May", "June", "July"],
            datasets: [
                {
                    label: "Data Set One",
                    fill: true,
                    lineTension: 0.3,
                    backgroundColor: gradient1,
                    borderColor: gradient1,
                    borderCapStyle: 'butt',
                    borderDash: [],
                    borderDashOffset: 0.0,
                    borderJoinStyle: 'miter',
                    borderWidth: 1,
                    pointBorderColor: gradient1,
                    pointBackgroundColor: "#fff",
                    pointBorderWidth: 1,
                    pointHoverRadius: 5,
                    pointHoverBackgroundColor: gradient1,
                    pointHoverBorderColor: "rgba(220,220,220,1)",
                    pointHoverBorderWidth: 2,
                    pointRadius: 1,
                    pointHitRadius: 10,
                    data: [30, 50, 40, 61, 42, 35, 40],
                    spanGaps: false
                },
                {
                    label: "Data Set Two",
                    fill: true,
                    lineTension: 0.3,
                    backgroundColor: gradient2,
                    borderColor: gradient2,
                    borderCapStyle: 'butt',
                    borderDash: [],
                    borderDashOffset: 0.0,
                    borderJoinStyle: 'miter',
                    borderWidth: 1,
                    pointBorderColor: gradient2,
                    pointBackgroundColor: "#fff",
                    pointBorderWidth: 1,
                    pointHoverRadius: 5,
                    pointHoverBackgroundColor: gradient2,
                    pointHoverBorderColor: "rgba(220,220,220,1)",
                    pointHoverBorderWidth: 2,
                    pointRadius: 1,
                    pointHitRadius: 10,
                    data: [50, 40, 50, 40, 45, 40, 30],
                    spanGaps: false
                }
            ]
        }
    });


    // ------------------------------------------------------- //
    // Doughnut Chart
    // ------------------------------------------------------ //
    var DOUGHNUTCHARTEXMPLE  = $('#doughnutChartExample');
    var pieChartExample = new Chart(DOUGHNUTCHARTEXMPLE, {
        type: 'doughnut',
        options: {
            cutoutPercentage: 70,
        },
        data: {
            labels: [
                "A",
                "B",
                "C",
                "D"
            ],
            datasets: [
                {
                    data: [250, 50, 100, 40],
                    borderWidth: 0,
                    backgroundColor: [
                        '#3eb579',
                        '#49cd8b',
                        "#54e69d",
                        "#71e9ad"
                    ],
                    hoverBackgroundColor: [
                        '#3eb579',
                        '#49cd8b',
                        "#54e69d",
                        "#71e9ad"
                    ]
                }]
            }
    });

    var pieChartExample = {
        responsive: true
    };


    // ------------------------------------------------------- //
    // Line Chart 1
    // ------------------------------------------------------ //
    var LINECHART1 = $('#lineChart_ranking');
    var myLineChart = new Chart(LINECHART1, {
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
                    ticks: {
                        max: 20,
                        min: 0,
                        stepSize: 5
                    },
                    display: true,
                    gridLines: {
                        display: true
                    }
                }]
            },
            legend: {
                display: true
            }
        },
        data: {
            labels: ["12.09","12.10","12.11","12.12","12.13","12.14","12.15","12.16","12.17","12.18","12.19","12.20","12.21","12.22","12.23","12.24","12.25","12.26","12.27","12.28","12.29","12.30","12.31","01.01","01.02","01.03","01.04","01.05","01.06","01.07","01.08","01.09","01.10","01.11","01.12","01.13","01.14","01.15","01.16","01.17","01.18","01.19","01.20","01.21","01.22","01.23","01.24","01.25","01.26","01.27","01.28","01.29","01.30","01.31","02.01","02.02","02.03","02.04","02.05","02.06","02.07","02.08","02.09","02.10","02.11","02.12","02.13","02.14","02.15","02.16","02.17","02.18","02.19","02.20","02.21","02.22","02.23","02.24","02.25","02-26","02-27","02-28","03-01","03-02","03-03","03-04"],
            datasets: [
                {
                    label: "排名",
                    fill: true,
                    lineTension: 0,
                    backgroundColor: "transparent",
                    borderColor: '#4B9D89',
                    pointBorderColor: '#4B9D89',
                    pointHoverBackgroundColor: '#4B9D89',
                    borderCapStyle: 'butt',
                    borderDash: [],
                    borderDashOffset: 0.0,
                    borderJoinStyle: 'miter',
                    borderWidth: 2,
                    pointBackgroundColor: "#4B9D89",
                    pointBorderWidth: 0,
                    pointHoverRadius: 4,
                    pointHoverBorderColor: "#fff",
                    pointHoverBorderWidth: 0,
                    pointRadius: 3,
                    pointHitRadius: 0,
                    data: [17,,,,,,,,,,,,19,9,6,12,12,6,11,15,15,20,,,,,16,,,,,,13,6,7,,13,7,8,15,18,,,17,17,19,13,9,11,20,,14,,,16,20,14,,15,9,19,17,9,18,17,13,12,15,13,15,13,4,7,9,9,5,8,6,7,8,8,8,9,,13,5],
                    spanGaps: false
                }
            ]
        }
    });


    // ------------------------------------------------------- //
    // Line Chart 2
    // ------------------------------------------------------ //
    var LINECHART1 = $('#lineChart_active');
    var myLineChart = new Chart(LINECHART1, {
        type: 'line',
        options: {
            scales: {
                xAxes: [{
                    display: true,
                    gridLines: {
                        display: true,
                        color: '#eee'
                    }
                }],
                yAxes: [{
                    ticks: {
//                        max: 40,
                    	min: 20000,
//                        stepSize: 0.5
                    },
                    display: true,
                    gridLines: {
                        display: true
                    }
                }]
            },
            legend: {
                display: true
            }
        },
        data: {
            labels: ["12.09","12.10","12.11","12.12","12.13","12.14","12.15","12.16","12.17","12.18","12.19","12.20","12.21","12.22","12.23","12.24","12.25","12.26","12.27","12.28","12.29","12.30","12.31","01.01","01.02","01.03","01.04","01.05","01.06","01.07","01.08","01.09","01.10","01.11","01.12","01.13","01.14","01.15","01.16","01.17","01.18","01.19","01.20","01.21","01.22","01.23","01.24","01.25","01.26","01.27","01.28","01.29","01.30","01.31","02.01","02.02","02.03","02.04","02.05","02.06","02.07","02.08","02.09","02.10","02.11","02.12","02.13","02.14","02.15","02.16","02.17","02.18","02.19","02.20","02.21","02.22","02.23","02.24","02.25","02-26","02-27","02-28","03-01","03-02","03-03","03-04"],
            datasets: [
                {
                    label: "活跃粉丝数",
                    fill: true,
                    lineTension: 0,
                    backgroundColor: "transparent",
                    borderColor: '#E57D96',
                    pointBorderColor: '#E57D96',
                    pointHoverBackgroundColor: '#E57D96',
                    borderCapStyle: 'butt',
                    borderDash: [],
                    borderDashOffset: 0.0,
                    borderJoinStyle: 'miter',
                    borderWidth: 2,
                    pointBackgroundColor: "#E57D96",
                    pointBorderWidth: 0,
                    pointHoverRadius: 4,
                    pointHoverBorderColor: "#fff",
                    pointHoverBorderWidth: 0,
                    pointRadius: 3,
                    pointHitRadius: 0,
                    data: [46534,,,,,,,,,,,,43997,61981,74345,54830,52016,78331,53534,40041,51506,35839,,,,,23686,,,,,,52731,84522,75850,,50065,58400,56605,36815,42050,,,45474,44022,44284,41109,59662,59771,51254,,54813,,,53409,46778,51091,,43515,58701,36591,42198,53615,43789,46652,43592,50448,44818,41869,44013,45541,107657,56258,45317,51169,99367,52047,63540,72493,63012,60122,53402,52186,,47450,67621],
                    spanGaps: false
                }
            ]
        }
    });


    // ------------------------------------------------------- //
    // Line Chart 3
    // ------------------------------------------------------ //
    var LINECHART1 = $('#lineChart_pageAmount');
    var myLineChart = new Chart(LINECHART1, {
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
                    ticks: {
//                    	beginAtZero:true
/*                        max: 20,
                        min: 0,
                        stepSize: 5*/
                    },
                    display: true,
                    gridLines: {
                        display: true
                    }
                }]
            },
            legend: {
                display: true
            }
        },
        data: {
            labels: ["12.09","12.10","12.11","12.12","12.13","12.14","12.15","12.16","12.17","12.18","12.19","12.20","12.21","12.22","12.23","12.24","12.25","12.26","12.27","12.28","12.29","12.30","12.31","01.01","01.02","01.03","01.04","01.05","01.06","01.07","01.08","01.09","01.10","01.11","01.12","01.13","01.14","01.15","01.16","01.17","01.18","01.19","01.20","01.21","01.22","01.23","01.24","01.25","01.26","01.27","01.28","01.29","01.30","01.31","02.01","02.02","02.03","02.04","02.05","02.06","02.07","02.08","02.09","02.10","02.11","02.12","02.13","02.14","02.15","02.16","02.17","02.18","02.19","02.20","02.21","02.22","02.23","02.24","02.25","02-26","02-27","02-28","03-01","03-02","03-03","03-04"],
            datasets: [
                {
                    label: "页显粉丝数",
                    fill: true,
                    lineTension: 0,
                    backgroundColor: "transparent",
                    borderColor: '#4B9D89',
                    pointBorderColor: '#4B9D89',
                    pointHoverBackgroundColor: '#4B9D89',
                    borderCapStyle: 'butt',
                    borderDash: [],
                    borderDashOffset: 0.0,
                    borderJoinStyle: 'miter',
                    borderWidth: 2,
                    pointBackgroundColor: "#4B9D89",
                    pointBorderWidth: 0,
                    pointHoverRadius: 4,
                    pointHoverBorderColor: "#fff",
                    pointHoverBorderWidth: 0,
                    pointRadius: 3,
                    pointHitRadius: 0,
                    data: [2759272,,,,,,,,,,,,2902473,2996948,2929662,3029804,3046800,3052010,3079740,2988503,3118590,3129811,,,,,3142593,,,,,,3280996,3284113,3214141,,3341519,3373388,3294314,3280784,3280964,,,3379119,3484360,3398008,3548862,3543988,3439589,3535110,,3705746,,,3748367,3902589,3763760,,3823966,3946631,4094463,4094144,4119913,4155191,4301671,4424187,4442698,4319214,4349193,4453312,4522990,4486531,4627202,4881613,4910503,4867868,4937519,5123761,5205291,5121485,5187892,5334560,5286464,,5192676,5312970],
                    spanGaps: false
                }
            ]
        }
    });
    
    
    // ------------------------------------------------------- //
    // Pie Chart
    // ------------------------------------------------------ //
    var PIECHARTEXMPLE    = $('#pieChartExample');
    var pieChartExample = new Chart(PIECHARTEXMPLE, {
        type: 'pie',
        data: {
            labels: [
                "A",
                "B",
                "C",
                "D"
            ],
            datasets: [
                {
                    data: [300, 50, 100, 80],
                    borderWidth: 0,
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

    var pieChartExample = {
        responsive: true
    };


    // ------------------------------------------------------- //
    // Bar Chart
    // ------------------------------------------------------ //
    var BARCHARTEXMPLE    = $('#barChartExample');
    var barChartExample = new Chart(BARCHARTEXMPLE, {
        type: 'bar',
        options: {
        	scaleOverlay: true,
            scales: {
                xAxes: [{
                    display: true,
                    gridLines: {
                        color: '#eee'
                    }
                }],
                yAxes: [{
                    display: true,
                    gridLines: {
                        color: '#eee'
                    }
                }]
            },
        },
        data: {
            labels: ["January", "February", "March", "April", "May", "June", "July", "August", "September","October","November", "December",],
            datasets: [
                {
                    label: "2018年",
                    backgroundColor: [
                    	'#8AB859',
                        '#8AB859',
                        '#B47786',
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
                    data: [13799,25300,594889,201644,182855,43262,45701,110405,88486,277091,465855,517438],
                },
                {
                    label: "2019年",
                    backgroundColor: [
                    	'#556F94',
                        '#556F94',
                        '#556F94',
                        '#556F94',
                        '#556F94',
                        '#556F94',
                        '#556F94',
                        '#556F94',
                        '#556F94',
                        '#556F94',
                        '#556F94',
                        '#556F94'
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
                    data: [606392,1377045],
                }
            ]
        }
    });
    
    // ------------------------------------------------------- //
    // Bar Chart
    // ------------------------------------------------------ //
    var BARCHARTEXMPLE    = $('#barChart_year_zyl');
    var barChartExample = new Chart(BARCHARTEXMPLE, {
        type: 'bar',
        options: {
        	scaleOverlay: true,
            scales: {
                xAxes: [{
                    display: true,
                    gridLines: {
                        color: '#eee'
                    }
                }],
                yAxes: [{
                    display: true,
                    gridLines: {
                        color: '#eee'
                    }
                }]
            },
        },
        data: {
            labels: ["January", "February", "March", "April", "May", "June", "July", "August", "September","October","November", "December",],
            datasets: [
                {
                    label: "2018年",
                    backgroundColor: [
                    	'#8AB859',
                        '#8AB859',
                        '#B47786',
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
                    data: [13799,25300,594889,201644,182855,43262,45701,110405,88486,277091,465855,517438],
                },
                {
                    label: "2019年",
                    backgroundColor: [
                    	'#556F94',
                        '#556F94',
                        '#556F94',
                        '#556F94',
                        '#556F94',
                        '#556F94',
                        '#556F94',
                        '#556F94',
                        '#556F94',
                        '#556F94',
                        '#556F94',
                        '#556F94'
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
                    data: [606392,1377045],
                }
            ]
        }
    });
    
 // ------------------------------------------------------- //
    // Bar Chart
    // ------------------------------------------------------ //
    var BARCHARTEXMPLE    = $('#barChart_year_yjl');
    var barChartExample = new Chart(BARCHARTEXMPLE, {
        type: 'bar',
        options: {
        	scaleOverlay: true,
            scales: {
                xAxes: [{
                    display: true,
                    gridLines: {
                        color: '#eee'
                    }
                }],
                yAxes: [{
                    display: true,
                    gridLines: {
                        color: '#eee'
                    }
                }]
            },
        },
        data: {
            labels: ["January", "February", "March", "April", "May", "June", "July", "August", "September","October","November", "December",],
            datasets: [
                {
                    label: "2018年",
                    backgroundColor: [
                    	'#8AB859',
                        '#8AB859',
                        '#B47786',
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
                    data: [,,,,,,,,11550,39195,173527,149425],
                },
                {
                    label: "2019年",
                    backgroundColor: [
                    	'#556F94',
                        '#556F94',
                        '#556F94',
                        '#556F94',
                        '#556F94',
                        '#556F94',
                        '#556F94',
                        '#556F94',
                        '#556F94',
                        '#556F94',
                        '#556F94',
                        '#556F94'
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
                    data: [225819,380672],
                }
            ]
        }
    });



    // ------------------------------------------------------- //
    // Bar Chart 1
    // ------------------------------------------------------ //
    var BARCHART1 = $('#barChart_ch_month');
    var barChartHome = new Chart(BARCHART1, {
        type: 'bar',
        options:
        {
            scales:
            {
                xAxes: [{
                    display: true
                }],
                yAxes: [{
                	ticks: {
                    	beginAtZero:true
                    },
                    display: true
                }],
            },
            legend: {
                display: true
            }
        },
        data: {
            labels: ["12.21-12.28", "12.28-01.04", "01.04-01.11", "01.11-01.18", "01.18-01.25", "01.25-02.01", "02.01-02.08", "02.08-02.15","02.15-02.22","02.22-03.01"],
            datasets: [
                {
                    label: "小辫儿",
                    backgroundColor: [
                        '#B47786','#B47786','#B47786','#B47786','#B47786','#B47786','#B47786','#B47786','#B47786','#B47786','#B47786','#B47786','#B47786','#B47786'
                    ],
                    borderColor: [
                        '#7D7D7D','#7D7D7D','#7D7D7D','#7D7D7D','#7D7D7D','#7D7D7D','#7D7D7D','#7D7D7D','#7D7D7D','#7D7D7D','#7D7D7D','#7D7D7D','#7D7D7D','#7D7D7D'
                    ],
                    borderWidth: 0,
                    data: [1.1, 1.2, 1.3, 2.2, 2.6, 3.2, 4, 4.6, 5.1, 3.8]
                },
                {
                    label: "九郎",
                    backgroundColor: [
                        '#9F92A4','#9F92A4','#9F92A4','#9F92A4','#9F92A4','#9F92A4','#9F92A4','#9F92A4','#9F92A4','#9F92A4','#9F92A4','#9F92A4','#9F92A4','#9F92A4','#9F92A4'
                    ],
                    borderColor: [
                        '#7D7D7D','#7D7D7D','#7D7D7D','#7D7D7D','#7D7D7D','#7D7D7D','#7D7D7D','#7D7D7D','#7D7D7D','#7D7D7D','#7D7D7D','#7D7D7D','#7D7D7D','#7D7D7D','#7D7D7D'
                    ],
                    borderWidth: 0,
                    data: [0.5, 0.7, 0.8, 1.4, 0.7, 1, 0.9, 1.3, 1.2, 0.8]
                }
            ]
        }
    });


    // ------------------------------------------------------- //
    // Bar Chart 2
    // ------------------------------------------------------ //
    var BARCHART2 = $('#barChart2');
    var barChartHome = new Chart(BARCHART2, {
        type: 'bar',
        options:
        {
            scales:
            {
                xAxes: [{
                    display: false
                }],
                yAxes: [{
                    display: false
                }],
            },
            legend: {
                display: false
            }
        },
        data: {
            labels: ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O"],
            datasets: [
                {
                    label: "Data Set 1",
                    backgroundColor: [
                        '#54e69d',
                        '#54e69d',
                        '#54e69d',
                        '#54e69d',
                        '#54e69d',
                        '#54e69d',
                        '#54e69d',
                        '#54e69d',
                        '#54e69d',
                        '#54e69d',
                        '#54e69d',
                        '#54e69d',
                        '#54e69d',
                        '#54e69d',
                        '#54e69d'
                    ],
                    borderColor: [
                        '#54e69d',
                        '#54e69d',
                        '#54e69d',
                        '#54e69d',
                        '#54e69d',
                        '#54e69d',
                        '#54e69d',
                        '#54e69d',
                        '#54e69d',
                        '#54e69d',
                        '#54e69d',
                        '#54e69d',
                        '#54e69d',
                        '#54e69d',
                        '#54e69d'
                    ],
                    borderWidth: 1,
                    data: [40, 33, 22, 28, 40, 25, 30, 40, 28, 27, 22, 15, 20, 24, 30]
                }
            ]
        }
    });


    // ------------------------------------------------------- //
    // Polar Chart
    // ------------------------------------------------------ //
    var POLARCHARTEXMPLE  = $('#polarChartExample');
    var polarChartExample = new Chart(POLARCHARTEXMPLE, {
        type: 'polarArea',
        options: {
            elements: {
                arc: {
                    borderWidth: 0,
                    borderColor: '#aaa'
                }
            }
        },
        data: {
            datasets: [{
                data: [
                    11,
                    16,
                    12,
                    11,
                    7
                ],
                backgroundColor: [
                    "#e05f5f",
                    "#e96a6a",
                    "#ff7676",
                    "#ff8b8b",
                    "#fc9d9d"
                ],
                label: 'My dataset' // for legend
            }],
            labels: [
                "A",
                "B",
                "C",
                "D",
                "E"
            ]
        }
    });

    var polarChartExample = {
        responsive: true
    };


    // ------------------------------------------------------- //
    // Radar Chart
    // ------------------------------------------------------ //
    var RADARCHARTEXMPLE  = $('#radarChartExample');
    var radarChartExample = new Chart(RADARCHARTEXMPLE, {
        type: 'radar',
        data: {
            labels: ["A", "B", "C", "D", "E", "C"],
            datasets: [
                {
                    label: "First dataset",
                    backgroundColor: "rgba(84, 230, 157, 0.4)",
                    borderWidth: 2,
                    borderColor: "rgba(75, 204, 140, 1)",
                    pointBackgroundColor: "rgba(75, 204, 140, 1)",
                    pointBorderColor: "#fff",
                    pointHoverBackgroundColor: "#fff",
                    pointHoverBorderColor: "rgba(75, 204, 140, 1)",
                    data: [65, 59, 90, 81, 56, 55]
                },
                {
                    label: "Second dataset",
                    backgroundColor: "rgba(255, 119, 119, 0.4)",
                    borderWidth: 2,
                    borderColor: "rgba(255, 119, 119, 1)",
                    pointBackgroundColor: "rgba(255, 119, 119, 1)",
                    pointBorderColor: "#fff",
                    pointHoverBackgroundColor: "#fff",
                    pointHoverBorderColor: "rgba(255, 119, 119, 1)",
                    data: [50, 60, 80, 45, 96, 70]
                }
            ]
        }
    });
    var radarChartExample = {
        responsive: true
    };


});
