<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/head.jsp" %>


<head>
<link href="/resources/css/member/login.css" rel="stylesheet" > 
</head>

<body>
<%@ include file="/WEB-INF/views/include/header.jsp" %>

 <section class="h-100 gradient-form wrap_content" style="background-color: #eee;">
  <div class="container py-5 h-100">
  	<c:if test="${not empty msg}">
	<div class="alert alert-danger" role="alert">
	 	${msg}
	</div>
	</c:if>
  
    <div class="row d-flex justify-content-center align-items-center h-100">
      <div class="col-xl-10">
        <div class="card rounded-3 text-black">
          <div class="row g-0">
            <div class="col-lg-6">
              <div class="card-body p-md-5 mx-md-4">

                <form action="/member/login" method="post">
                  <p>Please login to your account</p>

                  <div class="form-outline mb-4">
                    <input type="text" id="userId" name="userId" class="form-control" />
                    <label class="form-label" for="form2Example11">Username</label>
                  </div>

                  <div class="form-outline mb-4">
                    <input type="password" id="password" name="password" class="form-control" />
                    <label class="form-label" for="form2Example22">Password</label>
                  </div>

                  <div class="text-center pt-1 mb-5 pb-1">
                    <button class="btn btn-primary btn-block fa-lg gradient-custom-2 mb-3"  style="padding:20px">Log in</button>
                  </div>

                  <div class="d-flex align-items-center justify-content-center pb-4">
                    <p class="mb-0 me-2">Don't have an account?</p>
                    <a href="/member/signup" class="btn btn-outline-danger">Create new</a>
                  </div>

                </form>

              </div>
            </div>
            </div>
          </div>
        </div>
      </div>
    </div>
</section>



<%@ include file="/WEB-INF/views/include/footer.jsp" %>




</body>
</html>