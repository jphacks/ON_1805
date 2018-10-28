# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

window.draw_graph = ->
  ctx = document.getElementById("myChart").getContext('2d')
  barNum = gon.data.length
  labels = gon.lab
  bgColors = new Array(barNum)
  bdColors = new Array(barNum)

  for i in [0...barNum]
    ##labels[i] = 'data' + i
    bgColors[i] = 'rgba(107, 204, 255, 1)'
    bdColors[i] = 'rgba(255, 255, 255, 1)'
  myChart = new Chart(ctx, {
    type: 'bar',
    data: {
      labels: gon.lab
      datasets: [{
        label: 'GPA平均',
        data: gon.linedata,
        type: 'line',
        fill: false,
        borderColor: 'rgba(255, 100, 100, 2)'
        yAxisID: "y2"
      },{
          label: '研究室ごとの希望者',
          data: gon.data
          backgroundColor: bgColors,
          borderColor: bdColors,
          borderWidth: 1
          yAxisID: "y1"
          }],
    },
    options: {
      scales: {
        yAxes: [{
            id: 'y1',
            position: 'left',
            ticks: {
                min:0
                },
            scaleLabel: {
                display: true,
                labelString: '希望人数',
                fontColor: 'rgb(60, 160, 220)'
            },
        }, {
            id: 'y2',
            position: 'right',
            ticks: {
                min:0
                max:4.0
                },
            scaleLabel: {
                display: true,
                labelString: 'GPA平均',
                fontColor: 'rgb(60, 190, 20)'
            },
            gridLines:{
                drawOnChartArea: false,
                },
        }]
      }
    }
  })
