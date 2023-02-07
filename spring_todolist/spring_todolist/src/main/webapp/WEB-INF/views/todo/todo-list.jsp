<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/head.jsp" %>
<head>
 
</head>
<body>
   <h1>Todo List</h1>
    <form action="${context}/todo/addTodo" method="post">
		<div>
			<input type="text" name="todo" />
        	<input type="submit" value="Add Todo" />
		</div>
	</form>

    <hr>
    <ul>
        <li th:each="todo : ${todos}">
            <span th:text="${todo.todo}"></span>
        </li>
    </ul>
    
    
    
   
    
  
</body>
</html>