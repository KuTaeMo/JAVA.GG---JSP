<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<link rel="stylesheet" href="../css/style.css">
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body style="background-color: #EAEAEA; margin: 30px 400px 0 400px;">

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
	<div align="center">
		<div align="justify" style="border: 5px solid #BDBBBB; width: 500px; height: 170px; background-color: white;">
			<div align="center" style="background-color: #BDBBBB; color: white; font-size: 20px; padding: 3px; width: 20px;">
				<b>1</b>
			</div>
			<div style="display: flex;">
				<!-- 사진, 정보 -->
				<div style="display: flex;">
					<div>
						<img src="img/profileIcon.jpg" style="width: 85px; margin: 20px;" />
					</div>
					<div style="position: absolute; top: 181px; left: 715px;">
						<img src="img/challenger.png" style="width: 100px;" />
					</div>
					<div style="margin-top: 15px;">
						<div id="gamername" style="font-size: 20px; color: black;">
							<b>어리고싶다</b>
						</div>
						<div id="rank" style="display: flex; font-size: 12px; margin: 5px 0 5px 20px; display: flex; align-items: center;">
							<img src="img/challenger_rank.png" style="height: 30px;" /> Challenger
							<div id="rank1_point">
								<b>1,529 LP</b>
							</div>
						</div>
						<div id="rank_stat" style="display: flex;">
							<div style="display: flex; width: 130px; border-radius: 10px; margin-right: 10px;">
								<div id="win_bar" style="background-color: #3D95E5; width: 62%; color: white; border-radius:">134</div>
								<div align="right" id="lose_bar" style="background-color: #EE5A52; width: 38%; color: white;">83</div>
							</div>

							<div>62%</div>
						</div>

					</div>
				</div>
				<!-- 모스트 정보 -->
				<div style="margin-left: 10px;">
					<!-- 모스트1 -->
					<div style="display: flex; align-items: center; margin-bottom: 10px;">
						<!-- 챔피언 사진 -->
						<img class="circle_image" src="img/Jayce.png"
							style="width: 30px; height: 30px; margin-right: 5px; border-radius: 15px;" />
						<!-- 승률 -->
						<div style="font-size: 12px; color: red;">64%</div>
						<!-- 승패, 평점 -->
						<div style="font-size: 12px;">(29승 16패) 1.96:1 평점</div>
					</div>

					<!-- 모스트2 -->
					<div style="display: flex; align-items: center; margin-bottom: 10px;">
						<!-- 챔피언 사진 -->
						<img class="circle_image" src="img/Gnar.png"
							style="width: 30px; height: 30px; margin-right: 5px; border-radius: 15px;" />
						<!-- 승률 -->
						<div style="font-size: 12px; color: red;">64%</div>
						<!-- 승패, 평점 -->
						<div style="font-size: 12px;">(29승 16패) 1.96:1 평점</div>
					</div>

					<!-- 모스트3 -->
					<div style="display: flex; align-items: center;">
						<!-- 챔피언 사진 -->
						<img class="circle_image" src="img/Camille.png"
							style="width: 30px; height: 30px; margin-right: 5px; border-radius: 15px;" />
						<!-- 승률 -->
						<div style="font-size: 12px; color: red;">64%</div>
						<!-- 승패, 평점 -->
						<div style="font-size: 12px;">(29승 16패) 1.96:1 평점</div>
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
				<img class="circle_image" src="img/Camille.png"
					style="width: 30px; height: 30px; margin-right: 5px; border-radius: 15px;" />
				<div>T1 Cuzz</div>
				<div id="rank" style="display: flex; font-size: 12px; margin: 5px 0 5px 20px; display: flex; align-items: center;">
					<img src="img/challenger_rank.png" style="height: 30px;" /> Challenger
					<div id="rank1_point" style="margin: 0 5px 0 5px;">
						<b>1,494 LP</b>
					</div>
					Lv.234
				</div>
				<div id="rank_stat" style="display: flex; justify-content: center;">
					<div style="display: flex; width: 130px; border-radius: 10px; margin-right: 10px;">
						<div align="left" id="win_bar" style="background-color: #3D95E5; width: 62%; color: white; border-radius:">134</div>
						<div align="right" id="lose_bar" style="background-color: #EE5A52; width: 38%; color: white;">83</div>
					</div>

					<div>62%</div>
				</div>
			</div>
		</div>

		<!-- 3 -->
		<div align="justify" style="border: 5px solid #BDBBBB; width: 250px; height: 170px; background-color: white;">
			<div align="center" style="background-color: #BDBBBB; color: white; font-size: 20px; padding: 3px; width: 20px;">
				<b>3</b>
			</div>
			<div align="center">
				<img class="circle_image" src="img/Camille.png"
					style="width: 30px; height: 30px; margin-right: 5px; border-radius: 15px;" />
				<div>T1 Cuzz</div>
				<div id="rank" style="display: flex; font-size: 12px; margin: 5px 0 5px 20px; display: flex; align-items: center;">
					<img src="img/challenger_rank.png" style="height: 30px;" /> Challenger
					<div id="rank1_point" style="margin: 0 5px 0 5px;">
						<b>1,494 LP</b>
					</div>
					Lv.234
				</div>
				<div id="rank_stat" style="display: flex; justify-content: center;">
					<div style="display: flex; width: 130px; border-radius: 10px; margin-right: 10px;">
						<div align="left" id="win_bar" style="background-color: #3D95E5; width: 62%; color: white; border-radius:">134</div>
						<div align="right" id="lose_bar" style="background-color: #EE5A52; width: 38%; color: white;">83</div>
					</div>

					<div>62%</div>
				</div>
			</div>
		</div>

		<!-- 4 -->
		<div align="justify" style="border: 5px solid #BDBBBB; width: 250px; height: 170px; background-color: white;">
			<div align="center" style="background-color: #BDBBBB; color: white; font-size: 20px; padding: 3px; width: 20px;">
				<b>4</b>
			</div>
			<div align="center">
				<img class="circle_image" src="img/Camille.png"
					style="width: 30px; height: 30px; margin-right: 5px; border-radius: 15px;" />
				<div>T1 Cuzz</div>
				<div id="rank" style="display: flex; font-size: 12px; margin: 5px 0 5px 20px; display: flex; align-items: center;">
					<img src="img/challenger_rank.png" style="height: 30px;" /> Challenger
					<div id="rank1_point" style="margin: 0 5px 0 5px;">
						<b>1,494 LP</b>
					</div>
					Lv.234
				</div>
				<div id="rank_stat" style="display: flex; justify-content: center;">
					<div style="display: flex; width: 130px; border-radius: 10px; margin-right: 10px;">
						<div align="left" id="win_bar" style="background-color: #3D95E5; width: 62%; color: white; border-radius:">134</div>
						<div align="right" id="lose_bar" style="background-color: #EE5A52; width: 38%; color: white;">83</div>
					</div>

					<div>62%</div>
				</div>
			</div>
		</div>

		<!-- 5 -->
		<div align="justify" style="border: 5px solid #BDBBBB; width: 250px; height: 170px; background-color: white;">
			<div align="center" style="background-color: #BDBBBB; color: white; font-size: 20px; padding: 3px; width: 20px;">
				<b>5</b>
			</div>
			<div align="center">
				<img class="circle_image" src="img/Camille.png"
					style="width: 30px; height: 30px; margin-right: 5px; border-radius: 15px;" />
				<div>T1 Cuzz</div>
				<div id="rank" style="display: flex; font-size: 12px; margin: 5px 0 5px 20px; display: flex; align-items: center;">
					<img src="img/challenger_rank.png" style="height: 30px;" /> Challenger
					<div id="rank1_point" style="margin: 0 5px 0 5px;">
						<b>1,494 LP</b>
					</div>
					Lv.234
				</div>
				<div id="rank_stat" style="display: flex; justify-content: center;">
					<div style="display: flex; width: 130px; border-radius: 10px; margin-right: 10px;">
						<div align="left" id="win_bar" style="background-color: #3D95E5; width: 62%; color: white; border-radius:">134</div>
						<div align="right" id="lose_bar" style="background-color: #EE5A52; width: 38%; color: white;">83</div>
					</div>

					<div>62%</div>
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
		
		<div style="display: flex; background-color: #EAEAEA; height: 50px;">
			<div align="center" style="width: 10%; display: flex; align-items: center;">6</div>
			<div style="width: 30%; display: flex; align-items: center;">
				<img src="img/challenger_rank.png" style="height: 30px;" /> 보고싶다 오로라
			</div>
			<div style="width: 10%; display: flex; align-items: center;">Challenger</div>
			<div style="width: 13%; display: flex; align-items: center;">1,372 LP</div>
			<div style="width: 13%; display: flex; align-items: center;">225</div>
			<div style="width: 24%; display: flex; align-items: center;">
				<div style="display: flex; width: 130px; border-radius: 10px; margin-right: 10px;">
					<div align="left" id="win_bar" style="background-color: #3D95E5; width: 62%; color: white; border-radius:">134</div>
					<div align="right" id="lose_bar" style="background-color: #EE5A52; width: 38%; color: white;">83</div>
				</div>
				<div>62%</div>
			</div>
		</div>
	</div>
	<br />


</body>
</html>