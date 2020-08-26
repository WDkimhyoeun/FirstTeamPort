<%@ page contentType="text/html; charset=utf-8"%>

<html>
<head>
	<title>Event</title>
	<link href="resources/event.css" rel="stylesheet" type="text/css">
</head>
<body>
	<div id="wrap" class="event">
		<!--header 추가하기-->
		<div id="header">
			<%@ include file="Title.jsp"%>
		</div>
		
		<!-- container -->
		<div id="container">
			<div id="pageTop">
				<div class="page_hgroup event">
					<h2 class="tit eng">EVENT</h2>
					<p class="txt">공차의 특별한 이벤트에 참여해 보세요.</p>
				</div>
			</div>
			<form name="frmSearch" id="frmSearch">
				<input type="hidden" name="page" id="page" value="1">
				<input type="hidden" name="status" id="status" value="ing">
			</form>
			<input type="hidden" name="totalPage" id="totalPage" value="1">
			<div id="contents">
				<div class="tab_style1 mb70">
					<ul>
						<li class="on">
							<a href="#">진행중인 이벤트</a>
						</li>
						<li>
							<a href="#">종료된 이벤트</a>
						</li>
						<li>
							<a href="#">당첨자 발표</a>
						</li>
					</ul>
				</div>
				<div class="gallery_list_wrap">
					<ul class="gallery_list">
						<li>
							<div class="imgs">
								<a href="#"><img src="res_img/eventImg1.png"></a>				
							</div>
							<div class="info">
								<p class="tit">8월 11일(화), 공차 멤버십 데이!</p>
								<a href="#">자세히 보기</a>
							</div>
						</li>
						<li>
							<div class="imgs">
								<a href="#"><img src="res_img/eventImg2.png"></a>				
							</div>
							<div class="info">
								<p class="tit">8월 매주 금요일은 공차 FLY-DAY!</p>
								<p class="data">2020년 08월 07일(금) ~ 2020년 08월 28일(금)</p>
								<a href="#">자세히 보기</a>
							</div>
						</li>
					</ul>		
				</div>
				<div class="btn_wrap mt60" id="moreBtn" style="display:none;">
					<div class="fl_c">
						<a href="#" class="btn50 gray" style="width:396px;" onclick="Prize.DataLoad();">
							<span class="more">더보기</span>
						</a>
					</div>
				
				</div>
			</div>
		</div>
		
		<!-- footer -->
		<div id="footer">
			<%@ include file="footer.jsp"%>
		</div>


</body>
</html>