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

.container {
	margin-top: 20px;
	margin-bottom: 20px;
}
</style>
<body>

	<div class="bg_img">
		<img class="bg_community" />
	</div>

	<div class="container">
		<form action="/board" method="POST">
			<input type="hidden" id="id" value="${board.id}" />
			<input type="hidden" name="userId" value="${sessionScope.principal.id}" />

			<div class="form-group">
				<input type="text" class="form-control" placeholder="제목" id="title"
					name="title" value ="${board.title}">
			</div>

			<div class="form-group">
				<textarea class="form-control" rows="5" id="content"
					name="content">${board.content}</textarea>
			</div>

			<button id="btn-update" type="submit" class="btn btn-primary">글 수정</button>
		</form>
	</div>

	<script>
		$('#content').summernote({
			placeholder : '글을 쓰세요.',
			tabsize : 2,
			height : 400
		});


		$("#btn-update").on("click", (e) => {
			e.preventDefault();
			let data = {
				title: $("#title").val(),
				content: $("#content").val()
			};

			let id = $("#id").val();

			$.ajax({
				type: "PUT",
				url: "/board/" + id,
				data: JSON.stringify(data),
				contentType: "application/json; charset=utf-8",
				dataType: "json"
			}).done((res) => {
				if(res.code === 1) {
					alert("수정에 성공하였습니다.")
					history.go(-1);
					} else {
					alert("수정에 실패하였습니다.")
					}
				});
			
			});
	</script>
	
	<%@ include file="../common/footer.jsp"%>
	