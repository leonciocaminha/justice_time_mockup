var charts = {
  procedurePerDays: function (markup) {
    $(markup).highcharts({
      chart: {
        type: 'area',
        marginTop: 30,
        height: 300,
        width: 800
      },
      credits: {
        enabled: false
      },
      title: {
        text: 'Quantidade de Processos por Dias',
        style: {
          fontSize: '14px'
        }
      },
      xAxis: {
        categories: ['50', '100', '150', '200', '250'],
        tickmarkPlacement: 'on',
        title: {
          text: 'Qtde de Dias'
        }
      },
      yAxis: {
        title: {
          text: 'Processos'
        }
      },
      tooltip: {
        shared: true,
        valueSuffix: ' Processos'
      },
      plotOptions: {
        area: {
          stacking: 'normal',
          lineColor: '#666666',
          lineWidth: 1,
          marker: {
            lineWidth: 1,
            lineColor: '#666666'
          }
        }
      },
      series: [{
        name: 'Fase 01',
        data: [502, 635, 809, 947, 1402]
      }, {
        name: 'Fase 02',
        data: [106, 107, 111, 133, 221]
      }, {
        name: 'Fase 03',
        data: [163, 203, 276, 408, 547]
      }]
    });
  },

  procedurePerPhase: function (markup) {
    $(markup).highcharts({
      chart: {
        type: 'pie',
        marginTop: 10,
        height: 300
      },
      credits: {
        enabled: false
      },
      title: {
        text: 'Quantidade de Processos por Fase',
        style: {
          fontSize: '14px'
        }
      },
      plotOptions: {
        pie: {
          innerSize: 100,
          depth: 45
        }
      },
      series: [{
        name: 'Qtde de Processos',
        data: [
          ['Fase 01', 8],
          ['Fase 02', 3],
          ['Fase 03', 1]
        ]
      }]
    });
  }
}

$(document).ready(function () {
  charts.procedurePerDays('#procedure-per-days')
  charts.procedurePerPhase('#procedure-per-phase')
})
