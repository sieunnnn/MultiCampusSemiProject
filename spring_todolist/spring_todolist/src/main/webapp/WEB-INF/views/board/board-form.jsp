<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/head.jsp" %>
<head>
	<link href="/resources/css/board/board.css" rel="stylesheet"> 
	
	<!--  웹폰트 지정 -->
<style>
@font-face {
    font-family: 'LeferiBaseType-RegularA';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2201-2@1.0/LeferiBaseType-RegularA.woff') format('woff');
    font-weight: normal;
    font-style: normal;
}

@font-face {
    font-family: 'LeferiPoint-WhiteObliqueA';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2201-2@1.0/LeferiPoint-WhiteObliqueA.woff') format('woff');
    font-weight: normal;
    font-style: normal;
}
	
	body {
    	font-family: 'LeferiBaseType-RegularA';
    	font-size:20px;
	}
	
</style>
</head>
<body>
<%@ include file="/WEB-INF/views/include/header.jsp" %>

<div class="content container">
	<br><br>
	<div class="desc_board">
		<form action="${context}/board/upload" method="post" enctype="multipart/form-data">
			<div>
				<div class="tit_board">
					제목 <input style="margin-left:10px ; width:400px" type="text" name="title" required="required"/>
					파일 <input style="margin-left:10px" type="file" name="files" id="contract_file" multiple/>
				</div>
				<div style=" font-family: 'LeferiPoint-WhiteObliqueA'" class="content_board">
					<textarea name="content" required="required"></textarea>
				</div>
				<br>
				<div class="d-grid gap-2">
					<button  style="height:50px; font-size: 20px" class="btn btn-primary">전송</button>
				</div>
				<br><br>
			</div>
		</form>
	</div>
</div>



<%@ include file="/WEB-INF/views/include/footer.jsp" %>
</body>
</html>