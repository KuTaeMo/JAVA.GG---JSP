# JAVA.GG - OP.GG 클론

### 의존성
- Sring Boot DevTools
- Lombok
- Spring Data JPA
- MySQL Driver
- Spring Security
- Spring Web
- oauth2-client
-

### DB
### 사용자 생성
``` MySQL
create user 'javagg'@'%' identified by 'gg1234';
GRANT ALL PRIVILEGES ON *.* TO 'javagg'@'%';
create database javagg;
use javagg;
```
### 테이블 생성
``` MySQL
CREATE TABLE user(
    id int primary key auto_increment,
    username varchar(100) not null unique,
    password varchar(100) not null,
    email varchar(100) not null,
    userRole varchar(20),
    createDate timestamp
)  engine=InnoDB default charset=utf8;

CREATE TABLE reply(
    id int primary key auto_increment,
    userId int,
    boardid int,
    content longtext,
    createDate timestamp,
    likeCount int default 0,
    foreign key (userId) references user (id),
    foreign key (sightid) references sight (id)
)  engine=InnoDB default charset=utf8;

CREATE TABLE board(
    id int primary key auto_increment,
    communityType varchar(20),
    title varchar(100) not null unique,
    content longtext,
    readCount int default 0,
    likeCount int default 0,
    dislikeCount int default 0,
    createDate timestamp,
    userId int,
    foreign key (userId) references user (id)
)  engine=InnoDB default charset=utf8;

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
    hibernate:
      ddl-auto: update
      naming:
        physical-strategy: org.hibernate.boot.model.naming.PhysicalNamingStrategyStandardImpl
    show-sql: true

  jackson:
    serialization:
      fail-on-empty-beans: false
      
  security:
    oauth2:
      client:
        registration: 
          google:
            client-id: 239279291176-8ftleq3rq70jmen93qq4t0da6g7putte.apps.googleusercontent.com
            client-secret: 4OSg4cB90edgaCTlubNFxhcF
            scope:
            - email
            - profile
            
          facebook:
            client-id: 344541866909088
            client-secret: 7fc3671e27f17d95ff1c3115aebe2e1e
            scope:
            - email   
            - public_profile 
```

### 안드로이드 앱
https://github.com/otk2625/android-opgg-project

### 안드로이드 앱 서버
https://github.com/otk2625/springboot-javagg-testserver
