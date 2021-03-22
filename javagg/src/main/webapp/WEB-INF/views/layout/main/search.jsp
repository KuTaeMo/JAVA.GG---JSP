<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../common/header.jsp"%>
<%@ include file="../apikey.jsp"%>
<link rel="stylesheet" type="text/css" href="/css/style.css">
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body style="background-color: #EAEAEA;">
	<!-- 소환사 정보 -->
	<div class="container" style="display: flex;">
		<div>
			<img src="img/profileIcon.jpg" style="width: 85px; height: 85px; margin: 20px;" />
		</div>
		<div style="padding: 15px;">
			<div id="gamername" style="font-size: 20px; color: black;">
				<b>${gamername }</b>
			</div>
			<div style="font-size: 10px; display: flex;">
				랭킹
				<div style="color: #059EDE;">1위</div>
			</div>
			<br />
			<button class="search_button">랭킹검색</button>
		</div>
	</div>

	<!-- 종합, 인게임 -->
	<div class="container" style="display: flex;">
		<div
			style="border-top: 1px solid gray; border-left: 1px solid gray; border-right: 1px solid gray; width: 100px; height: 40px; display: flex; justify-content: center; align-items: center;">
			종합</div>
		<div style="margin-left: 30px; width: 160px; height: 40px; display: flex; justify-content: center; align-items: center;">
			<button class="ingamebutton" style="width: 180px; height: 40px; background-color: white; color: #1F8ECD; border: 0.3px solid gray; vertical-align: middle;">
				<img style="height: 35px;" src="img/ingame.png" />인게임 정보
			</button>
		</div>
	</div>

	<hr />

	<!-- 본문 시작 -->
	<!-- 3:7 나눔 -->
	<div class="container" style="display: flex;">
		<!-- 왼쪽 박스 -->
		<div id="left-container" style="width: 30%;">
			<!-- 랭크 정보 -->
			<div style="display: flex; border: 0.3px solid gray; background-color: white; justify-content: center;">
				<div style="display: flex;">
					<img style="width: 90px; height: 90px;" src="img/challenger_rank.png" />
				</div>
				<div style="margin-left: 20px; height: 130px;">
					<div class="tiny_gray_text">솔로랭크</div>
					<div style="font-size: 12px; color: #63B8E5;">Challenger</div>
					<div style="display: flex;">
						<div style="font-size: 10px;">
							<b>1,503 LP</b>
						</div>
						<div class="tiny_gray_text">/ 139승 89패</div>
					</div>
					<div class="tiny_gray_text">승률 61%</div>
					<div class="tiny_gray_text">뽀삐의 후예들</div>
				</div>
			</div>
		</div>
		
		<!-- 오른쪽 박스 -->
		<div id="right-container" style="width: 70%;">
		
		</div>
	</div>

</body>
</html>