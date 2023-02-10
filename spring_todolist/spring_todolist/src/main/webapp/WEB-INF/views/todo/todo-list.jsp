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

<%@ include file="/WEB-INF/views/include/header.jsp"%>

<section class="vh-10">
  <div class="container py-5 h-100">
    <div class="row d-flex justify-content-center align-items-center h-100">
      <div class="col">
        <div class="card" id="list1" style="border-radius: .75rem; background-color: #eff1f2;">
          <div class="card-body py-4 px-4 px-md-5">

            <p class="h1 text-center mt-3 mb-4 pb-3 text-primary">
              <i class="fas fa-check-square me-1"></i>
              <u>Todo List</u>
            </p>
            
               <div class="pb-2">

				<form action="${context}/todo/addTodo" method="post">
					<div class="input-group mb-3">
					  <input
					    type="text"
					    name="todo"
					    class="form-control form-control-lg" id="exampleFormControlInput1"
			                      placeholder="Add new..."
					  />
					  <button class="btn btn-outline-primary" type="submit" data-mdb-ripple-color="dark">
					    	Add Todo
					  </button>
					</div>
				</form>
			
              </div>
            

            <hr class="my-4">
            
            <c:forEach var="boardMap" items="${todo}">
            <form action="${context}/todo/remove" method="post">
           <ul class="list-group list-group-horizontal rounded-0 bg-transparent">
              
              <li class="list-group-item px-3 py-1 d-flex align-items-center flex-grow-1 border-0 bg-transparent">
                <p class="lead fw-normal mb-0"><c:out value="${boardMap.todo}" /> </p>
              </li>
              <li class="list-group-item ps-3 pe-0 py-1 rounded-0 border-0 bg-transparent">
              <input type="hidden" value="${boardMap.todoIdx}" name="todoIdx"/>
                <button id="btnDel" style="border:none;"><i
                      class="fas fa-trash-alt"></i></button>
       
            </ul>
            </form>
			</c:forEach>
            
     
          </div>
        </div>
      </div>
    </div>
  </div>
</section>


	
	<%@ include file="/WEB-INF/views/include/footer.jsp"%>
	

</body>
</html>