<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/homepage2.css"
	type="text/css">
<link href="resources/css/testStoreCss.css" rel="stylesheet" type="text/css">
<style type="text/css">
</style>
</head>

<body>
	<div id="wrap">
		
			<%@ include file="Banner.jsp"%>
		
			<%@ include file="Title.jsp"%>
		
		<div id="pageTop">
			<div class="page_hgroup event">
				<h2 class="tit eng">STORE</h2>
				<p class="txt">여러 매장을 찾아보쇼</p>
			</div>
		</div>
		<!--   카카오 맵 api 	-->



		<button onclick="setCenter()">지도 중심좌표 이동시키기</button>
		<button onclick="panTo()">지도 중심좌표 이동시키기</button>

		<div id="map" style="width: 1000px; height: 500px; margin: 0 auto;"></div>
		<div id="map"
			style="width: 1000px; height: 500px; margin: 0 auto; margin-top: 5px;">
		</div>
		<script type="text/javascript"
			src="//dapi.kakao.com/v2/maps/sdk.js?appkey=0af232fd9b5f7b2e33e1f0ac2b653c49"></script>
		<script>
			var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
			mapOption = {
				center : new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
				level : 3
				level : 7
			// 지도의 확대 레벨
			};
			var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다
			function setCenter() {
			function panTo() {
				// 이동할 위도 경도 위치를 생성합니다 
				var moveLatLon = new kakao.maps.LatLng(33.452613, 126.570888);
				var moveLatLon = new kakao.maps.LatLng(33.450705, 126.570677);
				// 지도 중심을 이동 시킵니다
				map.setCenter(moveLatLon);
				map.panTo(moveLatLon);
			}
			var marker = new kakao.maps.Marker({
				// 지도 중심좌표에 마커를 생성합니다 
				position : map.getCenter()
			});
			// 지도에 마커를 표시합니다
			marker.setMap(map);
			// 지도에 클릭 이벤트를 등록합니다
			// 지도를 클릭하면 마지막 파라미터로 넘어온 함수를 호출합니다
			kakao.maps.event.addListener(map, 'click', function(mouseEvent) {
				// 클릭한 위도, 경도 정보를 가져옵니다 
				var latlng = mouseEvent.latLng;
				// 마커 위치를 클릭한 위치로 옮깁니다
				marker.setPosition(latlng);
				/*   var message = '클릭한 위치의 위도는 ' + latlng.getLat() + ' 이고, ';
				  message += '경도는 ' + latlng.getLng() + ' 입니다';
				  
				  var resultDiv = document.getElementById('clickLatlng'); 
				  resultDiv.innerHTML = message; */
			function panTo2() {
				// 이동할 위도 경도 위치를 생성합니다 
				var moveLatLon = new kakao.maps.LatLng(33.458936, 126.569477);
			});
				// 지도 중심을 이동 시킵니다
				map.panTo(moveLatLon);
			}
			function panTo3() {
				// 이동할 위도 경도 위치를 생성합니다 
				var moveLatLon = new kakao.maps.LatLng(33.441879, 126.541940);
			function panTo() {
				// 지도 중심을 이동 시킵니다
				map.panTo(moveLatLon);
			}
			function panTo4() {
				// 이동할 위도 경도 위치를 생성합니다 
				var moveLatLon = new kakao.maps.LatLng(latlng);
				var moveLatLon = new kakao.maps.LatLng(33.462393, 126.566738);
				// 지도 중심을 부드럽게 이동시킵니다
				// 만약 이동할 거리가 지도 화면보다 크면 부드러운 효과 없이 이동합니다
				// 지도 중심을 이동 시킵니다
				map.panTo(moveLatLon);
			}
			
			
			var positions = [
			    {
			        content: '<div>카카오</div>', 
			        latlng: new kakao.maps.LatLng(33.450705, 126.570677)
			    },
			    {
			        content: '<div>API는</div>', 
			        latlng: new kakao.maps.LatLng(33.458936, 126.569477)
			    },
			    {
			        content: '<div>코드를 </div>', 
			        latlng: new kakao.maps.LatLng(33.441879, 126.541940)
			    },
			    {
			        content: '<div>오픈하라</div>',
			        latlng: new kakao.maps.LatLng(33.462393, 126.566738)
			    }
			];
			for (var i = 0; i < positions.length; i ++) {
			    // 마커를 생성합니다
			    var marker = new kakao.maps.Marker({
			        map: map, // 마커를 표시할 지도
			        position: positions[i].latlng // 마커의 위치
			    });
			    // 마커에 표시할 인포윈도우를 생성합니다 
			    var infowindow = new kakao.maps.InfoWindow({
			        content: positions[i].content // 인포윈도우에 표시할 내용
			    });
			    // 마커에 mouseover 이벤트와 mouseout 이벤트를 등록합니다
			    // 이벤트 리스너로는 클로저를 만들어 등록합니다 
			    // for문에서 클로저를 만들어 주지 않으면 마지막 마커에만 이벤트가 등록됩니다
			    kakao.maps.event.addListener(marker, 'mouseover', makeOverListener(map, marker, infowindow));
			    kakao.maps.event.addListener(marker, 'mouseout', makeOutListener(infowindow));
			}
			// 인포윈도우를 표시하는 클로저를 만드는 함수입니다 
			function makeOverListener(map, marker, infowindow) {
			    return function() {
			        infowindow.open(map, marker);
			    };
			}
			// 인포윈도우를 닫는 클로저를 만드는 함수입니다 
			function makeOutListener(infowindow) {
			    return function() {
			        infowindow.close();
			    };
			}
			
		</script>

	</div>
		<div style="width: 500px; height: 50px; margin: 0 auto;">
		<button style="WIDTH: 100px; HEIGHT: 50px;" onclick="panTo()">A</button>
		<button style="WIDTH: 100px; HEIGHT: 50px;" onclick="panTo2()">B</button>
		<button style="WIDTH: 100px; HEIGHT: 50px;" onclick="panTo3()">C</button>
		<button style="WIDTH: 100px; HEIGHT: 50px;" onclick="panTo4()">D</button>
	</div>
</body>