<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style type="text/css">
        
        body {
            font-family:"Malgun Gothic";
            font-size: 0.8em;

        }
        /*TAB CSS*/

        ul.tabs {
            margin: 0;
            padding: 0;
            float: left;
            list-style: none;
            height: 32px; /*--Set height of tabs--*/
            border-bottom: 1px solid #999;
            border-left: 1px solid #999;
            width: 100%;
        }
        ul.tabs li {
            float: left;
            margin: 0;
            padding: 0;
            height: 31px; /*--Subtract 1px from the height of the unordered list--*/
            line-height: 31px; /*--Vertically aligns the text within the tab--*/
            border: 1px solid #999;
            border-left: none;
            margin-bottom: -1px; /*--Pull the list item down 1px--*/
            overflow: hidden;
            position: relative;
            background: #e0e0e0;
        }
        ul.tabs li a {
            text-decoration: none;
            color: #000;
            display: block;
            font-size: 1.2em;
            padding: 0 20px;
            /*--Gives the bevel look with a 1px white border inside the list item--*/
            border: 1px solid #fff; 
            outline: none;
        }
        ul.tabs li a:hover {
            background: #ccc;
        }
        html ul.tabs li.active, html ul.tabs li.active a:hover  {
             /*--Makes sure that the active tab does not listen to the hover properties--*/
            background: #fff;
            /*--Makes the active tab look like it's connected with its content--*/
            border-bottom: 1px solid #fff; 
        }

        /*Tab Conent CSS*/
        
    </style>

</head>
<body>
<script type="text/javascript" src="http://code.jquery.com/jquery-1.8.3.min.js"></script>
    <script type="text/javascript">
        $(document).ready(function() {

            //When page loads...
            $(".tab_content").hide(); //Hide all content
            $("ul.tabs li:first").addClass("active").show(); //Activate first tab
            $(".tab_content:first").show(); //Show first tab content

            //On Click Event
            $("ul.tabs li").click(function() {

                $("ul.tabs li").removeClass("active"); //Remove any "active" class
                $(this).addClass("active"); //Add "active" class to selected tab
                $(".tab_content").hide(); //Hide all tab content

                var activeTab = $(this).find("a").attr("href"); //Find the href attribute value to identify the active tab + content
                $(activeTab).fadeIn(); //Fade in the active ID content
                return false;
            });

        });
    </script>
</head>
<body>

<div id="wrapper">    
    <!--탭 메뉴 영역 -->
    <ul class="tabs">
        <li style="margin-right: 30px;"><a href="#tab1"
			style="width: 100px; height: 40px; display: flex; justify-content: center; align-items: center;">
			종합</a></li>
		
        <li style="border-left: 1px solid #999;"><a href="#tab2" style="height:100%; background-color: white; color: #1F8ECD; display: flex; justify-content: center; align-items: flex-start;">
				<img style="height: 35px;" src="img/ingame.png" />인게임 정보 <!-- 인게임 정보 api : spectator -->
			</a></li>
    </ul>

    <!--탭 콘텐츠 영역 -->
    <div class="tab_container">

        <div id="tab1" class="tab_content">
            <!--Content-->
            <h1>tab1영역</h1>
            내용 내용 내용 내용 내용 내용 <br/>
            내용 내용 내용 내용 내용 내용 <br/>
            내용 내용 내용 내용 내용 내용 <br/>
            내용 내용 내용 내용 내용 내용 <br/>
            내용 내용 내용 내용 내용 내용 <br/>
            내용 내용 내용 내용 내용 내용 <br/>
            내용 내용 내용 내용 내용 내용 <br/>
            자바킹 블로그 :
            <a href="http://javaking75.blog.me">javaking75.blog.me</a>

        </div>

        <div id="tab2" class="tab_content">
           <!--Content-->
           <h1>tab2영역</h1>
           내용 내용 내용 내용 내용 내용 
        </div>

    </div>

</div>
</body>
</html>