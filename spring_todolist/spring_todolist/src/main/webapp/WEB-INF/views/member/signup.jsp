<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/head.jsp" %>

<%-- signup 페이지에서만 사용할 head태그의 추가 내용 --%>
<head>
	<style type="text/css">
		.valid_info{
			display:block; 
			color:red;
			font-size: 1vw;
		}
	</style>
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
<br><br>
<div class="row d-flex justify-content-center align-items-center h-100">
      <div class="col-xl-10">
        <div class="card rounded-3 text-black">
          <div class="row g-0">
            <div class="col-lg-6">
              <div class="card-body p-md-5 mx-md-4">
 	<section class="h-100 gradient-form wrap_content" >
	<div class="container wrap_content" >
	<br>
	<br>
	<h1 style="text-align:center; font-weight:bold">Sign up Now</h1>
	<br>
	<center><img src="../../../resources/img/signup.png"  style="width:200px; height:200px"/></center>
   <form:form action="${context}/member/signup" method="post" id="frmJoin"
   	modelAttribute="signUpForm" >
      <table class="table table-borderless"  style="text-align:center ; font-size:15px" >
        <tr>
           <td>
           	  <input type="text" name="userId" id="inpId" size="22"  style="height:30px" required placeholder="Id"/>
              <button type="button" id="btnIdCheck" class="btn btn-primary btn-block mb-4"   style="margin-top:23px">check</button>
              <span class="valid_info" id="idCheck"></span>
              <!-- path: 필드명 -->
              <form:errors path="userId" cssClass="valid_info"/>
           </td>
        </tr>
        <tr>
           <td align="center">
           	  <input type="password" name="password" id="pw" class="form-label"  size="30"  style="height:30px" required placeholder="password"/>
           	  <span id="pw_confirm" class="valid_info"></span>
           	  <form:errors path="password" cssClass="valid_info"/>
           </td>
        </tr>
        <tr>
           <td>
           	  <input type="tel" name="tell" class="form-label"  size="30"  style="height:30px" required placeholder="phone number"/>
           	  <form:errors path="tell" cssClass="valid_info"/>
           </td>
        </tr>
        <tr>
           <td>
           	  <input type="email" name="email"   class="form-label"  size="30"  style="height:30px" required placeholder="email"/>
           	  <form:errors path="email" cssClass="valid_info"/>
           </td>
        </tr>
        <tr>
           <td>
              <input type="submit" class="btn btn-primary"   style="margin-top:15px; width:70px" value="가입" />
              <input type="reset" class="btn btn-secondary" data-mdb-ripple-color="light"   style="margin-top:15px; width:70px" value="취소" />
           </td>
       </tr>
   </table>
   </form:form>

</div>
<br>
<br>
</section>
</div>
            </div>
            </div>
          </div>
        </div>
      </div>
      <br><br>
    </div>

<br>
<%@ include file="/WEB-INF/views/include/footer.jsp" %>



 <script type="text/javascript">
 
 let idCheckFlg = false;
 
 btnIdCheck.addEventListener("click", ev => {

  let userId = inpId.value;
  
  if(userId){
   
   fetch("/member/checkId?userId=" + userId)
   .then(response => response.json())
   .then(obj => {
	   if(obj.exist){
		   idCheck.innerHTML = '이미 존재하는 아이디 입니다.';
		   idCheckFlg = false;
		   return;
	   }
	   
	   idCheck.innerHTML = '사용 가능한 아이디 입니다.';
	   idCheckFlg = true;
	   
   });
  }
 })
 
 frmJoin.addEventListener('submit', ev => {
  if(!idCheckFlg){
   ev.preventDefault();
   alert("아이디 중복검사에 실패했습니다.");
   inpId.focus();   
  }
  
 })
 
 
 
 
 </script>




</body>
</html>