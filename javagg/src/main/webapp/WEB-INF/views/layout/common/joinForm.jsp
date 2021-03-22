<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../common/header.jsp"%>

<style>

@import url('https://fonts.googleapis.com/css2?family=Poppins:wght@200;300;400;500;600;700&display=swap');
@import url('https://fonts.googleapis.com/css2?family=Poppins:wght@200;300;400;500;600;700&display=swap');
*{
  margin: 0;
  padding: 0;
  box-sizing: border-box;
  font-family: 'Poppins',sans-serif;
}
html, body{
  display: grid;
  height: 100vh;
  width: 100%;
  place-items: center;
}
::selection{
  background: #ff80bf;

}
.container{
  margin-top: 1%;
  margin-bottom: 1%;
  background: #fff;
  max-width: 350px;
  width: 100%;
  padding: 25px 30px;
  border-radius: 5px;
  box-shadow: 0 10px 10px rgba(0, 0, 0, 0.15);
}
.container form .title{
  font-size: 30px;
  font-weight: 600;
  margin: 20px 0 10px 0;
  position: relative;
}
.container form .title2{
  font-size: 50px;
  font-weight: 600;
  margin: 20px 0 10px 0;
  position: relative;
  text-align: center;
  color: #4C8CFF;
  
}
.container form .title2:before{
  content: '';
  position: absolute;
  height: 4px;
  width: 159px;
  left: 65px;
  bottom: 3px;
  border-radius: 5px;
  background: linear-gradient(to right, #4C8CFF 0%, #04FAA1 100%);
}
.container form .input-box{
  width: 100%;
  height: 45px;
  margin-top: 25px;
  position: relative;
}
.container form .input-box input{
  width: 100%;
  height: 100%;
  outline: none;
  font-size: 16px;
  border: none;
}
.container form .underline::before{
  content: '';
  position: absolute;
  height: 2px;
  width: 100%;
  background: #ccc;
  left: 0;
  bottom: 0;
}
.container form .underline::after{
  content: '';
  position: absolute;
  height: 2px;
  width: 100%;
  background: linear-gradient(to right, #04FAA1 0%, #4C8CFF 100%);
  left: 0;
  bottom: 0;
  transform: scaleX(0);
  transform-origin: left;
  transition: all 0.3s ease;
}
.container form .input-box input:focus ~ .underline::after,
.container form .input-box input:valid ~ .underline::after{
  transform: scaleX(1);
  transform-origin: left;
}
.container form .button{
  margin: 40px 0 20px 0;
}
.container .input-box input[type="submit"]{
  background: linear-gradient(to right, #4C8CFF 0%, #4C8CFF 100%);
  font-size: 17px;
  color: #fff;
  border-radius: 5px;
  cursor: pointer;
  transition: all 0.3s ease;
}
.container .input-box input[type="submit"]:hover{
  letter-spacing: 1px;
  background: linear-gradient(to left, #04FAA1 0%, #4C8CFF 100%);
}
.container .option{
  font-size: 14px;
  text-align: center;
}

.join-text {
	display: flex;
	text-align: center;
}
.join-a-text {
	margin-left: 60px;
}
</style>
<body>
 <div class="container">
      <form action="/join" method="POST">
      <div class="title2">OP.GG</div>
        <div class="title">회원가입</div>
        <div class="input-box underline">
          <input name = "email" type="email" placeholder="이메일 주소" required>
          <div class="underline"></div>
        </div>
        <div class="input-box">
          <input name = "username" type="text" placeholder="닉네임" required>
          <div class="underline"></div>
        </div>
        <div class="input-box">
          <input name = "password" type="password" placeholder="비밀번호" required>
          <div class="underline"></div>
        </div>
        <div class="input-box button">
          <input type="submit" value="회원가입">
        </div>
      </form>
        
        
        <div class="join-text">
        	<p>이미 회원이신가요?</p> <a href="/loginForm" class="join-a-text">로그인하기</a> 
        </div>
    </div>
    
    <%@ include file="../common/footer.jsp"%>
    