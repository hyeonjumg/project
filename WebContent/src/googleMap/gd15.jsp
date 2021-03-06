<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="initial-scale=1.0, user-scalable=no">
 <meta charset="euc-kr">
<title>Insert title here</title>
<style type="text/css" media="screen and (min-width: 512px) and (max-width:500px)">  
	
	h3 {
	font-family: 'Oswald', sans-serif;
    color: black;
    font-size:12px;
    font-weight:bold;
    
    }
</style>
<script src="https://maps.googleapis.com/maps/api/js?sensor=false"></script>
 <script>

 
 function initialize() {

 /*
 http://openapi.map.naver.com/api/geocode.php?key=f32441ebcd3cc9de474f8081df1e54e3&encoding=euc-kr&coord=LatLng&query=서울특별시 노원구 섬밭로 258
 위의 링크에서 뒤에 주소를 적으면 x,y 값을 구할수 있습니다.
 */
 var Y_point = 35.8241515; // Y 좌표
 var X_point = 128.619272; // X 좌표
 var zoomLevel = 18; // 첫 로딩시 보일 지도의 확대 레벨
 var markerTitle = "뜨삽"; // 현재 위치 마커에 마우스를 올렸을때 나타나는 이름
 var markerMaxWidth = 300; // 마커를 클릭했을때 나타나는 말풍선의 최대 크기

 // 말풍선 내용
 var contentString = '<div id="content">' +
 '<div id="siteNotice">' +
 '</div>' +
 '<h3 id="firstHeading" class="firstHeading"><i>뜨삽</i></h3>' +
 '<div id="bodyContent">' +
 '<p>대구광역시 수성구 용학로 106-7<br />' +
 'Tel. 053-764-1003</p>'
 '</div>' +
 '</div>';

 var myLatlng = new google.maps.LatLng(Y_point, X_point);
 var mapOptions = {
 zoom: zoomLevel,
 center: myLatlng,
 mapTypeId: google.maps.MapTypeId.ROADMAP
 }
 var map = new google.maps.Map(document.getElementById('map_view'), mapOptions);

 var marker = new google.maps.Marker({
 position: myLatlng,
 map: map,
 title: markerTitle
 });

 var infowindow = new google.maps.InfoWindow(
 {
 content: contentString,
 maxWidth: markerMaxWidth
 }
 );

 google.maps.event.addListener(marker, 'click', function() {
 infowindow.open(map, marker);
 });
 }
 </script>
</head>
<body onload="initialize()">
 <div id="map_view" style="width:700px; height:500px;"></div>

</body>
</html>