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
			<h1>이벤트 버블링</h1>
			
		 	<div onclick="handler1(event)" class="border bg-light p-3">
				첫번째 박스
				<div onclick="handler2(event)" class="border p-3 mt-3">
					두번째 박스
					<div onclick="handler3(event)" class="border p-3 mt-3">
						세번째 박스
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<script type="text/javascript">
	function handler1(event) {
		console.log("1번 박스가 클릭 되었습니다.")
		event.stopImmediatePropagation();
	}
	
	function handler2(event) {
		console.log("2번 박스가 클릭 되었습니다.")
		event.stopImmediatePropagation();
	}
	
	function handler3(event) {
		console.log("3번 박스가 클릭 되었습니다.")
		event.stopImmediatePropagation();
	}
</script>
</body>
</html>