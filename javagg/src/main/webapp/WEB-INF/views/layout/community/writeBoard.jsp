<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../common/header.jsp"%>


<style>
.bg_community {
	height: 250px;
	width: 100%;
	background-size: cover;
	background-image: url("/img/bg.jpg");
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
			<input type="hidden" name="userId"
				value="${sessionScope.principal.id}" />

			<div class="form-group">
				<input type="text" class="form-control" placeholder="제목" id="title"
					name="title">
			</div>
			
			<div class="form-group">
				<select name="communityType">
  					<option value='humor' selected>유머</option>
 					<option value='free'>자유</option>
				</select>
			</div>
			

			<div class="form-group">
				<textarea class="form-control"rows="5" id="content"
					name="content"></textarea>
			</div>

			<button type="submit" class="btn btn-primary">글쓰기 등록</button>
		</form>
	</div>

	<script>
    $('#content').summernote({
		placeholder : '글을 쓰세요.',
		tabsize : 2,
		height : 400
	});
</script>

	<%@ include file="../common/footer.jsp"%>
	