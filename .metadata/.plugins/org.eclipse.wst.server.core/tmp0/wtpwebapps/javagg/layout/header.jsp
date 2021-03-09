<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>java.gg</title>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</head>

<style>

/* 헤더 배경색 : 5383E8, 배치  */
.navbar {
	background-color: #5383E8;
	display: flex;
	justify-content: space-between;
}

.header-ul {
	display: flex;
}

/* 헤더 글자 하얀색 */
.nav-link {
	color: white;
}

/* 헤더 메뉴 센터 맞추기 */
.nav-item {
	display: flex;
	justify-content: center;
	align-items: center;
	margin-left: 20px;
}

.navbar-brand {
	margin-left: 20px;
}

.login-btn {
	margin-right: 20px;
}

/* 헤더 검색 다자인 */
.btn_image {
	background-image: url("../assets/img/searchImage.svg");
	background-size: cover;
	height: 33px;
	width: 75px;
	border: 0;
	border-radius: 5px;
	margin-right: 30px;
}

.form-control {
	height: 33px;
}

.header-btn {
	display: flex;
}

</style>

<body>

<nav class="navbar navbar-expand-sm">

<div class="header-ul">

  <a class="navbar-brand" href="#">
    <img src="../assets/img/logo.svg" alt="logo" style="width:40px;">
  </a>
  
  <ul class="navbar-nav">
    <li class="nav-item">
      <a class="nav-link" href="#">#집에 있자</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="#">통계</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="#">랭킹</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="#">커뮤니티</a>
    </li>
  </ul>
</div>

<div class="header-btn">
  <form class="form-inline" action="/action_page.php">
    <input class="form-control" type="text" placeholder="소환사명, 소환사명, ...">
    <button type="button" class="btn_image" id="img_btn"></button>
  </form>
  
  <div class="login-btn">
  	<button type="button" class="btn btn-primary btn-md">로그인</button>
  </div>
</div>

</nav>

</body>
</html>