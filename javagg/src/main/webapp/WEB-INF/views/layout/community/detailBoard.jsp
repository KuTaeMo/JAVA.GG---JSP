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

.detail-table {
	position: absolute;
	top: 270px;
	width: 40%;
	height: 600px;
	right: 30%;
	background-color: white;
	border: 1px solid gray;
	border-radius: 10px;
}

.detail-title {
	
}

.detail-title-text {
	font-size: 30px;
	color: black;
}

.detail-info {
	display: flex;
	justify-content: space-between;
}

.detail-title-info {
	display: flex;
}

.detail-title-info-count {
	display: flex;
}

.detail-title-info-text {
	margin-left: 20px;
}

.detail-title-info-count-text {
	margin-right: 20px;
}

.detail-title-text {
	margin-top: 10px;
	margin-left: 20px;
}
.detail-top {
	border-bottom: 1px solid gray;
}
.article-vote-like-img {
	background-size: cover;
	width: 20px;
	height: 20px;
	border: 0px;
}

.article-vote-dislike-img {
	background-size: cover;
	width: 20px;
	height: 20px;
	border-color: white;
}
.article-vote-btn {
	width: 70px;
	height: 40px;
	background-color: white;
	border-radius: 10px;
	border: 1px solid gray;
	margin-right: 5px;
	margin-left: 5px;
}
.vote-btn {
	position: relative;
	top: 400px;
	display: flex;
	justify-content: center;
}

.reply {
	position:absolute;
	right: 30%;
	width: 40%;
	top: 900px;
	height: 300px;
	border: 1px solid gray;
	border-radius: 10px;
}

.reply-count {
	display: flex;
	margin-left: 10px;
	margin-top: 20px;
	height: 20px;
	justify-content: flex-start;
	align-items: center;
}
.reply-count-text {
	margin-left: 10px;
}
.reply-input {
	width: 100%;
	height: 300px;
	
}
.reply-btn {
	margin-top: 10px;
	margin-left: 670px;
	border: 1px solid gray;
	background-color: white;
	border-radius: 10px;
}



ul{list-style:none;}

.tabmenu{ 
  max-width:100%;
  height: 500px;
  margin: 0 auto; 
  position:relative; 
}
.tabmenu ul li{
  display:  inline-block;
  width:33.33%; 
  float:left;  
  text-align:center; 
  background :#f9f9f9;
}
.tabmenu ul li a{
  display:block;
  line-height:40px;
  height:40px;
  text-decoration:none; 
  color: #000;
}
.tabCon{
  display:none; 
  text-align:left; 
  padding: 20px;
  position:absolute; 
  left:0; top:40px; 
  box-sizing: border-box; 
  border : 5px solid #f9f9f9;
}
.btnCon:target  {
  background : #ccc;
}
.btnCon:target .tabCon{
  display: block;
}





* {padding: 0; margin: 0;}
a {text-decoration: none; color: #666;}
li {list-style: none;}

.popular-reply {
	width: 100%;
	height: 100%;
	display: flex;
	
	
}

.popular-reply-vote {
	display: flex;
	justify-content: center;
	flex-direction: column;
	width: 50px;
	height: 115px;
	background-color: blue;
	
}
.popular-reply-vote-btn {
	width: 20px;
	height: 20px;
	border: 0px;
}
.popular-reply-vote-btn-img {
	background-image:url("img/vote.png");
	background-size: cover;
	width: 20px;
	height: 20px;
}
.popular-reply-dislike-btn {
	width: 20px;
	height: 20px;
	border: 0px;
}
.popular-reply-dislike-btn-img {
	background-image:url("img/vote.png");
	background-size: cover;
	width: 20px;
	height: 20px;
}
.popular-reply-count {
	margin-left: 5px;
	height: 10px;
}
.popular-reply-contet-top {
	display: flex;
}
.popular-reply-contet {
	display: flex;
}
 .popular-reply-contet-top-text {
 	display: flex;
 	margin-left: 10px;
 }
</style>

<body>

	<div class="bg_img">
		<img class="bg_community" />
	</div>

	<div class="detail-table">

		<div class="detail-top">
			<div class="detail-title">
				<p class="detail-title-text">제목이 들어갈 자리</p>
			</div>

			<div class="detail-info">
				<div class="detail-title-info">
					<p class="detail-title-info-text">10분전</p>
					<p class="detail-title-info-text">|</p>
					<p class="detail-title-info-text">유저네임</p>
				</div>

				<div class="detail-title-info-count">
					<p class="detail-title-info-count-text">조회 : 0</p>
					<p class="detail-title-info-count-text">|</p>
					<p class="detail-title-info-count-text">댓글 : 0</p>
					<p class="detail-title-info-count-text">|</p>
					<p class="detail-title-info-count-text">추천 : 0</p>
				</div>
			</div>

		</div>
		
		<div class="vote-btn">
		<button type="submit" class="article-vote-btn">
			<img border="0" src="/img/vote.png" class="article-vote-like-img"/>
			<span class="article-vote-like-count">0</span>
		</button>
		
		<button type="submit" class="article-vote-btn">
			<img border="0" src="img/dislike.png" class="article-vote-dislike-img"/>
			<span class="article-vote-dislike-count">0</span>
		</button>
		</div>
	</div>
	
	<div class="reply">
		
		<div class="reply-count">
			<p class="reply-count-text" style="font-size: 20px;">댓글 </p>
			<p class="reply-count-text">총 4 개</p>
		</div>
		
		<div class="reply-input">
			<form action="/blog/board?cmd=save" method="POST">

			<div class="form-group">
				<textarea class="form-control" id="summernote" rows="5" id="content" name="content"></textarea>
				<button type="submit" class="reply-btn">댓글 등록</button>
			</div>

		</form>
		</div>
		
		<div class="tabmenu">
  <ul>
    <li id="tab1" class="btnCon"><a class="btn first" href="#tab1">인기순</a>
      <div class="popular-reply tabCon">
		<div class="popular-reply-vote">
			<button type="button" class="popular-reply-vote-btn"><img src="img/vote.png" class = "popular-reply-vote-btn-img"></button>
			<p class="popular-reply-count">0</p>
			<button type="button" class="popular-reply-dislike-btn"><img src="img/dislike.png" class = "popular-reply-dislike-btn-img"></button>
			
		</div>
		<div class="popular-reply-contet">
			<div class="popular-reply-contet-top">
				<p class="popular-reply-contet-top-text">페이커</p>
				<p  class="popular-reply-contet-top-text">|</p>
				<p  class="popular-reply-contet-top-text">6시간 전</p>
			</div>
			
			<p>내용</p>
		</div>
		
	  </div> 
      
    </li>
    <li id="tab2" class="btnCon"><a class="btn" href="#tab2">최신순</a>
      <div class="tabCon" >It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</div>
      
    </li>    
  </ul>
</div>

	</div>
	
<script>
		$('#summernote').summernote({
			placeholder : '글을 쓰세요.',
			tabsize : 2,
			height : 160
		});


		location.href = "#tab1";

	</script>
<%@ include file="../common/footer.jsp"%>
 