<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>hello</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</head>
<body>
	<form>
		<input id="username" placeholder="소환사명을 입력하세요." /> <input id="level" />
		<input id="accountid" /> <input id="encid" />
		<button id="searchuser">검색</button>
	</form>

	<div>
		<input id="rank" value="unranked" /> <input id="rankpoint" /> <input
			id="win" /> <input id="lose" /> <input id="winlose" />
	</div>

	<div>
		모스트 1 <input id="championId1" /> <input id="championLevel1" /> <input
			id="championPoints1" />
	</div>
	<div>
		모스트 2 <input id="championId2" /> <input id="championLevel2" /> <input
			id="championPoints2" />
	</div>
	<div>
		모스트 3 <input id="championId3" /> <input id="championLevel3" /> <input
			id="championPoints3" />
	</div>

	<script>
	var championList=new Array();
	
	var keyname = 'my';
	var postfix = 'Age'
	var value = 27;
	var something = {};
	something[keyname + postfix] = value;
	console.log(something);
	
	$.ajax({
		type:"GET",
		url: "http://ddragon.leagueoflegends.com/cdn/11.5.1/data/en_US/champion.json",
		dataType:"json"
		}).done((res)=>{
			console.log("챔피언 : ");
			console.log(res);
			console.log(res.data.Aatrox.key);

			let count=0;
			for(key in res.data){
				count++;
				console.log(res.data[key].key);
			} 
		});
</script>
</body>
</html>