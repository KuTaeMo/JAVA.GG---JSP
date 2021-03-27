<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</head>
</head>
<body style="margin: 3% 15% 0 15%;">

	<div style="width: 70%">

		<!-- 전적 상세 -->
		<div style="border: 1px solid #bcbcbc;">
			<!-- 머리글 행 -->
			<div style="display: flex; color: gray; font-size: 10px; padding: 5px; border-bottom: 1px solid #bcbcbc;">
				<div style="width: 25%; display: flex;">
					<div id="winOrLose" style="color: blue;">승리</div>
					<div>(블루팀)</div>
				</div>
				<div style="width: 10%; display: flex; justify-content: center; align-items: center;">티어</div>
				

				<div style="width: 15%; display: flex; justify-content: center; align-items: center; margin-left: 20%;">룬</div>
				<div style="width: 10%; display: flex; justify-content: center; align-items: center; margin-left: 17%">밴</div>
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
						<img id="spellDm1" src="" style="width: 20px; height: 20px;" /> <img id="spellFm1" src="" style="width: 20px; height: 20px;" />
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
				
				
				<!-- 세부 룬 -->
				<div style="width: 26%; display: flex; justify-content: center; align-items: center; margin-left: 16%;">
					<div style="display: flex; justify-content: center; align-items: center;">
						<img id="RuneMain" src="img/pic1.png" style="width: 20px; height: 20px; border-radius: 30px; margin-left: 5%;" />
						<img id="RuneMain" src="img/pic1.png" style="width: 20px; height: 20px; border-radius: 30px; margin-left: 5%;" />
						<img id="RuneMain" src="img/pic1.png" style="width: 20px; height: 20px; border-radius: 30px; margin-left: 5%;" />
						<img id="RuneMain" src="img/pic1.png" style="width: 20px; height: 20px; border-radius: 30px; margin-left: 5%;" />
						<img id="RuneMain" src="img/pic1.png" style="width: 20px; height: 20px; border-radius: 30px; margin-left: 5%;" />
						<img id="RuneMain" src="img/pic1.png" style="width: 20px; height: 20px; border-radius: 30px; margin-left: 5%;" />
						<img id="RuneMain" src="img/pic1.png" style="width: 20px; height: 20px; border-radius: 30px; margin-left: 5%;" />
						
						<!-- 밴 -->
						<img id="spellDm1" src="" style="width: 20px; height: 20px; margin-left: 20%" />
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
						<img id="spellDm2" src="" style="width: 20px; height: 20px;" /> <img id="spellFm2" src="" style="width: 20px; height: 20px;" />
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
				
				
				<!-- 세부 룬 -->
				<div style="width: 26%; display: flex; justify-content: center; align-items: center; margin-left: 16%;">
					<div style="display: flex; justify-content: center; align-items: center;">
						<img id="RuneMain" src="img/pic1.png" style="width: 20px; height: 20px; border-radius: 30px; margin-left: 5%;" />
						<img id="RuneMain" src="img/pic1.png" style="width: 20px; height: 20px; border-radius: 30px; margin-left: 5%;" />
						<img id="RuneMain" src="img/pic1.png" style="width: 20px; height: 20px; border-radius: 30px; margin-left: 5%;" />
						<img id="RuneMain" src="img/pic1.png" style="width: 20px; height: 20px; border-radius: 30px; margin-left: 5%;" />
						<img id="RuneMain" src="img/pic1.png" style="width: 20px; height: 20px; border-radius: 30px; margin-left: 5%;" />
						<img id="RuneMain" src="img/pic1.png" style="width: 20px; height: 20px; border-radius: 30px; margin-left: 5%;" />
						<img id="RuneMain" src="img/pic1.png" style="width: 20px; height: 20px; border-radius: 30px; margin-left: 5%;" />
						
						<!-- 밴 -->
						<img id="spellDm1" src="" style="width: 20px; height: 20px; margin-left: 20%" />
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
						<img id="spellDm3" src="" style="width: 20px; height: 20px;" /> <img id="spellFm3" src="" style="width: 20px; height: 20px;" />
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
				
				
				<!-- 세부 룬 -->
				<div style="width: 26%; display: flex; justify-content: center; align-items: center; margin-left: 16%;">
					<div style="display: flex; justify-content: center; align-items: center;">
						<img id="RuneMain" src="img/pic1.png" style="width: 20px; height: 20px; border-radius: 30px; margin-left: 5%;" />
						<img id="RuneMain" src="img/pic1.png" style="width: 20px; height: 20px; border-radius: 30px; margin-left: 5%;" />
						<img id="RuneMain" src="img/pic1.png" style="width: 20px; height: 20px; border-radius: 30px; margin-left: 5%;" />
						<img id="RuneMain" src="img/pic1.png" style="width: 20px; height: 20px; border-radius: 30px; margin-left: 5%;" />
						<img id="RuneMain" src="img/pic1.png" style="width: 20px; height: 20px; border-radius: 30px; margin-left: 5%;" />
						<img id="RuneMain" src="img/pic1.png" style="width: 20px; height: 20px; border-radius: 30px; margin-left: 5%;" />
						<img id="RuneMain" src="img/pic1.png" style="width: 20px; height: 20px; border-radius: 30px; margin-left: 5%;" />
						
						<!-- 밴 -->
						<img id="spellDm1" src="" style="width: 20px; height: 20px; margin-left: 20%" />
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
						<img id="spellDm4" src="" style="width: 20px; height: 20px;" /> <img id="spellFm4" src="" style="width: 20px; height: 20px;" />
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
				
				
				<!-- 세부 룬 -->
				<div style="width: 26%; display: flex; justify-content: center; align-items: center; margin-left: 16%;">
					<div style="display: flex; justify-content: center; align-items: center;">
						<img id="RuneMain" src="img/pic1.png" style="width: 20px; height: 20px; border-radius: 30px; margin-left: 5%;" />
						<img id="RuneMain" src="img/pic1.png" style="width: 20px; height: 20px; border-radius: 30px; margin-left: 5%;" />
						<img id="RuneMain" src="img/pic1.png" style="width: 20px; height: 20px; border-radius: 30px; margin-left: 5%;" />
						<img id="RuneMain" src="img/pic1.png" style="width: 20px; height: 20px; border-radius: 30px; margin-left: 5%;" />
						<img id="RuneMain" src="img/pic1.png" style="width: 20px; height: 20px; border-radius: 30px; margin-left: 5%;" />
						<img id="RuneMain" src="img/pic1.png" style="width: 20px; height: 20px; border-radius: 30px; margin-left: 5%;" />
						<img id="RuneMain" src="img/pic1.png" style="width: 20px; height: 20px; border-radius: 30px; margin-left: 5%;" />
						<!-- 밴 -->
						<img id="spellDm1" src="" style="width: 20px; height: 20px; margin-left: 20%" />
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
						<img id="spellDm5" src="" style="width: 20px; height: 20px;" /> <img id="spellFm5" src="" style="width: 20px; height: 20px;" />
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
				
				
				<!-- 세부 룬 -->
				<div style="width: 26%; display: flex; justify-content: center; align-items: center; margin-left: 16%;">
					<div style="display: flex; justify-content: center; align-items: center;">
						<img id="RuneMain" src="img/pic1.png" style="width: 20px; height: 20px; border-radius: 30px; margin-left: 5%;" />
						<img id="RuneMain" src="img/pic1.png" style="width: 20px; height: 20px; border-radius: 30px; margin-left: 5%;" />
						<img id="RuneMain" src="img/pic1.png" style="width: 20px; height: 20px; border-radius: 30px; margin-left: 5%;" />
						<img id="RuneMain" src="img/pic1.png" style="width: 20px; height: 20px; border-radius: 30px; margin-left: 5%;" />
						<img id="RuneMain" src="img/pic1.png" style="width: 20px; height: 20px; border-radius: 30px; margin-left: 5%;" />
						<img id="RuneMain" src="img/pic1.png" style="width: 20px; height: 20px; border-radius: 30px; margin-left: 5%;" />
						<img id="RuneMain" src="img/pic1.png" style="width: 20px; height: 20px; border-radius: 30px; margin-left: 5%;" />
						<!-- 밴 -->
						<img id="spellDm1" src="" style="width: 20px; height: 20px; margin-left: 20%" />
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

				<div style="width: 7%; display: flex; justify-content: center; align-items: center; margin-left: 25%;">룬</div>
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
						<img id="spellDm1" src="" style="width: 20px; height: 20px;" /> <img id="spellFm1" src="" style="width: 20px; height: 20px;" />
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
				
				
				<!-- 세부 룬 -->
				<div style="width: 26%; display: flex; justify-content: center; align-items: center; margin-left: 16%;">
					<div style="display: flex; justify-content: center; align-items: center;">
						<img id="RuneMain" src="img/pic1.png" style="width: 20px; height: 20px; border-radius: 30px; margin-left: 5%;" />
						<img id="RuneMain" src="img/pic1.png" style="width: 20px; height: 20px; border-radius: 30px; margin-left: 5%;" />
						<img id="RuneMain" src="img/pic1.png" style="width: 20px; height: 20px; border-radius: 30px; margin-left: 5%;" />
						<img id="RuneMain" src="img/pic1.png" style="width: 20px; height: 20px; border-radius: 30px; margin-left: 5%;" />
						<img id="RuneMain" src="img/pic1.png" style="width: 20px; height: 20px; border-radius: 30px; margin-left: 5%;" />
						<img id="RuneMain" src="img/pic1.png" style="width: 20px; height: 20px; border-radius: 30px; margin-left: 5%;" />
						<img id="RuneMain" src="img/pic1.png" style="width: 20px; height: 20px; border-radius: 30px; margin-left: 5%;" />
						
						<!-- 밴 -->
						<img id="spellDm1" src="" style="width: 20px; height: 20px; margin-left: 20%" />
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
						<img id="spellDm2" src="" style="width: 20px; height: 20px;" /> <img id="spellFm2" src="" style="width: 20px; height: 20px;" />
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
				
				<!-- 세부 룬 -->
				<div style="width: 26%; display: flex; justify-content: center; align-items: center; margin-left: 16%;">
					<div style="display: flex; justify-content: center; align-items: center;">
						<img id="RuneMain" src="img/pic1.png" style="width: 20px; height: 20px; border-radius: 30px; margin-left: 5%;" />
						<img id="RuneMain" src="img/pic1.png" style="width: 20px; height: 20px; border-radius: 30px; margin-left: 5%;" />
						<img id="RuneMain" src="img/pic1.png" style="width: 20px; height: 20px; border-radius: 30px; margin-left: 5%;" />
						<img id="RuneMain" src="img/pic1.png" style="width: 20px; height: 20px; border-radius: 30px; margin-left: 5%;" />
						<img id="RuneMain" src="img/pic1.png" style="width: 20px; height: 20px; border-radius: 30px; margin-left: 5%;" />
						<img id="RuneMain" src="img/pic1.png" style="width: 20px; height: 20px; border-radius: 30px; margin-left: 5%;" />
						<img id="RuneMain" src="img/pic1.png" style="width: 20px; height: 20px; border-radius: 30px; margin-left: 5%;" />
						
						<!-- 밴 -->
						<img id="spellDm1" src="" style="width: 20px; height: 20px; margin-left: 20%" />
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
						<img id="spellDm3" src="" style="width: 20px; height: 20px;" /> <img id="spellFm3" src="" style="width: 20px; height: 20px;" />
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
				
				
				<!-- 세부 룬 -->
				<div style="width: 26%; display: flex; justify-content: center; align-items: center; margin-left: 16%;">
					<div style="display: flex; justify-content: center; align-items: center;">
						<img id="RuneMain" src="img/pic1.png" style="width: 20px; height: 20px; border-radius: 30px; margin-left: 5%;" />
						<img id="RuneMain" src="img/pic1.png" style="width: 20px; height: 20px; border-radius: 30px; margin-left: 5%;" />
						<img id="RuneMain" src="img/pic1.png" style="width: 20px; height: 20px; border-radius: 30px; margin-left: 5%;" />
						<img id="RuneMain" src="img/pic1.png" style="width: 20px; height: 20px; border-radius: 30px; margin-left: 5%;" />
						<img id="RuneMain" src="img/pic1.png" style="width: 20px; height: 20px; border-radius: 30px; margin-left: 5%;" />
						<img id="RuneMain" src="img/pic1.png" style="width: 20px; height: 20px; border-radius: 30px; margin-left: 5%;" />
						<img id="RuneMain" src="img/pic1.png" style="width: 20px; height: 20px; border-radius: 30px; margin-left: 5%;" />
						
						<!-- 밴 -->
						<img id="spellDm1" src="" style="width: 20px; height: 20px; margin-left: 20%" />
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
						<img id="spellDm4" src="" style="width: 20px; height: 20px;" /> <img id="spellFm4" src="" style="width: 20px; height: 20px;" />
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
				
				
				<!-- 세부 룬 -->
				<div style="width: 26%; display: flex; justify-content: center; align-items: center; margin-left: 16%;">
					<div style="display: flex; justify-content: center; align-items: center;">
						<img id="RuneMain" src="img/pic1.png" style="width: 20px; height: 20px; border-radius: 30px; margin-left: 5%;" />
						<img id="RuneMain" src="img/pic1.png" style="width: 20px; height: 20px; border-radius: 30px; margin-left: 5%;" />
						<img id="RuneMain" src="img/pic1.png" style="width: 20px; height: 20px; border-radius: 30px; margin-left: 5%;" />
						<img id="RuneMain" src="img/pic1.png" style="width: 20px; height: 20px; border-radius: 30px; margin-left: 5%;" />
						<img id="RuneMain" src="img/pic1.png" style="width: 20px; height: 20px; border-radius: 30px; margin-left: 5%;" />
						<img id="RuneMain" src="img/pic1.png" style="width: 20px; height: 20px; border-radius: 30px; margin-left: 5%;" />
						<img id="RuneMain" src="img/pic1.png" style="width: 20px; height: 20px; border-radius: 30px; margin-left: 5%;" />
						
						<!-- 밴 -->
						<img id="spellDm1" src="" style="width: 20px; height: 20px; margin-left: 20%" />
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
						<img id="spellDm5" src="" style="width: 20px; height: 20px;" /> <img id="spellFm5" src="" style="width: 20px; height: 20px;" />
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
				
				<!-- 세부 룬 -->
				<div style="width: 26%; display: flex; justify-content: center; align-items: center; margin-left: 16%;">
					<div style="display: flex; justify-content: center; align-items: center;">
						<img id="RuneMain" src="img/pic1.png" style="width: 20px; height: 20px; border-radius: 30px; margin-left: 5%;" />
						<img id="RuneMain" src="img/pic1.png" style="width: 20px; height: 20px; border-radius: 30px; margin-left: 5%;" />
						<img id="RuneMain" src="img/pic1.png" style="width: 20px; height: 20px; border-radius: 30px; margin-left: 5%;" />
						<img id="RuneMain" src="img/pic1.png" style="width: 20px; height: 20px; border-radius: 30px; margin-left: 5%;" />
						<img id="RuneMain" src="img/pic1.png" style="width: 20px; height: 20px; border-radius: 30px; margin-left: 5%;" />
						<img id="RuneMain" src="img/pic1.png" style="width: 20px; height: 20px; border-radius: 30px; margin-left: 5%;" />
						<img id="RuneMain" src="img/pic1.png" style="width: 20px; height: 20px; border-radius: 30px; margin-left: 5%;" />
						
						<!-- 밴 -->
						<img id="spellDm1" src="" style="width: 20px; height: 20px; margin-left: 20%" />
					</div>
				</div>
			</div>
			<!-- 끝 -->
		</div>
		
		
		
		
		
	</div>

	<script>
$.ajax({
	type:"GET",
	url: "http://ddragon.leagueoflegends.com/cdn/11.6.1/data/ko_KR/summoner.json",
	dataType:"json"
	}).done((res)=>{
		console.log(res);
		document.querySelector("#spellDm1").src="http://ddragon.leagueoflegends.com/cdn/11.6.1/img/spell/SummonerFlash.png"
		document.querySelector("#spellFm1").src="http://ddragon.leagueoflegends.com/cdn/11.6.1/img/spell/SummonerHeal.png"
		document.querySelector("#spellDm2").src="http://ddragon.leagueoflegends.com/cdn/11.6.1/img/spell/SummonerFlash.png"
		document.querySelector("#spellFm2").src="http://ddragon.leagueoflegends.com/cdn/11.6.1/img/spell/SummonerHeal.png"
		document.querySelector("#spellDm3").src="http://ddragon.leagueoflegends.com/cdn/11.6.1/img/spell/SummonerFlash.png"
		document.querySelector("#spellFm3").src="http://ddragon.leagueoflegends.com/cdn/11.6.1/img/spell/SummonerHeal.png"
		document.querySelector("#spellDm4").src="http://ddragon.leagueoflegends.com/cdn/11.6.1/img/spell/SummonerFlash.png"
		document.querySelector("#spellFm4").src="http://ddragon.leagueoflegends.com/cdn/11.6.1/img/spell/SummonerHeal.png"
		document.querySelector("#spellDm5").src="http://ddragon.leagueoflegends.com/cdn/11.6.1/img/spell/SummonerFlash.png"
		document.querySelector("#spellFm5").src="http://ddragon.leagueoflegends.com/cdn/11.6.1/img/spell/SummonerHeal.png"	
			
	});
</script>

</body>
</html>