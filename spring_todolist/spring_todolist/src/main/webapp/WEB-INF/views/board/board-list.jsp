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
	body {
    	font-family: 'LeferiBaseType-RegularA';
    	font-size:20px;
	}
	
</style>

</head>
<body>
<%@ include file="/WEB-INF/views/include/header.jsp" %>

<div class="container">
<div class="row">
<br><br><br><br>
	<div style="text-align:left">
    <a href="${context}/board/board-form"  class="btn btn-secondary btn-rounded" style="width:100px; height:35px; align:left">글쓰기</a>
    </div>
    <br><br>
 	   <table class="table align-middle mb-0 bg-white" style="text-align: center" >
       <thead class="bg-light">
           <tr>
               <th style="width: 10%; height:20%;"><span>번호</span></th>
               <th style="width: 70%;"><span>제목</span></th>
               <th style="width: 10%;"><span>작성자</span></th>
               <th style="width: 10%;"><span>등록일</span></th>
           </tr>
       </thead>
       <tbody >
       <c:forEach items="${boardList}" var="board">
           <tr >
               <td>${board.bdIdx}</td>
               <td style="text-align:left"><a href="${context}/board/detail?bdIdx=${board.bdIdx}">${board.title}</a></td>
               <td>${board.userId}</td>
               <td>${board.regDateAsTime}</td>
           </tr>
        </c:forEach>
       </tbody>
    </table>
	</div>
	
	
	<div class="row mt-3">
	<br><br><br><br><br><br>
		<nav aria-label="Page navigation example">
		  <ul class="pagination justify-content-center">
		   
		    <li class="page-item">
		      <a class="page-link" href="/board/list?page=${paging.prevPage}">이전</a>
		    </li>
		   
		    <c:forEach begin="${paging.blockStart}" end="${paging.blockEnd}" var="page">
		    	<li class="page-item"><a class="page-link" href="/board/list?page=${page}">${page}</a></li>
		    </c:forEach>
		  
		    <li class="page-item">
		      <a class="page-link" href="/board/list?page=${paging.nextPage}">다음</a>
		    </li>
		    
		  </ul>
		</nav>
	</div>
	
</div>



<%@ include file="/WEB-INF/views/include/footer.jsp" %>
</body>
</html>