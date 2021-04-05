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

.detail-table {
	margin-top: 1%;
	margin-left: 30%;
	width: 40%;
	height: 100%;
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
	
	display: flex;
	justify-content: center;
	margin-bottom: 10px
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
	margin-left: 68%;
	margin-bottom: 15px;
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

.media-list {
	padding: 0px;
	margin: 0px;
}
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
	width: 100%;
}

.media-side {
	margin-right: 10px;
}
.reply-vote-count {
	display: flex;
	justify-content: center;
	align-items: center;
	margin-top: 15px;
}
.reply-vote-img-btn {
	border: 0px;
	background: white;
}
.reply-new{
	margin-left: 10px;
}
.reply-list-name-time{
	display: flex;
	justify-content: flex-start;
}
.reply-time {
	font-size: 13px;
	color: gray;
	font-style: normal;
}

.content {
	margin-left: 20px;
	margin-top: 20px;
}
.clicked {
    color: #4C8CFF;
}
.detail-btn {
	margin-left: 15px;
	margin-bottom: 10px;
	border-radius: 10px;
	background-color: white;
	border: 1px solid black;
	font-size: 15px;
}
#reply-delete-btn {
	background-color: white;
	color: #CC3D3D;
	border: 0px;
}
      
</style>

<body>

	<div class="bg_img">
		<img class="bg_community" />
	</div>

	<div class="detail-table">

		<div class="detail-top">
			<div class="detail-title">
				<p class="detail-title-text">${board.title}</p>
			</div>

			<div class="detail-info">
				<div class="detail-title-info">
					<p class="detail-title-info-text">${board.createDate}</p>
					<p class="detail-title-info-text">|</p>
					<p class="detail-title-info-text">${board.user.username}</p>
				</div>

				<div class="detail-title-info-count">
					<p class="detail-title-info-count-text">조회 : ${board.readCount}</p>
					<p class="detail-title-info-count-text">|</p>
					<div id="rpc"><p class="detail-title-info-count-text">댓글 : ${replys}</p></div>
					<p class="detail-title-info-count-text">|</p>
					<p class="detail-title-info-count-text">추천 : ${board.likeCount}</p>
				</div>
			</div>
			
			<c:if test="${board.user.id == principal.user.id}">
			<div class="detail-btns">
				<button id="detail--deelete-btn" class="detail-btn" value="${board.id}">삭제</button>
				<button class="detail-btn" onclick="location.href='/board/${board.id}/updateBoard'">수정</button>
			</div>
			</c:if>
		</div>
		
		<div class="content">
			<div>${board.content}</div>
			
			<div class="vote-btn">
			<c:choose>
				<c:when test="${board.likeState}">
					<button onclick = "likeBtn(${board.id})" style="background-color: #fff2d8;" class="article-vote-btn">
					<img border="0" src="/img/vote.png" class="article-vote-like-img abc" id="vote_img_${board.id}"/>
					<span class=" article-vote-like-count" id="like_count_${board.id}">${board.likeCount}</span>
					</button>
				</c:when>
				<c:otherwise>
					<button onclick = "likeBtn(${board.id})" style="background-color: white;" class="article-vote-btn">
					<img border="0" src="/img/vote.png" class="article-vote-like-img cba" id="vote_img_${board.id}"/>
					<span class="article-vote-like-count" id = "like_count_${board.id}">${board.likeCount}</span>
					</button>
				</c:otherwise>
			</c:choose>		
		
		<button type="submit" class="article-vote-btn">
			<img border="0" src="/img/dislike.png" class="article-vote-dislike-img"/>
			<span class="article-vote-dislike-count">0</span>
		</button>
		</div>
		</div>
		
		
		
	</div>
	
	<div id="aaa1" class="reply">
		<form>
		<input type="hidden" id="boardId" value="${board.id}" />
		<div class="reply-count">
			<p class="reply-count-text" style="font-size: 20px;">댓글 </p>
			<p class="reply-count-text">총</p> <div style="margin-bottom: 16px;" id = "replyCount">${replys}</div> <p>개</p>
			<button name="content" type="submit" class="reply-btn" id = "reply-btn">댓글 등록</button>
		</div>
		
		<div id="bbb1" class="reply-input">
			

			<div id = "www1" class="form-group">
				<textarea class="form-control" id="reply-content" rows="5" id="content" name="content"></textarea>
				
			</div>

		
		</div>
		</form>
	</div>
		
		
		
		
		
		
		
		
		
		
		
		
		<div class="reply-list" id="zzz1">
  <div class="row">
    <div class="reply-all">
        <div class="page-header">
            <h3 class="reviews">댓글</h3>
        </div>
        <div class="comment-tabs">
            <ul class="nav nav-tabs" role="tablist">
                <li class="active"><a href="#comments-logout" role="tab" data-toggle="tab"><h4 class="reviews clicked text-capitalize">인기순</h4></a></li>
                <li class="reply-new"><a href="#add-comment" role="tab" data-toggle="tab"><h4 class="reviews text-capitalize">최신순</h4></a></li>
            </ul>            
            
            <div class="tab-content">
                <div class="tab-pane active" id="comments-logout">   
                <c:forEach var="reply" items="${replylist.content}">             
                    <ul class="media-list">
                  
                      <li class="media" id="reply-${reply.id}">
                      
                      	<div class="media-side">
                      		<button type="button" class="reply-vote-img-btn"><img class="reply-vote-img" src="/img/vote.png"></button>
                      		<p class="reply-vote-count">0</p>
                      		<button type="button" class="reply-vote-img-btn"><img class="reply-vote-img" src="/img/dislike.png"></button>
                      	</div>
                       
                        <div class="media-body">
                          <div class="">
                          	<div class="reply-list-name-time">
                              <p class="reviews">${reply.user.username}  <span class="reply-time">|  1시간 전</span></p>
                              
                            </div>
                              
                                ${reply.content}
                              <c:if test="${reply.user.id == principal.user.id}">
                              <button id = "reply-delete-btn" onclick="deleteReply(${reply.id})" class="badge">삭제</button>
                              </c:if>
                          </div>              
                        </div>
                      </li>    
                          
                    </ul> 
                            
                   
                     <hr/>
                     </c:forEach>  
               
               		<ul class="pagination justify-content-center">

		<c:choose>
			<c:when test="${replylist.first}">
				<li class="page-item disabled"><a class="page-link">Previous</a></li>
			</c:when>
			<c:otherwise>
				<li class="page-item"><a class="page-link" href="?page=${replylist.number - 1}">Previous</a></li>
			</c:otherwise>
		</c:choose>
		<c:choose>
			<c:when test="${replylist.last}">
				<li class="page-item disabled"><a class="page-link">Next</a></li>
			</c:when>
			<c:otherwise>
				<li class="page-item"><a class="page-link" href="?page=${replylist.number + 1}">Next</a></li>
			</c:otherwise>
		</c:choose>
	</ul>
                </div>
                
                <div class="tab-pane" id="add-comment">
                     <c:forEach var="reply" items="${replylist.content}">             

                    <ul class="media-list">
                    
                      <li class="media" id="reply-${reply.id}">
                      
                      	<div class="media-side">
                      		<button type="button" class="reply-vote-img-btn"><img class="reply-vote-img" src="/img/vote.png"></button>
                      		<p class="reply-vote-count">0</p>
                      		<button type="button" class="reply-vote-img-btn"><img class="reply-vote-img" src="/img/dislike.png"></button>
                      	</div>
                       
                        <div class="media-body">
                          <div class="">
                          	<div class="reply-list-name-time">
                              <p class="reviews">${reply.user.username}  <span class="reply-time">|  1시간 전</span></p>
                              
                            </div>
                              
                                ${reply.content}
                              <c:if test="${reply.user.id == principal.user.id}">
                              <button id = "reply-delete-btn" onclick="deleteReply(${reply.id})" class="badge">삭제</button>
                              </c:if>
                          </div>              
                        </div>
                      </li>    
                          
                    </ul> 
                     <hr/>
                     </c:forEach>  
               
               		<ul class="pagination justify-content-center">
		<c:choose>
			<c:when test="${replylist.first}">
				<li class="page-item disabled"><a class="page-link">Previous</a></li>
			</c:when>
			<c:otherwise>
				<li class="page-item"><a class="page-link" href="?page=${replylist.number - 1}">Previous</a></li>
			</c:otherwise>
		</c:choose>
		<c:choose>
			<c:when test="${replylist.last}">
				<li class="page-item disabled"><a class="page-link">Next</a></li>
			</c:when>
			<c:otherwise>
				<li class="page-item"><a class="page-link" href="?page=${replylist.number + 1}">Next</a></li>
			</c:otherwise>
		</c:choose>
	</ul>
                </div>
              
            </div>
        </div>
	</div>
  </div>

</div>
	
<script>
		
		$('#reply-content').summernote({
			placeholder : '글을 쓰세요.',
			tabsize : 2,
			height : 160
		});
		
		
		location.href = "#tab1";

		
		
		var div2 = document.getElementsByClassName("reviews");

	      function handleClick(event) {
	        console.log(event.target);
	        // console.log(this);
	        // 콘솔창을 보면 둘다 동일한 값이 나온다

	        console.log(event.target.classList);

	        if (event.target.classList[1] === "clicked") {
	          event.target.classList.remove("clicked");
	        } else {
	          for (var i = 0; i < div2.length; i++) {
	            div2[i].classList.remove("clicked");
	          }

	          event.target.classList.add("clicked");
	        }
	      }

	      function init() {
	        for (var i = 0; i < div2.length; i++) {
	          div2[i].addEventListener("click", handleClick);
	        }
	      }

	      init();
	      


	      $('#detail--deelete-btn').on("click", (e) => {
				let id = e.currentTarget.value;

				$.ajax({
						type: "DELETE",
						url: "/board/" + id,
						dataType: "json"
					}).done(res => {
						if(res.code === 1) {
							alert("삭제에 성공하였습니다.")
							history.go(-1);
						} else {
							alert("삭제에 실패하였습니다.")
						}
					});
		      });

	      /* $('#likeBtn').on("click", (e) => {
	    	  let id = e.currentTarget.value;

		      $.ajax({
					type: "POST",
					url: "/board/" + id + "/likes",
					dataType: "json"
			  }).done(res => {

				  	let likeCountStr = $("#like_count_" + id).text();
		    		let likeCount = Number(likeCountStr) + 1;
		    		$(`#like_count_${boardId}`).text(likeCount);
				  
			      });
		      });
 */

	       function likeBtn(boardId) {

	    		let _buttonl = $("#vote_img_" + ${board.id});
	    		
	    		if(_buttonl.hasClass("cba")) {

	    			$.ajax({

						type: "POST",
						url: `/board/${board.id}/likes`,
						dataType: "json"
			    	}).done(res => {

			    		let likeCountStr  = $(`#like_count_${board.id}`).text();
			            let likeCount = Number(likeCountStr) + 1;
			            $(`#like_count_${board.id}`).text(likeCount);

			           

			    		_buttonl.addClass("abc");
			            _buttonl.removeClass("cba");
				    });
		    	} else {

		    		$.ajax({
		    		      type: "DELETE",
		    		      url: `/board/${board.id}/likes`,
		    		      dataType: "json"
		    		    }).done(res=>{

		    		    	let likeCountStr  = $(`#like_count_${board.id}`).text();
				            let likeCount = Number(likeCountStr) - 1;
				            $(`#like_count_${board.id}`).text(likeCount);

		    		        
		    		        _buttonl.removeClass("abc");
		    		        _buttonl.addClass("cba");
		    		    });  
			   }
		  } 
	      
		  

	      $("#reply-btn").on("click", (e) => {
	    		e.preventDefault();
	    		let data = {
	    				boardId: $("#boardId").val(),
	    				content: $("#reply-content").val(),
	    				readCount: $("#ccc").val()
	    			};
	    		
	    			$.ajax({
	    				type: "POST",
	    				url: "/reply",
	    				data: JSON.stringify(data),
	    				contentType: "application/json; charset=utf-8",
	    				dataType: "JSON"
	    			}).done((res)=>{
	    				console.log(res);
	    				if(res.code === 1){
	    					
	    					// $("#zzz1").load(window.location.href + "#zzz1 ul");
	    					// $("#zzz1").load(window.location.href + " #zzz1" );
	    					//$("#zzz1").load(" #zzz1 > *");
	    					// $("#rpc").load(" #rpc > *");
	    					// $("#aaa1").load(" #aaa1 > *");
	    					//$('#reply-content').summernote('reset');
						 	history.go(0);
	    				}else{
	    					alert("댓글 작성에 실패하였습니다.");
	    				}
	    			});
	    	});

	      function deleteReply(id) {
	  		$.ajax({
	  			type: "DELETE",
	  			url: "/reply/" + id,
	  			dataType: "json"
	  		}).done((res)=>{
	  			console.log(res);
	  			if(res.code === 1){
	  				$("#reply-"+id).remove();
	  			}else{
	  				alert("삭제에 실패하였습니다.");
	  			}
	  		});
	  	}

	      console.log("되라 좀 : " + "${replys}");
	      console.log("좀 나와라 : " + "${replylist}");
			console.log("${board.likeCount}");

	    
</script>

<%@ include file="../common/footer.jsp"%>
 