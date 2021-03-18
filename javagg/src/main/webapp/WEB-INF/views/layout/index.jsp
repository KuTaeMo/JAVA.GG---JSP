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

	<script>
	let api_key="RGAPI-addfbc8e-69f4-46e2-9dd8-810ecec5e7e9";
	let accountid="1";
	let encid="1";
	let rank="1";
	let rankpoint="1";
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
							$("#winlose").val(Math.ceil(res[0].wins/(res[0].wins+res[0].losses)*100)+"%");
						}
						
					});
				
				// 챔피언 숙련도 모스트 순으로 정렬됨
				$.ajax({
					type:"GET",
					url: "https://kr.api.riotgame	s.com/lol/champion-mastery/v4/champion-masteries/by-summoner/"+encid+"?api_key="+api_key,
					dataType:"json"
					}).done((res)=>{
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
	})
</script>

</body>
</html>