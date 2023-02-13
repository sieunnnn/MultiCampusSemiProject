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
      <div >
          번호<span style="margin:12px ; font-family: 'LeferiPoint-WhiteObliqueA'"> ${board.bdIdx}</span>
          제목<span style="margin:12px ; font-family: 'LeferiPoint-WhiteObliqueA'"> ${board.title}</span>
          작성자<span style="margin:12px ; font-family: 'LeferiPoint-WhiteObliqueA'"> ${board.userId}</span>
      </div>
      <hr style="border-color:black; border-width:2px">
      <div >
      	<ol>
      	<c:forEach var="file" items="${files}">
      		<li>  
      	 		<a href="/board/download?flIdx=${file.flIdx}">${file.originFileName}</a> 
      	 	</li>	     
      	</c:forEach>
      	</ol>
      </div>
      <div >
      <br>
      	<pre style="font-family: 'LeferiPoint-WhiteObliqueA'">${board.content}</pre>
      </div> 
       <br><br><br>
      <div class="btn_section">
          <button class="btn btn-secondary"  style="width:90px; heigh:40px; font-size:20px"onclick="location.href='/board/list'"><span>목록</span></button>
          
          <c:if test="${ not empty sessionScope.auth and board.userId == sessionScope.auth.userId }">
          <form action="/board/remove" method="post">
          	<input type="hidden" value="${board.bdIdx}" name="bdIdx"/> 
          	<button class="btn btn-danger"  style="width:90px; heigh:40px; font-size:20px"><span>삭제</span></button>
          </form>
          <form action="/board/modify" method="get">
          	<input type="hidden" value="${board.bdIdx}" name="bdIdx"/> 
          	<button class="btn btn-primary" style="width:90px; heigh:40px; font-size:20px"><span>수정</span></button>
          </form>	
          </c:if>
      </div>
   </div>
</div>
<br><br>

<%@ include file="/WEB-INF/views/include/footer.jsp" %>


</body>
</html>