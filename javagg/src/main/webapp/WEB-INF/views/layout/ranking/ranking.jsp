<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../common/header.jsp"%>
<%@ include file="../apikey.jsp"%>
<link rel="stylesheet" type="text/css" href="/css/style.css">
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body style="background-color: #EAEAEA;">

<div style="margin: 3% 15% 0 15%;">
	<div
		style="display: flex; justify-content: space-between; border-bottom: 1px solid gray; margin-bottom: 15px; padding-bottom: 10px;">
		<div style="font-size: 30px; color: gray;">
			<b>랭킹</b>
		</div>
		<div>
			<input placeholder="소환사명" style="height: 30px;" />
			<button class="search_button">랭킹검색</button>
		</div>
	</div>

	<div style="display: flex; justify-content: space-between; border-bottom:">
		<div style="font-size: 12px;">소환사의 협곡에 총 3,002,570명의 소환사가 있습니다.</div>
		<div style="font-size: 12px; color: gray;">랭킹은 브론즈 이상 소환사만 표시, 랭킹은 주기적으로 갱신됩니다.</div>
	</div>

	<br />
	<!-- 랭킹 1등 박스 -->
	<div align="center" style="display: flex; justify-content: center;">
		<div align="justify" style="border: 5px solid #BDBBBB; width: 50%; height: 170px; background-color: white; display: flex; flex-direction: column;">
			<div align="center" style="background-color: #BDBBBB; color: white; font-size: 20px; padding: 3px; width: 30px;  display: flex; flex-direction: column;">
				<b>1</b>
			</div>
			<div style="display: flex;">
				<!-- 사진, 정보 -->
				<div style="display: flex;">
				
					<div style="display: flex; margin: 0 5% 0 5%;">
						
						<img id="pfimg_rank1" src="img/profileIcon.jpg" style="width: 100px; max-height:100px; display: block;" />
					</div>
					
					<div style="margin-top: 15px; display: flex; flex-direction: column;">
						<div id="gamername1" style="font-size: 20px; color: black; display: flex; flex-direction: column;">
							소환사이름
						</div>
						<div id="rank" style="display: flex; font-size: 12px; margin: 5px 0 5px 20px; display: flex; align-items: center;">
							<img src="img/challenger_rank.png" style="height: 30px;" /> Challenger
							<div id="rank_point1">
								point
							</div>
						</div>
						
						<div id="rank_stat" style="display: flex;">
							<div style="display: flex; width: 130px; border-radius: 10px; margin-right: 10px;">
								<div id="win_bar1" style="background-color: #3D95E5; width: 62%; color: white; border-radius:">134</div>
								<div align="right" id="lose_bar1" style="background-color: #EE5A52; width: 38%; color: white;">83</div>
							</div>

							<div id="winper1">62%</div>
						</div>

					</div>
				</div>
				<!-- 모스트 정보 -->
				<div style="margin-left: 10px; display: flex; flex-direction: column; margin: 0 5% 0 10%;">
					<!-- 모스트1 -->
					<div style="display: flex; align-items: center; margin-bottom: 10px;">
						<!-- 챔피언 사진 -->
						<img id = "champImg1" class="circle_image" src="img/Jayce.png"
							style="width: 30px; height: 30px; margin-right: 5px; border-radius: 15px;" />
						<!-- 모스트1 챔피언 이름 -->
						<div class="mostChampion" id="championName1" style="font-size: 12px; color: red;">챔피언</div>
						<!-- 모스트1 챔피언 레벨-->
						<div class="mostChampion" id="championLV1" style="font-size: 12px;">1</div>
						<!-- 모스트1 챔피언 점수-->
						<div class="mostChampion" id="championScore1" style="font-size: 12px;">100</div>
					</div>

					<!-- 모스트2 -->
					<div style="display: flex; align-items: center; margin-bottom: 10px;">
						<!-- 챔피언 사진 -->
						<img id = "champImg2" class="circle_image" src="img/Gnar.png"
							style="width: 30px; height: 30px; margin-right: 5px; border-radius: 15px;" />
						<!-- 모스트1 챔피언 이름 -->
						<div class="mostChampion" id="championName2" style="font-size: 12px; color: red;">챔피언</div>
						<!-- 모스트1 챔피언 레벨-->
						<div class="mostChampion" id="championLV2" style="font-size: 12px;">1</div>
						<!-- 모스트1 챔피언 점수-->
						<div class="mostChampion" id="championScore2" style="font-size: 12px;">100</div>
					</div>

					<!-- 모스트3 -->
					<div style="display: flex; align-items: center;">
						<!-- 챔피언 사진 -->
						<img id = "champImg3" class="circle_image" src="img/Camille.png"
							style="width: 30px; height: 30px; margin-right: 5px; border-radius: 15px;" />
						<!-- 모스트1 챔피언 이름 -->
						<div class="mostChampion" id="championName3" style="font-size: 12px; color: red;">챔피언</div>
						<!-- 모스트1 챔피언 레벨-->
						<div class="mostChampion" id="championLV3" style="font-size: 12px;">1</div>
						<!-- 모스트1 챔피언 점수-->
						<div class="mostChampion" id="championScore3" style="font-size: 12px;">100</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<br />
	<!-- 랭킹 2-5 -->
	<div style="display: flex; justify-content: space-between;">
		<!-- 2 -->
		<div align="justify" style="border: 5px solid #BDBBBB; width: 250px; height: 170px; background-color: white;">
			<div align="center" style="background-color: #BDBBBB; color: white; font-size: 20px; padding: 3px; width: 20px;">
				<b>2</b>
			</div>
			<div align="center">
				<img class="circle_image" id="pfimg_rank2" src="img/Camille.png"
					style="width: 30px; height: 30px; margin-right: 5px; border-radius: 15px;" />
				<div id="gamername2">소환사명</div>
				<div id="
2" style="display: flex; font-size: 12px; margin: 5px 0 5px 20px; display: flex; align-items: center;">
					<img src="img/challenger_rank.png" style="height: 30px;" /> Challenger
					<div id="rank_point2" style="margin: 0 5px 0 5px;">
						<b>1,494 LP</b>
					</div>
					<div id = "gamerLV1">Lv.234</div>
				</div>
				<div id="rank_stat" style="display: flex; justify-content: center;">
					<div style="display: flex; width: 130px; border-radius: 10px; margin-right: 10px;">
						<div align="left" id="win_bar2" style="background-color: #3D95E5; width: 62%; color: white; border-radius:">134</div>
						<div align="right" id="lose_bar2" style="background-color: #EE5A52; width: 38%; color: white;">83</div>
					</div>

					<div id="winper2">62%</div>
				</div>
			</div>
		</div>

		<!-- 3 -->
		<div align="justify" style="border: 5px solid #BDBBBB; width: 250px; height: 170px; background-color: white;">
			<div align="center" style="background-color: #BDBBBB; color: white; font-size: 20px; padding: 3px; width: 20px;">
				<b>3</b>
			</div>
			<div align="center">
				<img class="circle_image" id="pfimg_rank3" src="img/Camille.png"
					style="width: 30px; height: 30px; margin-right: 5px; border-radius: 15px;" />
				<div id="gamername3">소환사명</div>
				<div id="level3" style="display: flex; font-size: 12px; margin: 5px 0 5px 20px; display: flex; align-items: center;">
					<img src="img/challenger_rank.png" style="height: 30px;" /> Challenger
					<div id="rank_point3" style="margin: 0 5px 0 5px;">
						<b>1,494 LP</b>
					</div>
					<div id = "gamerLV2">Lv.234</div>
				</div>
				<div id="rank_stat" style="display: flex; justify-content: center;">
					<div style="display: flex; width: 130px; border-radius: 10px; margin-right: 10px;">
						<div align="left" id="win_bar3" style="background-color: #3D95E5; width: 62%; color: white; border-radius:">134</div>
						<div align="right" id="lose_bar3" style="background-color: #EE5A52; width: 38%; color: white;">83</div>
					</div>

					<div id="winper3">62%</div>
				</div>
			</div>
		</div>

		<!-- 4 -->
		<div align="justify" style="border: 5px solid #BDBBBB; width: 250px; height: 170px; background-color: white;">
			<div align="center" style="background-color: #BDBBBB; color: white; font-size: 20px; padding: 3px; width: 20px;">
				<b>4</b>
			</div>
			<div align="center">
				<img class="circle_image" id="pfimg_rank4" src="img/Camille.png"
					style="width: 30px; height: 30px; margin-right: 5px; border-radius: 15px;" />
				<div id="gamername4">소환사명</div>
				<div id="level4" style="display: flex; font-size: 12px; margin: 5px 0 5px 20px; display: flex; align-items: center;">
					<img src="img/challenger_rank.png" style="height: 30px;" /> Challenger
					<div id="rank_point4" style="margin: 0 5px 0 5px;">
						<b>1,494 LP</b>
					</div>
					<div id = "gamerLV3">Lv.234</div>
				</div>
				<div id="rank_stat" style="display: flex; justify-content: center;">
					<div style="display: flex; width: 130px; border-radius: 10px; margin-right: 10px;">
						<div align="left" id="win_bar4" style="background-color: #3D95E5; width: 62%; color: white; border-radius:">134</div>
						<div align="right" id="lose_bar4" style="background-color: #EE5A52; width: 38%; color: white;">83</div>
					</div>

					<div id="winper4">62%</div>
				</div>
			</div>
		</div>

		<!-- 5 -->
		<div align="justify" style="border: 5px solid #BDBBBB; width: 250px; height: 170px; background-color: white;">
			<div align="center" style="background-color: #BDBBBB; color: white; font-size: 20px; padding: 3px; width: 20px;">
				<b>5</b>
			</div>
			<div align="center">
				<img class="circle_image" id="pfimg_rank5" src="img/Camille.png"
					style="width: 30px; height: 30px; margin-right: 5px; border-radius: 15px;" />
				<div id="gamername5">소환사명</div>
				<div id="level5" style="display: flex; font-size: 12px; margin: 5px 0 5px 20px; display: flex; align-items: center;">
					<img src="img/challenger_rank.png" style="height: 30px;" /> Challenger
					<div id="rank_point5" style="margin: 0 5px 0 5px;">
						<b>1,494 LP</b>
					</div>
					<div id = "gamerLV4">Lv.234</div>
				</div>
				<div id="rank_stat" style="display: flex; justify-content: center;">
					<div style="display: flex; width: 130px; border-radius: 10px; margin-right: 10px;">
						<div align="left" id="win_bar5" style="background-color: #3D95E5; width: 62%; color: white; border-radius:">134</div>
						<div align="right" id="lose_bar5" style="background-color: #EE5A52; width: 38%; color: white;">83</div>
					</div>

					<div id="winper5">62%</div>
				</div>
			</div>
		</div>
	</div>

	<br />
	<!-- 랭킹 표 -->
	<div style="border: 0.3px solid gray; width: 100%; height: 2000px; background-color: #F2F2F2;">
		<div style="display: flex; border-bottom: 1px solid gray;">
			<div style="width: 10%">&nbsp;</div>
			<div style="width: 30%">소환사</div>
			<div style="width: 10%">티어</div>
			<div style="width: 13%">LP</div>
			<div style="width: 13%">레벨</div>
			<div style="width: 24%">승률</div>
		</div>
		
		<!-- 1칸 -->
		<c:forEach var="i" begin="6" end="40" step="1">
		<div style="display: flex; background-color: #EAEAEA; height: 50px;">
			<div align="center" style="width: 10%; display: flex; align-items: center;">${i}</div>
			<div style="width: 30%; display: flex; align-items: center;">
				<img class="circle_image" id="pfimg_rank${i}" src="img/Camille.png"
					style="width: 30px; height: 30px; margin-right: 5px; border-radius: 15px;" />
				<div id="gamername${i}">보고싶다 오로라</div>
			</div>
			<div style="width: 10%; display: flex; align-items: center;">Challenger</div>
			<div id="rank_point${i}" style="width: 13%; display: flex; align-items: center;">1,372 LP</div>
			<div id= "gamerLV${i-1}" style="width: 13%; display: flex; align-items: center;">225</div>
			<div style="width: 24%; display: flex; align-items: center;">
				<div style="display: flex; width: 130px; border-radius: 10px; margin-right: 10px;">
					<div align="left" id="win_bar${i}" style="background-color: #3D95E5; width: 62%; color: white; border-radius:">134</div>
					<div align="right" id="lose_bar${i}" style="background-color: #EE5A52; width: 38%; color: white;">83</div>
				</div>
				<div id="winper${i}">62%</div>
			</div>
		</div>
		</c:forEach>
		
	</div>
	<c:if test=""></c:if>
	
	<ul class="pagination justify-content-center">
		<c:choose>
			<c:when test="${first}">
				<li class="page-item disabled"><a class="page-link">Previous</a></li>
			</c:when>
			<c:otherwise>
				<li class="page-item"><a class="page-link" href="?page=1">Previous</a></li>
			</c:otherwise>
		</c:choose>
		<c:choose>
			<c:when test="${last}">
				<li class="page-item disabled"><a class="page-link">Next</a></li>
			</c:when>
			<c:otherwise>
				<li class="page-item"><a class="page-link" href="?page=2">Next</a></li>
			</c:otherwise>
		</c:choose>
	</ul>
	<br />
</div>

<script>

let id = "1";
let accountid="1";
let encid="1";
let summonerid=[];
let rankingNum=[];
let icon=[];
let list=[];
let ranksummoner=[];
let user = [];
let username=[];
let champId = [];
let champImg = [];
// 랭킹 순으로 
$.ajax({
		type:"GET",
		url: "https://kr.api.riotgames.com/lol/league/v4/challengerleagues/by-queue/RANKED_SOLO_5x5?api_key="+api_key,
		dataType:"json",
		async:false
		
		}).done((res)=>{

			rankingNum=res.entries;
			
			rankingNum.sort(function(a,b){
				return b.leaguePoints-a.leaguePoints;
			})
			
			for(let i=0;i<40;i++){
				summonerid[i]=rankingNum[i].summonerId;
				username[i] = rankingNum[i].summonerName;
			}

			
			console.log(rankingNum[1].summonerName);
			
			/* for(let i=0;i<30;i++){
				list[i]={
						username=rankingNum[i].summonerName,
						leaguePoint=rankingNum[i].leaguePoints+" LP",
						win=rankingNum[i].wins,
						lose=rankingNum[i].losses,
						winper=rankingNum[i].wins/(rankingNum[i].losses+rankingNum[i].wins)*100+"%";
						level=null;
				}
			} */
			
			for(let i=1;i<41;i++){
				document.querySelector("#gamername"+i).innerHTML="<b>"+rankingNum[i-1].summonerName+"</b>";
				document.querySelector("#rank_point"+i).innerHTML="<b>"+rankingNum[i-1].leaguePoints+" LP</b>";
				document.querySelector("#win_bar"+i).innerHTML=rankingNum[i-1].wins;
				document.querySelector("#lose_bar"+i).innerHTML=rankingNum[i-1].losses;
				document.querySelector("#winper"+i).innerHTML=Math.round(rankingNum[i-1].wins/(rankingNum[i-1].losses+rankingNum[i-1].wins)*100)+"%";
			}
			
			
			
			

/* 			$.ajax({
				type:"GET",
				url: "https://kr.api.riotgames.com/lol/summoner/v4/summoners/"+summonerid[y]+"?api_key="+api_key,
				dataType:"json",
				}).done((res)=>{
					//console.log(res.profileIconId);
					icon[y]=res.profileIconId;			
				});

			
			document.querySelector("#pfimg_rank1").src="http://ddragon.leagueoflegends.com/cdn/11.6.1/img/profileicon/"+icon[0]+".png"; */
			for(let i=1;i<40;i++){
			$.ajax({
				type:"GET",
				url: "https://kr.api.riotgames.com/lol/summoner/v4/summoners/by-name/"+username[i]+"?api_key="+api_key,
				dataType: "json",
				async:false
				
				}).done((res)=>{
					user = res.summonerLevel
					document.querySelector("#gamerLV"+i).innerHTML="<b>"+user+" LV</b>";
				})
			}

			for(let i=0;i<40;i++){
				$.ajax({
					type:"GET",
					url: "https://kr.api.riotgames.com/lol/summoner/v4/summoners/by-name/"+username[i]+"?api_key="+api_key,
					dataType: "json",
					async:false
					
					}).done((res)=>{
						icon = res.profileIconId;
						document.querySelector("#pfimg_rank"+(i+1)).src="http://ddragon.leagueoflegends.com/cdn/11.6.1/img/profileicon/"+icon+".png";
					})
				}

			$.ajax({
				type:"GET",
				url: "https://kr.api.riotgames.com/lol/summoner/v4/summoners/by-name/"+username[0]+"?api_key="+api_key,
				dataType: "json",
				async:false
				
				}).done((res)=>{
					id = res.id;
					for(let i=1;i<4;i++){
					$.ajax({
						type:"GET",
						url: "https://kr.api.riotgames.com/lol/champion-mastery/v4/champion-masteries/by-summoner/"+ id +"?api_key="+api_key,
						dataType:"json"
						}).done((res)=>{
							champId = res[i-1].championId
							// document.querySelector("#championName"+i).innerHTML="<b>"+res[i-1].championId+"</b>";
							document.querySelector("#championLV"+i).innerHTML="<b>"+res[i-1].championLevel+" LV</b>";
							document.querySelector("#championScore"+i).innerHTML="<b>"+res[i-1].championPoints+"점</b>";


							$.ajax({
								type:"GET",
								url: "http://ddragon.leagueoflegends.com/cdn/11.5.1/data/ko_KR/champion.json",
								dataType:"json",
								async:false
									
								}).done((res)=>{
								
									let count=0;
									for(key in res.data){
										count++;
										if(res.data[key].key==champId){
											
											document.querySelector("#championName"+i).innerHTML="<b>"+res.data[key].name+"</b>";
												
											$.ajax({
												type:"GET",
												url: "http://ddragon.leagueoflegends.com/cdn/11.5.1/data/en_US/champion.json",
												dataType:"json",
												async:false
												 
												}).done((res)=>{
													let count=0;
													for(key in res.data){
														count++;
														if(res.data[key].key==champId){
												champImg = res.data[key].id;
												document.querySelector("#champImg"+i).src="http://ddragon.leagueoflegends.com/cdn/11.6.1/img/champion/" + champImg + ".png";
														}
													}
												});
										}
										}
						});			
						})
					}
				})
		})

		//document.querySelector("#pfimg_rank6").src="http://ddragon.leagueoflegends.com/cdn/11.6.1/img/profileicon/"+icon[5]+".png";
</script>
<%@ include file="../common/footer.jsp"%>