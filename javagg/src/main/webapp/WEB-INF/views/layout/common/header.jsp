<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>

<sec:authorize access="isAuthenticated()">
	<sec:authentication property="principal" var="principal" />
</sec:authorize>

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

<link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.js"></script>

<script src="https://kit.fontawesome.com/a076d05399.js"></script>
</head>

<style>

/* 헤더 배경색 : 5383E8, 배치  */
.navbar {
	background-color: #5383E8;
	display: flex;
	justify-content: space-between;
	width: 100%;
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
	position: absolute;
	background-image: url("img/searchImage.svg");
	background-size: cover;
	height: 31px;
	width: 65px;
	border: 0;
	border-radius: 5px;
	margin-right: 30px;
	right: 110px;
}

.input-header {
	height: 33px;
	width: 300px;
	margin-right: 30px;
	border-radius: 5px 5px 5px 5px;
	border: 0;
}

.header-btn {
	display: flex;
}
</style>

<body>

	<nav class="navbar navbar-expand-sm">

		<div class="header-ul">

			<a class="navbar-brand" href="/home"> <img src="img/logo.svg" alt="logo" style="width: 40px;">
			</a>

			<ul class="navbar-nav">
				<li class="nav-item"><a class="nav-link" href="/home">#집에 있자</a></li>
				<li class="nav-item"><a class="nav-link" href="#">통계</a></li>
				<li class="nav-item"><a class="nav-link" href="/ranking">랭킹</a></li>
				<li class="nav-item"><a class="nav-link" href="/mainBoard">커뮤니티</a></li>
			</ul>
		</div>

		<div class="header-btn">
			<form class="form-inline" action="/search" method="post">
				<input class="input-header" type="text" placeholder="소환사명, 소환사명, ...">
				<button type="submit" class="btn_image" id="img_btn"></button>
			</form>

		<c:choose>
			<c:when test="${empty principal}">
				<div class="login-btn">
					<button type="button" class="btn btn-primary btn-md" onClick="location.href=`/loginForm`">로그인</button>
				</div>
			</c:when>
			<c:otherwise>
				<div class="login-btn">
					<button type="button" class="btn btn-primary btn-md" onClick="location.href=`/logout`">로그아웃</button>
				</div>
			</c:otherwise>
		</c:choose>
			
		</div>

	</nav>