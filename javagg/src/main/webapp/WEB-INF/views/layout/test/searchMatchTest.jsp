<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</head>
<body style="margin: 3% 15% 0 15%;">

	<div style="width: 70%; display: flex; flex-direction: column; justify-content: center; align-items: center;">
		<!-- 전적 박스 -->
		<div style="display: flex; border: 1px solid #bcbcbc; background-color: #A3CFEC; width: 100%;">
			<!-- 겜 정보 -->
			<div
				style="display: flex; flex-direction: column; justify-content: center; align-items: center; font-size: 10px; margin: 10px 10px 10px 0; width: 14%">
				<div>무작위 총력전</div>
				<div>하루 전</div>
				<hr style="width: 20px;" />
				<div style="color: #1A85C4;">승리</div>
				<div>18분 1초</div>
			</div>

			<!-- 챔피언, 스펠, 룬 -->
			<div
				style="display: flex; flex-direction: column; justify-content: center; align-items: center; margin-right: 20px; width: 15%;">
				<div style="display: flex;">
					<img id="champImg1" class="circle_image" src="img/Jayce.png"
						style="width: 50px; height: 50px; margin-right: 5px; border-radius: 30px;" />
					<!-- 스펠 -->
					<div style="display: flex; flex-direction: column; margin-right: 5px;">
						<img id="spellD" src="" style="width: 25px; height: 25px;" /> <img id="spellF" src="" style="width: 25px; height: 25px;" />
					</div>
					<!-- 룬 -->
					<div style="display: flex; flex-direction: column;">
						<img id="RuneMain" src="img/pic1.png" style="width: 25px; height: 25px; border-radius: 30px;" /> <img id="RuneSub"
							src="img/pic1.png" style="width: 25px; height: 25px; border-radius: 30px;" />
					</div>
				</div>
				<div id="championName" style="font-size: 12px; margin-top: 5px;">제이스</div>
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
				<div style="display: flex; justify-content: center; align-items: center; margin-bottom: 5px;">
					<div id="cs">100</div>
					<div id="cspermin">(4.7)</div>
					CS
				</div>
				<div style="color: red; margin-bottom: 5px;">킬관여 74%</div>
			</div>

			<!-- 아이템 -->
			<div
				style="display: flex; justify-content: center; align-items: center; flex-direction: column; margin-right: 15px; width: 10%; width: 15%;">
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
					<div style="width: 25px; height: 25px;">
						<img src="img/searchbuild.png" style="width: 25px; height: 25px; margin: 0 1px 2px 1px;" />
					</div>
				</div>
			</div>

			<!-- 팀원 -->
			<div style="display: flex; justify-content: center; align-items: center; width: 30%;">
				<!-- 아군 -->
				<div style="display: flex; justify-content: center; align-items: center; flex-direction: column; margin-right: 10px;">
					<!-- 1 -->
					<div style="display: flex; justify-content: center; align-items: center; font-size: 10px; color: gray; margin-bottom: 3px;">
						<img src="http://ddragon.leagueoflegends.com/cdn/11.6.1/img/champion/Aatrox.png"
							style="width: 15px; height: 15px; margin-right: 3px;" /><span id="myTeamName">소환사 이름</span>
					</div>
					<!-- 2 -->
					<div style="display: flex; justify-content: center; align-items: center; font-size: 10px; color: gray; margin-bottom: 3px;">
						<img src="http://ddragon.leagueoflegends.com/cdn/11.6.1/img/champion/Aatrox.png"
							style="width: 15px; height: 15px; margin-right: 3px;" /><span id="myTeamName">소환사 이름</span>
					</div>
					<!-- 3 -->
					<div style="display: flex; justify-content: center; align-items: center; font-size: 10px; color: gray; margin-bottom: 3px;">
						<img src="http://ddragon.leagueoflegends.com/cdn/11.6.1/img/champion/Aatrox.png"
							style="width: 15px; height: 15px; margin-right: 3px;" /><span id="myTeamName">소환사 이름</span>
					</div>
					<!-- 4 -->
					<div style="display: flex; justify-content: center; align-items: center; font-size: 10px; color: gray; margin-bottom: 3px;">
						<img src="http://ddragon.leagueoflegends.com/cdn/11.6.1/img/champion/Aatrox.png"
							style="width: 15px; height: 15px; margin-right: 3px;" /><span id="myTeamName">소환사 이름</span>
					</div>
					<!-- 5 -->
					<div style="display: flex; justify-content: center; align-items: center; font-size: 10px; color: gray; margin-bottom: 3px;">
						<img src="http://ddragon.leagueoflegends.com/cdn/11.6.1/img/champion/Aatrox.png"
							style="width: 15px; height: 15px; margin-right: 3px;" /><span id="myTeamName">소환사 이름</span>
					</div>
				</div>

				<!-- 적군 -->
				<div style="display: flex; justify-content: center; align-items: center; flex-direction: column; margin-right: 5px;">
					<!-- 1 -->
					<div style="display: flex; justify-content: center; align-items: center; font-size: 10px; color: gray; margin-bottom: 3px;">
						<img src="http://ddragon.leagueoflegends.com/cdn/11.6.1/img/champion/Aatrox.png"
							style="width: 15px; height: 15px; margin-right: 3px;" /><span id="sideTeamName">소환사 이름</span>
					</div>
					<!-- 2 -->
					<div style="display: flex; justify-content: center; align-items: center; font-size: 10px; color: gray; margin-bottom: 3px;">
						<img src="http://ddragon.leagueoflegends.com/cdn/11.6.1/img/champion/Aatrox.png"
							style="width: 15px; height: 15px; margin-right: 3px;" /><span id="sideTeamName">소환사 이름</span>
					</div>
					<!-- 3 -->
					<div style="display: flex; justify-content: center; align-items: center; font-size: 10px; color: gray; margin-bottom: 3px;">
						<img src="http://ddragon.leagueoflegends.com/cdn/11.6.1/img/champion/Aatrox.png"
							style="width: 15px; height: 15px; margin-right: 3px;" /><span id="sideTeamName">소환사 이름</span>
					</div>
					<!-- 4 -->
					<div style="display: flex; justify-content: center; align-items: center; font-size: 10px; color: gray; margin-bottom: 3px;">
						<img src="http://ddragon.leagueoflegends.com/cdn/11.6.1/img/champion/Aatrox.png"
							style="width: 15px; height: 15px; margin-right: 3px;" /><span id="sideTeamName">소환사 이름</span>
					</div>
					<!-- 5 -->
					<div style="display: flex; justify-content: center; align-items: center; font-size: 10px; color: gray; margin-bottom: 3px;">
						<img src="http://ddragon.leagueoflegends.com/cdn/11.6.1/img/champion/Aatrox.png"
							style="width: 15px; height: 15px; margin-right: 3px;" /><span id="sideTeamName">소환사 이름</span>
					</div>
				</div>
			</div>

			<!-- 전적 토글 버튼 -->
			<a href='javascript:doDisplay();'
				style="border: 1px solid #5ca7d6; background-color: #64B1E4; width: 5%; display: flex; justify-content: center; align-items: flex-end;">
				<img src="img/winMore.png" style="width: 20px; height: 20px;" />
			</a>
		</div>

		<!-- 전적 상세 -->
		<!-- ============================================================================================================= -->

		<div id="matchSpecificBox" style="border: 1px solid #bcbcbc; display: none; width: 100%;">
			<!-- 머리글 행 -->
			<div style="display: flex; color: gray; font-size: 10px; padding: 5px; border-bottom: 1px solid #bcbcbc;">
				<div style="width: 25%; display: flex;">
					<div id="winOrLose" style="color: blue;">승리</div>
					<div>(블루팀)</div>
				</div>
				<div style="width: 10%; display: flex; justify-content: center; align-items: center;">티어</div>
				<div style="width: 10%; display: flex; justify-content: center; align-items: center;">KDA</div>

				<div style="width: 15%; display: flex; justify-content: center; align-items: center;">피해량</div>
				<div style="width: 7%; display: flex; justify-content: center; align-items: center;">와드</div>
				<div style="width: 7%; display: flex; justify-content: center; align-items: center;">CS</div>
				<div style="width: 26%; display: flex; justify-content: center; align-items: center;">아이템</div>
			</div>
			<!-- 상세정보 1행 -->
			<div style="display: flex; color: gray; font-size: 11px; background-color: #D8E4EC; height: 50px;">
				<div style="display: flex; align-items: flex-end;">
					<div id="levelm1">11</div>
				</div>
				<div style="width: 25%; display: flex; align-items: center;">
					<img id="champImg1" class="circle_image" src="img/Jayce.png"
						style="width: 45px; height: 45px; margin-right: 5px; border-radius: 30px;" />
					<div style="display: flex; flex-direction: column; margin-right: 5px;">
						<img id="spellDm1" src="" style="width: 20px; height: 20px;" /> <img id="spellFm1" src=""
							style="width: 20px; height: 20px;" />
					</div>
					<!-- 룬 -->
					<div style="display: flex; flex-direction: column;">
						<img id="RuneMain" src="img/pic1.png" style="width: 20px; height: 20px; border-radius: 30px;" /> <img id="RuneSub"
							src="img/pic1.png" style="width: 20px; height: 20px; border-radius: 30px;" />
					</div>
					<span id="championName" style="font-size: 12px; margin-top: 5px;">태치야치</span>
				</div>
				<!-- 티어 -->
				<div style="width: 10%; display: flex; justify-content: center; align-items: center;">Gold 1</div>
				<!-- KDA -->
				<div style="width: 10%; display: flex; justify-content: center; align-items: center; flex-direction: column;">
					<div>3.33:1</div>
					<div style="font-size: 8px;">7/6/13 (38%)</div>
				</div>
				<!-- 피해량 -->
				<div style="width: 15%; display: flex; justify-content: center; align-items: center;">
					<div
						style="width: 100px; height: 100px; display: flex; justify-content: center; align-items: center; flex-direction: column;">
						<!-- 승률 text -->
						<div style="font-size: 11px;">25,537</div>
						<!-- 승률 graph -->
						<div style="background-color: #F2F2F2; width: 80px; height: 15px;">
							<div style="background-color: #EE5A52; width: 80%; height: 15px;"></div>
						</div>
					</div>
				</div>
				<!-- 와드 -->
				<div style="width: 7%; display: flex; justify-content: center; align-items: center;">14/1</div>
				<div style="width: 7%; display: flex; justify-content: center; align-items: center;">205(5.6)</div>
				<div style="width: 26%; display: flex; justify-content: center; align-items: center;">
					<div style="display: flex; justify-content: center; align-items: center;">
						<div style="width: 20px; height: 20px; background-color: #9e9e9e; opacity: 0.5; border-radius: 5px; margin: 0 1px 0 1px;"></div>
						<div style="width: 20px; height: 20px; background-color: #9e9e9e; opacity: 0.5; border-radius: 5px; margin: 0 1px 0 1px;"></div>
						<div style="width: 20px; height: 20px; background-color: #9e9e9e; opacity: 0.5; border-radius: 5px; margin: 0 1px 0 1px;"></div>
						<div style="width: 20px; height: 20px; background-color: #9e9e9e; opacity: 0.5; border-radius: 5px; margin: 0 1px 0 1px;"></div>
						<div style="width: 20px; height: 20px; background-color: #9e9e9e; opacity: 0.5; border-radius: 5px; margin: 0 1px 0 1px;"></div>
						<div style="width: 20px; height: 20px; background-color: #9e9e9e; opacity: 0.5; border-radius: 5px; margin: 0 1px 0 1px;"></div>
						<div style="width: 20px; height: 20px; background-color: #9e9e9e; opacity: 0.5; border-radius: 5px; margin: 0 1px 0 1px;"></div>
					</div>
				</div>
			</div>
			<!-- 끝 -->
			<!-- 상세정보 2행 -->
			<div style="display: flex; color: gray; font-size: 11px; background-color: #D8E4EC; height: 50px;">
				<div style="display: flex; align-items: flex-end;">
					<div id="levelm2">11</div>
				</div>
				<div style="width: 25%; display: flex; align-items: center;">
					<div></div>
					<img id="champImg1" class="circle_image" src="img/Jayce.png"
						style="width: 45px; height: 45px; margin-right: 5px; border-radius: 30px;" />
					<div style="display: flex; flex-direction: column; margin-right: 5px;">
						<img id="spellDm2" src="" style="width: 20px; height: 20px;" /> <img id="spellFm2" src=""
							style="width: 20px; height: 20px;" />
					</div>
					<!-- 룬 -->
					<div style="display: flex; flex-direction: column;">
						<img id="RuneMain" src="img/pic1.png" style="width: 20px; height: 20px; border-radius: 30px;" /> <img id="RuneSub"
							src="img/pic1.png" style="width: 20px; height: 20px; border-radius: 30px;" />
					</div>
					<span id="championName" style="font-size: 12px; margin-top: 5px;">태치야치</span>
				</div>
				<!-- 티어 -->
				<div style="width: 10%; display: flex; justify-content: center; align-items: center;">Gold 1</div>
				<!-- KDA -->
				<div style="width: 10%; display: flex; justify-content: center; align-items: center; flex-direction: column;">
					<div>3.33:1</div>
					<div style="font-size: 8px;">7/6/13 (38%)</div>
				</div>
				<!-- 피해량 -->
				<div style="width: 15%; display: flex; justify-content: center; align-items: center;">
					<div
						style="width: 100px; height: 100px; display: flex; justify-content: center; align-items: center; flex-direction: column;">
						<!-- 승률 text -->
						<div style="font-size: 11px;">25,537</div>
						<!-- 승률 graph -->
						<div style="background-color: #F2F2F2; width: 80px; height: 15px;">
							<div style="background-color: #EE5A52; width: 80%; height: 15px;"></div>
						</div>
					</div>
				</div>
				<!-- 와드 -->
				<div style="width: 7%; display: flex; justify-content: center; align-items: center;">14/1</div>
				<div style="width: 7%; display: flex; justify-content: center; align-items: center;">205(5.6)</div>
				<div style="width: 26%; display: flex; justify-content: center; align-items: center;">
					<div style="display: flex; justify-content: center; align-items: center;">
						<div style="width: 20px; height: 20px; background-color: #9e9e9e; opacity: 0.5; border-radius: 5px; margin: 0 1px 0 1px;"></div>
						<div style="width: 20px; height: 20px; background-color: #9e9e9e; opacity: 0.5; border-radius: 5px; margin: 0 1px 0 1px;"></div>
						<div style="width: 20px; height: 20px; background-color: #9e9e9e; opacity: 0.5; border-radius: 5px; margin: 0 1px 0 1px;"></div>
						<div style="width: 20px; height: 20px; background-color: #9e9e9e; opacity: 0.5; border-radius: 5px; margin: 0 1px 0 1px;"></div>
						<div style="width: 20px; height: 20px; background-color: #9e9e9e; opacity: 0.5; border-radius: 5px; margin: 0 1px 0 1px;"></div>
						<div style="width: 20px; height: 20px; background-color: #9e9e9e; opacity: 0.5; border-radius: 5px; margin: 0 1px 0 1px;"></div>
						<div style="width: 20px; height: 20px; background-color: #9e9e9e; opacity: 0.5; border-radius: 5px; margin: 0 1px 0 1px;"></div>
					</div>
				</div>
			</div>
			<!-- 끝 -->
			<!-- 상세정보 3행 -->
			<div style="display: flex; color: gray; font-size: 11px; background-color: #D8E4EC; height: 50px;">
				<div style="display: flex; align-items: flex-end;">
					<div id="levelm3">11</div>
				</div>
				<div style="width: 25%; display: flex; align-items: center;">
					<div></div>
					<img id="champImg1" class="circle_image" src="img/Jayce.png"
						style="width: 45px; height: 45px; margin-right: 5px; border-radius: 30px;" />
					<div style="display: flex; flex-direction: column; margin-right: 5px;">
						<img id="spellDm3" src="" style="width: 20px; height: 20px;" /> <img id="spellFm3" src=""
							style="width: 20px; height: 20px;" />
					</div>
					<!-- 룬 -->
					<div style="display: flex; flex-direction: column;">
						<img id="RuneMain" src="img/pic1.png" style="width: 20px; height: 20px; border-radius: 30px;" /> <img id="RuneSub"
							src="img/pic1.png" style="width: 20px; height: 20px; border-radius: 30px;" />
					</div>
					<span id="championName" style="font-size: 12px; margin-top: 5px;">태치야치</span>
				</div>
				<!-- 티어 -->
				<div style="width: 10%; display: flex; justify-content: center; align-items: center;">Gold 1</div>
				<!-- KDA -->
				<div style="width: 10%; display: flex; justify-content: center; align-items: center; flex-direction: column;">
					<div>3.33:1</div>
					<div style="font-size: 8px;">7/6/13 (38%)</div>
				</div>
				<!-- 피해량 -->
				<div style="width: 15%; display: flex; justify-content: center; align-items: center;">
					<div
						style="width: 100px; height: 100px; display: flex; justify-content: center; align-items: center; flex-direction: column;">
						<!-- 승률 text -->
						<div style="font-size: 11px;">25,537</div>
						<!-- 승률 graph -->
						<div style="background-color: #F2F2F2; width: 80px; height: 15px;">
							<div style="background-color: #EE5A52; width: 80%; height: 15px;"></div>
						</div>
					</div>
				</div>
				<!-- 와드 -->
				<div style="width: 7%; display: flex; justify-content: center; align-items: center;">14/1</div>
				<div style="width: 7%; display: flex; justify-content: center; align-items: center;">205(5.6)</div>
				<div style="width: 26%; display: flex; justify-content: center; align-items: center;">
					<div style="display: flex; justify-content: center; align-items: center;">
						<div style="width: 20px; height: 20px; background-color: #9e9e9e; opacity: 0.5; border-radius: 5px; margin: 0 1px 0 1px;"></div>
						<div style="width: 20px; height: 20px; background-color: #9e9e9e; opacity: 0.5; border-radius: 5px; margin: 0 1px 0 1px;"></div>
						<div style="width: 20px; height: 20px; background-color: #9e9e9e; opacity: 0.5; border-radius: 5px; margin: 0 1px 0 1px;"></div>
						<div style="width: 20px; height: 20px; background-color: #9e9e9e; opacity: 0.5; border-radius: 5px; margin: 0 1px 0 1px;"></div>
						<div style="width: 20px; height: 20px; background-color: #9e9e9e; opacity: 0.5; border-radius: 5px; margin: 0 1px 0 1px;"></div>
						<div style="width: 20px; height: 20px; background-color: #9e9e9e; opacity: 0.5; border-radius: 5px; margin: 0 1px 0 1px;"></div>
						<div style="width: 20px; height: 20px; background-color: #9e9e9e; opacity: 0.5; border-radius: 5px; margin: 0 1px 0 1px;"></div>
					</div>
				</div>
			</div>
			<!-- 끝 -->
			<!-- 상세정보 4행 -->
			<div style="display: flex; color: gray; font-size: 11px; background-color: #D8E4EC; height: 50px;">
				<div style="display: flex; align-items: flex-end;">
					<div id="levelm4">11</div>
				</div>
				<div style="width: 25%; display: flex; align-items: center;">
					<div></div>
					<img id="champImg1" class="circle_image" src="img/Jayce.png"
						style="width: 45px; height: 45px; margin-right: 5px; border-radius: 30px;" />
					<div style="display: flex; flex-direction: column; margin-right: 5px;">
						<img id="spellDm4" src="" style="width: 20px; height: 20px;" /> <img id="spellFm4" src=""
							style="width: 20px; height: 20px;" />
					</div>
					<!-- 룬 -->
					<div style="display: flex; flex-direction: column;">
						<img id="RuneMain" src="img/pic1.png" style="width: 20px; height: 20px; border-radius: 30px;" /> <img id="RuneSub"
							src="img/pic1.png" style="width: 20px; height: 20px; border-radius: 30px;" />
					</div>
					<span id="championName" style="font-size: 12px; margin-top: 5px;">태치야치</span>
				</div>
				<!-- 티어 -->
				<div style="width: 10%; display: flex; justify-content: center; align-items: center;">Gold 1</div>
				<!-- KDA -->
				<div style="width: 10%; display: flex; justify-content: center; align-items: center; flex-direction: column;">
					<div>3.33:1</div>
					<div style="font-size: 8px;">7/6/13 (38%)</div>
				</div>
				<!-- 피해량 -->
				<div style="width: 15%; display: flex; justify-content: center; align-items: center;">
					<div
						style="width: 100px; height: 100px; display: flex; justify-content: center; align-items: center; flex-direction: column;">
						<!-- 승률 text -->
						<div style="font-size: 11px;">25,537</div>
						<!-- 승률 graph -->
						<div style="background-color: #F2F2F2; width: 80px; height: 15px;">
							<div style="background-color: #EE5A52; width: 80%; height: 15px;"></div>
						</div>
					</div>
				</div>
				<!-- 와드 -->
				<div style="width: 7%; display: flex; justify-content: center; align-items: center;">14/1</div>
				<div style="width: 7%; display: flex; justify-content: center; align-items: center;">205(5.6)</div>
				<div style="width: 26%; display: flex; justify-content: center; align-items: center;">
					<div style="display: flex; justify-content: center; align-items: center;">
						<div style="width: 20px; height: 20px; background-color: #9e9e9e; opacity: 0.5; border-radius: 5px; margin: 0 1px 0 1px;"></div>
						<div style="width: 20px; height: 20px; background-color: #9e9e9e; opacity: 0.5; border-radius: 5px; margin: 0 1px 0 1px;"></div>
						<div style="width: 20px; height: 20px; background-color: #9e9e9e; opacity: 0.5; border-radius: 5px; margin: 0 1px 0 1px;"></div>
						<div style="width: 20px; height: 20px; background-color: #9e9e9e; opacity: 0.5; border-radius: 5px; margin: 0 1px 0 1px;"></div>
						<div style="width: 20px; height: 20px; background-color: #9e9e9e; opacity: 0.5; border-radius: 5px; margin: 0 1px 0 1px;"></div>
						<div style="width: 20px; height: 20px; background-color: #9e9e9e; opacity: 0.5; border-radius: 5px; margin: 0 1px 0 1px;"></div>
						<div style="width: 20px; height: 20px; background-color: #9e9e9e; opacity: 0.5; border-radius: 5px; margin: 0 1px 0 1px;"></div>
					</div>
				</div>
			</div>
			<!-- 끝 -->
			<!-- 상세정보 5행 -->
			<div style="display: flex; color: gray; font-size: 11px; background-color: #D8E4EC; height: 50px;">
				<div style="display: flex; align-items: flex-end;">
					<div id="levelm4">11</div>
				</div>
				<div style="width: 25%; display: flex; align-items: center;">
					<div></div>
					<img id="champImg1" class="circle_image" src="img/Jayce.png"
						style="width: 45px; height: 45px; margin-right: 5px; border-radius: 30px;" />
					<div style="display: flex; flex-direction: column; margin-right: 5px;">
						<img id="spellDm5" src="" style="width: 20px; height: 20px;" /> <img id="spellFm5" src=""
							style="width: 20px; height: 20px;" />
					</div>
					<!-- 룬 -->
					<div style="display: flex; flex-direction: column;">
						<img id="RuneMain" src="img/pic1.png" style="width: 20px; height: 20px; border-radius: 30px;" /> <img id="RuneSub"
							src="img/pic1.png" style="width: 20px; height: 20px; border-radius: 30px;" />
					</div>
					<span id="championName" style="font-size: 12px; margin-top: 5px;">태치야치</span>
				</div>
				<!-- 티어 -->
				<div style="width: 10%; display: flex; justify-content: center; align-items: center;">Gold 1</div>
				<!-- KDA -->
				<div style="width: 10%; display: flex; justify-content: center; align-items: center; flex-direction: column;">
					<div>3.33:1</div>
					<div style="font-size: 8px;">7/6/13 (38%)</div>
				</div>
				<!-- 피해량 -->
				<div style="width: 15%; display: flex; justify-content: center; align-items: center;">
					<div
						style="width: 100px; height: 100px; display: flex; justify-content: center; align-items: center; flex-direction: column;">
						<!-- 승률 text -->
						<div style="font-size: 11px;">25,537</div>
						<!-- 승률 graph -->
						<div style="background-color: #F2F2F2; width: 80px; height: 15px;">
							<div style="background-color: #EE5A52; width: 80%; height: 15px;"></div>
						</div>
					</div>
				</div>
				<!-- 와드 -->
				<div style="width: 7%; display: flex; justify-content: center; align-items: center;">14/1</div>
				<div style="width: 7%; display: flex; justify-content: center; align-items: center;">205(5.6)</div>
				<div style="width: 26%; display: flex; justify-content: center; align-items: center;">
					<div style="display: flex; justify-content: center; align-items: center;">
						<div style="width: 20px; height: 20px; background-color: #9e9e9e; opacity: 0.5; border-radius: 5px; margin: 0 1px 0 1px;"></div>
						<div style="width: 20px; height: 20px; background-color: #9e9e9e; opacity: 0.5; border-radius: 5px; margin: 0 1px 0 1px;"></div>
						<div style="width: 20px; height: 20px; background-color: #9e9e9e; opacity: 0.5; border-radius: 5px; margin: 0 1px 0 1px;"></div>
						<div style="width: 20px; height: 20px; background-color: #9e9e9e; opacity: 0.5; border-radius: 5px; margin: 0 1px 0 1px;"></div>
						<div style="width: 20px; height: 20px; background-color: #9e9e9e; opacity: 0.5; border-radius: 5px; margin: 0 1px 0 1px;"></div>
						<div style="width: 20px; height: 20px; background-color: #9e9e9e; opacity: 0.5; border-radius: 5px; margin: 0 1px 0 1px;"></div>
						<div style="width: 20px; height: 20px; background-color: #9e9e9e; opacity: 0.5; border-radius: 5px; margin: 0 1px 0 1px;"></div>
					</div>
				</div>
			</div>
			<!-- 끝 -->
			<div
				style="display: flex; justify-content: center; align-items: center; font-size: 12px; height: 50px; background-color: #E4E4E4; border-top: 1px solid #bcbcbc;">
				<!-- 블루팀 오브젝트 -->
				<div style="display: flex; justify-content: center; align-items: center; width: 25%;">
					<div style="display: flex; justify-content: center; align-items: center; margin-right: 10px;">
						<img src="img/icon-baron-b.png" style="width: 20px; height: 20px;" />
						<div>1</div>
					</div>
					<div style="display: flex; justify-content: center; align-items: center; margin-right: 10px;">
						<img src="img/icon-dragon-b.png" style="width: 20px; height: 20px;" />
						<div>4</div>
					</div>
					<div style="display: flex; justify-content: center; align-items: center; margin-right: 10px;">
						<img src="img/icon-tower-b.png" style="width: 20px; height: 20px;" />
						<div>9</div>
					</div>
				</div>

				<!-- 토탈 킬, 토탈 골드 -->
				<div style="display: flex; justify-content: center; align-items: center; flex-direction: column; width: 50%;">
					<!-- 토탈 킬 -->
					<div style="display: flex; justify-content: center; align-items: center; width: 100%; margin-bottom: 5px;">
						<div style="width: 20%; font-size: 10px;">Total Kill</div>
						<div id="bluetotalkill" style="width: 10%; font-size: 10px;">53</div>
						<div style="display: flex; justify-content: center; align-items: center; width: 65%; height: 10px; margin: 0 5px 0 5px;">
							<div style="background-color: #548DCA; width: 70%; height: 10px;"></div>
							<div style="background-color: #D05A53; width: 30%; height: 10px;"></div>
						</div>
						<div id="redtotalkill" style="width: 5%; font-size: 10px;">32</div>
					</div>

					<!-- 토탈 골드 -->
					<div style="display: flex; justify-content: center; align-items: center; width: 100%;">
						<div style="width: 20%; font-size: 10px;">Total Gold</div>
						<div id="bluetotalgold" style="width: 10%; font-size: 10px;">76283</div>
						<div style="display: flex; justify-content: center; align-items: center; width: 65%; height: 10px; margin: 0 5px 0 5px;">
							<div style="background-color: #548DCA; width: 70%; height: 10px;"></div>
							<div style="background-color: #D05A53; width: 30%; height: 10px;"></div>
						</div>
						<div id="redtotalgold" style="width: 5%; font-size: 10px;">65762</div>
					</div>
				</div>

				<!-- 레드팀 오브젝트 -->
				<div style="display: flex; justify-content: center; align-items: center; width: 25%;">
					<div style="display: flex; justify-content: center; align-items: center; margin-right: 10px;">
						<img src="img/icon-baron-r.png" style="width: 20px; height: 20px;" />
						<div>0</div>
					</div>
					<div style="display: flex; justify-content: center; align-items: center; margin-right: 10px;">
						<img src="img/icon-dragon-r.png" style="width: 20px; height: 20px;" />
						<div>0</div>
					</div>
					<div style="display: flex; justify-content: center; align-items: center; margin-right: 10px;">
						<img src="img/icon-tower-r.png" style="width: 20px; height: 20px;" />
						<div>3</div>
					</div>
				</div>
			</div>
			<!-- 패배팀 -->
			<!-- 머리글 행 -->
			<div style="display: flex; color: gray; font-size: 10px; padding: 5px; border-bottom: 1px solid #bcbcbc;">
				<div style="width: 25%; display: flex;">
					<div id="winOrLose" style="color: red;">패배</div>
					<div>(레드팀)</div>
				</div>
				<div style="width: 10%; display: flex; justify-content: center; align-items: center;">티어</div>
				<div style="width: 10%; display: flex; justify-content: center; align-items: center;">KDA</div>

				<div style="width: 15%; display: flex; justify-content: center; align-items: center;">피해량</div>
				<div style="width: 7%; display: flex; justify-content: center; align-items: center;">와드</div>
				<div style="width: 7%; display: flex; justify-content: center; align-items: center;">CS</div>
				<div style="width: 26%; display: flex; justify-content: center; align-items: center;">아이템</div>
			</div>
			<!-- 상세정보 1행 -->
			<div style="display: flex; color: gray; font-size: 11px; background-color: #E9E0E0; height: 50px;">
				<div style="display: flex; align-items: flex-end;">
					<div id="levelm1">11</div>
				</div>
				<div style="width: 25%; display: flex; align-items: center;">
					<img id="champImg1" class="circle_image" src="img/Jayce.png"
						style="width: 45px; height: 45px; margin-right: 5px; border-radius: 30px;" />
					<div style="display: flex; flex-direction: column; margin-right: 5px;">
						<img id="spellDm1" src="" style="width: 20px; height: 20px;" /> <img id="spellFm1" src=""
							style="width: 20px; height: 20px;" />
					</div>
					<!-- 룬 -->
					<div style="display: flex; flex-direction: column;">
						<img id="RuneMain" src="img/pic1.png" style="width: 20px; height: 20px; border-radius: 30px;" /> <img id="RuneSub"
							src="img/pic1.png" style="width: 20px; height: 20px; border-radius: 30px;" />
					</div>
					<span id="championName" style="font-size: 12px; margin-top: 5px;">태치야치</span>
				</div>
				<!-- 티어 -->
				<div style="width: 10%; display: flex; justify-content: center; align-items: center;">Gold 1</div>
				<!-- KDA -->
				<div style="width: 10%; display: flex; justify-content: center; align-items: center; flex-direction: column;">
					<div>3.33:1</div>
					<div style="font-size: 8px;">7/6/13 (38%)</div>
				</div>
				<!-- 피해량 -->
				<div style="width: 15%; display: flex; justify-content: center; align-items: center;">
					<div
						style="width: 100px; height: 100px; display: flex; justify-content: center; align-items: center; flex-direction: column;">
						<!-- 승률 text -->
						<div style="font-size: 11px;">25,537</div>
						<!-- 승률 graph -->
						<div style="background-color: #F2F2F2; width: 80px; height: 15px;">
							<div style="background-color: #EE5A52; width: 80%; height: 15px;"></div>
						</div>
					</div>
				</div>
				<!-- 와드 -->
				<div style="width: 7%; display: flex; justify-content: center; align-items: center;">14/1</div>
				<div style="width: 7%; display: flex; justify-content: center; align-items: center;">205(5.6)</div>
				<div style="width: 26%; display: flex; justify-content: center; align-items: center;">
					<div style="display: flex; justify-content: center; align-items: center;">
						<div style="width: 20px; height: 20px; background-color: #9e9e9e; opacity: 0.5; border-radius: 5px; margin: 0 1px 0 1px;"></div>
						<div style="width: 20px; height: 20px; background-color: #9e9e9e; opacity: 0.5; border-radius: 5px; margin: 0 1px 0 1px;"></div>
						<div style="width: 20px; height: 20px; background-color: #9e9e9e; opacity: 0.5; border-radius: 5px; margin: 0 1px 0 1px;"></div>
						<div style="width: 20px; height: 20px; background-color: #9e9e9e; opacity: 0.5; border-radius: 5px; margin: 0 1px 0 1px;"></div>
						<div style="width: 20px; height: 20px; background-color: #9e9e9e; opacity: 0.5; border-radius: 5px; margin: 0 1px 0 1px;"></div>
						<div style="width: 20px; height: 20px; background-color: #9e9e9e; opacity: 0.5; border-radius: 5px; margin: 0 1px 0 1px;"></div>
						<div style="width: 20px; height: 20px; background-color: #9e9e9e; opacity: 0.5; border-radius: 5px; margin: 0 1px 0 1px;"></div>
					</div>
				</div>
			</div>
			<!-- 끝 -->
			<!-- 상세정보 2행 -->
			<div style="display: flex; color: gray; font-size: 11px; background-color: #E9E0E0; height: 50px;">
				<div style="display: flex; align-items: flex-end;">
					<div id="levelm2">11</div>
				</div>
				<div style="width: 25%; display: flex; align-items: center;">
					<div></div>
					<img id="champImg1" class="circle_image" src="img/Jayce.png"
						style="width: 45px; height: 45px; margin-right: 5px; border-radius: 30px;" />
					<div style="display: flex; flex-direction: column; margin-right: 5px;">
						<img id="spellDm2" src="" style="width: 20px; height: 20px;" /> <img id="spellFm2" src=""
							style="width: 20px; height: 20px;" />
					</div>
					<!-- 룬 -->
					<div style="display: flex; flex-direction: column;">
						<img id="RuneMain" src="img/pic1.png" style="width: 20px; height: 20px; border-radius: 30px;" /> <img id="RuneSub"
							src="img/pic1.png" style="width: 20px; height: 20px; border-radius: 30px;" />
					</div>
					<span id="championName" style="font-size: 12px; margin-top: 5px;">태치야치</span>
				</div>
				<!-- 티어 -->
				<div style="width: 10%; display: flex; justify-content: center; align-items: center;">Gold 1</div>
				<!-- KDA -->
				<div style="width: 10%; display: flex; justify-content: center; align-items: center; flex-direction: column;">
					<div>3.33:1</div>
					<div style="font-size: 8px;">7/6/13 (38%)</div>
				</div>
				<!-- 피해량 -->
				<div style="width: 15%; display: flex; justify-content: center; align-items: center;">
					<div
						style="width: 100px; height: 100px; display: flex; justify-content: center; align-items: center; flex-direction: column;">
						<!-- 승률 text -->
						<div style="font-size: 11px;">25,537</div>
						<!-- 승률 graph -->
						<div style="background-color: #F2F2F2; width: 80px; height: 15px;">
							<div style="background-color: #EE5A52; width: 80%; height: 15px;"></div>
						</div>
					</div>
				</div>
				<!-- 와드 -->
				<div style="width: 7%; display: flex; justify-content: center; align-items: center;">14/1</div>
				<div style="width: 7%; display: flex; justify-content: center; align-items: center;">205(5.6)</div>
				<div style="width: 26%; display: flex; justify-content: center; align-items: center;">
					<div style="display: flex; justify-content: center; align-items: center;">
						<div style="width: 20px; height: 20px; background-color: #9e9e9e; opacity: 0.5; border-radius: 5px; margin: 0 1px 0 1px;"></div>
						<div style="width: 20px; height: 20px; background-color: #9e9e9e; opacity: 0.5; border-radius: 5px; margin: 0 1px 0 1px;"></div>
						<div style="width: 20px; height: 20px; background-color: #9e9e9e; opacity: 0.5; border-radius: 5px; margin: 0 1px 0 1px;"></div>
						<div style="width: 20px; height: 20px; background-color: #9e9e9e; opacity: 0.5; border-radius: 5px; margin: 0 1px 0 1px;"></div>
						<div style="width: 20px; height: 20px; background-color: #9e9e9e; opacity: 0.5; border-radius: 5px; margin: 0 1px 0 1px;"></div>
						<div style="width: 20px; height: 20px; background-color: #9e9e9e; opacity: 0.5; border-radius: 5px; margin: 0 1px 0 1px;"></div>
						<div style="width: 20px; height: 20px; background-color: #9e9e9e; opacity: 0.5; border-radius: 5px; margin: 0 1px 0 1px;"></div>
					</div>
				</div>
			</div>
			<!-- 끝 -->
			<!-- 상세정보 3행 -->
			<div style="display: flex; color: gray; font-size: 11px; background-color: #E9E0E0; height: 50px;">
				<div style="display: flex; align-items: flex-end;">
					<div id="levelm3">11</div>
				</div>
				<div style="width: 25%; display: flex; align-items: center;">
					<div></div>
					<img id="champImg1" class="circle_image" src="img/Jayce.png"
						style="width: 45px; height: 45px; margin-right: 5px; border-radius: 30px;" />
					<div style="display: flex; flex-direction: column; margin-right: 5px;">
						<img id="spellDm3" src="" style="width: 20px; height: 20px;" /> <img id="spellFm3" src=""
							style="width: 20px; height: 20px;" />
					</div>
					<!-- 룬 -->
					<div style="display: flex; flex-direction: column;">
						<img id="RuneMain" src="img/pic1.png" style="width: 20px; height: 20px; border-radius: 30px;" /> <img id="RuneSub"
							src="img/pic1.png" style="width: 20px; height: 20px; border-radius: 30px;" />
					</div>
					<span id="championName" style="font-size: 12px; margin-top: 5px;">태치야치</span>
				</div>
				<!-- 티어 -->
				<div style="width: 10%; display: flex; justify-content: center; align-items: center;">Gold 1</div>
				<!-- KDA -->
				<div style="width: 10%; display: flex; justify-content: center; align-items: center; flex-direction: column;">
					<div>3.33:1</div>
					<div style="font-size: 8px;">7/6/13 (38%)</div>
				</div>
				<!-- 피해량 -->
				<div style="width: 15%; display: flex; justify-content: center; align-items: center;">
					<div
						style="width: 100px; height: 100px; display: flex; justify-content: center; align-items: center; flex-direction: column;">
						<!-- 승률 text -->
						<div style="font-size: 11px;">25,537</div>
						<!-- 승률 graph -->
						<div style="background-color: #F2F2F2; width: 80px; height: 15px;">
							<div style="background-color: #EE5A52; width: 80%; height: 15px;"></div>
						</div>
					</div>
				</div>
				<!-- 와드 -->
				<div style="width: 7%; display: flex; justify-content: center; align-items: center;">14/1</div>
				<div style="width: 7%; display: flex; justify-content: center; align-items: center;">205(5.6)</div>
				<div style="width: 26%; display: flex; justify-content: center; align-items: center;">
					<div style="display: flex; justify-content: center; align-items: center;">
						<div style="width: 20px; height: 20px; background-color: #9e9e9e; opacity: 0.5; border-radius: 5px; margin: 0 1px 0 1px;"></div>
						<div style="width: 20px; height: 20px; background-color: #9e9e9e; opacity: 0.5; border-radius: 5px; margin: 0 1px 0 1px;"></div>
						<div style="width: 20px; height: 20px; background-color: #9e9e9e; opacity: 0.5; border-radius: 5px; margin: 0 1px 0 1px;"></div>
						<div style="width: 20px; height: 20px; background-color: #9e9e9e; opacity: 0.5; border-radius: 5px; margin: 0 1px 0 1px;"></div>
						<div style="width: 20px; height: 20px; background-color: #9e9e9e; opacity: 0.5; border-radius: 5px; margin: 0 1px 0 1px;"></div>
						<div style="width: 20px; height: 20px; background-color: #9e9e9e; opacity: 0.5; border-radius: 5px; margin: 0 1px 0 1px;"></div>
						<div style="width: 20px; height: 20px; background-color: #9e9e9e; opacity: 0.5; border-radius: 5px; margin: 0 1px 0 1px;"></div>
					</div>
				</div>
			</div>
			<!-- 끝 -->
			<!-- 상세정보 4행 -->
			<div style="display: flex; color: gray; font-size: 11px; background-color: #E9E0E0; height: 50px;">
				<div style="display: flex; align-items: flex-end;">
					<div id="levelm4">11</div>
				</div>
				<div style="width: 25%; display: flex; align-items: center;">
					<div></div>
					<img id="champImg1" class="circle_image" src="img/Jayce.png"
						style="width: 45px; height: 45px; margin-right: 5px; border-radius: 30px;" />
					<div style="display: flex; flex-direction: column; margin-right: 5px;">
						<img id="spellDm4" src="" style="width: 20px; height: 20px;" /> <img id="spellFm4" src=""
							style="width: 20px; height: 20px;" />
					</div>
					<!-- 룬 -->
					<div style="display: flex; flex-direction: column;">
						<img id="RuneMain" src="img/pic1.png" style="width: 20px; height: 20px; border-radius: 30px;" /> <img id="RuneSub"
							src="img/pic1.png" style="width: 20px; height: 20px; border-radius: 30px;" />
					</div>
					<span id="championName" style="font-size: 12px; margin-top: 5px;">태치야치</span>
				</div>
				<!-- 티어 -->
				<div style="width: 10%; display: flex; justify-content: center; align-items: center;">Gold 1</div>
				<!-- KDA -->
				<div style="width: 10%; display: flex; justify-content: center; align-items: center; flex-direction: column;">
					<div>3.33:1</div>
					<div style="font-size: 8px;">7/6/13 (38%)</div>
				</div>
				<!-- 피해량 -->
				<div style="width: 15%; display: flex; justify-content: center; align-items: center;">
					<div
						style="width: 100px; height: 100px; display: flex; justify-content: center; align-items: center; flex-direction: column;">
						<!-- 승률 text -->
						<div style="font-size: 11px;">25,537</div>
						<!-- 승률 graph -->
						<div style="background-color: #F2F2F2; width: 80px; height: 15px;">
							<div style="background-color: #EE5A52; width: 80%; height: 15px;"></div>
						</div>
					</div>
				</div>
				<!-- 와드 -->
				<div style="width: 7%; display: flex; justify-content: center; align-items: center;">14/1</div>
				<div style="width: 7%; display: flex; justify-content: center; align-items: center;">205(5.6)</div>
				<div style="width: 26%; display: flex; justify-content: center; align-items: center;">
					<div style="display: flex; justify-content: center; align-items: center;">
						<div style="width: 20px; height: 20px; background-color: #9e9e9e; opacity: 0.5; border-radius: 5px; margin: 0 1px 0 1px;"></div>
						<div style="width: 20px; height: 20px; background-color: #9e9e9e; opacity: 0.5; border-radius: 5px; margin: 0 1px 0 1px;"></div>
						<div style="width: 20px; height: 20px; background-color: #9e9e9e; opacity: 0.5; border-radius: 5px; margin: 0 1px 0 1px;"></div>
						<div style="width: 20px; height: 20px; background-color: #9e9e9e; opacity: 0.5; border-radius: 5px; margin: 0 1px 0 1px;"></div>
						<div style="width: 20px; height: 20px; background-color: #9e9e9e; opacity: 0.5; border-radius: 5px; margin: 0 1px 0 1px;"></div>
						<div style="width: 20px; height: 20px; background-color: #9e9e9e; opacity: 0.5; border-radius: 5px; margin: 0 1px 0 1px;"></div>
						<div style="width: 20px; height: 20px; background-color: #9e9e9e; opacity: 0.5; border-radius: 5px; margin: 0 1px 0 1px;"></div>
					</div>
				</div>
			</div>
			<!-- 끝 -->
			<!-- 상세정보 5행 -->
			<div style="display: flex; color: gray; font-size: 11px; background-color: #E9E0E0; height: 50px;">
				<div style="display: flex; align-items: flex-end;">
					<div id="levelm4">11</div>
				</div>
				<div style="width: 25%; display: flex; align-items: center;">
					<div></div>
					<img id="champImg1" class="circle_image" src="img/Jayce.png"
						style="width: 45px; height: 45px; margin-right: 5px; border-radius: 30px;" />
					<div style="display: flex; flex-direction: column; margin-right: 5px;">
						<img id="spellDm5" src="" style="width: 20px; height: 20px;" /> <img id="spellFm5" src=""
							style="width: 20px; height: 20px;" />
					</div>
					<!-- 룬 -->
					<div style="display: flex; flex-direction: column;">
						<img id="RuneMain" src="img/pic1.png" style="width: 20px; height: 20px; border-radius: 30px;" /> <img id="RuneSub"
							src="img/pic1.png" style="width: 20px; height: 20px; border-radius: 30px;" />
					</div>
					<span id="championName" style="font-size: 12px; margin-top: 5px;">태치야치</span>
				</div>
				<!-- 티어 -->
				<div style="width: 10%; display: flex; justify-content: center; align-items: center;">Gold 1</div>
				<!-- KDA -->
				<div style="width: 10%; display: flex; justify-content: center; align-items: center; flex-direction: column;">
					<div>3.33:1</div>
					<div style="font-size: 8px;">7/6/13 (38%)</div>
				</div>
				<!-- 피해량 -->
				<div style="width: 15%; display: flex; justify-content: center; align-items: center;">
					<div
						style="width: 100px; height: 100px; display: flex; justify-content: center; align-items: center; flex-direction: column;">
						<!-- 승률 text -->
						<div style="font-size: 11px;">25,537</div>
						<!-- 승률 graph -->
						<div style="background-color: #F2F2F2; width: 80px; height: 15px;">
							<div style="background-color: #EE5A52; width: 80%; height: 15px;"></div>
						</div>
					</div>
				</div>
				<!-- 와드 -->
				<div style="width: 7%; display: flex; justify-content: center; align-items: center;">14/1</div>
				<div style="width: 7%; display: flex; justify-content: center; align-items: center;">205(5.6)</div>
				<div style="width: 26%; display: flex; justify-content: center; align-items: center;">
					<div style="display: flex; justify-content: center; align-items: center;">
						<div style="width: 20px; height: 20px; background-color: #9e9e9e; opacity: 0.5; border-radius: 5px; margin: 0 1px 0 1px;"></div>
						<div style="width: 20px; height: 20px; background-color: #9e9e9e; opacity: 0.5; border-radius: 5px; margin: 0 1px 0 1px;"></div>
						<div style="width: 20px; height: 20px; background-color: #9e9e9e; opacity: 0.5; border-radius: 5px; margin: 0 1px 0 1px;"></div>
						<div style="width: 20px; height: 20px; background-color: #9e9e9e; opacity: 0.5; border-radius: 5px; margin: 0 1px 0 1px;"></div>
						<div style="width: 20px; height: 20px; background-color: #9e9e9e; opacity: 0.5; border-radius: 5px; margin: 0 1px 0 1px;"></div>
						<div style="width: 20px; height: 20px; background-color: #9e9e9e; opacity: 0.5; border-radius: 5px; margin: 0 1px 0 1px;"></div>
						<div style="width: 20px; height: 20px; background-color: #9e9e9e; opacity: 0.5; border-radius: 5px; margin: 0 1px 0 1px;"></div>
					</div>
				</div>
			</div>
			<!-- 끝 -->
		</div>
	</div>



	<script type="text/javascript">
function doDisplay(){
	var con=document.querySelector("#matchSpecificBox");
	if(con.style.display=='none'){
		con.style.display='block';
	}else{
		con.style.display='none';
	}
}


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