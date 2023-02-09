<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/head.jsp" %>

<head>
<link href="/resources/css/member/login.css" rel="stylesheet" > 
</head>

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

<body>
<%@ include file="/WEB-INF/views/include/header.jsp" %>

<div style="background-color: #eee;">
<br>
 <section class="h-100 gradient-form wrap_content" >
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
                <br>
                  <h2 style= "font-weight:bold">Please login to your account</h2>
					<br><br>
					<center><img src="../../../resources/img/login.png"  style="width:200px; height:200px"/></center>
					<br><br>
                  <div class="form-outline mb-4">
                    <input type="text" id="userId" name="userId" class="form-control"  placeholder="id"/>
                    <label class="form-label" for="form2Example11"></label>
                    <input type="password" id="password" name="password" class="form-control"  placeholder="password"/>
                    <label class="form-label" for="form2Example22"></label>
                  </div>

                  <div class="text-center pt-1 mb-5 pb-1">
                    <button class="btn btn-primary"  style="padding:10px; width:100px">Log in</button>
                  </div>

                  <div class="d-flex align-items-center justify-content-center pb-4">
                    <h4 class="mb-0 me-2" >Don't have an account?</h4>
                    <a href="/member/signup" class="btn btn-secondary"  style="padding:10px">Create new</a>
                    <br><br>
                  </div>

                </form>

              </div>
            </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <br>

    
</section>
<br>
<br>
<br><br><br><br><br>
</div>

<br>
<%@ include file="/WEB-INF/views/include/footer.jsp" %>




</body>
</html>