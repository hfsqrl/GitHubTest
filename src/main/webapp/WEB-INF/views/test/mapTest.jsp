<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Map Test</title>
<c:import url="../template/bootstrap.jsp"></c:import>
</head>
<body>

<c:import url="../template/header.jsp"></c:import>

	<h1>Dongyoung Kim</h1>
<img alt="spot" src="./resources/images/map/ico_spot.png">
<div id="map" style="width:100%;height:400px;"></div>

<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=8359d6b1a5e0267b346e7ce57922d7f4"></script>
<script>
	var container = document.getElementById('map');
	var options = {
		center: new kakao.maps.LatLng(37.564710, 126.993170),
		level: 3
	};

	var map = new kakao.maps.Map(container, options);
	
	// 마커가 표시될 위치입니다 
	var markerPosition  = new kakao.maps.LatLng(37.564710, 126.993170); 
	var imageSrc = './resources/images/map/ico_spot.png', // 마커이미지의 주소입니다    
    imageSize = new kakao.maps.Size(40, 52), // 마커이미지의 크기입니다
    imageOption = {offset: new kakao.maps.Point(27, 69)}; // 마커이미지의 옵션입니다. 마커의 좌표와 일치시킬 이미지 안에서의 좌표를 설정합니다.
      
	// 마커의 이미지정보를 가지고 있는 마커이미지를 생성합니다
	var markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize, imageOption),
    markerPosition = new kakao.maps.LatLng(37.564710, 126.993170); // 마커가 표시될 위치입니다

 	// 마커를 생성합니다
    var marker = new kakao.maps.Marker({
        position: markerPosition, 
        image: markerImage // 마커이미지 설정 
    });
	

	// 마커가 지도 위에 표시되도록 설정합니다
	marker.setMap(map);
	
	
</script>

</body>
</html>