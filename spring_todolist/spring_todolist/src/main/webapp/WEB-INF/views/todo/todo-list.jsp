<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/head.jsp" %>
<head>
 <%@ include file="/WEB-INF/views/include/header.jsp" %>
 
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
   <h1>Todo List</h1>
    <form action="${context}/todo/addTodo" method="post" enctype="multipart/form-data">
		<div>
			<input type="text" name="todo" />
        	<input type="submit" value="Add Todo" />
		</div>
	</form>

    <hr>
    <ul>

   			
		<c:forEach var="boardMap" items="${todo}">
		    
		   <form action="${context}/todo/remove" method="post">
		    <p><c:out value="${boardMap.todo}" />
          	<input type="hidden" value="${boardMap.todoIdx}" name="todoIdx"/> 
          	<button id="btnDel"><span>삭제</span></button>
          </form>
		    
		</c:forEach>

    </ul>
    
    
    
   
    
  <%@ include file="/WEB-INF/views/include/footer.jsp" %>
</body>
</html>