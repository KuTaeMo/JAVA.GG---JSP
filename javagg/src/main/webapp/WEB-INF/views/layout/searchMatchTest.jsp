<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</head>
<body style="margin: 3% 15% 0 15%;">

<div style="width: 70%">
	<!-- 전적 박스 -->
<div style="display: flex; border: 1px solid #bcbcbc; background-color: #A3CFEC; width: 100%;">
	<!-- 겜 정보 -->
	<div style="display: flex; flex-direction: column; justify-content: center; align-items: center;font-size: 12px; margin: 10px 10px 10px 0; width: 14%">
		<div>무작위 총력전</div>
		<div>하루 전</div>
		<hr style="width: 20px;"/>
		<div style="color: #1A85C4;">승리</div>
		<div>18분 1초</div>
	</div>
	
	<!-- 챔피언, 스펠, 룬 -->
	<div style="display: flex; flex-direction: column; justify-content: center; align-items: center; margin-right: 20px; width: 15%;">
		<div style="display: flex;">
			<img id = "champImg1" class="circle_image" src="img/Jayce.png"
								style="width: 50px; height: 50px; margin-right: 5px; border-radius: 30px;" />
			<!-- 스펠 -->
			<div style="display: flex; flex-direction: column; margin-right: 5px;">
				<img id="spellD" src="" style="width: 25px; height: 25px;"/>
				<img id="spellF" src="" style="width: 25px; height: 25px;"/>
			</div>
			<!-- 룬 -->
			<div style="display: flex; flex-direction: column;">
				<img id="RuneMain" src="img/pic1.png" style="width: 25px; height: 25px; border-radius: 30px;"/>
				<img id="RuneSub" src="img/pic1.png" style="width: 25px; height: 25px; border-radius: 30px;"/>
			</div>
		</div>
		<div id="championName" style="font-size: 12px; margin-top: 5px;">제이스</div>
	</div>
	
	
	<!-- 킬뎃 -->
	<div style="display: flex; justify-content: center; align-items: center; flex-direction: column; margin-right: 20px; width: 11%;">
		<div style="display: flex; justify-content: center; align-items: center; font-size: 15px; font-weight: bold; color: gray; margin-bottom: 5px;">
			<div id="kill">12</div>/<div id="death" style="color: red;">8</div>/<div id="assist">15</div>
		</div>
		<div style="display: flex; justify-content: center; align-items: center; font-size: 12px; font-weight: bold; color: gray; margin-bottom: 5px;">
			<div id="winper" style="color: black;">3.38:1</div><div style="font-weight: normal;">평점</div>
		</div>
		<div style="display:flex; justify-content:center; align-items:center; background-color: #EE5A52; color: white; border-radius: 15px; width: 60px; height: 20px; font-size: 12px;">더블킬</div>
	</div>
	
	<!-- 레벨, cs, 킬관여 -->
	<div style="display: flex; justify-content: center; align-items: center; flex-direction: column; color: gray; font-size: 12px; margin-right: 20px;">
		<div id="level" style="margin-bottom: 5px;">레벨 18</div>
		<div style="display: flex;justify-content: center; align-items: center; margin-bottom: 5px;">
			<div id="cs">100</div><div id="cspermin">(4.7)</div>CS
		</div>
		<div style="color: red; margin-bottom: 5px;">킬관여 74%</div>
	</div>
	
	<!-- 아이템 -->
	<div style="display: flex; justify-content: center; align-items: center; flex-direction: column; margin-right: 15px; width: 10%; width: 15%;">
		<!-- 아이템 위층 -->
		<div style="display: flex; justify-content: center; align-items: center;">
			<div style="width: 25px; height: 25px; background-color: #9e9e9e; opacity: 0.5; border-radius: 5px; margin: 0 1px 2px 1px;"></div>
			<div style="width: 25px; height: 25px; background-color: #9e9e9e; opacity: 0.5; border-radius: 5px; margin: 0 1px 2px 1px;"></div>
			<div style="width: 25px; height: 25px; background-color: #9e9e9e; opacity: 0.5; border-radius: 5px; margin: 0 1px 2px 1px;"></div>
		</div>
		<!-- 아이템 아래층 -->
		<div style="display: flex; justify-content: center; align-items: center;">
			<div style="width: 25px; height: 25px; background-color: #9e9e9e; opacity: 0.5; border-radius: 5px; margin: 0 1px 2px 1px;"></div>
			<div style="width: 25px; height: 25px; background-color: #9e9e9e; opacity: 0.5; border-radius: 5px; margin: 0 1px 2px 1px;"></div>
			<div style="width: 25px; height: 25px;"><img src="img/searchbuild.png" style="width: 25px; height: 25px; margin: 0 1px 2px 1px;"/></div>
		</div>
	</div>
	
	<!-- 팀원 -->
	<div style="display: flex; justify-content: center; align-items: center; width: 30%;">
		<!-- 아군 -->
		<div style="display: flex; justify-content: center; align-items: center; flex-direction: column; margin-right: 10px;">
			<!-- 1 -->
			<div style="display: flex; justify-content: center; align-items: center; font-size: 11px; color: gray; margin-bottom: 3px;">
				<img src="http://ddragon.leagueoflegends.com/cdn/11.6.1/img/champion/Aatrox.png" style="width: 15px; height: 15px; margin-right: 3px;"/><span id="myTeamName">소환사 이름</span>
			</div>
			<!-- 2 -->
			<div style="display: flex; justify-content: center; align-items: center; font-size: 11px; color: gray; margin-bottom: 3px;">
				<img src="http://ddragon.leagueoflegends.com/cdn/11.6.1/img/champion/Aatrox.png" style="width: 15px; height: 15px; margin-right: 3px;"/><span id="myTeamName">소환사 이름</span>
			</div>
			<!-- 3 -->
			<div style="display: flex; justify-content: center; align-items: center; font-size: 11px; color: gray; margin-bottom: 3px;">
				<img src="http://ddragon.leagueoflegends.com/cdn/11.6.1/img/champion/Aatrox.png" style="width: 15px; height: 15px; margin-right: 3px;"/><span id="myTeamName">소환사 이름</span>
			</div>
			<!-- 4 -->
			<div style="display: flex; justify-content: center; align-items: center; font-size: 11px; color: gray; margin-bottom: 3px;">
				<img src="http://ddragon.leagueoflegends.com/cdn/11.6.1/img/champion/Aatrox.png" style="width: 15px; height: 15px; margin-right: 3px;"/><span id="myTeamName">소환사 이름</span>
			</div>
			<!-- 5 -->
			<div style="display: flex; justify-content: center; align-items: center; font-size: 11px; color: gray; margin-bottom: 3px;">
				<img src="http://ddragon.leagueoflegends.com/cdn/11.6.1/img/champion/Aatrox.png" style="width: 15px; height: 15px; margin-right: 3px;"/><span id="myTeamName">소환사 이름</span>
			</div>
		</div>
		
		<!-- 적군 -->
		<div style="display: flex; justify-content: center; align-items: center; flex-direction: column; margin-right: 5px;">
			<!-- 1 -->
			<div style="display: flex; justify-content: center; align-items: center; font-size: 11px; color: gray; margin-bottom: 3px;">
				<img src="http://ddragon.leagueoflegends.com/cdn/11.6.1/img/champion/Aatrox.png" style="width: 15px; height: 15px; margin-right: 3px;"/><span id="sideTeamName">소환사 이름</span>
			</div>
			<!-- 2 -->
			<div style="display: flex; justify-content: center; align-items: center; font-size: 11px; color: gray; margin-bottom: 3px;">
				<img src="http://ddragon.leagueoflegends.com/cdn/11.6.1/img/champion/Aatrox.png" style="width: 15px; height: 15px; margin-right: 3px;"/><span id="sideTeamName">소환사 이름</span>
			</div>
			<!-- 3 -->
			<div style="display: flex; justify-content: center; align-items: center; font-size: 11px; color: gray; margin-bottom: 3px;">
				<img src="http://ddragon.leagueoflegends.com/cdn/11.6.1/img/champion/Aatrox.png" style="width: 15px; height: 15px; margin-right: 3px;"/><span id="sideTeamName">소환사 이름</span>
			</div>
			<!-- 4 -->
			<div style="display: flex; justify-content: center; align-items: center; font-size: 11px; color: gray; margin-bottom: 3px;">
				<img src="http://ddragon.leagueoflegends.com/cdn/11.6.1/img/champion/Aatrox.png" style="width: 15px; height: 15px; margin-right: 3px;"/><span id="sideTeamName">소환사 이름</span>
			</div>
			<!-- 5 -->
			<div style="display: flex; justify-content: center; align-items: center; font-size: 11px; color: gray; margin-bottom: 3px;">
				<img src="http://ddragon.leagueoflegends.com/cdn/11.6.1/img/champion/Aatrox.png" style="width: 15px; height: 15px; margin-right: 3px;"/><span id="sideTeamName">소환사 이름</span>
			</div>
		</div>
	</div>
	
	<!-- 전적 토글 버튼 -->
	<div style="border:1px solid #5ca7d6; background-color: #64B1E4; width: 5%">

	</div>
</div>
</div>



<script>
$.ajax({
	type:"GET",
	url: "http://ddragon.leagueoflegends.com/cdn/11.6.1/data/ko_KR/summoner.json",
	dataType:"json"
	}).done((res)=>{
		console.log(res);
		document.querySelector("#spellD").src="http://ddragon.leagueoflegends.com/cdn/11.6.1/img/spell/SummonerFlash.png"
		document.querySelector("#spellF").src="http://ddragon.leagueoflegends.com/cdn/11.6.1/img/spell/SummonerHeal.png"
			
	});
</script>
</body>
</html>