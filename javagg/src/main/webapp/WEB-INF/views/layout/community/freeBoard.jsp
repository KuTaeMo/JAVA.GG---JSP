<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../common/header.jsp"%>

<style>
body {
	background-color: #EBEEF1;
}
.bg_community {
	height: 250px;
	width: 100%;
	background-size: cover;
	background-image: url("/img/bg.jpg");
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
	margin-top: 65px;
	margin-left: 30%;
	width: 40%;
	border: 1px solid gray; 
	background-color: white;
	margin-bottom: 1%;
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
	background-image: url("/img/communitySearch.png");
	background-size: cover;
	position: absolute;
	width: 25px;
	height: 27px;
	border: 0;
	right: 25px;
}
.table {
	width: 100%;
	height: 100px;
	background-color: white;
	border-bottom: 1px solid gray;
	display: flex;
	margin: 0px;
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
.write-img-btn {
	border: 0px;
}

</style>
<body>

<div class="bg_img">
	<img class="bg_community"/>
</div>

<div class="community-menu">
	<div class="community-menu-top">
		<a href="/community" class="all-text">전체</a>
		<a href="/community/humor" class="all-text">유머</a>
		<a href="/community/free" class="all-text">자유</a>
		<button class="write-img-btn" onclick="location.href='/community/writeBoard'"><img class="write-img" src="/img/write.png"/></button>
	</div>
	
	<div class="community-menu-search">
	<div class="community-menu-bottom">
		<img class="hot-new-img" src="/img/hot.png"/><a href="/community/free/hot" class="hot-new-text">인기</a>
		<img class="hot-new-img" src="/img/new.png"/><a href="/community/free" class="hot-new-text">최신</a>
	</div>
	
	<form class="form-inline" action="/action_page.php">
    	<input class="input-community" type="text" placeholder="소환사검색">
    	<button type="button" class="input-community-image" id="img_btn"></button>
  	</form>
  	</div>
</div>

<div class="community-table">
	<c:forEach var="board" items="${boards.content}">
	<div class="table">
		<div class="table-vote">
			<img src="/img/vote.png">
			<p>${board.likeCount}</p>
		</div>
		
		<div class="table-content">
			<div class="table-title">
				<p class="table-detail-title"><a href="/board/${board.id}">${board.title} [${board.replyCount}]</a></p>
			</div>	
			<div class="table-detail">
				<p class="table-detail-text">${board.communityType}</p>
				<p class="table-detail-text">|</p>
				<p class="table-detail-text">${board.createDate}</p>
				<p class="table-detail-text">|</p>
				<p class="table-detail-text">${board.user.username}</p>
			</div>
		</div>
			
	</div>
	</c:forEach>
	
	<ul class="pagination justify-content-center">
		<c:choose>
			<c:when test="${boards.first}">
				<li class="page-item disabled"><a class="page-link">이전</a></li>
			</c:when>
			<c:otherwise>
				<li class="page-item"><a class="page-link" href="?page=${boards.number - 1}">이전</a></li>
			</c:otherwise>
		</c:choose>
		<c:choose>
			<c:when test="${boards.last}">
				<li class="page-item disabled"><a class="page-link">다음</a></li>
			</c:when>
			<c:otherwise>
				<li class="page-item"><a class="page-link" href="?page=${boards.number + 1}">다음</a></li>
			</c:otherwise>
		</c:choose>
	</ul>
</div>


<%@ include file="../common/footer.jsp"%>