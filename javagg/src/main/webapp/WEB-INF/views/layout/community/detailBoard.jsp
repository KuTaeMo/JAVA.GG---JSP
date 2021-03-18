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
	background-image: url("img/bg.jpg");
}

.detail-table {
	margin-top: 1%;
	margin-left: 30%;
	width: 40%;
	height: 600px;
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
	background-color: white;
	margin-top: 1%;
	margin-left: 30%;
	width: 40%;
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
	border: 1px solid gray;
	background-color: white;
	border-radius: 10px;
}



ul{list-style:none;}
li {}
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
  box-sizing: border-box; 
  border : 5px solid #f9f9f9;
}
.btnCon:target  {
  background : #ccc;
}
.btnCon:target .tabCon{
  display: block;
}





/*
    Image credits:
    uifaces.com (http://uifaces.com/authorized)
*/


.page-header { position: relative; }
.reviews {
    color: #555;    
    font-weight: bold;
    margin: 10px auto 20px;
}
.notes {
    color: #999;
    font-size: 12px;
}
.media-body { position: relative; }
.media-date { 
    position: absolute; 
    right: 25px;
    top: 25px;
}
.media-date li { padding: 0; }
.media-date li:first-child:before { content: ''; }
.media-date li:before { 
    content: '.'; 
    margin-left: -2px; 
    margin-right: 2px;
}
.media-comment { margin-bottom: 20px; }
.media-replied { margin: 0 0 20px 50px; }
.media-replied .media-heading { padding-left: 6px; }


.embed-responsive { margin-bottom: 20px; }
.tab-content {
    padding: 15px 15px;
    border: 1px solid #ddd;
    border-top: 0;
    border-bottom-right-radius: 4px;
    border-bottom-left-radius: 4px;
}
.custom-input-file {
    overflow: hidden;
    position: relative;
    width: 120px;
    height: 120px;
    background: #eee url('https://s3.amazonaws.com/uifaces/faces/twitter/walterstephanie/128.jpg');    
    background-size: 120px;
    border-radius: 120px;
}

.reply-list {
	background-color: white;
	width: 40%;
	margin-left: 30%;
	margin-top: 1%;
	border: 1px solid gray;
	border-radius: 10px;
	margin-bottom: 1%;
}
.comment-tabs {
	width: 100%;
}
.reply-all {
	padding: 5%;
	width: 100%;
}
.reviews {
	margin-left: 5px;
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
	</div>
		
		
		
		
		
		
		
		
		
		
		
		
		<div class="reply-list">
  <div class="row">
    <div class="reply-all">
        <div class="page-header">
            <h3 class="reviews">댓글 달기</h3>
        </div>
        <div class="comment-tabs">
            <ul class="nav nav-tabs" role="tablist">
                <li class="active"><a href="#comments-logout" role="tab" data-toggle="tab"><h4 class="reviews text-capitalize">인기순</h4></a></li>
                <li><a href="#add-comment" role="tab" data-toggle="tab"><h4 class="reviews text-capitalize">최신순</h4></a></li>
            </ul>            
            
            <div class="tab-content">
                <div class="tab-pane active" id="comments-logout">                
                    <ul class="media-list">
                      <li class="media">
                       
                        <div class="media-body">
                          <div class="well well-lg">
                              <h4 class="media-heading text-uppercase reviews">거북이인성 </h4>
                              <ul class="media-date text-uppercase reviews list-inline">
                                <li class="replt-time">1시간 전</li>
                              </ul>
                              <p class="media-comment">
                                ㅋㅋㅋㅋㅋ 무플 방지
                              </p>
                          </div>              
                        </div>
                      </li>          
                     
                    </ul> 
                </div>
                
                <div class="tab-pane" id="add-comment">
                    <form action="#" method="post" class="form-horizontal" id="commentForm" role="form"> 
                        <div class="form-group">
                            <label for="email" class="col-sm-2 control-label">Comment</label>
                            <div class="col-sm-10">
                              <textarea class="form-control" name="addComment" id="addComment" rows="5"></textarea>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="uploadMedia" class="col-sm-2 control-label">Upload media</label>
                            <div class="col-sm-10">                    
                                <div class="input-group">
                                  <div class="input-group-addon">http://</div>
                                  <input type="text" class="form-control" name="uploadMedia" id="uploadMedia">
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-sm-offset-2 col-sm-10">                    
                                <button class="btn btn-success btn-circle text-uppercase" type="submit" id="submitComment"><span class="glyphicon glyphicon-send"></span> Summit comment</button>
                            </div>
                        </div>            
                    </form>
                </div>
              
            </div>
        </div>
	</div>
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
 