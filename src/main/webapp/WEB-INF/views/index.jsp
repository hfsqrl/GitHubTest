<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>index</title>
<c:import url="./template/bootstrap.jsp"></c:import>
</head>
<body>

<c:import url="./template/header.jsp"></c:import>

<h1>
	Hello world!  
</h1>

<P>  The time on the server is ${serverTime}. </P>

<div id="map" style="width:500px;height:400px;"></div>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=8359d6b1a5e0267b346e7ce57922d7f4"></script>
<script>
	var container = document.getElementById('map');
	var options = {
		center: new kakao.maps.LatLng(33.450701, 126.570667),
		level: 3
	};

	var map = new kakao.maps.Map(container, options);
</script>

</body>
</html>
