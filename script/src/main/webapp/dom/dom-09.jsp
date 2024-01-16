<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"></script>
<title>bootstrap</title>
</head>
<body>
<div class="container">
	<div class="row">
		<div class="col-12">
			<h1>이벤트에 대한 엘리먼트의 기본동작 막기</h1>
			<!-- 
				a 태그의 click 이벤트에 대한 기본동작
					- click 이벤트가 발생하면 href에 지정된 링크로 페이지를 이동시킨다.
				form 태그 submit 이벤트에 대한 기본동작
					- sumbit 이벤트가 발생하면 폼 입력값을 서버로 제출한다.
			 -->
			
			<h3>form태그의 submit이벤트에 대한 기본동장 막기</h3>
			
			<div id="div-keyword-alert" class="alert alert-danger d-none">
				<strong>경고</strong> 검색어를 입력하세요.
			</div>
			<form method="get" action="search.jsp" onsubmit="checkForm(event)">
				<label>검색어 : </label>
				<input type="text" name="keyword" />
				<button type="submit">검색</button>
			</form>
		</div>
	</div>
</div>
<script type="text/javascript">
	/*
		클래스 속성값 조회/변경하기
		
		<div id="abc" class="alert alert-danger d-none">
		</div>
		1. 클래스 속성값을 변경할 엘리멘트를 조회한다.
		let element = document.getElementById(id);("abc")
		
		// 2. 조회됙 엘리먼트의 클래스 속성값을 가지고 있는 객체 조회하기
		let list = element.classList"
		* element.classList 프로퍼티에는 DOMTokenList 객체가 담겨잇다.
		* DOMTokenList 객체는 문자열을 여러 개 저장하고 있는 개체다.(배열 유사 객체다.)
		* DOMTokenList 객체의 주요 메소드.
			add("텍스트")
				지정된 텍스트를 DOMTokenList 객체에 추가한다.
			remove("텍스트")
				지정된 텍스트를 DOMTokenList 객체에서 삭제한다.
			toggle("텍스트")
				지정된 텍스트를 DOMTokenList 객체에서 토글화시킨다..
				존재하면 삭제하고, 없으면 추가한다.
			contains("텍스트")
				DOMTokenList객체에 지정된 텍스트가 존재하면 true, 존재하지 않으면 fales를 반환한다.
		*/

function checkForm(event) {
	// 1. 검색어를 입력하는 입력필드 엘리먼트를 선택한다.
	let input = document.querySelector("input[name=keyword]]");
	// 2. 입력필드 엘리먼트의 입력값을 조회한다.
	let keyword = input.value;
	
	// 3. 입력필드의 값으 체크해서 경고창을 표시하거나, 폼 입력값을 서버로 제출시킨다.
	if (keyword === "") {
		
		//4. 경고메세지 엘리먼트를 선택한다.
		let div = document.getElementById("div-keyword-alert")
		
		// 5. class 속성값에서 "d-done"를 삭재한다,
		let list= div.classList;
		list.remove("d.none");
		
		// submit 이벤트가 발생했을 때 form 입력값이 서버로 제출되는것을 막는다. 
		event.preventDefault();
	}
	
	
	

}
























</script>
</body>
</html>