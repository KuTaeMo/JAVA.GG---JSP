<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body style="margin: 10% 15% 0 15%;">

	<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.9.4/Chart.min.js"
		integrity="sha512-d9xgZrVZpmmQlfonhQUvTR7lMPtO7NkZMkA0ABN3PHCbKA5nqylQ/yWlFAyY6hYgdF1Qh6nYiuADWwKB4C2WSw=="
		crossorigin="anonymous"></script>
<div id="conatiner" style="margin-left: 30%">
	<!-- 승률 박스 -->
	<div style="border: 1px solid #CDD2D2; height: 30%; display: flex; background-color: #EDEDED;">

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
	








	<script>
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

</body>
</html>