# JAVA.GG - OP.GG 클론


### 개요
-  라이엇 게임즈에서 리그 오브 레전드의 API를 기반으로 하여 전적을 보여주는 전적 검색 사이트 op.gg를 모티브로 해서 따라 만들기 위한 프로젝트

### 기능
- 소환사 이름으로 검색시 전적검색
- 각 게임의 세부 게임 정보 
- 인게임 정보
- 현재 챌린저 랭킹 구현
- 로그인, 회원가입 (구글, 페이스북 API 로그인 추가)
- 커뮤니티 기능 구현(게시물 CRUD)
- 댓글기능, 좋아요 기능

### 의존성
- Sring Boot DevTools
- Lombok
- Spring Data JPA
- MySQL Driver
- Spring Security
- Spring Web
- oauth2-client


### DB
### 사용자 생성
``` MySQL
create user 'javagg'@'%' identified by 'gg1234';
GRANT ALL PRIVILEGES ON *.* TO 'javagg'@'%';
create database javagg;
use javagg;
```

### yml 설정
``` yml
server:
  port: 8080
  servlet:
    context-path: /
    encoding:
      charset: utf-8
      enabled: true

    
spring:
  mvc:
    view:
      prefix: /WEB-INF/views/
      suffix: .jsp
      
  datasource:
    driver-class-name: com.mysql.cj.jdbc.Driver
    url: jdbc:mysql://localhost:3306/javagg?serverTimezone=Asia/Seoul
    username: javagg
    password: gg1234
    
  jpa:
    open-in-view: true
    generate-ddl: true
    hibernate:
      ddl-auto: update
      naming:
        physical-strategy: org.hibernate.boot.model.naming.PhysicalNamingStrategyStandardImpl
      
  security:
    oauth2:
      client:
        registration: 
          google:
            client-id: ********************
            client-secret: ********************
            scope:
            - email
            - profile
            
          facebook:
            client-id: ********************
            client-secret: ********************
            scope:
            - email   
            - public_profile 
```


## 주요화면

### 홈 화면
![image](https://user-images.githubusercontent.com/67215505/113722230-31cf7700-972b-11eb-9a28-e5358b70a5b6.png)

### 검색 화면
![image](https://user-images.githubusercontent.com/67215505/113722504-72c78b80-972b-11eb-8b01-08b07951ce7d.png)

### 검색 상세화면
![image](https://user-images.githubusercontent.com/67215505/113722657-97bbfe80-972b-11eb-82ad-07864c808cd4.png)

### 랭킹
![image](https://user-images.githubusercontent.com/67215505/113722691-a1456680-972b-11eb-877f-c6aaadfcc756.png)

### 커뮤니티
![image](https://user-images.githubusercontent.com/67215505/113722786-b621fa00-972b-11eb-9a01-b2ada5bbaf26.png)

## 안드로이드

### 안드로이드 앱
https://github.com/otk2625/android-opgg-project

### 안드로이드 앱 서버
https://github.com/otk2625/springboot-javagg-testserver
