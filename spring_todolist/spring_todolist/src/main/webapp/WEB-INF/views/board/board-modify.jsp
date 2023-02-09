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
	<div class="desc_board">
	<br>
		<form action="${context}/board/modify" id="frmModify" class="frm_modify" method="post" enctype="multipart/form-data">
			<input type="hidden" value="${board.bdIdx}" name="bdIdx"> 
			<div >
				<div class="tit_board">
					제목 <input style="margin-left:10px ; width:400px" type="text" name="title" class="mt-2" required="required" value='<c:out value="${board.title}"/>'/><br>
					파일 <input style="margin-left:10px" type="file" class="mt-2" name="fileList" id="contract_file" multiple/>
				</div>
				<br>
				<div >
					<ol>
				      	<c:forEach var="file" items="${files}">
				      		<li id="f${file.flIdx}">  
				      	 		<span>${file.originFileName} 
				      	 		<b data-idx="f${file.flIdx}" class="btnClose">x</b></span> 
				      	 	</li>	     
				      	</c:forEach>
			      	</ol>
				</div>
				<div class="content_board">
					<textarea style=" font-family: 'LeferiPoint-WhiteObliqueA'; " name="content" required="required" ><c:out value="${board.content}"/></textarea>
				</div>
				<br>
				<div class="d-grid gap-2">
					<button  style="height:50px; font-size: 20px" class="btn btn-primary">전송</button>
					<br><br>
				</div>
			</div>

		</form>
	</div>
</div>
<%@ include file="/WEB-INF/views/include/footer.jsp" %>

<script type="text/javascript">

document.querySelectorAll('.btnClose').forEach(e => {
	
	e.addEventListener('click', ev => {
		
		let fileId = ev.target.dataset.idx;
		document.querySelector('#'+fileId).style.display='none';
		
		fileId = fileId.replace('f','');
		
		inpDelfile = createElement("input",{prop:{"type":"hidden","value":fileId,"name":"delFiles"}});
		frmModify.append(inpDelfile);
		
	});
})

</script>







</body>
</html>