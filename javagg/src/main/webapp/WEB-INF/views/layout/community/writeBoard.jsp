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
				<textarea class="form-control" id="summernote" rows="5" id="content"
					name="content"></textarea>
			</div>

			<button type="submit" class="btn btn-primary">글쓰기 등록</button>
		</form>
	</div>

	<script type="text/javascript">
    $(document).ready(function() {
      $('#summernote').summernote({
        height: 300,
        minHeight: null,
        maxHeight: null,
        focus: true,
        callbacks: {
          onImageUpload: function(files, editor, welEditable) {
            for (var i = files.length - 1; i >= 0; i--) {
              sendFile(files[i], this);
            }
          }
        }
      });
    });
    
    function sendFile(file, el) {
      var form_data = new FormData();
      form_data.append('file', file);
      $.ajax({
        data: form_data,
        type: "POST",
        url: '/image',
        cache: false,
        contentType: false,
        enctype: 'multipart/form-data',
        processData: false,
        success: function(url) {
          $(el).summernote('editor.insertImage', url);
          $('#imageBoard > ul').append('<li><img src="'+url+'" width="480" height="auto"/></li>');
        }
      });
    }
</script>

	<%@ include file="../common/footer.jsp"%>
	