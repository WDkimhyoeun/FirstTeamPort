<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<style>
	
	.container{
	 overflow: hidden;
	width: 2500px;
	height: 900px;
    margin: 0 -280px;
    position: relative;
	}
	.carousel-control.left{
	left:190px;
	
	}
	.carousel-control.right{

	right:250px;
	}
	#side_menu{
	height: 100%;
	
	background-color: green;
	}
<body>

</style>
<div class="container">
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner">
      <div class="item active">
      	<a href="#">
        				<img src="${pageContext.request.contextPath}/resources/images/banner1.jpg" alt="첫 번째 페이지" style="width:100%;">
      </a>
      </div>

      <div class="item">
        	<a href="#">
        	<img src="${pageContext.request.contextPath}/resources/images/banner2.jpg" alt="두 번째 페이지" style="width:100%;">
</a>
      </div>
 
      <div class="item">
      	<a href="#">
        <img src="${pageContext.request.contextPath}/resources/images/banner3.jpg" alt="세 번째 페이지" style="width:100%;">
     </a>
      </div>
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
  <div id = "side_menu">
  <p>점수제작</p>	
  </div>
</div>

</body>
</html>