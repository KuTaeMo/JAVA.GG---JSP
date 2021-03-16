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

	<script>
	let api_key="RGAPI-7886a46e-92da-49e8-9dd6-a14e976d92f8";
	let accountid="1";
	let encid="1";
	let rank="1";
	let rankpoint="1";
	
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
					});
				
			});
		
		
	})
	
	
	
</script>

</body>
</html>