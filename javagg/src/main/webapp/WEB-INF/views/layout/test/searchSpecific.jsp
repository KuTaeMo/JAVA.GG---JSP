<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</head>
</head>
<body style="margin: 3% 15% 0 15%;">

	<div style="width: 70%;">
		<div style="display: flex; border-top: 1px solid #bcbcbc; border-left: 1px solid #bcbcbc; border-right: 1px solid #bcbcbc; align-items: center;">
			<div style="font-size: 15px; font-weight: bold; margin: 5px;">솔랭</div>|
			<div style=" font-size: 12px; margin: 5px;">소환사의 협곡</div>
		</div>
		<!-- 전적 상세 -->
		<div style="border: 1px solid #bcbcbc;">
			<!-- 머리글 행 -->
			<div style="display: flex; color: gray; font-size: 10px; padding: 5px; border-bottom: 1px solid #bcbcbc;">
				<div style="width: 35%; display: flex;">
					<div id="winOrLose" style="color: blue;">블루팀</div>
				</div>
				<div style="width: 15%; display: flex; justify-content: center; align-items: center;">티어</div>

				<div style="width:30%; display: flex; justify-content: center; align-items: center;">룬</div>
				<div style="width: 20%; display: flex; justify-content: center; align-items: center;">밴</div>
			</div>
			
			<c:forEach var="inGameBlueNum" begin="0" end="4" step="1">
			<!-- 상세정보 1행 -->
			<div style="display: flex; color: gray; font-size: 11px; background-color: #D8E4EC; height: 50px;">
				<div style="display: flex; width:2%; align-items: flex-end;">
						<div id="levelm1">11</div>
				</div>
				<div style="width: 35%; display: flex; align-items: center;">
					<img id="champImg1" class="circle_image" src="img/Jayce.png"
						style="width: 45px; height: 45px; margin-right: 5px; border-radius: 30px;" />
					<div style="display: flex; flex-direction: column; margin-right: 5px;">
						<img id="spellDm1" src="" style="width: 20px; height: 20px;" /> <img id="spellFm1" src="" style="width: 20px; height: 20px;" />
					</div>
					<!-- 룬 -->
					<div style="display: flex; flex-direction: column;">
						<img id="RuneMain" src="img/pic1.png" style="width: 20px; height: 20px; border-radius: 30px;" /> <img id="RuneSub"
							src="img/pic1.png" style="width: 20px; height: 20px; border-radius: 30px;" />
					</div>
					<span id="championName" style="font-size: 12px; margin-top: 5px;">태치야치</span>
				</div>
				<!-- 티어 -->
				<div style="width: 15%; display: flex; justify-content: center; align-items: center;">Gold 1</div>
				
				
				<!-- 세부 룬 -->
				<div style="width: 28%; display: flex; justify-content: center; align-items: center;">
					<div style="display: flex; justify-content: center; align-items: center;">
						<img id="RuneMain" src="img/pic1.png" style="width: 20px; height: 20px; border-radius: 30px; margin-left: 5%;" />
						<img id="RuneMain" src="img/pic1.png" style="width: 20px; height: 20px; border-radius: 30px; margin-left: 5%;" />
						<img id="RuneMain" src="img/pic1.png" style="width: 20px; height: 20px; border-radius: 30px; margin-left: 5%;" />
						<img id="RuneMain" src="img/pic1.png" style="width: 20px; height: 20px; border-radius: 30px; margin-left: 5%;" />
						<img id="RuneMain" src="img/pic1.png" style="width: 20px; height: 20px; border-radius: 30px; margin-left: 5%;" />
						<img id="RuneMain" src="img/pic1.png" style="width: 20px; height: 20px; border-radius: 30px; margin-left: 5%;" />
						<img id="RuneMain" src="img/pic1.png" style="width: 20px; height: 20px; border-radius: 30px; margin-left: 5%;" />

					</div>
				</div>
				<div align="center" style="width: 20%;">
					<!-- 밴 -->
						<img id="spellDm1" src="" style="width: 20px; height: 20px;" />
				</div>
			</div>
			<!-- 끝 -->
			</c:forEach>
			
			<!-- 패배팀 -->
			<!-- 머리글 행 -->
			<div style="display: flex; color: gray; font-size: 10px; padding: 5px; border-bottom: 1px solid #bcbcbc;">
				<div style="width: 35%; display: flex;">
					<div id="winOrLose" style="color: red;">레드팀</div>
				</div>
				<div style="width: 15%; display: flex; justify-content: center; align-items: center;">티어</div>

				<div style="width:30%; display: flex; justify-content: center; align-items: center;">룬</div>
				<div style="width: 20%; display: flex; justify-content: center; align-items: center;">밴</div>
			</div>
			
			<c:forEach var="inGameRedNum" begin="0" end="4" step="1">
			<!-- 상세정보 1행 -->
			<div style="display: flex; color: gray; font-size: 11px; background-color: #E9E0E0; height: 50px;">
				<div style="display: flex; align-items: flex-end;">
						<div id="levelm1">11</div>
				</div>
				<div style="width: 35%; display: flex; align-items: center;">
					<img id="champImg1" class="circle_image" src="img/Jayce.png"
						style="width: 45px; height: 45px; margin-right: 5px; border-radius: 30px;" />
					<div style="display: flex; flex-direction: column; margin-right: 5px;">
						<img id="spellDm1" src="" style="width: 20px; height: 20px;" /> <img id="spellFm1" src="" style="width: 20px; height: 20px;" />
					</div>
					<!-- 룬 -->
					<div style="display: flex; flex-direction: column;">
						<img id="RuneMain" src="img/pic1.png" style="width: 20px; height: 20px; border-radius: 30px;" /> <img id="RuneSub"
							src="img/pic1.png" style="width: 20px; height: 20px; border-radius: 30px;" />
					</div>
					<span id="championName" style="font-size: 12px; margin-top: 5px;">태치야치</span>
				</div>
				<!-- 티어 -->
				<div style="width: 15%; display: flex; justify-content: center; align-items: center;">Gold 1</div>
				
				
				<!-- 세부 룬 -->
				<div style="width: 30%; display: flex; justify-content: center; align-items: center;">
					<div style="display: flex; justify-content: center; align-items: center;">
						<img id="RuneMain" src="img/pic1.png" style="width: 20px; height: 20px; border-radius: 30px; margin-left: 5%;" />
						<img id="RuneMain" src="img/pic1.png" style="width: 20px; height: 20px; border-radius: 30px; margin-left: 5%;" />
						<img id="RuneMain" src="img/pic1.png" style="width: 20px; height: 20px; border-radius: 30px; margin-left: 5%;" />
						<img id="RuneMain" src="img/pic1.png" style="width: 20px; height: 20px; border-radius: 30px; margin-left: 5%;" />
						<img id="RuneMain" src="img/pic1.png" style="width: 20px; height: 20px; border-radius: 30px; margin-left: 5%;" />
						<img id="RuneMain" src="img/pic1.png" style="width: 20px; height: 20px; border-radius: 30px; margin-left: 5%;" />
						<img id="RuneMain" src="img/pic1.png" style="width: 20px; height: 20px; border-radius: 30px; margin-left: 5%;" />
						
						
					</div>
				</div>
				<div align="center" style="width: 20%;">
					<!-- 밴 -->
						<img id="spellDm1" src="" style="width: 20px; height: 20px;" />
				</div>
			</div>
			<!-- 끝 -->
			</c:forEach>
		</div>
		
	</div>
	
	
	<!-- 게임중이 아니라면 -->
	<div>
		<p style="text-align: center; font-size: 25px; font-weight: bold;">'9c'님은 게임중이 아닙니다.</p>
		<p style="text-align: center; font-size: 18px;">현재 게임중이라면 다시 시도해주세요.</p>
		<p style="text-align: center; font-size: 18px;">('Bot'은 RiotAPI에서 인게임 정보를 가져올 수 없습니다.)</p>
	</div>

	<script>
$.ajax({
	type:"GET",
	url: "http://ddragon.leagueoflegends.com/cdn/11.6.1/data/ko_KR/summoner.json",
	dataType:"json"
	}).done((res)=>{
		console.log(res);
		document.querySelector("#spellDm1").src="http://ddragon.leagueoflegends.com/cdn/11.6.1/img/spell/SummonerFlash.png"
		document.querySelector("#spellFm1").src="http://ddragon.leagueoflegends.com/cdn/11.6.1/img/spell/SummonerHeal.png"
		document.querySelector("#spellDm2").src="http://ddragon.leagueoflegends.com/cdn/11.6.1/img/spell/SummonerFlash.png"
		document.querySelector("#spellFm2").src="http://ddragon.leagueoflegends.com/cdn/11.6.1/img/spell/SummonerHeal.png"
		document.querySelector("#spellDm3").src="http://ddragon.leagueoflegends.com/cdn/11.6.1/img/spell/SummonerFlash.png"
		document.querySelector("#spellFm3").src="http://ddragon.leagueoflegends.com/cdn/11.6.1/img/spell/SummonerHeal.png"
		document.querySelector("#spellDm4").src="http://ddragon.leagueoflegends.com/cdn/11.6.1/img/spell/SummonerFlash.png"
		document.querySelector("#spellFm4").src="http://ddragon.leagueoflegends.com/cdn/11.6.1/img/spell/SummonerHeal.png"
		document.querySelector("#spellDm5").src="http://ddragon.leagueoflegends.com/cdn/11.6.1/img/spell/SummonerFlash.png"
		document.querySelector("#spellFm5").src="http://ddragon.leagueoflegends.com/cdn/11.6.1/img/spell/SummonerHeal.png"	
			
	});
</script>

</body>
</html>