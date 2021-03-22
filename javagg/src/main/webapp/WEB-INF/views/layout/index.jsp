<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="apikey.jsp"%>
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
		<img id="usericon" src="" style="width: 50px;"/>
		<input id="username" placeholder="소환사명을 입력하세요." /> <input id="level" />
		<input id="accountid" /> <input id="encid" />
		<button id="searchuser">검색</button>
	</form>
	
	<div>
		<img id="rankimg" src="" style="width: 50px;"/>
		<input id="tier" value="unranked"/> 
		<input id="rank"/> 
		<input id="rankpoint" /> 
		<input id="win" /> 
		<input id="lose" /> 
		<input id="winlose" />
		<div style="width: 100px;">
			<div style="background-color: red; width: 50%; height: 100%;"></div>
			<div style="background-color: blue; width: 50%; height: 100%;"></div>
		</div>
	</div>
		
	<div>모스트 1
		<input id="champname1"/>
		<input id="championLevel1" />
		<input id="championPoints1" />  
	</div>
	<div>모스트 2
		<input id="champname2"/> 
		<input id="championLevel2" />
		<input id="championPoints2" />  
	</div>
	<div>모스트 3 
		<input id="champname3"/>
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
	
	<div> 
		summonerName0의 kda
		<input id="summonerName0KDA" />
	</div>
	<div> 
		summonerName0의 와드
		<input id="wards" />
	</div>
	<div> 
		summonerName0의 제어와드
		<input id="visionWards" />
	</div>
	
	<div> 
		summonerName0의 cs
		<input id="totalMinionsKilled" />
	</div>
	
	<div> 
		summonerName0의 분당cs
		<input id="totalMinionsKilledTimes" />
	</div>
	
	<div> 
		summonerName0의 킬관여율
		<input id="killPercent" />
	</div>
	
	<div> 
		summonerName0의 메인룬
		<input id="perk0" />
	</div>

	<script>
	let accountid="1";
	let encid="1";
	let rank="1";
	let rankpoint="1";
	let gameId ="1";
	var m1champid="1";
	var m2champid="1";
	var m3champid="1";
	
	let rankingNum=[];
	
	
	
	
	// 랭킹 순으로 
	$.ajax({
			type:"GET",
			url: "https://kr.api.riotgames.com/lol/league/v4/challengerleagues/by-queue/RANKED_SOLO_5x5?api_key="+api_key,
			dataType:"json"
			}).done((res)=>{
				rankingNum=res.entries;
				
				
				rankingNum.sort(function(a,b){
					return b.leaguePoints-a.leaguePoints;
				})
				console.log(rankingNum);
				
			});
	
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
				$("#username").val(res.name);
				$("#level").val("Lv"+res.summonerLevel);
				accountid=res.accountId;
				$("#accountid").val("accountid : "+accountid);
				encid=res.id;
				$("#encid").val("encid : "+encid);
				icon=res.profileIconId;
				document.querySelector("#usericon").src="http://ddragon.leagueoflegends.com/cdn/11.6.1/img/profileicon/"+icon+".png";
				
				//http://ddragon.leagueoflegends.com/cdn/11.6.1/img/profileicon/685.png
				// 랭크
				$.ajax({
					type:"GET",
					url: "https://kr.api.riotgames.com/lol/league/v4/entries/by-summoner/"+encid+"?api_key="+api_key,
					dataType:"json"
					}).done((res)=>{
						if(res==""){
							document.querySelector("#rankimg").src="img/Emblem_Unranked.png";
							$("#tier").val("unranked");
							$("#rank").val("unranked");
							$("#rankpoint").val("unranked");
							$("#win").val("unranked");
							$("#lose").val("unranked");
							$("#winlose").val("unranked");
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
							$("#tier").val(res[0].tier);
							$("#rank").val(res[0].rank);
							$("#rankpoint").val(res[0].leaguePoints+" LP");
							$("#win").val("win : "+res[0].wins);
							$("#lose").val("lose : "+res[0].losses);
							$("#winlose").val(Math.round(res[0].wins/(res[0].wins+res[0].losses)*100)+"%");
						}
						
					});
				
				// 챔피언 숙련도 모스트 순으로 정렬됨
				$.ajax({
					type:"GET",
					url: "https://kr.api.riotgame	s.com/lol/champion-mastery/v4/champion-masteries/by-summoner/"+encid+"?api_key="+api_key,
					dataType:"json"
					}).done((res)=>{
						console.log(res);
						
						m1champid=res[0].championId;
						$("#championLevel1").val(res[0].championLevel+" lv");	
						$("#championPoints1").val("숙련도 : "+res[0].championPoints);
						
						m2champid=res[1].championId;
						$("#championLevel2").val(res[1].championLevel+" lv");
						$("#championPoints2").val("숙련도 : "+res[1].championPoints);
						
						m3champid=res[2].championId;
						$("#championLevel3").val(res[2].championLevel+" lv");
						$("#championPoints3").val("숙련도 : "+res[2].championPoints);
						
						// champion 이름 순
						$.ajax({
							type:"GET",
							url: "http://ddragon.leagueoflegends.com/cdn/11.5.1/data/ko_KR/champion.json",
							dataType:"json"
							}).done((res)=>{
								//console.log("챔피언 : ");
								//console.log(res);
								//console.log(res.data.Aatrox.key);

						/* let count=0;
						for(key in res.data){
							console.log("champion : "+key);
							count++;
							console.log(count);
							} */
								let count=0;
								for(key in res.data){
									count++;
									if(res.data[key].key==m1champid){
										$("#champname1").val(res.data[key].name);
									}
									if(res.data[key].key==m2champid){
										$("#champname2").val(res.data[key].name);
									}
									if(res.data[key].key==m3champid){
										$("#champname3").val(res.data[key].name);
									}
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
								
								// summonerName0의 KDA 계산
								$("#summonerName0KDA").val(((res.participants[0].stats.kills + res.participants[0].stats.assists) / res.participants[0].stats.deaths).toFixed(2) + " : 1");
								
								// summonerName0의 스펠
								$("#spell1Id").val(res.participants[0].spell1Id);
								$("#spell2Id").val(res.participants[0].spell2Id);
								
								// summonerName0의 챔피언
								$("#championId").val(res.participants[0].championId);
								
								// summonerName0의 챔피언 레벨
								$("#champLevel").val("레벨 : " + res.participants[0].stats.champLevel);
								
								// summonerName0의 데미지
								$("#totalDamageDealtToChampions").val("데미지 : " + res.participants[0].stats.totalDamageDealtToChampions);
								
								// summonerName0의 와드 개수 / 파괴
								$("#wards").val(res.participants[0].stats.wardsPlaced + " / " + res.participants[0].stats.wardsKilled);
								
								// summonerName0의 핑크 와드
								$("#visionWards").val(res.participants[0].stats.visionWardsBoughtInGame);
								
								// summonerName0의 cs
								$("#totalMinionsKilled").val(res.participants[0].stats.totalMinionsKilled + res.participants[0].stats.neutralMinionsKilled);
								
								// summonerName0의 분당cs
								$("#totalMinionsKilledTimes").val(((res.participants[0].stats.totalMinionsKilled + res.participants[0].stats.neutralMinionsKilled) / (res.gameDuration/60)).toFixed(1));
								
								// summonerName0의 킬관여율
								$("#killPercent").val(((((res.participants[0].stats.kills + res.participants[0].stats.assists)/(res.participants[0].stats.kills + res.participants[1].stats.kills + res.participants[2].stats.kills + res.participants[3].stats.kills + res.participants[4].stats.kills)).toFixed(2)) * 100).toFixed(0) + "%");
								
								// summonerName0의 메인 룬
								$("#perk0").val(res.participants[0].stats.perk0);
								console.log(res);
								
								// summonerName0의 메인 룬
								$("#perk0").val(res.participants[0].stats.perk0);
								console.log(res);
							});
					});
								let count=0;
								for(key in res.data){
									count++;
									if(res.data[key].key==m1champid){
										$("#champname1").val(res.data[key].name);
									}
									if(res.data[key].key==m2champid){
										$("#champname2").val(res.data[key].name);
									}
									if(res.data[key].key==m3champid){
										$("#champname3").val(res.data[key].name);
									}
									}
							});
					});	
			});
</script>

</body>
</html>