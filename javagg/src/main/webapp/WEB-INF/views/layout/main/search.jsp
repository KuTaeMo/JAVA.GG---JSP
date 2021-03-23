<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../common/header.jsp"%>
<%@ include file="../apikey.jsp"%>
<link rel="stylesheet" type="text/css" href="/css/style.css">
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
body {
	font-family: "Malgun Gothic";
	font-size: 0.8em;
}
/*TAB CSS*/
ul.tabs {
	margin: 0;
	padding: 0;
	float: left;
	list-style: none;
	height: 32px; /*--Set height of tabs--*/
	
	border-left: 1px solid #999;
	width: 100%;
}

ul.tabs li {
	float: left;
	margin: 0;
	padding: 0;
	height: 31px;
	/*--Subtract 1px from the height of the unordered list--*/
	line-height: 40px; /*--Vertically aligns the text within the tab--*/
	border: 1px solid #999;
	border-left: none;
	margin-bottom: -1px; /*--Pull the list item down 1px--*/
	overflow: hidden;
	position: relative;
	background: #FFFFFF;
}

ul.tabs li a {
	text-decoration: none;
	color: #000;
	display: block;
	font-size: 1.2em;
	padding: 0 20px;
	/*--Gives the bevel look with a 1px white border inside the list item--*/
	border: 1px solid #fff;
	outline: none;
}

ul.tabs li a:hover {
	background: #ccc;
}

html ul.tabs li.active, html ul.tabs li.active a:hover {
	/*--Makes sure that the active tab does not listen to the hover properties--*/
	background: #E7E7E7;
	/*--Makes the active tab look like it's connected with its content--*/
	border-bottom: 1px solid #fff;
}
html ul.tabs li.active, html ul.tabs li.active a:focus{
	background: #E7E7E7;
}
</style>
</head>
<body style="background-color: #EAEAEA;">
	<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.9.4/Chart.min.js"
		integrity="sha512-d9xgZrVZpmmQlfonhQUvTR7lMPtO7NkZMkA0ABN3PHCbKA5nqylQ/yWlFAyY6hYgdF1Qh6nYiuADWwKB4C2WSw=="
		crossorigin="anonymous"></script>
	<script type="text/javascript" src="http://code.jquery.com/jquery-1.8.3.min.js"></script>
	<script type="text/javascript">
	
        $(document).ready(function() {

            //When page loads...
            $(".tab_content").hide(); //Hide all content
            $("ul.tabs li:first").addClass("active").show(); //Activate first tab
            $(".tab_content:first").show(); //Show first tab content

            //On Click Event
            $("ul.tabs li").click(function() {

                $("ul.tabs li").removeClass("active"); //Remove any "active" class
                $(this).addClass("active"); //Add "active" class to selected tab
                $(".tab_content").hide(); //Hide all tab content

                var activeTab = $(this).find("a").attr("href"); //Find the href attribute value to identify the active tab + content
                $(activeTab).fadeIn(); //Fade in the active ID content
                return false;
            });

        });
    </script>

	<!-- 소환사 정보 -->
	<div class="mContainer" style="display: flex;">
		<div>
			<img id="rankcover" src="img/cover/challenger.png" style="position: absolute;" /> <img id="usericon" src="img/profileIcon.jpg"
				style="width: 100px; height: 100px; margin: 10px;" />

		</div>
		<div style="padding: 15px;">
			<div id="name" style="font-size: 20px; color: black;"></div>
			<div style="font-size: 10px; display: flex;">
				랭킹
				<div id="rankingnum" style="color: #059EDE;">1</div>
				위
			</div>
			<br />
			<button class="search_button" id="searchuser">전적 갱신</button>
		</div>
	</div>
	
	<!-- 종합, 인게임 -->
	<div class="mContainer" style="display: flex;">
		<!--탭 메뉴 영역 -->
		<ul class="tabs">
			<li style="margin-right: 30px;background-color: #FFFFFF;"><a href="#tab1"
				style="width: 100px; height: 35px; display: flex; justify-content: center; align-items: center; "> 종합</a></li>

			<li style="border-left: 1px solid #999;"><a href="#tab2"
				style="height: 100%; background-color: white; color: #1F8ECD; display: flex; justify-content: center; align-items:center; ">
					<img style="height: 31px;" src="img/ingame.png" />인게임 정보 <!-- 인게임 정보 api : spectator -->
			</a></li>
		</ul>
	</div>
	<hr style="margin-top: -3px;"/>
	<!--탭 콘텐츠 영역 -->
	<div class="tab_container">

		<div id="tab1" class="tab_content">
			<!-- 본문 시작 -->
			<!-- 3:7 나눔 -->
			<div class="mContainer" style="display: flex;">
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
									<!-- rank : Challenger -->
								</div>
								<div id="rank" style="font-size: 12px; color: #63B8E5; margin-left: 5px;">1</div>
							</div>

							<div style="display: flex;">
								<div id="rankpoint" style="font-size: 13px;">
									<b>1,503 LP</b>
								</div>
								<div class="tiny_gray_text" style="display: flex;">
									<div id="win"></div>
									<div id="lose"></div>


								</div>
							</div>
							<div id="winper" class="tiny_gray_text">승률 61%</div>
							<div id="rankname" class="tiny_gray_text"></div>
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
				<div id="right-container" style="width: 70%; margin-left: 5px;">
				<!-- 승률 박스 -->
	<div style="border: 1px solid #CDD2D2; display: flex; background-color: #EDEDED;">

		<!-- 1번 박스 -->
		<!-- 승률 -->
		<div style="display: flex; flex-direction: column; width: 40%; border-right: 1px solid #CDD2D2;  padding: 20px;">
			<div style="display: flex; font-size: 13px; color: gray;">
				20전<div id="win" style="margin-left: 5px;">13승</div><div id="lose" style="margin-left: 5px;">7패</div>
			</div>
			<div style="display: flex;">
				<!-- 그래프 -->
				<div style="width: 100px; height: 100px; display: flex; justify-content: center; align-items: center;">
					<!-- 승률 text -->
					<div style="position: absolute; font-size: 18px;">50%</div>
					<!-- 승률 graph -->
					<canvas id="myChart" width="10" height="10"></canvas>
				</div>
				<!-- 승률 수치 -->
				<div style="margin-left: 20px; display: flex; flex-direction: column; justify-content: center; align-items: center;">
					<!-- 킬뎃 평균  -->
					<div style="display: flex; font-size: 11px;">
						<div>11.2</div>/
						<div style="color: red;">6.9</div>/
						<div>17.6</div>
					</div>
					<!-- kda -->
					<div style="display: flex; font-size: 20px;">
						4.17:1 <div style="color: red;">(66%)</div>
					</div>
				</div>
			</div>

		</div>

		<!-- 2번 박스 -->
		<!-- 챔피언별 승률 -->
		<div style="width: 35%; border-right: 1px solid #CDD2D2;  padding: 10px; ">
			<div style="display: flex; flex-direction: column; margin: 5% 5% 0 10%;">
					<!-- 승률1 -->
					<div style="display: flex; align-items: center; margin-bottom: 10px; ">
						<!-- 챔피언 사진 -->
						<img id = "champImg1" class="circle_image" src="img/Jayce.png"
							style="width: 30px; height: 30px; margin-right: 5px; border-radius: 15px;" />
							
						<div>
							<!-- 승률1 챔피언 이름 -->
							<div class="mostChampion" id="championName1" style="font-size: 12px;">챔피언</div>
							<div style="display: flex;">
								<!-- 승률1 승률-->
								<div id="championLV1" style="font-size: 10px; color: red;">67%</div>
								<!-- 승률1 승패-->
								<div id="championScore1" style="font-size: 10px;">(2승 1패)</div>
								<!-- 승률1 평점-->
								<div id="championScore1" style="font-size: 10px;">5.93 평점</div>
							</div>
						</div>
					</div>

					<!-- 승률1 -->
					<div style="display: flex; align-items: center; margin-bottom: 10px; ">
						<!-- 챔피언 사진 -->
						<img id = "champImg1" class="circle_image" src="img/Jayce.png"
							style="width: 30px; height: 30px; margin-right: 5px; border-radius: 15px;" />
							
						<div>
							<!-- 승률1 챔피언 이름 -->
							<div class="mostChampion" id="championName1" style="font-size: 12px;">챔피언</div>
							<div style="display: flex;">
								<!-- 승률1 승률-->
								<div id="championLV1" style="font-size: 10px; color: red;">67%</div>
								<!-- 승률1 승패-->
								<div id="championScore1" style="font-size: 10px;">(2승 1패)</div>
								<!-- 승률1 평점-->
								<div id="championScore1" style="font-size: 10px;">5.93 평점</div>
							</div>
						</div>
					</div>

					<!-- 승률1 -->
					<div style="display: flex; align-items: center; margin-bottom: 10px; ">
						<!-- 챔피언 사진 -->
						<img id = "champImg1" class="circle_image" src="img/Jayce.png"
							style="width: 30px; height: 30px; margin-right: 5px; border-radius: 15px;" />
							
						<div>
							<!-- 승률1 챔피언 이름 -->
							<div class="mostChampion" id="championName1" style="font-size: 12px;">챔피언</div>
							<div style="display: flex;">
								<!-- 승률1 승률-->
								<div id="championLV1" style="font-size: 10px; color: red;">67%</div>
								<!-- 승률1 승패-->
								<div id="championScore1" style="font-size: 10px;">(2승 1패)</div>
								<!-- 승률1 평점-->
								<div id="championScore1" style="font-size: 10px;">5.93 평점</div>
							</div>
						</div>
					</div>
				</div>
		</div>
		
		<!-- 3번 박스 -->
		<!-- 포지션별 랭크 -->
		<div style="width: 25%; padding: 20px; font-size: 12px; color: gray; display: flex; flex-direction: column;">
		선호 포지션 (랭크)
		<div style="margin-top: 25px;">
			원딜
			<div style="display: flex;"><div style="color: #1F8ECD; margin-right: 5px;">55%</div>|<div style="margin-left: 5px;">승률 33%</div></div>
		</div>
		<div style="margin-top: 15px;">
			정글
			<div style="display: flex;"><div style="color: #1F8ECD; margin-right: 5px;">55%</div>|<div style="margin-left: 5px;">승률 33%</div></div>
		</div>
		</div>

	</div>
				</div>
			</div>
		</div>
		
		<!-- 인게임 정보 탭 -->
		<div id="tab2" class="tab_content">
			<!--Content-->
			<h1>tab2영역</h1>
			내용 내용 내용 내용 내용 내용
		</div>

	</div>





	<!-- 전적검색 -->
	<script>
let accountid="1";
let encid="1";
let username="${gamername}";
let decode=decodeURI(username);
console.log(decode);
//summoner 소환사 정보
$.ajax({
	type:"GET",
	url: "https://kr.api.riotgames.com/lol/summoner/v4/summoners/by-name/"+username+"?api_key="+api_key,
	dataType:"json",
	error:function(){ // 소환사 없을 경우 알림 후 메인 창으로 돌아감
		alert("검색한 소환사 정보가 없습니다.");
		location.href="/home";
		}
	}).done((res)=>{
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
					let unrank="false";
					if(res==""){
						document.querySelector("#name").innerHTML="<b>"+decode+"</b>";
						document.querySelector("#rankimg").src="img/Emblem_Unranked.png";
						document.querySelector("#rankcover").src="";
						document.querySelector("#tier").innerHTML="<span style='color: #879292; font-size:20px;'><b>Unranked</b></span>";
						document.querySelector("#rank").innerHTML="";
						document.querySelector("#rankpoint").innerHTML="";
						document.querySelector("#winper").innerHTML="";
						unrank="true";
					}else{
						unrank="false";
						if(res[0].tier==="IRON"){
							document.querySelector("#rankimg").src="img/Emblem_Iron.png";
							document.querySelector("#rankcover").src="img/cover/iron.png";
						}else if(res[0].tier==="BRONZE"){
							document.querySelector("#rankimg").src="img/Emblem_Bronze.png";
							document.querySelector("#rankcover").src="img/cover/bronze.png";
						}else if(res[0].tier==="SILVER"){
							document.querySelector("#rankimg").src="img/Emblem_Silver.png";
							document.querySelector("#rankcover").src="img/cover/silver.png";
						}else if(res[0].tier==="GOLD"){
							document.querySelector("#rankimg").src="img/Emblem_Gold.png";
							document.querySelector("#rankcover").src="img/cover/gold.png";
						}else if(res[0].tier==="PLATINUM"){
							document.querySelector("#rankimg").src="img/Emblem_Platinum.png";
							document.querySelector("#rankcover").src="img/cover/platinum.png";d
						}else if(res[0].tier==="DIAMOND"){
							document.querySelector("#rankimg").src="img/Emblem_Diamond.png";
							document.querySelector("#rankcover").src="img/cover/diamond.png";
						}else if(res[0].tier==="MASTER"){
							document.querySelector("#rankimg").src="img/Emblem_Master.png";
							document.querySelector("#rankcover").src="img/cover/master.png";
						}else if(res[0].tier==="GRANDMASTER"){
							document.querySelector("#rankimg").src="img/Emblem_Grandmaster.png";
							document.querySelector("#rankcover").src="img/cover/grandmaster.png";
						}else if(res[0].tier==="CHALLENGER"){
							document.querySelector("#rankimg").src="img/Emblem_Challenger.png";
							document.querySelector("#rankcover").src="img/cover/challenger.png";
						}
						
						document.querySelector("#name").innerHTML="<b>"+decode+"</b>";
						document.querySelector("#tier").innerHTML="<b>"+res[0].tier+"</b>"; //gold
						document.querySelector("#rank").innerHTML="<b>"+res[0].rank+"</b>";
						document.querySelector("#rankpoint").innerHTML="<b>"+res[0].leaguePoints+" LP</b>";
						document.querySelector("#win").innerHTML="/"+res[0].wins+"승";
						document.querySelector("#lose").innerHTML=""+res[0].losses+"패";
						let winper=Math.round(res[0].wins/(res[0].wins+res[0].losses)*100);
						document.querySelector("#winper").innerHTML="승률 "+winper+"%";
						
						$.ajax({
							type:"GET",
							url: "https://kr.api.riotgames.com/lol/league/v4/leagues/"+res[0].leagueId+"?api_key="+api_key,
							dataType:"json"
							}).done((res)=>{
								if(unrank=="false"){
									document.querySelector("#rankname").innerHTML=""+res.name;
								}else if(unrank=="true"){
									document.querySelector("#rankname").innerHTML="";
								}
								
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

// chart
var ctx = document.getElementById('myChart');
var a = "12"; //패
var b = "12"; //승

var data = [ a, b ];

var myChart = new Chart(ctx, {
	type : 'doughnut',
	data : {
		datasets : [ {
			data : data,
			backgroundColor : [ '#EE5A52', '#1F8ECD' ],
			borderWidth : 0.1
		} ]
	},
	options : {
		cutoutPercentage : 70
	}
});
</script>
<%@ include file="../common/footer.jsp"%>
</body>

</html>