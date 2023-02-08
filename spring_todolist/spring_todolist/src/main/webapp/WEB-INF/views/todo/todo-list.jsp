<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/head.jsp" %>
<head>
 <%@ include file="/WEB-INF/views/include/header.jsp" %>
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