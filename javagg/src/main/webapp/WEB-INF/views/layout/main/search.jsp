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
			<img id="usericon" src="img/profileIcon.jpg" style="width: 85px; height: 85px; margin: 20px;" />
		</div>
		<div style="padding: 15px;">
			<div id="name" style="font-size: 20px; color: black;">
				<b></b>
			</div>
			<div style="font-size: 10px; display: flex;">
				랭킹
				<div style="color: #059EDE;">1</div>
				위
			</div>
			<br />
			<button class="search_button" id="searchuser">전적 갱신</button>
		</div>
	</div>

	<!-- 종합, 인게임 -->
	<div class="container" style="display: flex;">
		<div
			style="border-top: 1px solid gray; border-left: 1px solid gray; border-right: 1px solid gray; width: 100px; height: 40px; display: flex; justify-content: center; align-items: center;">
			종합</div>
		<div style="margin-left: 30px; width: 160px; height: 40px; display: flex; justify-content: center; align-items: center;">
			<button class="ingamebutton"
				style="width: 180px; height: 40px; background-color: white; color: #1F8ECD; border: 0.3px solid gray; vertical-align: middle;">
				<img style="height: 35px;" src="img/ingame.png" />인게임 정보 <!-- 인게임 정보 api : spectator -->
			</button>
		</div>
	</div>

	<hr />

	<!-- 본문 시작 -->
	<!-- 3:7 나눔 -->
	<div class="container" style="display: flex;">
		<!-- 왼쪽 박스 -->
		<div id="left-container" style="width: 30%;">
			<!-- 솔랭 정보 -->
			<div
				style="display: flex; border: 0.3px solid #CDD2D2; background-color: #F2F2F2; justify-content: center; align-items: center;">
				<div style="display: flex;">
					<img id="rankimg" style="width: 100px; height: 100px;" src="img/challenger_rank.png" />
				</div>
				<div style="margin-left: 20px; height: 130px; display: flex; flex-direction: column; justify-content: center;">
					<div class="tiny_gray_text">솔로랭크</div>

					<div style="display: flex;">
						<div id="tier" style="display: flex; font-size: 12px; color: #63B8E5;">
							<b>Challenger</b>
						</div>
						<div id="rank" style="font-size: 12px; color: #63B8E5; margin-left: 5px;">1</div>
					</div>

					<div style="display: flex;">
						<div id="rankpoint" style="font-size: 13px;">
							<b>1,503 LP</b>
						</div>
						<div class="tiny_gray_text" style="display: flex;">
							/
							<div id="win"></div>
							승
							<div id="lose"></div>
							패

						</div>
					</div>
					<div id="winper" class="tiny_gray_text">승률 61%</div>
					<div id="rankname" class="tiny_gray_text">뽀삐의 후예들</div>
				</div>
			</div>
			<br />

			<!-- 자랭 정보 -->
			<div
				style="display: flex; border: 0.3px solid #CDD2D2; background-color: #F2F2F2; justify-content: center; align-items: center;">
				<div style="display: flex;">
					<img id="rankimg" style="width: 100px; height: 100px;" src="img/challenger_rank.png" />
				</div>
				<div style="margin-left: 20px; height: 130px; display: flex; flex-direction: column; justify-content: center;">
					<div class="tiny_gray_text">솔로랭크</div>

					<div style="display: flex;">
						<div id="tier" style="display: flex; font-size: 12px; color: #63B8E5;">
							<b>Challenger</b>
						</div>
						<div id="rank" style="font-size: 12px; color: #63B8E5; margin-left: 5px;">1</div>
					</div>

					<div style="display: flex;">
						<div id="rankpoint" style="font-size: 13px;">
							<b>1,503 LP</b>
						</div>
						<div class="tiny_gray_text" style="display: flex;">
							/
							<div id="win"></div>
							승
							<div id="lose"></div>
							패

						</div>
					</div>
					<div id="winper" class="tiny_gray_text">승률 61%</div>
					<div id="rankname" class="tiny_gray_text">뽀삐의 후예들</div>
				</div>
			</div>
		</div>

		<!-- 오른쪽 박스 -->
		<div id="right-container" style="width: 70%;"></div>
	</div>
	<!-- 전적검색 -->
	<script>
let accountid="1";
let encid="1";
let username="${gamername}";

//summoner 소환사 정보
$.ajax({
	type:"GET",
	url: "https://kr.api.riotgames.com/lol/summoner/v4/summoners/by-name/"+username+"?api_key="+api_key,
	dataType:"json"
	}).done((res)=>{
		$("#username").val(res.name);
		$("#level").val("Lv"+res.summonerLevel);
		accountid=res.accountId;
		$("#accountid").val("accountid : "+accountid);
		encid=res.id;
		$("#encid").val("encid : "+encid);
		icon=res.profileIconId;
		document.querySelector("#usericon").src="http://ddragon.leagueoflegends.com/cdn/11.6.1/img/profileicon/"+icon+".png";

		// 랭크
		$.ajax({
			type:"GET",
			url: "https://kr.api.riotgames.com/lol/league/v4/entries/by-summoner/"+encid+"?api_key="+api_key,
			dataType:"json"
			}).done((res)=>{
				if(res==""){
					document.querySelector("#rankimg").src="img/Emblem_Unranked.png";
					document.querySelector("#tier").innerHTML="Unranked";
				}else{
					
					if(res[0].tier==="IRON"){
						document.querySelector("#rankimg").src="img/Emblem_Iron.png";
					}else if(res[0].tier==="BRONZE"){
						document.querySelector("#rankimg").src="img/Emblem_Bronze.png";
					}else if(res[0].tier==="SILVER"){
						document.querySelector("#rankimg").src="img/Emblem_Siver.png";
					}else if(res[0].tier==="GOLD"){
						document.querySelector("#rankimg").src="img/Emblem_Gold.png";
					}else if(res[0].tier==="PLATINUM"){
						document.querySelector("#rankimg").src="img/Emblem_Platinum.png";
					}else if(res[0].tier==="DIAMOND"){
						document.querySelector("#rankimg").src="img/Emblem_Diamond.png";
					}else if(res[0].tier==="MASTER"){
						document.querySelector("#rankimg").src="img/Emblem_Master.png";
					}else if(res[0].tier==="GRANDMASTER"){
						document.querySelector("#rankimg").src="img/Emblem_Grandmaster.png";
					}else if(res[0].tier==="CHALLENGER"){
						document.querySelector("#rankimg").src="img/Emblem_Challenger.png";
					}
					console.log(res);
					console.log(res[0]);
					document.querySelector("#name").innerHTML="<b>"+res[0].summonerName+"</b>";
					document.querySelector("#tier").innerHTML="<b>"+res[0].tier+"</b>"; //gold
					document.querySelector("#rank").innerHTML="<b>"+res[0].rank+"</b>";
					document.querySelector("#rankpoint").innerHTML="<b>"+res[0].leaguePoints+" LP</b>";
					document.querySelector("#win").innerHTML=""+res[0].wins;
					document.querySelector("#lose").innerHTML=""+res[0].losses;
					let winper=Math.round(res[0].wins/(res[0].wins+res[0].losses)*100);
					document.querySelector("#winper").innerHTML="승률 "+winper+"%";
					

					$.ajax({
						type:"GET",
						url: "https://kr.api.riotgames.com/lol/league/v4/leagues/"+res[0].leagueId+"?api_key="+api_key,
						dataType:"json"
						}).done((res)=>{
							document.querySelector("#rankname").innerHTML=""+res.name;
						});
				}
			});
		});

// 전적갱신 시 새로고침 - ajax로 페이지 다시 요청하기
$("#searchuser").on("click",(e)=>{
	e.preventDefault();
	let username=$("#username").val();
	console.log(username);
});
	
	
</script>
</body>

</html>