<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../common/header.jsp"%>

<link rel="stylesheet" type="text/css" href="/css/style.css">

<body style="background-color: #5383E8">

	<!-- 컨테이너 -->
	<div id="home_container" align="center">

		<!-- 로고 -->                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      
		<div id="home_logo">
			<img style="height: 200px" src="img/mainpic.png" /> <br />
		</div>

		<br />

		<!-- 검색창 -->
		<form action="/search" method="post">
			<div id="home_input">
				<input type="text" name="gamername"
					placeholder="소환사명, 소환사명,..."
					style="width: 40%; height: 40px; border-radius: 5px; padding: 5px 0 5px 15px;">
				<button type="submit" id="home_search_button"><b>.GG</b></button>
			</div>
		</form>
		<br /> <br /> <br />

		<!-- 인기글 -->
		<div id="home_hot_post_container">
			<div align="left"
				style="height: 30px; margin: 5px; display: flex; justify-content: left; align-items: center; font-size: 10px; font-style: bold; margin-left: 13px;">
				<b>OP.GGTalk 인기글</b></div>

			<!-- 인기글 1층 -->
			<div style="display: flex;">
				<!-- 인기글 블럭 하나 -->
				<div id="post_box"
					style="display: flex; border-top: 0.5px solid #F0F0F0; border-right: 0.5px solid #F0F0F0; border-bottom: 0.5px solid #F0F0F0; width: 50%;">

					<div id="post_rank"
						style="width: 50px; display: flex; justify-content: center; align-items: center; color: #1AB80C;">1</div>
					<div id="post_pic">
						<img src="img/pic1.png" style="width: 40px;" />
					</div>

					<div style="margin-left: 10px;">
						<div style="display: flex; margin-bottom: 3px;">
							<div id="post_title">한지민</div>
							<div id="post_comment_count">[55]</div>
						</div>
						<div style="display: flex; margin-top: 3px;">
							<div id="post_timestamp">8시간 전</div>
							<div id="username">한지민 fan</div>
						</div>
					</div>
				</div>
				<!-- 인기글 블럭 끝 -->
				<div id="post_box"
					style="display: flex; border-top: 0.5px solid #F0F0F0; border-bottom: 0.5px solid #F0F0F0; width: 50%;">

					<div id="post_rank"
						style="width: 50px; display: flex; justify-content: center; align-items: center; color: #1AB80C;">2</div>
					<div id="post_pic">
						<img src="img/pic1.png" style="width: 40px;" />
					</div>

					<div style="margin-left: 10px;">
						<div style="display: flex; margin-bottom: 3px;">
							<div id="post_title">한지민</div>
							<div id="post_comment_count">[55]</div>
						</div>
						<div style="display: flex; margin-top: 3px;">
							<div id="post_timestamp">8시간 전</div>
							<div id="username">한지민 fan</div>
						</div>
					</div>
				</div>
			</div>
			<!-- 인기글 1층 끝 -->
			<!-- 2층 -->
			<div style="display: flex;">
				<!-- 인기글 블럭 하나 -->
				<div id="post_box"
					style="display: flex; border-right: 0.5px solid #F0F0F0; border-bottom: 0.5px solid #F0F0F0; width: 50%;">

					<div id="post_rank"
						style="width: 50px; display: flex; justify-content: center; align-items: center; color: #1AB80C;">3</div>
					<div id="post_pic">
						<img src="img/pic1.png" style="width: 40px;" />
					</div>

					<div style="margin-left: 10px;">
						<div style="display: flex; margin-bottom: 3px;">
							<div id="post_title">한지민</div>
							<div id="post_comment_count">[55]</div>
						</div>
						<div style="display: flex; margin-top: 3px;">
							<div id="post_timestamp">8시간 전</div>
							<div id="username">한지민 fan</div>
						</div>
					</div>
				</div>
				<!-- 인기글 블럭 끝 -->
				<div id="post_box"
					style="display: flex; border-bottom: 0.5px solid #F0F0F0; width: 50%;">

					<div id="post_rank"
						style="width: 50px; display: flex; justify-content: center; align-items: center; color: #1AB80C;">4</div>
					<div id="post_pic">
						<img src="img/pic1.png" style="width: 40px;" />
					</div>

					<div style="margin-left: 10px;">
						<div style="display: flex; margin-bottom: 3px;">
							<div id="post_title">한지민</div>
							<div id="post_comment_count">[55]</div>
						</div>
						<div style="display: flex; margin-top: 3px;">
							<div id="post_timestamp">8시간 전</div>
							<div id="username">한지민 fan</div>
						</div>
					</div>
				</div>
			</div>
			<!-- 2층 끝 -->
			<!-- 3층 -->
			<div style="display: flex;">
				<!-- 인기글 블럭 하나 -->
				<div id="post_box"
					style="display: flex; border-right: 0.5px solid #F0F0F0; border-bottom: 0.5px solid #F0F0F0; width: 50%;">

					<div id="post_rank"
						style="width: 50px; display: flex; justify-content: center; align-items: center; color: #1AB80C;">5</div>
					<div id="post_pic">
						<img src="img/pic1.png" style="width: 40px;" />
					</div>

					<div style="margin-left: 10px;">
						<div style="display: flex; margin-bottom: 3px;">
							<div id="post_title">한지민</div>
							<div id="post_comment_count">[55]</div>
						</div>
						<div style="display: flex; margin-top: 3px;">
							<div id="post_timestamp">8시간 전</div>
							<div id="username">한지민 fan</div>
						</div>
					</div>
				</div>
				<!-- 인기글 블럭 끝 -->
				<div id="post_box"
					style="display: flex; border-bottom: 0.5px solid #F0F0F0; width: 50%;">

					<div id="post_rank"
						style="width: 50px; display: flex; justify-content: center; align-items: center; color: #1AB80C;">6</div>
					<div id="post_pic">
						<img src="img/pic1.png" style="width: 40px;" />
					</div>

					<div style="margin-left: 10px;">
						<div style="display: flex; margin-bottom: 3px;">
							<div id="post_title">한지민</div>
							<div id="post_comment_count">[55]</div>
						</div>
						<div style="display: flex; margin-top: 3px;">
							<div id="post_timestamp">8시간 전</div>
							<div id="username">한지민 fan</div>
						</div>
					</div>
				</div>
			</div>
			<!-- 3층 끝 -->
			<!-- 4층 -->
			<div style="display: flex;">
				<!-- 인기글 블럭 하나 -->
				<div id="post_box"
					style="display: flex; border-right: 0.5px solid #F0F0F0; border-bottom: 0.5px solid #F0F0F0; width: 50%;">

					<div id="post_rank"
						style="width: 50px; display: flex; justify-content: center; align-items: center; color: #1AB80C;">7</div>
					<div id="post_pic">
						<img src="img/pic1.png" style="width: 40px;" />
					</div>

					<div style="margin-left: 10px;">
						<div style="display: flex; margin-bottom: 3px;">
							<div id="post_title">한지민</div>
							<div id="post_comment_count">[55]</div>
						</div>
						<div style="display: flex; margin-top: 3px;">
							<div id="post_timestamp">8시간 전</div>
							<div id="username">한지민 fan</div>
						</div>
					</div>
				</div>
				<!-- 인기글 블럭 끝 -->
				<div id="post_box"
					style="display: flex; border-bottom: 0.5px solid #F0F0F0; width: 50%;">

					<div id="post_rank"
						style="width: 50px; display: flex; justify-content: center; align-items: center; color: #1AB80C;">8</div>
					<div id="post_pic">
						<img src="img/pic1.png" style="width: 40px;" />
					</div>

					<div style="margin-left: 10px;">
						<div style="display: flex; margin-bottom: 3px;">
							<div id="post_title">한지민</div>
							<div id="post_comment_count">[55]</div>
						</div>
						<div style="display: flex; margin-top: 3px;">
							<div id="post_timestamp">8시간 전</div>
							<div id="username">한지민 fan</div>
						</div>
					</div>
				</div>
			</div>
			<!-- 4층 끝 -->
			<!-- 5층 -->
			<div style="display: flex;">
				<!-- 인기글 블럭 하나 -->
				<div id="post_box"
					style="display: flex; border-right: 0.5px solid #F0F0F0; border-bottom: 0.5px solid #F0F0F0; width: 50%;">

					<div id="post_rank"
						style="width: 50px; display: flex; justify-content: center; align-items: center; color: #1AB80C;">9</div>
					<div id="post_pic">
						<img src="img/pic1.png" style="width: 40px;" />
					</div>

					<div style="margin-left: 10px;">
						<div style="display: flex; margin-bottom: 3px;">
							<div id="post_title">한지민</div>
							<div id="post_comment_count">[55]</div>
						</div>
						<div style="display: flex; margin-top: 3px;">
							<div id="post_timestamp">8시간 전</div>
							<div id="username">한지민 fan</div>
						</div>
					</div>
				</div>
				<!-- 인기글 블럭 끝 -->
				<div id="post_box"
					style="display: flex; border-bottom: 0.5px solid #F0F0F0; width: 50%;">

					<div id="post_rank"
						style="width: 50px; display: flex; justify-content: center; align-items: center; color: #1AB80C;">10</div>
					<div id="post_pic">
						<img src="img/pic1.png" style="width: 40px;" />
					</div>

					<div style="margin-left: 10px;">
						<div style="display: flex; margin-bottom: 3px;">
							<div id="post_title">한지민</div>
							<div id="post_comment_count">[55]</div>
						</div>
						<div style="display: flex; margin-top: 3px;">
							<div id="post_timestamp">8시간 전</div>
							<div id="username">한지민 fan</div>
						</div>
					</div>
				</div>
			</div>
			<!-- 5층 끝 -->
		</div>
	</div>
<%@ include file="../common/footer.jsp"%>
