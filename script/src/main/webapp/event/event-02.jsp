<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"></script>
<title>이벤트</title>
</head>
<body>
<div class="container">
	<div class="row">
		<div class="col-12">
			<h1>mouseenter/mouseleave 이벤트</h1>
<!-- onmouseenter - 마우스가 지정한 블록위의 올라가면 실행 
     onmouseleave - 마우스가 지정한 블록위를 빠져나가면 실행 -->
     
     		<h3>mouserenter와 mouserleave</h3>
			<div class="border bg-light p-3 my-3"
				onmouseenter="handler1()" onmouseleave="handler2()">
				부모
				<div class="border bg-light p-3">자식</div>
			</div>
			
			<h3>mouserover와 mouserout</h3>
			<div class="border bg-light p-3 my-3"
				onmouseover="handler1()" onmouseout="handler2()">
				부모
				<div class="border bg-light p-3">자식</div>
			</div>
		</div>
	</div>
</div>
<script type="text/javascript">
	function handler1() {
		console.log("요소 안으로 들어왔다.")
	}
	
	function handler2() {
		console.log("요소 밖으로 나갔다.")
	}
</script>
</body>
</html>