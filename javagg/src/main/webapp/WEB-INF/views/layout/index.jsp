<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>hello</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</head>
<body>
	<form>
		<input id="username" placeholder="소환사명을 입력하세요." /> <input id="level" />
		<input id="accountid" /> <input id="encid" />
		<button id="searchuser">검색</button>
	</form>
	
	<div>
		<input id="rank" /> 
		<input id="rankpoint" /> 
		<input id="win" /> 
		<input id="lose" /> 
		<input id="winlose" />
	</div>
		
	<div>모스트 1
		<input id="championId1" /> 
		<input id="championLevel1" />
		<input id="championPoints1" />  
	</div>
	<div>모스트 2
		<input id="championId2" /> 
		<input id="championLevel2" />
		<input id="championPoints2" />  
	</div>
	<div>모스트 3
		<input id="championId3" /> 
		<input id="championLevel3" />
		<input id="championPoints3" />  
	</div>
	
	<div>게임 아이디
		<input id="gameId" /> 
	</div>
	
	<div>적 팀 누구야~
		<input id="summonerName0" />
		<input id="summonerName1" />
		<input id="summonerName2" />
		<input id="summonerName3" />
		<input id="summonerName4" /> 
	</div>
	
	<div> 
		summonerName0의 챔피언
		<input id="championId" />
		<input id="champLevel" />  
	</div>
	
	<div> 
		summonerName0의 아이템
		<input id="item0" />
		<input id="item1" />
		<input id="item2" />
		<input id="item3" />
		<input id="item4" />
		<input id="item5" />  
	</div>
	
	<div> 
		summonerName0의 KDA
		<input id="kills" />
		<input id="deaths" />
		<input id="assists" />
	</div>
	
	<div> 
		summonerName0의 스펠
		<input id="spell1Id" />
		<input id="spell2Id" />
	</div>
	
	<div> 
		summonerName0의 데미지
		<input id="totalDamageDealtToChampions" />
	</div>

	<script>
	let api_key="RGAPI-3d2e18ec-b6d1-4058-9fea-e02171aad1ab";
	let accountid="1";
	let encid="1";
	let rank="1";
	let rankpoint="1";
	let gameId ="1";
	
	$("#searchuser").on("click",(e)=>{
		e.preventDefault();
		let username=$("#username").val();
		console.log(username);
		
		//summoner 소환사 정보
		$.ajax({
			type:"GET",
			url: "https://kr.api.riotgames.com/lol/summoner/v4/summoners/by-name/"+username+"?api_key="+api_key,
			dataType:"json"
			}).done((res)=>{
				console.log(res);
				console.log(res.name);
				console.log(res.summonerLevel);
				$("#username").val(res.name);
				$("#level").val("Lv"+res.summonerLevel);
				accountid=res.accountId;
				$("#accountid").val("accountid : "+accountid);
				encid=res.id;
				$("#encid").val("encid : "+encid);
				
				// 랭크
				$.ajax({
					type:"GET",
					url: "https://kr.api.riotgames.com/lol/league/v4/entries/by-summoner/"+encid+"?api_key="+api_key,
					dataType:"json"
					}).done((res)=>{
						console.log(res);
						console.log(res[0].tier);
						rank=res[0].tier;
						$("#rank").val(rank);
						$("#rankpoint").val(res[0].leaguePoints+" LP");
						$("#win").val("win : "+res[0].wins);
						$("#lose").val("lose : "+res[0].losses);
						$("#winlose").val(Math.ceil(res[0].wins/(res[0].wins+res[0].losses)*100)+"%");
					});
				
				// 챔피언 숙련도 모스트 순으로 정렬됨
				$.ajax({
					type:"GET",
					url: "https://kr.api.riotgames.com/lol/champion-mastery/v4/champion-masteries/by-summoner/"+encid+"?api_key="+api_key,
					dataType:"json"
					}).done((res)=>{
						console.log(res);
						$("#championId1").val(res[0].championId);
						$("#championLevel1").val(res[0].championLevel+" lv");	
						$("#championPoints1").val("숙련도 : "+res[0].championPoints);
						
						$("#championId2").val(res[1].championId);
						$("#championLevel2").val(res[1].championLevel+" lv");
						$("#championPoints2").val("숙련도 : "+res[1].championPoints);
						
						$("#championId3").val(res[2].championId);
						$("#championLevel3").val(res[2].championLevel+" lv");
						$("#championPoints3").val("숙련도 : "+res[2].championPoints);
					});
				
				$.ajax({
					type:"GET",
					url: "http://ddragon.leagueoflegends.com/cdn/11.5.1/data/en_US/champion.json",
					dataType:"json"
					}).done((res)=>{
						console.log("챔피언 : ");
						console.log(res);
						console.log(res.data.Aatrox.key);

						let count=0;
						for(key in res.data){
							console.log("champion : "+key);
							count++;
							console.log(count);
							}
					});
				
				
				$.ajax({
					type:"GET",
					url: "https://kr.api.riotgames.com/lol/match/v4/matchlists/by-account/"+accountid+"?api_key="+api_key,
					dataType:"json"
					}).done((res)=>{ 
						console.log(res);
						$("#gameId").val(res.matches[0].gameId);
						gameId = res.matches[0].gameId
						console.log(res.matches[0].gameId);
						
						$.ajax({
							type:"GET",
							url: "https://kr.api.riotgames.com/lol/match/v4/matches/"+gameId+"?api_key="+api_key,
							dataType:"json"
							}).done((res)=>{
								console.log(res.participantIdentities[0].player);
								
								// 적팀 소환사 이름들
								$("#summonerName0").val(res.participantIdentities[0].player.summonerName);
								$("#summonerName1").val(res.participantIdentities[1].player.summonerName);
								$("#summonerName2").val(res.participantIdentities[2].player.summonerName);
								$("#summonerName3").val(res.participantIdentities[3].player.summonerName);
								$("#summonerName4").val(res.participantIdentities[4].player.summonerName);
								console.log(res.participants[0].stats.item0);
								
								// summonerName0의 아이템
								$("#item0").val(res.participants[0].stats.item0);
								$("#item1").val(res.participants[0].stats.item1);
								$("#item2").val(res.participants[0].stats.item2);
								$("#item3").val(res.participants[0].stats.item3);
								$("#item4").val(res.participants[0].stats.item4);
								$("#item5").val(res.participants[0].stats.item5);
								
								console.log(res.participants[0].stats);
								
								// summonerName0의 KDA
								$("#kills").val("kills : " + res.participants[0].stats.kills);
								$("#deaths").val("deaths : " + res.participants[0].stats.deaths);
								$("#assists").val("assists : " + res.participants[0].stats.assists);
								
								// summonerName0의 스펠
								$("#spell1Id").val(res.participants[0].spell1Id);
								$("#spell2Id").val(res.participants[0].spell2Id);
								
								// summonerName0의 챔피언
								$("#championId").val(res.participants[0].championId);
								
								// summonerName0의 챔피언 레벨
								$("#champLevel").val("레벨 : " + res.participants[0].stats.champLevel);
								
								// summonerName0의 데미지
								$("#totalDamageDealtToChampions").val("데미지 : " + res.participants[0].stats.totalDamageDealtToChampions);
								console.log(res);
							});
					});
				
			});
		
		
	})
	
	
	
</script>

</body>
</html>