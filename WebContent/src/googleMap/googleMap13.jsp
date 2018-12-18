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
 http://openapi.map.naver.com/api/geocode.php?key=f32441ebcd3cc9de474f8081df1e54e3&encoding=euc-kr&coord=LatLng&query=����Ư���� ����� ����� 258
 ���� ��ũ���� �ڿ� �ּҸ� ������ x,y ���� ���Ҽ� �ֽ��ϴ�.
 */
 var Y_point = 37.5228322; // Y ��ǥ
 var X_point = 127.036421; // X ��ǥ
 var zoomLevel = 18; // ù �ε��� ���� ������ Ȯ�� ����
 var markerTitle = "���ü���"; // ���� ��ġ ��Ŀ�� ���콺�� �÷����� ��Ÿ���� �̸�
 var markerMaxWidth = 300; // ��Ŀ�� Ŭ�������� ��Ÿ���� ��ǳ���� �ִ� ũ��

 // ��ǳ�� ����
 var contentString = '<div id="content">' +
 '<div id="siteNotice">' +
 '</div>' +
 '<h3 id="firstHeading" class="firstHeading"><i>���ü���</i></h3>' +
 '<div id="bodyContent">' +
 '<p>���� ������ ������ 45�� 6<br />' +
 'Tel. Tel 02) 514-0812</p>'
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