
<!doctype html>
<html>

<head>
	<title>Line Chart</title>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.7.3/Chart.min.js"></script>
	<script src="http://code.jquery.com/jquery-latest.js"></script>
	<style>
.container {
  width: 80%;
  margin: 20px auto;
}

.p {
  text-align: center;
  font-size: 14px;
  padding-top: 140px;
}	
	</style>
</head>
<body>
<div class="container">
  <h2>Chart.js Responsive Line Chart Demo</h2>
  <div>
    <canvas id="canvas"></canvas>
  </div>
</div>

<p class="p">Demo by Monty Shokeen. <a href="http://www.sitepoint.com/fancy-responsive-charts-with-chart-js" target="_blank">See article</a>.</p>

	<script>
	var lineChartData = {
		    labels: ["Data 1", "Data 2", "Data 3", "Data 4", "Data 5", "Data 6", "Data 7"],
		    datasets: [{
		        fillColor: "rgba(220,220,220,0)",
		        strokeColor: "rgba(220,180,0,1)",
		        pointColor: "rgba(220,180,0,1)",
		        data: [20, 30, 80, 20, 40, 10, 60]
		    }, {
		        fillColor: "rgba(151,187,205,0)",
		        strokeColor: "rgba(151,187,205,1)",
		        pointColor: "rgba(151,187,205,1)",
		        data: [60, 10, 40, 30, 80, 30, 20]
		    }]

		}

		Chart.defaults.global.animationSteps = 50;
		Chart.defaults.global.tooltipYPadding = 16;
		Chart.defaults.global.tooltipCornerRadius = 0;
		Chart.defaults.global.tooltipTitleFontStyle = "normal";
		Chart.defaults.global.tooltipFillColor = "rgba(0,160,0,0.8)";
		Chart.defaults.global.animationEasing = "easeOutBounce";
		Chart.defaults.global.responsive = true;
		Chart.defaults.global.scaleLineColor = "black";
		Chart.defaults.global.scaleFontSize = 16;

		var ctx = document.getElementById("canvas").getContext("2d");
		var LineChartDemo = new Chart(ctx, {
			type:"line",
			data:lineChartData

		});
	</script>
</body>

</html>