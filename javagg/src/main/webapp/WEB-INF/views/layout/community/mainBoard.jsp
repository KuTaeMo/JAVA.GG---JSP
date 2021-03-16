<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../common/header.jsp"%>

<style>
.bg_community {
	height: 250px;
	width: 100%;
	background-size: cover;
	background-image: url("img/bg.jpg");
}

.community-menu {
	position: absolute;
	top: 280px;
	border: 1px solid gray;
	background-color: white;
	width: 40%;
	height: 90px;
	right: 30%;
}

.community-table {
	position: absolute;
	top: 390px;
	width: 40%;
	height: 600px;
	border: 1px solid gray; 
	right: 30%;
	background-color: white;
}

.community-menu-top {
	display: flex;
	justify-content: space-between;
	margin-left: 20px;
	margin-right: 20px;
	margin-top: 10px;
}

.write-img {
	width: 30px;
	height: 30px;
}

.all-text {
	font-size: 20px;
	color: black;
}

.community-menu-search {
	margin-top: 10px;
	display: flex;
	justify-content: space-between;
}

.hot-new-img {
	width: 30px;
	height: 30px;
	margin-left: 20px;
	margin-bottom: 7px;
}
.hot-new-text {
	font-size: 20px;
	color: black;
}
.input-community {
	margin-right: 20px;
}
.input-community-image {
	background-image: url("img/communitySearch.png");
	background-size: cover;
	position: absolute;
	width: 25px;
	height: 27px;
	border: 0;
	right: 25px;
}
.table {
	width: 40%;
	height: 100px;
	background-color: white;
	border-bottom: 1px solid gray;
	display: flex;
}
.table-vote {
	background-color: white;
	width: 60px;
	height: 100%;
	text-align: center;
	padding-top: 15px;
}
.table-title {
	margin-left: 20px;
}
.table-detail-title {
	margin-top: 15px;
}
.table-detail {
	display: flex;
	margin-left: 10px;
}
.table-detail-text {
	margin-left: 10px;
	margin-bottom: 10px;
}
</style>
<body>

<div class="bg_img">
	<img class="bg_community"/>
</div>

<div class="community-menu">
	<div class="community-menu-top">
		<a href="#" class="all-text">전체</a>
		<img class="write-img" src="img/write.png"/>
	</div>
	
	<div class="community-menu-search">
	<div class="community-menu-bottom">
		<img class="hot-new-img" src="img/hot.png"/><a href="#" class="hot-new-text">인기</a>
		<img class="hot-new-img" src="img/new.png"/><a href="#" class="hot-new-text">최신</a>
	</div>
	
	<form class="form-inline" action="/action_page.php">
    	<input class="input-community" type="text" placeholder="소환사검색">
    	<button type="button" class="input-community-image" id="img_btn"></button>
  	</form>
  	</div>
</div>

<div class="community-table">
	<div class="table">
		<div class="table-vote">
			<img src="img/vote.png">
			<p>0</p>
		</div>
		
		<div class="table-content">
			<div class="table-title">
				<p class="table-detail-title">제목</p>
			</div>	
			<div class="table-detail">
				<p class="table-detail-text">유머</p>
				<p class="table-detail-text">|</p>
				<p class="table-detail-text">시간</p>
				<p class="table-detail-text">|</p>
				<p class="table-detail-text">유저네임</p>
			</div>
		</div>
	</div>
</div>


<%@ include file="../common/footer.jsp"%>