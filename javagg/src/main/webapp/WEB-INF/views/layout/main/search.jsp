<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../common/header.jsp"%>
<%@ include file="../apikey.jsp"%>

<link rel="stylesheet" type="text/css" href="/css/style.css">
<head>
<script type="text/javascript" src="/js/info.js"></script>
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

html ul.tabs li.active, html ul.tabs li.active a:focus {
	background: #E7E7E7;
}
</style>
</head>
<body style="background-color: #EAEAEA;">
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.9.4/Chart.min.js"
		integrity="sha512-d9xgZrVZpmmQlfonhQUvTR7lMPtO7NkZMkA0ABN3PHCbKA5nqylQ/yWlFAyY6hYgdF1Qh6nYiuADWwKB4C2WSw=="
		crossorigin="anonymous"></script>
	<script type="text/javascript"
		src="http://code.jquery.com/jquery-1.8.3.min.js"></script>
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
			<img id="rankcover" src="img/cover/challenger.png"
				style="position: absolute;" /> <img id="usericon"
				src="img/profileIcon.jpg"
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
			<li style="margin-right: 30px; background-color: #FFFFFF;"><a
				href="#tab1"
				style="width: 100px; height: 35px; display: flex; justify-content: center; align-items: center;">
					종합</a></li>

			<li style="border-left: 1px solid #999;"><a href="#tab2"
				style="height: 100%; background-color: white; color: #1F8ECD; display: flex; justify-content: center; align-items: center;">
					<img style="height: 31px;" src="img/ingame.png" />인게임 정보 <!-- 인게임 정보 api : spectator -->
			</a></li>
		</ul>
	</div>
	<hr style="margin-top: -3px;" />
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
							<img id="rankimg" style="width: 100px; height: 100px;"
								src="img/challenger_rank.png" />
						</div>
						<div
							style="margin-left: 20px; height: 130px; display: flex; flex-direction: column; justify-content: center;">
							<div class="tiny_gray_text">솔로랭크</div>

							<div style="display: flex;">
								<div id="tier"
									style="display: flex; font-size: 12px; color: #63B8E5;">
									<!-- rank : Challenger -->
								</div>
								<div id="rank"
									style="font-size: 12px; color: #63B8E5; margin-left: 5px;">1</div>
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
							<img id="trankimg" style="width: 100px; height: 100px;"
								src="img/challenger_rank.png" />
						</div>
						<div
							style="margin-left: 20px; height: 130px; display: flex; flex-direction: column; justify-content: center;">
							<div class="tiny_gray_text">자유 5:5 랭크</div>

							<div style="display: flex;">
								<div id="ttier"
									style="display: flex; font-size: 12px; color: #63B8E5;">

								</div>
								<div id="trank"
									style="font-size: 12px; color: #63B8E5; margin-left: 5px;"></div>
							</div>

							<div style="display: flex;">
								<div id="trankpoint" style="font-size: 13px;">
									<b>1,503 LP</b>
								</div>
								<div class="tiny_gray_text" style="display: flex;">

									<div id="twin"></div>

									<div id="tlose"></div>


								</div>
							</div>
							<div id="twinper" class="tiny_gray_text">승률 61%</div>
							<div id="trankname" class="tiny_gray_text"></div>
						</div>
					</div>
				</div>

				<!-- 오른쪽 박스 -->
				<div id="right-container" style="width: 70%; margin-left: 5px;">
					<!-- 승률 박스 -->
					<div
						style="border: 1px solid #CDD2D2; display: flex; background-color: #EDEDED;">

						<!-- 1번 박스 -->
						<!-- 승률 -->
						<div
							style="display: flex; flex-direction: column; width: 40%; border-right: 1px solid #CDD2D2; padding: 20px;">
							<div style="display: flex; font-size: 13px; color: gray;">
								20전
								<div id="win" style="margin-left: 5px;">13승</div>
								<div id="lose" style="margin-left: 5px;">7패</div>
							</div>
							<div style="display: flex;">
								<!-- 그래프 -->
								<div
									style="width: 100px; height: 100px; display: flex; justify-content: center; align-items: center;">
									<!-- 승률 text -->
									<div style="position: absolute; font-size: 18px;">50%</div>
									<!-- 승률 graph -->
									<canvas id="myChart" width="10" height="10"></canvas>
								</div>
								<!-- 승률 수치 -->
								<div
									style="margin-left: 20px; display: flex; flex-direction: column; justify-content: center; align-items: center;">
									<!-- 킬뎃 평균  -->
									<div style="display: flex; font-size: 11px;">
										<div>11.2</div>
										/
										<div style="color: red;">6.9</div>
										/
										<div>17.6</div>
									</div>
									<!-- kda -->
									<div style="display: flex; font-size: 20px;">
										4.17:1
										<div style="color: red;">(66%)</div>
									</div>
								</div>
							</div>

						</div>

						<!-- 2번 박스 -->
						<!-- 챔피언별 승률 -->
						<div
							style="width: 35%; border-right: 1px solid #CDD2D2; padding: 10px;">
							<div
								style="display: flex; flex-direction: column; margin: 5% 5% 0 10%;">
								<!-- 승률1 -->
								<div
									style="display: flex; align-items: center; margin-bottom: 10px;">
									<!-- 챔피언 사진 -->
									<img id="champImg1" class="circle_image" src="img/Jayce.png"
										style="width: 30px; height: 30px; margin-right: 5px; border-radius: 15px;" />

									<div>
										<!-- 승률1 챔피언 이름 -->
										<div class="mostChampion" id="championName1"
											style="font-size: 12px;">챔피언</div>
										<div style="display: flex;">
											<!-- 승률1 승률-->
											<div id="championLV1" style="font-size: 10px; color: red;">67%</div>
											<!-- 승률1 승패-->
											<div id="championScore1" style="font-size: 10px;">(2승
												1패)</div>
											<!-- 승률1 평점-->
											<div id="championScore1" style="font-size: 10px;">5.93
												평점</div>
										</div>
									</div>
								</div>

								<!-- 승률1 -->
								<div
									style="display: flex; align-items: center; margin-bottom: 10px;">
									<!-- 챔피언 사진 -->
									<img id="champImg1" class="circle_image" src="img/Jayce.png"
										style="width: 30px; height: 30px; margin-right: 5px; border-radius: 15px;" />

									<div>
										<!-- 승률1 챔피언 이름 -->
										<div class="mostChampion" id="championName1"
											style="font-size: 12px;">챔피언</div>
										<div style="display: flex;">
											<!-- 승률1 승률-->
											<div id="championLV1" style="font-size: 10px; color: red;">67%</div>
											<!-- 승률1 승패-->
											<div id="championScore1" style="font-size: 10px;">(2승
												1패)</div>
											<!-- 승률1 평점-->
											<div id="championScore1" style="font-size: 10px;">5.93
												평점</div>
										</div>
									</div>
								</div>

								<!-- 승률1 -->
								<div
									style="display: flex; align-items: center; margin-bottom: 10px;">
									<!-- 챔피언 사진 -->
									<img id="champImg1" class="circle_image" src="img/Jayce.png"
										style="width: 30px; height: 30px; margin-right: 5px; border-radius: 15px;" />

									<div>
										<!-- 승률1 챔피언 이름 -->
										<div class="mostChampion" id="championName1"
											style="font-size: 12px;">챔피언</div>
										<div style="display: flex;">
											<!-- 승률1 승률-->
											<div id="championLV1" style="font-size: 10px; color: red;">67%</div>
											<!-- 승률1 승패-->
											<div id="championScore1" style="font-size: 10px;">(2승
												1패)</div>
											<!-- 승률1 평점-->
											<div id="championScore1" style="font-size: 10px;">5.93
												평점</div>
										</div>
									</div>
								</div>
							</div>
						</div>

						<!-- 3번 박스 -->
						<!-- 포지션별 랭크 -->
						<div
							style="width: 25%; padding: 20px; font-size: 12px; color: gray; display: flex; flex-direction: column;">
							선호 포지션 (랭크)
							<div style="margin-top: 25px;">
								원딜
								<div style="display: flex;">
									<div style="color: #1F8ECD; margin-right: 5px;">55%</div>
									|
									<div style="margin-left: 5px;">승률 33%</div>
								</div>
							</div>
							<div style="margin-top: 15px;">
								정글
								<div style="display: flex;">
									<div style="color: #1F8ECD; margin-right: 5px;">55%</div>
									|
									<div style="margin-left: 5px;">승률 33%</div>
								</div>
							</div>
						</div>

					</div>
					<!-- 승률 정보 끝  -->
					<br />

					<c:forEach var="num" begin="1" end="10" step="1">

						<!-- 전적 시작 -->
						<div
							style="display: flex; flex-direction: column; justify-content: center; align-items: center; margin-bottom: 10px;">
							<!-- 전적 박스 -->
							<div id="searchBox${num}"
								style="display: flex; border: 1px solid #bcbcbc; background-color: #A3CFEC; width: 100%;">
								<!-- 겜 정보 -->
								<div
									style="display: flex; flex-direction: column; justify-content: center; align-items: center; font-size: 10px; margin: 10px 10px 10px 0; width: 14%">
									<div id="gameSort${num}">게임종류</div>
									<div id="gameTime${num}">하루 전</div>
									<hr style="width: 20px;" />
									<div id="winOrLose${num}" style="color: #1A85C4;">승리</div>
									<div id="gameDuration${num}">18분 1초</div>
								</div>

								<!-- 챔피언, 스펠, 룬 -->
								<div
									style="display: flex; flex-direction: column; justify-content: center; align-items: center; margin-right: 20px; width: 15%;">
									<div style="display: flex;">
										<img id="boxChampImg${num}" class="circle_image" src="img/Jayce.png"
											style="width: 50px; height: 50px; margin-right: 5px; border-radius: 30px;" />
										<!-- 스펠 -->
										<div
											style="display: flex; flex-direction: column; margin-right: 5px;">
											<img id="spellD" src="" style="width: 25px; height: 25px;" />
											<img id="spellF" src="" style="width: 25px; height: 25px;" />
										</div>
										<!-- 룬 -->
										<div style="display: flex; flex-direction: column;">
											<img id="RuneMain" src="img/pic1.png"
												style="width: 25px; height: 25px; border-radius: 30px;" />
											<img id="RuneSub" src="img/pic1.png"
												style="width: 25px; height: 25px; border-radius: 30px;" />
										</div>
									</div>
									<div id="championName"
										style="font-size: 12px; margin-top: 5px;">제이스 ${num}</div>
								</div>


								<!-- 킬뎃 -->
								<div
									style="display: flex; justify-content: center; align-items: center; flex-direction: column; margin-right: 20px; width: 11%;">
									<div
										style="display: flex; justify-content: center; align-items: center; font-size: 13px; font-weight: bold; color: gray; margin-bottom: 5px;">
										<div id="kill">12</div>
										/
										<div id="death" style="color: red;">8</div>
										/
										<div id="assist">15</div>
									</div>
									<div
										style="display: flex; justify-content: center; align-items: center; font-size: 11px; font-weight: bold; color: gray; margin-bottom: 5px;">
										<div id="winper" style="color: black;">3.38:1</div>
										<div style="font-weight: normal;">평점</div>
									</div>
									<div
										style="display: flex; justify-content: center; align-items: center; background-color: #EE5A52; color: white; border-radius: 15px; width: 50px; height: 20px; font-size: 11px;">더블킬</div>
								</div>

								<!-- 레벨, cs, 킬관여 -->
								<div
									style="display: flex; justify-content: center; align-items: center; flex-direction: column; color: gray; font-size: 11px; margin-right: 20px;">
									<div id="level" style="margin-bottom: 5px;">레벨 18</div>
									<div
										style="display: flex; justify-content: center; align-items: center; margin-bottom: 5px;">
										<div id="cs">100</div>
										<div id="cspermin">(4.7)</div>
										CS
									</div>
									<div align="center" style="color: red; margin-bottom: 5px;">킬관여
										74%</div>
								</div>

								<!-- 아이템 -->
								<div
									style="display: flex; justify-content: center; align-items: center; flex-direction: column; margin-right: 15px; width: 10%; width: 15%;">
									<!-- 아이템 위층 -->
									<div
										style="display: flex; justify-content: center; align-items: center;">
										<div
											style="width: 25px; height: 25px; background-color: #9e9e9e; opacity: 0.5; border-radius: 5px; margin: 0 1px 2px 1px;"></div>
										<div
											style="width: 25px; height: 25px; background-color: #9e9e9e; opacity: 0.5; border-radius: 5px; margin: 0 1px 2px 1px;"></div>
										<div
											style="width: 25px; height: 25px; background-color: #9e9e9e; opacity: 0.5; border-radius: 5px; margin: 0 1px 2px 1px;"></div>
										<div
											style="width: 25px; height: 25px; background-color: #9e9e9e; opacity: 0.5; border-radius: 5px; margin: 0 1px 2px 1px;"></div>
									</div>
									<!-- 아이템 아래층 -->
									<div
										style="display: flex; justify-content: center; align-items: center;">
										<div
											style="width: 25px; height: 25px; background-color: #9e9e9e; opacity: 0.5; border-radius: 5px; margin: 0 1px 2px 1px;"></div>
										<div
											style="width: 25px; height: 25px; background-color: #9e9e9e; opacity: 0.5; border-radius: 5px; margin: 0 1px 2px 1px;"></div>
										<div
											style="width: 25px; height: 25px; background-color: #9e9e9e; opacity: 0.5; border-radius: 5px; margin: 0 1px 2px 1px;"></div>
										<div style="width: 25px; height: 25px;">
											<img src="img/searchbuild.png"
												style="width: 25px; height: 25px; margin: 0 1px 2px 1px;" />
										</div>
									</div>
								</div>

								<!-- 팀원 -->
								<div
									style="display: flex; justify-content: center; align-items: center; width: 30%;">
									<!-- 블루팀 -->
									<div
										style="display: flex; justify-content: center; align-items: flex-start; flex-direction: column; margin-right: 10px;">
										<!-- 1 -->
										<c:forEach var="a" begin="0" end="4" step="1">
											<div
												style="display: flex; justify-content: center; align-items: center; font-size: 10px; color: gray; margin-bottom: 3px;">
												<img id="blueTeamChampImg${a}"
													src="http://ddragon.leagueoflegends.com/cdn/11.6.1/img/champion/Aatrox.png"
													style="width: 15px; height: 15px; margin-right: 3px;" />
												<div id="blueTeamName${a}"
													style="width: 70px; display: block; text-overflow: ellipsis; overflow: hidden; white-space: nowrap;">소환사
													이름</div>
											</div>
										</c:forEach>
									</div>

									<!-- 레드팀 -->
									<div
										style="display: flex; justify-content: flex-start; align-items: flex-start; flex-direction: column; margin-right: 5px;">
										<!-- 1 -->
										<c:forEach var="b" begin="5" end="9" step="1">
											<div
												style="display: flex; justify-content: center; align-items: center; font-size: 10px; color: gray; margin-bottom: 3px;">
												<img id="redTeamChampImg${b}"
													src="http://ddragon.leagueoflegends.com/cdn/11.6.1/img/champion/Aatrox.png"
													style="width: 15px; height: 15px; margin-right: 3px;" />
												<div id="redTeamName${b}"
													style="width: 70px; display: block; text-overflow: ellipsis; overflow: hidden; white-space: nowrap;">소환사
													이름</div>
											</div>
										</c:forEach>
									</div>
								</div>

								<!-- 전적 토글 버튼 -->
								<a id="search${num}" class="a_search"
									href='javascript:doDisplay();'
									style="border: 1px solid #5ca7d6; background-color: #64B1E4; width: 5%; display: flex; justify-content: center; align-items: flex-end;">
									<img id="moreButton${num}" src="img/winMore.png"
									style="width: 20px; height: 20px;" />
								</a>
							</div>

							<!-- 전적 상세 -->
							<!-- ============================================================================================================= -->

							<div id="matchSpecificBox${num}"
								style="border: 1px solid #bcbcbc; display: none; width: 100%;">
								<!-- 머리글 행 -->
								<div
									style="display: flex; color: gray; font-size: 10px; padding: 5px; border-bottom: 1px solid #bcbcbc;">
									<div style="width: 25%; display: flex;">
										<div id="winOrlose${num}" style="color: #1A85C4;">승리</div>
										<div>(블루팀)</div>
									</div>
									<div
										style="width: 10%; display: flex; justify-content: center; align-items: center;">티어</div>
									<div
										style="width: 10%; display: flex; justify-content: center; align-items: center;">KDA</div>

									<div
										style="width: 15%; display: flex; justify-content: center; align-items: center;">피해량</div>
									<div
										style="width: 7%; display: flex; justify-content: center; align-items: center;">와드</div>
									<div
										style="width: 7%; display: flex; justify-content: center; align-items: center;">CS</div>
									<div
										style="width: 26%; display: flex; justify-content: center; align-items: center;">아이템</div>
								</div>


								<!-- 우리팀 상세정보 for문 -->
								<c:forEach var="ourmember" begin="1" end="5" step="1">

									<div
										style="display: flex; color: gray; font-size: 11px; background-color: #D8E4EC; height: 50px;">
										<div style="display: flex; align-items: flex-end;">
											<div id="levelm1">11</div>
										</div>
										<div style="width: 25%; display: flex; align-items: center;">
											<img id="champImg1" class="circle_image" src="img/Jayce.png"
												style="width: 45px; height: 45px; margin-right: 5px; border-radius: 30px;" />
											<div
												style="display: flex; flex-direction: column; margin-right: 5px;">
												<img id="spellDm1" src="" style="width: 20px; height: 20px;" />
												<img id="spellFm1" src="" style="width: 20px; height: 20px;" />
											</div>
											<!-- 룬 -->
											<div style="display: flex; flex-direction: column;">
												<img id="RuneMain" src="img/pic1.png"
													style="width: 20px; height: 20px; border-radius: 30px;" />
												<img id="RuneSub" src="img/pic1.png"
													style="width: 20px; height: 20px; border-radius: 30px;" />
											</div>
											<span id="championName"
												style="font-size: 12px; margin-top: 5px;">태치야치 </span>
										</div>
										<!-- 티어 -->
										<div
											style="width: 10%; display: flex; justify-content: center; align-items: center;">Gold
											${ourmember }</div>
										<!-- KDA -->
										<div
											style="width: 10%; display: flex; justify-content: center; align-items: center; flex-direction: column;">
											<div>3.33:1</div>
											<div style="font-size: 8px;">7/6/13 (38%)</div>
										</div>
										<!-- 피해량 -->
										<div
											style="width: 15%; display: flex; justify-content: center; align-items: center;">
											<div
												style="width: 100px; height: 100px; display: flex; justify-content: center; align-items: center; flex-direction: column;">
												<!-- 승률 text -->
												<div style="font-size: 11px;">25,537</div>
												<!-- 승률 graph -->
												<div
													style="background-color: #F2F2F2; width: 80px; height: 15px;">
													<div
														style="background-color: #EE5A52; width: 80%; height: 15px;"></div>
												</div>
											</div>
										</div>
										<!-- 와드 -->
										<div
											style="width: 7%; display: flex; justify-content: center; align-items: center;">14/1</div>
										<div
											style="width: 7%; display: flex; justify-content: center; align-items: center;">205(5.6)</div>
										<div
											style="width: 26%; display: flex; justify-content: center; align-items: center;">
											<div
												style="display: flex; justify-content: center; align-items: center;">
												<div
													style="width: 20px; height: 20px; background-color: #9e9e9e; opacity: 0.5; border-radius: 5px; margin: 0 1px 0 1px;"></div>
												<div
													style="width: 20px; height: 20px; background-color: #9e9e9e; opacity: 0.5; border-radius: 5px; margin: 0 1px 0 1px;"></div>
												<div
													style="width: 20px; height: 20px; background-color: #9e9e9e; opacity: 0.5; border-radius: 5px; margin: 0 1px 0 1px;"></div>
												<div
													style="width: 20px; height: 20px; background-color: #9e9e9e; opacity: 0.5; border-radius: 5px; margin: 0 1px 0 1px;"></div>
												<div
													style="width: 20px; height: 20px; background-color: #9e9e9e; opacity: 0.5; border-radius: 5px; margin: 0 1px 0 1px;"></div>
												<div
													style="width: 20px; height: 20px; background-color: #9e9e9e; opacity: 0.5; border-radius: 5px; margin: 0 1px 0 1px;"></div>
												<div
													style="width: 20px; height: 20px; background-color: #9e9e9e; opacity: 0.5; border-radius: 5px; margin: 0 1px 0 1px;"></div>
											</div>
										</div>
									</div>
									<!-- 끝 -->
								</c:forEach>



								<div
									style="display: flex; justify-content: center; align-items: center; font-size: 12px; height: 50px; background-color: #E4E4E4; border-top: 1px solid #bcbcbc;">
									<!-- 블루팀 오브젝트 -->
									<div
										style="display: flex; justify-content: center; align-items: center; width: 25%;">
										<div
											style="display: flex; justify-content: center; align-items: center; margin-right: 10px;">
											<img src="img/icon-baron-b.png"
												style="width: 20px; height: 20px;" />
											<div>1</div>
										</div>
										<div
											style="display: flex; justify-content: center; align-items: center; margin-right: 10px;">
											<img src="img/icon-dragon-b.png"
												style="width: 20px; height: 20px;" />
											<div>4</div>
										</div>
										<div
											style="display: flex; justify-content: center; align-items: center; margin-right: 10px;">
											<img src="img/icon-tower-b.png"
												style="width: 20px; height: 20px;" />
											<div>9</div>
										</div>
									</div>

									<!-- 토탈 킬, 토탈 골드 -->
									<div
										style="display: flex; justify-content: center; align-items: center; flex-direction: column; width: 50%;">
										<!-- 토탈 킬 -->
										<div
											style="display: flex; justify-content: center; align-items: center; width: 100%; margin-bottom: 5px;">
											<div style="width: 20%; font-size: 10px;">Total Kill</div>
											<div id="bluetotalkill" style="width: 10%; font-size: 10px;">53</div>
											<div
												style="display: flex; justify-content: center; align-items: center; width: 65%; height: 10px; margin: 0 5px 0 5px;">
												<div
													style="background-color: #548DCA; width: 70%; height: 10px;"></div>
												<div
													style="background-color: #D05A53; width: 30%; height: 10px;"></div>
											</div>
											<div id="redtotalkill" style="width: 5%; font-size: 10px;">32</div>
										</div>

										<!-- 토탈 골드 -->
										<div
											style="display: flex; justify-content: center; align-items: center; width: 100%;">
											<div style="width: 20%; font-size: 10px;">Total Gold</div>
											<div id="bluetotalgold" style="width: 10%; font-size: 10px;">76283</div>
											<div
												style="display: flex; justify-content: center; align-items: center; width: 65%; height: 10px; margin: 0 5px 0 5px;">
												<div
													style="background-color: #548DCA; width: 70%; height: 10px;"></div>
												<div
													style="background-color: #D05A53; width: 30%; height: 10px;"></div>
											</div>
											<div id="redtotalgold" style="width: 5%; font-size: 10px;">65762</div>
										</div>
									</div>

									<!-- 레드팀 오브젝트 -->
									<div
										style="display: flex; justify-content: center; align-items: center; width: 25%;">
										<div
											style="display: flex; justify-content: center; align-items: center; margin-right: 10px;">
											<img src="img/icon-baron-r.png"
												style="width: 20px; height: 20px;" />
											<div>0</div>
										</div>
										<div
											style="display: flex; justify-content: center; align-items: center; margin-right: 10px;">
											<img src="img/icon-dragon-r.png"
												style="width: 20px; height: 20px;" />
											<div>0</div>
										</div>
										<div
											style="display: flex; justify-content: center; align-items: center; margin-right: 10px;">
											<img src="img/icon-tower-r.png"
												style="width: 20px; height: 20px;" />
											<div>3</div>
										</div>
									</div>
								</div>
								<!-- 패배팀 -->
								<!-- 머리글 행 -->
								<div
									style="display: flex; color: gray; font-size: 10px; padding: 5px; border-bottom: 1px solid #bcbcbc;">
									<div style="width: 25%; display: flex;">
										<div id="winOrloseSide${num}" style="color: red;">패배</div>
										<div>(레드팀)</div>
									</div>
									<div
										style="width: 10%; display: flex; justify-content: center; align-items: center;">티어</div>
									<div
										style="width: 10%; display: flex; justify-content: center; align-items: center;">KDA</div>

									<div
										style="width: 15%; display: flex; justify-content: center; align-items: center;">피해량</div>
									<div
										style="width: 7%; display: flex; justify-content: center; align-items: center;">와드</div>
									<div
										style="width: 7%; display: flex; justify-content: center; align-items: center;">CS</div>
									<div
										style="width: 26%; display: flex; justify-content: center; align-items: center;">아이템</div>
								</div>

								<!-- 상대팀 상세정보 for문 -->
								<c:forEach var="sidemember" begin="1" end="5" step="1">
									<div
										style="display: flex; color: gray; font-size: 11px; background-color: #E9E0E0; height: 50px;">
										<div style="display: flex; align-items: flex-end;">
											<div id="levelm1">11</div>
										</div>
										<div style="width: 25%; display: flex; align-items: center;">
											<img id="champImg1" class="circle_image" src="img/Jayce.png"
												style="width: 45px; height: 45px; margin-right: 5px; border-radius: 30px;" />
											<div
												style="display: flex; flex-direction: column; margin-right: 5px;">
												<img id="spellDm1" src="" style="width: 20px; height: 20px;" />
												<img id="spellFm1" src="" style="width: 20px; height: 20px;" />
											</div>
											<!-- 룬 -->
											<div style="display: flex; flex-direction: column;">
												<img id="RuneMain" src="img/pic1.png"
													style="width: 20px; height: 20px; border-radius: 30px;" />
												<img id="RuneSub" src="img/pic1.png"
													style="width: 20px; height: 20px; border-radius: 30px;" />
											</div>
											<span id="championName"
												style="font-size: 12px; margin-top: 5px;">태치야치</span>
										</div>
										<!-- 티어 -->
										<div
											style="width: 10%; display: flex; justify-content: center; align-items: center;">Gold
											${sidemember }</div>
										<!-- KDA -->
										<div
											style="width: 10%; display: flex; justify-content: center; align-items: center; flex-direction: column;">
											<div>3.33:1</div>
											<div style="font-size: 8px;">7/6/13 (38%)</div>
										</div>
										<!-- 피해량 -->
										<div
											style="width: 15%; display: flex; justify-content: center; align-items: center;">
											<div
												style="width: 100px; height: 100px; display: flex; justify-content: center; align-items: center; flex-direction: column;">
												<!-- 승률 text -->
												<div style="font-size: 11px;">25,537</div>
												<!-- 승률 graph -->
												<div
													style="background-color: #F2F2F2; width: 80px; height: 15px;">
													<div
														style="background-color: #EE5A52; width: 80%; height: 15px;"></div>
												</div>
											</div>
										</div>
										<!-- 와드 -->
										<div
											style="width: 7%; display: flex; justify-content: center; align-items: center;">14/1</div>
										<div
											style="width: 7%; display: flex; justify-content: center; align-items: center;">205(5.6)</div>
										<div
											style="width: 26%; display: flex; justify-content: center; align-items: center;">
											<div
												style="display: flex; justify-content: center; align-items: center;">
												<div
													style="width: 20px; height: 20px; background-color: #9e9e9e; opacity: 0.5; border-radius: 5px; margin: 0 1px 0 1px;"></div>
												<div
													style="width: 20px; height: 20px; background-color: #9e9e9e; opacity: 0.5; border-radius: 5px; margin: 0 1px 0 1px;"></div>
												<div
													style="width: 20px; height: 20px; background-color: #9e9e9e; opacity: 0.5; border-radius: 5px; margin: 0 1px 0 1px;"></div>
												<div
													style="width: 20px; height: 20px; background-color: #9e9e9e; opacity: 0.5; border-radius: 5px; margin: 0 1px 0 1px;"></div>
												<div
													style="width: 20px; height: 20px; background-color: #9e9e9e; opacity: 0.5; border-radius: 5px; margin: 0 1px 0 1px;"></div>
												<div
													style="width: 20px; height: 20px; background-color: #9e9e9e; opacity: 0.5; border-radius: 5px; margin: 0 1px 0 1px;"></div>
												<div
													style="width: 20px; height: 20px; background-color: #9e9e9e; opacity: 0.5; border-radius: 5px; margin: 0 1px 0 1px;"></div>
											</div>
										</div>
									</div>
									<!-- 끝 -->
								</c:forEach>



							</div>



						</div>

					</c:forEach>

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

// + 없애는 함수
function replaceAll(sValue, param1,param2){
	return sValue.split(param1).join(param2);
}

// 블루 레드 알아내기
function gameInfo(gameId,username){
	console.log("gameInfo()");
	$.ajax({
		type:"GET",
		url: "https://kr.api.riotgames.com/lol/match/v4/matches/"+gameId+"?api_key="+api_key,
		dataType:"json"
		}).done((res)=>{
			let blueTeam="false";
			
			// 블루팀(0~4) 레드팀(5~9) 알아내기
			for(let i=0;i<9;i++){
				if(res.participantIdentities[i].player.summonerName===username){
					if(i<5){
						blueTeam="true";
					}else
						blueTeam="false";
					}
				}
		});
}

// 전적 상세보기 함수
function gameDetail(gameId){
	$.ajax({
		type:"GET",
		url: "https://kr.api.riotgames.com/lol/match/v4/matches/"+gameId+"?api_key="+api_key,
		dataType:"json"
		}).done((res)=>{

			
			// 블루팀 소환사 이름들 0~4 블루팀 5~9 레드팀 
			$("#summonerName0").val(res.participantIdentities[0].player.summonerName);
			$("#summonerName1").val(res.participantIdentities[1].player.summonerName);
			$("#summonerName2").val(res.participantIdentities[2].player.summonerName);
			$("#summonerName3").val(res.participantIdentities[3].player.summonerName);
			$("#summonerName4").val(res.participantIdentities[4].player.summonerName);
			//console.log(res.participants[0].stats.item0);
			
			// summonerName0의 아이템
			$("#item0").val(res.participants[0].stats.item0);
			$("#item1").val(res.participants[0].stats.item1);
			$("#item2").val(res.participants[0].stats.item2);
			$("#item3").val(res.participants[0].stats.item3);
			$("#item4").val(res.participants[0].stats.item4);
			$("#item5").val(res.participants[0].stats.item5);
			
			//console.log(res.participants[0].stats);
			
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
			//console.log(res);
		});
}

function setFail(num){
	// 큰박스 패배 텍스트
	document.querySelector("#winOrLose"+num).style.color='red';
	document.querySelector("#winOrLose"+num).innerHTML="패배";
	
	// 상세보기 패배 텍스트
	document.querySelector("#winOrlose"+num).style.color='red';
	document.querySelector("#winOrlose"+num).innerHTML="패배";
	
	// 상세보기 승리 텍스트
	document.querySelector("#winOrloseSide"+num).style.color='#1A85C4';
	document.querySelector("#winOrloseSide"+num).innerHTML="승리";
	
	// 큰 박스 배경 빨간색 변경
	document.querySelector("#searchBox"+num).style.backgroundColor='#f7c3c3';
	
	// 큰 박스 토글 버튼 빨간색 변경
	document.querySelector("#search"+num).style.backgroundColor='#E89D99';
	// 테두리
	document.querySelector("#search"+num).style.border='1px solid #ea7979';
	
	// 버튼
	document.querySelector("#moreButton"+num).src="img/loseMore.png";
}

function setWin(num){
	// 큰박스 승리 텍스트
	document.querySelector("#winOrLose"+num).style.color='#1A85C4';
	document.querySelector("#winOrLose"+num).innerHTML="승리";
	
	// 상세보기 승리 텍스트
	document.querySelector("#winOrlose"+num).style.color='#1A85C4';
	document.querySelector("#winOrlose"+num).innerHTML="승리";
	
	// 상세보기 패배 텍스트
	document.querySelector("#winOrloseSide"+num).style.color='red';
	document.querySelector("#winOrloseSide"+num).innerHTML="패배";
	
	// 큰 박스 배경 파란색 변경
	document.querySelector("#searchBox"+num).style.backgroundColor='#A3CFEC';
	
	// 큰 박스 토글 버튼 파란색 변경
	document.querySelector("#search"+num).style.backgroundColor='#64b1e4';
	// 테두리
	document.querySelector("#search"+num).style.border='1px solid #5ca7d6';
	
	// 버튼
	document.querySelector("#moreButton"+num).src="img/winMore.png";
}

let accountid="1";
let encid="1";
let username="${gamername}";

let matchNum=[];
let name="";
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
			name=res.name;
			$("#level").val("Lv"+res.summonerLevel);
			accountid=res.accountId;
			console.log("accountid : "+accountid)
			$("#accountid").val("accountid : "+accountid);
			encid=res.id;
			$("#encid").val("encid : "+encid);
			icon=res.profileIconId;
			document.querySelector("#usericon").src="http://ddragon.leagueoflegends.com/cdn/11.6.1/img/profileicon/"+icon+".png";

			// api 데이터 뽑기
			// 매치 정보
			$.ajax({
				type:"GET",
				url: "https://kr.api.riotgames.com/lol/match/v4/matchlists/by-account/"+accountid+"?api_key="+api_key,
				dataType:"json"
				}).done((res)=>{ 
					
					// 매치 id 10개 저장
					for(let i=0;i<9;i++){
						matchNum[i]=res.matches[i].gameId;
					}
					
					// 레드팀 blueTeam=false
					gameInfo(matchNum[0],name);
					
					$.ajax({
						type:"GET",
						url: "https://kr.api.riotgames.com/lol/match/v4/matches/"+matchNum[0]+"?api_key="+api_key,
						dataType:"json"
						}).done((res)=>{
							
							console.log(res);
							// 게임종류
							console.log(res.queueId);
							
							// 바론 횟수
							console.log(res.teams[0].baronKills);
							
							// 용 횟수
							console.log(res.teams[0].dragonKills);
							
							// 타워 뿌순 갯수
							console.log(res.teams[0].towerKills);
							
							// 승 패
							console.log(res.teams[0].win);
							
							// 챔피언 이름 출력
							console.log(setChampName(res.participants[0].championId));
							
							//"http://ddragon.leagueoflegends.com/cdn/11.6.1/img/champion/Aatrox.png"
							for(let i=0;i<5;i++){
								document.querySelector("#blueTeamName"+i).innerHTML=res.participantIdentities[i].player.summonerName;
								document.querySelector("#blueTeamChampImg"+i).src="http://ddragon.leagueoflegends.com/cdn/11.6.1/img/champion/"+setChampName(res.participants[i].championId)+".png";
							}
							for(let i=5;i<10;i++){
								document.querySelector("#redTeamName"+i).innerHTML=res.participantIdentities[i].player.summonerName;
								document.querySelector("#redTeamChampImg"+i).src="http://ddragon.leagueoflegends.com/cdn/11.6.1/img/champion/"+setChampName(res.participants[i].championId)+".png"
							}
							
						// 게임 종류
							if(res.queueId==420){
								//420 솔랭
								document.querySelector("#gameSort1").innerHTML="솔랭";
							}else if(res.queueId==430){
								//430 자유랭크
								document.querySelector("#gameSort1").innerHTML="자유랭크";
							}else if(res.queueId==440){
								//440 무작위
								document.querySelector("#gameSort1").innerHTML="무작위 총력전";
							}
							else if(res.queueId==450){
								//450 일반게임
								document.querySelector("#gameSort1").innerHTML="일반";
							}
							//private String queueType; //420솔랭, 430일반, 440무작위
							
						// 승 패
						
							// 우리팀이 블루팀인지 레드팀인지 찾기
							let myTeamNum=""; // 내가 팀중에 번호가 몇번이야?!
							let myTeam="";
							for(let i=0;i<10;i++){
								if(res.participantIdentities[i].player.summonerName===name){
									myTeamNum=i;
								}
							}
							
							if(myTeamNum<5){
								myTeam="blue";
								console.log("나는 블루팀");
								
								// 블루팀 Fail
								if(res.teams[0].win==="Fail"){
									setFail(1);

								// 블루팀 Win
								}else if(res.teams[0].win==="Win"){
									setWin(1);
								}
							}else{
								myTeam="red";
								console.log("나는 레드팀");
								
								// 블루팀 Fail
								if(res.teams[1].win==="Fail"){
									// 큰박스 패배 텍스트
									document.querySelector("#winOrLose1").style.color='red';
									document.querySelector("#winOrLose1").innerHTML="패배";
									
									// 상세보기 패배 텍스트
									document.querySelector("#winOrlose1").style.color='red';
									document.querySelector("#winOrlose1").innerHTML="패배";
									
									// 상세보기 승리 텍스트
									document.querySelector("#winOrloseSide1").style.color='#1A85C4';
									document.querySelector("#winOrloseSide1").innerHTML="승리";
									
									// 큰 박스 배경 빨간색 변경
									document.querySelector("#searchBox1").style.backgroundColor='#f7c3c3';
									
									// 큰 박스 토글 버튼 빨간색 변경
									document.querySelector("#search1").style.backgroundColor='#E89D99';
									// 테두리
									document.querySelector("#search1").style.border='1px solid #ea7979';
									
									// 버튼
									document.querySelector("#moreButton1").src="img/loseMore.png";

								// 블루팀 Win
								}else if(res.teams[1].win==="Win"){
									// 큰박스 승리 텍스트
									document.querySelector("#winOrLose1").style.color='#1A85C4';
									document.querySelector("#winOrLose1").innerHTML="승리";
									
									// 상세보기 승리 텍스트
									document.querySelector("#winOrlose1").style.color='#1A85C4';
									document.querySelector("#winOrlose1").innerHTML="승리";
									
									// 상세보기 패배 텍스트
									document.querySelector("#winOrloseSide1").style.color='red';
									document.querySelector("#winOrloseSide1").innerHTML="패배";
									
									// 큰 박스 배경 파란색 변경
									document.querySelector("#searchBox1").style.backgroundColor='#A3CFEC';
									
									// 큰 박스 토글 버튼 파란색 변경
									document.querySelector("#search1").style.backgroundColor='#64b1e4';
									// 테두리
									document.querySelector("#search1").style.border='1px solid #5ca7d6';
									
									// 버튼
									document.querySelector("#moreButton1").src="img/winMore.png";
								}
							}
						// 챔피언 이미지
						console.log(setChampName(res.participants[myTeamNum].championId));
						document.querySelector("#boxChampImg1").src="http://ddragon.leagueoflegends.com/cdn/11.6.1/img/champion/"+setChampName(res.participants[myTeamNum].championId)+".png";		
						
						// 스펠
						
						document.querySelector("#spellD").src="https://ddragon.leagueoflegends.com/cdn/11.6.1/img/spell/"+setSpell(res.participants[myTeamNum].spell1Id)+".png"
						document.querySelector("#spellF").src="https://ddragon.leagueoflegends.com/cdn/11.6.1/img/spell/"+setSpell(res.participants[myTeamNum].spell2Id)+".png"

						});
					
					
					
				});
			// 랭크
			$.ajax({
				type:"GET",
				url: "https://kr.api.riotgames.com/lol/league/v4/entries/by-summoner/"+encid+"?api_key="+api_key,
				dataType:"json"
				}).done((res)=>{
					let unrank="false";
					
					if(res==""){
						document.querySelector("#name").innerHTML="<b>"+name+"</b>";
						document.querySelector("#rankimg").src="img/Emblem_Unranked.png";
						document.querySelector("#rankcover").src="";
						document.querySelector("#tier").innerHTML="<span style='color: #879292; font-size:20px;'><b>Unranked</b></span>";
						document.querySelector("#rank").innerHTML="";
						document.querySelector("#rankpoint").innerHTML="";
						document.querySelector("#winper").innerHTML="";
						
						document.querySelector("#trankimg").src="img/Emblem_Unranked.png";
						document.querySelector("#ttier").innerHTML="<span style='color: #879292; font-size:20px;'><b>Unranked</b></span>";
						document.querySelector("#trank").innerHTML="";
						document.querySelector("#trankpoint").innerHTML="";
						document.querySelector("#twinper").innerHTML="";
						unrank="true";
					}else{ // 랭크가 있을 경우
						
						// 솔랭 팀랭 구분
						if(res[1]==null){
							// 랭크 하나뿐 - 솔랭 or 팀랭
							// 솔랭일 경우
							if(res[0].queueType==="RANKED_SOLO_5x5"){
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
									document.querySelector("#rankcover").src="img/cover/platinum.png";
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
									
								document.querySelector("#name").innerHTML="<b>"+name	+"</b>";
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
								document.querySelector("#trankimg").src="img/Emblem_Unranked.png";
								document.querySelector("#ttier").innerHTML="<span style='color: #879292; font-size:20px;'><b>Unranked</b></span>";
								document.querySelector("#trank").innerHTML="";
								document.querySelector("#trankpoint").innerHTML="";
								document.querySelector("#twinper").innerHTML="";
								
							}else if(res[0].queueType==="RANKED_FLEX_SR"){ // 팀랭만 있을 경우
								if(res[0].tier==="IRON"){
									document.querySelector("#trankimg").src="img/Emblem_Iron.png";
									document.querySelector("#rankcover").src="img/cover/iron.png";
								}else if(res[0].tier==="BRONZE"){
									document.querySelector("#trankimg").src="img/Emblem_Bronze.png";
									document.querySelector("#rankcover").src="img/cover/bronze.png";
								}else if(res[0].tier==="SILVER"){
									document.querySelector("#trankimg").src="img/Emblem_Silver.png";
									document.querySelector("#rankcover").src="img/cover/silver.png";
								}else if(res[0].tier==="GOLD"){
									document.querySelector("#trankimg").src="img/Emblem_Gold.png";
									document.querySelector("#rankcover").src="img/cover/gold.png";
								}else if(res[0].tier==="PLATINUM"){
									document.querySelector("#trankimg").src="img/Emblem_Platinum.png";
									document.querySelector("#rankcover").src="img/cover/platinum.png";
								}else if(res[0].tier==="DIAMOND"){
									document.querySelector("#trankimg").src="img/Emblem_Diamond.png";
									document.querySelector("#rankcover").src="img/cover/diamond.png";
								}else if(res[0].tier==="MASTER"){
									document.querySelector("#trankimg").src="img/Emblem_Master.png";
									document.querySelector("#rankcover").src="img/cover/master.png";
								}else if(res[0].tier==="GRANDMASTER"){
									document.querySelector("#trankimg").src="img/Emblem_Grandmaster.png";
									document.querySelector("#rankcover").src="img/cover/grandmaster.png";
								}else if(res[0].tier==="CHALLENGER"){
									document.querySelector("#trankimg").src="img/Emblem_Challenger.png";
									document.querySelector("#rankcover").src="img/cover/challenger.png";
								}
							
								document.querySelector("#tname").innerHTML="<b>"+name	+"</b>";
								document.querySelector("#ttier").innerHTML="<b>"+res[0].tier+"</b>"; //gold
								document.querySelector("#trank").innerHTML="<b>"+res[0].rank+"</b>";
								document.querySelector("#trankpoint").innerHTML="<b>"+res[0].leaguePoints+" LP</b>";
								document.querySelector("#twin").innerHTML="/"+res[0].wins+"승";
								document.querySelector("#tlose").innerHTML=""+res[0].losses+"패";
								let twinper=Math.round(res[0].wins/(res[0].wins+res[0].losses)*100);
								document.querySelector("#twinper").innerHTML="승률 "+twinper+"%";
							}
						}else{
								// 솔랭, 팀랭 둘 다 있음
								if(res[0].queueType==="RANKED_SOLO_5x5"){ // 솔랭이 첫번째일 경우
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
										document.querySelector("#rankcover").src="img/cover/platinum.png";
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
										
									document.querySelector("#name").innerHTML="<b>"+name	+"</b>";
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
									
									if(res[1].tier==="IRON"){
										document.querySelector("#trankimg").src="img/Emblem_Iron.png";
									}else if(res[1].tier==="BRONZE"){
										document.querySelector("#trankimg").src="img/Emblem_Bronze.png";	
									}else if(res[1].tier==="SILVER"){
										document.querySelector("#trankimg").src="img/Emblem_Silver.png";	
									}else if(res[1].tier==="GOLD"){
										document.querySelector("#trankimg").src="img/Emblem_Gold.png";	
									}else if(res[1].tier==="PLATINUM"){
										document.querySelector("#trankimg").src="img/Emblem_Platinum.png";
									}else if(res[1].tier==="DIAMOND"){
										document.querySelector("#trankimg").src="img/Emblem_Diamond.png";	
									}else if(res[1].tier==="MASTER"){
										document.querySelector("#trankimg").src="img/Emblem_Master.png";	
									}else if(res[1].tier==="GRANDMASTER"){
										document.querySelector("#trankimg").src="img/Emblem_Grandmaster.png";	
									}else if(res[1].tier==="CHALLENGER"){
										document.querySelector("#trankimg").src="img/Emblem_Challenger.png";	
									}
								
									document.querySelector("#ttier").innerHTML="<b>"+res[1].tier+"</b>"; //gold
									document.querySelector("#trank").innerHTML="<b>"+res[1].rank+"</b>";
									document.querySelector("#trankpoint").innerHTML="<b>"+res[1].leaguePoints+" LP</b>";
									document.querySelector("#twin").innerHTML="/"+res[1].wins+"승";
									document.querySelector("#tlose").innerHTML=""+res[1].losses+"패";
									let twinper=Math.round(res[1].wins/(res[1].wins+res[1].losses)*100);
									document.querySelector("#twinper").innerHTML="승률 "+winper+"%";
									
								}else if(res[0].queueType==="RANKED_FLEX_SR"){ // 팀랭이 첫번째일 경우
									if(res[0].tier==="IRON"){
										document.querySelector("#trankimg").src="img/Emblem_Iron.png";
										
									}else if(res[0].tier==="BRONZE"){
										document.querySelector("#trankimg").src="img/Emblem_Bronze.png";
										
									}else if(res[0].tier==="SILVER"){
										document.querySelector("#trankimg").src="img/Emblem_Silver.png";
										
									}else if(res[0].tier==="GOLD"){
										document.querySelector("#trankimg").src="img/Emblem_Gold.png";
										
									}else if(res[0].tier==="PLATINUM"){
										document.querySelector("#trankimg").src="img/Emblem_Platinum.png";
										
									}else if(res[0].tier==="DIAMOND"){
										document.querySelector("#trankimg").src="img/Emblem_Diamond.png";
										
									}else if(res[0].tier==="MASTER"){
										document.querySelector("#trankimg").src="img/Emblem_Master.png";
										
									}else if(res[0].tier==="GRANDMASTER"){
										document.querySelector("#trankimg").src="img/Emblem_Grandmaster.png";
										
									}else if(res[0].tier==="CHALLENGER"){
										document.querySelector("#trankimg").src="img/Emblem_Challenger.png";
										
									}
								
									document.querySelector("#ttier").innerHTML="<b>"+res[0].tier+"</b>"; //gold
									document.querySelector("#trank").innerHTML="<b>"+res[0].rank+"</b>";
									document.querySelector("#trankpoint").innerHTML="<b>"+res[0].leaguePoints+" LP</b>";
									document.querySelector("#twin").innerHTML="/"+res[0].wins+"승";
									document.querySelector("#tlose").innerHTML=""+res[0].losses+"패";
									let twinper=Math.round(res[0].wins/(res[0].wins+res[0].losses)*100);
									document.querySelector("#twinper").innerHTML="승률 "+twinper+"%";
									
									if(res[1].tier==="IRON"){
										document.querySelector("#rankimg").src="img/Emblem_Iron.png";
										document.querySelector("#rankcover").src="img/cover/iron.png";
									}else if(res[1].tier==="BRONZE"){
										document.querySelector("#rankimg").src="img/Emblem_Bronze.png";
										document.querySelector("#rankcover").src="img/cover/bronze.png";
									}else if(res[1].tier==="SILVER"){
										document.querySelector("#rankimg").src="img/Emblem_Silver.png";
										document.querySelector("#rankcover").src="img/cover/silver.png";
									}else if(res[1].tier==="GOLD"){
										document.querySelector("#rankimg").src="img/Emblem_Gold.png";
										document.querySelector("#rankcover").src="img/cover/gold.png";
									}else if(res[1].tier==="PLATINUM"){
										document.querySelector("#rankimg").src="img/Emblem_Platinum.png";
										document.querySelector("#rankcover").src="img/cover/platinum.png";
									}else if(res[1].tier==="DIAMOND"){
										document.querySelector("#rankimg").src="img/Emblem_Diamond.png";
										document.querySelector("#rankcover").src="img/cover/diamond.png";
									}else if(res[1].tier==="MASTER"){
										document.querySelector("#rankimg").src="img/Emblem_Master.png";
										document.querySelector("#rankcover").src="img/cover/master.png";
									}else if(res[1].tier==="GRANDMASTER"){
										document.querySelector("#rankimg").src="img/Emblem_Grandmaster.png";
										document.querySelector("#rankcover").src="img/cover/grandmaster.png";
									}else if(res[1].tier==="CHALLENGER"){
										document.querySelector("#rankimg").src="img/Emblem_Challenger.png";
										document.querySelector("#rankcover").src="img/cover/challenger.png";
									}
										
									document.querySelector("#name").innerHTML="<b>"+name	+"</b>";
									document.querySelector("#tier").innerHTML="<b>"+res[1].tier+"</b>"; //gold
									document.querySelector("#rank").innerHTML="<b>"+res[1].rank+"</b>";
									document.querySelector("#rankpoint").innerHTML="<b>"+res[1].leaguePoints+" LP</b>";
									document.querySelector("#win").innerHTML="/"+res[1].wins+"승";
									document.querySelector("#lose").innerHTML=""+res[1].losses+"패";
									let winper=Math.round(res[1].wins/(res[1].wins+res[1].losses)*100);
									document.querySelector("#winper").innerHTML="승률 "+winper+"%";
									
									$.ajax({
										type:"GET",
										url: "https://kr.api.riotgames.com/lol/league/v4/leagues/"+res[1].leagueId+"?api_key="+api_key,
										dataType:"json"
										}).done((res)=>{
											if(unrank=="false"){
												document.querySelector("#rankname").innerHTML=""+res.name;
											}else if(unrank=="true"){
												document.querySelector("#rankname").innerHTML="";
											}
											
										});
								}
							}	
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

// 전적검색 스펠
$.ajax({
	type:"GET",
	url: "http://ddragon.leagueoflegends.com/cdn/11.6.1/data/ko_KR/summoner.json",
	dataType:"json"
	}).done((res)=>{
		console.log(res);
		document.querySelector("#spellD").src="http://ddragon.leagueoflegends.com/cdn/11.6.1/img/spell/SummonerFlash.png";
		document.querySelector("#spellF").src="http://ddragon.leagueoflegends.com/cdn/11.6.1/img/spell/SummonerHeal.png";
			
	});

let searchBox="";

$(".a_search").click(function(){
	searchBox=$(this).parent().attr('id');
})

var con=[];

for(let i=1;i<11;i++){
	con[i]=document.querySelector("#matchSpecificBox"+i);
}

// 전적검색 상세보기 토글
function doDisplay(){

	if(searchBox==="searchBox1"){
		console.log("1입니다.");
		if(con[1].style.display=='none'){ // 자세히보기
			con[1].style.display='block';
			if(document.querySelector("#winOrLose1").innerHTML==="승리"){
				document.querySelector("#moreButton1").src="img/winClose.png";
			}else{
				document.querySelector("#moreButton1").src="img/loseClose.png";
			}
		}else{							// 닫기
			con[1].style.display='none';
			if(document.querySelector("#winOrLose1").innerHTML==="승리"){
				document.querySelector("#moreButton1").src="img/winMore.png";
			}else{
				document.querySelector("#moreButton1").src="img/loseMore.png";
			}
		}
	}else if(searchBox==="searchBox2"){
		console.log("2입니다.");
		if(con[2].style.display=='none'){ // 자세히보기
			con[2].style.display='block';
			if(document.querySelector("#winOrLose2").innerHTML==="승리"){
				document.querySelector("#moreButton2").src="img/winClose.png";
			}else{
				document.querySelector("#moreButton2").src="img/loseClose.png";
			}
		}else{							// 닫기
			con[2].style.display='none';
			if(document.querySelector("#winOrLose2").innerHTML==="승리"){
				document.querySelector("#moreButton2").src="img/winMore.png";
			}else{
				document.querySelector("#moreButton2").src="img/loseMore.png";
			}
		}
	}else if(searchBox==="searchBox3"){
		console.log("3입니다.");
		if(con[3].style.display=='none'){ // 자세히보기
			con[3].style.display='block';
			if(document.querySelector("#winOrLose3").innerHTML==="승리"){
				document.querySelector("#moreButton3").src="img/winClose.png";
			}else{
				document.querySelector("#moreButton3").src="img/loseClose.png";
			}
		}else{							// 닫기
			con[3].style.display='none';
			if(document.querySelector("#winOrLose3").innerHTML==="승리"){
				document.querySelector("#moreButton3").src="img/winMore.png";
			}else{
				document.querySelector("#moreButton3").src="img/loseMore.png";
			}
		}
	}else if(searchBox==="searchBox4"){
		console.log("4입니다.");
		if(con[4].style.display=='none'){ // 자세히보기
			con[4].style.display='block';
			if(document.querySelector("#winOrLose4").innerHTML==="승리"){
				document.querySelector("#moreButton4").src="img/winClose.png";
			}else{
				document.querySelector("#moreButton4").src="img/loseClose.png";
			}
		}else{							// 닫기
			con[4].style.display='none';
			if(document.querySelector("#winOrLose4").innerHTML==="승리"){
				document.querySelector("#moreButton4").src="img/winMore.png";
			}else{
				document.querySelector("#moreButton4").src="img/loseMore.png";
			}
		}
	}else if(searchBox==="searchBox5"){
		console.log("5입니다.");
		if(con[5].style.display=='none'){ // 자세히보기
			con[5].style.display='block';
			if(document.querySelector("#winOrLose5").innerHTML==="승리"){
				document.querySelector("#moreButton5").src="img/winClose.png";
			}else{
				document.querySelector("#moreButton5").src="img/loseClose.png";
			}
		}else{							// 닫기
			con[5].style.display='none';
			if(document.querySelector("#winOrLose5").innerHTML==="승리"){
				document.querySelector("#moreButton5").src="img/winMore.png";
			}else{
				document.querySelector("#moreButton5").src="img/loseMore.png";
			}
		}
	}else if(searchBox==="searchBox6"){
		console.log("6입니다.");
		if(con[6].style.display=='none'){ // 자세히보기
			con[6].style.display='block';
			if(document.querySelector("#winOrLose6").innerHTML==="승리"){
				document.querySelector("#moreButton6").src="img/winClose.png";
			}else{
				document.querySelector("#moreButton6").src="img/loseClose.png";
			}
		}else{							// 닫기
			con[6].style.display='none';
			if(document.querySelector("#winOrLose6").innerHTML==="승리"){
				document.querySelector("#moreButton6").src="img/winMore.png";
			}else{
				document.querySelector("#moreButton6").src="img/loseMore.png";
			}
		}
	}else if(searchBox==="searchBox7"){
		console.log("7입니다.");
		if(con[7].style.display=='none'){ // 자세히보기
			con[7].style.display='block';
			if(document.querySelector("#winOrLose7").innerHTML==="승리"){
				document.querySelector("#moreButton7").src="img/winClose.png";
			}else{
				document.querySelector("#moreButton7").src="img/loseClose.png";
			}
		}else{							// 닫기
			con[7].style.display='none';
			if(document.querySelector("#winOrLose7").innerHTML==="승리"){
				document.querySelector("#moreButton7").src="img/winMore.png";
			}else{
				document.querySelector("#moreButton7").src="img/loseMore.png";
			}
		}
	}else if(searchBox==="searchBox8"){
		console.log("8입니다.");
		if(con[8].style.display=='none'){ // 자세히보기
			con[8].style.display='block';
			if(document.querySelector("#winOrLose8").innerHTML==="승리"){
				document.querySelector("#moreButton8").src="img/winClose.png";
			}else{
				document.querySelector("#moreButton8").src="img/loseClose.png";
			}
		}else{							// 닫기
			con[8].style.display='none';
			if(document.querySelector("#winOrLose8").innerHTML==="승리"){
				document.querySelector("#moreButton8").src="img/winMore.png";
			}else{
				document.querySelector("#moreButton8").src="img/loseMore.png";
			}
		}
	}else if(searchBox==="searchBox9"){
		console.log("9입니다.");
		if(con[9].style.display=='none'){ // 자세히보기
			con[9].style.display='block';
			if(document.querySelector("#winOrLose9").innerHTML==="승리"){
				document.querySelector("#moreButton9").src="img/winClose.png";
			}else{
				document.querySelector("#moreButton9").src="img/loseClose.png";
			}
		}else{							// 닫기
			con[9].style.display='none';
			if(document.querySelector("#winOrLose9").innerHTML==="승리"){
				document.querySelector("#moreButton9").src="img/winMore.png";
			}else{
				document.querySelector("#moreButton9").src="img/loseMore.png";
			}
		}
	}else if(searchBox==="searchBox10"){
		console.log("10입니다.");
		if(con[10].style.display=='none'){ // 자세히보기
			con[10].style.display='block';
			if(document.querySelector("#winOrLose10").innerHTML==="승리"){
				document.querySelector("#moreButton10").src="img/winClose.png";
			}else{
				document.querySelector("#moreButton10").src="img/loseClose.png";
			}
		}else{							// 닫기
			con[10].style.display='none';
			if(document.querySelector("#winOrLose10").innerHTML==="승리"){
				document.querySelector("#moreButton10").src="img/winMore.png";
			}else{
				document.querySelector("#moreButton10").src="img/loseMore.png";
			}
		}
	}
}



</script>
	<%@ include file="../common/footer.jsp"%>