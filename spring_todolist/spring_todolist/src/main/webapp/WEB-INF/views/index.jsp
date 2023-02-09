<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="/WEB-INF/views/include/head.jsp" %>
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

<body>

<%@ include file="/WEB-INF/views/include/header.jsp" %>

<div class="container wrap_content" style="text-align:center">
<br>
<center><img src="../../../resources/img/main.png"  style="height:30%; width:30%"/></center>
<br><br>
<h1>Welcome!</h1>
<h2 style=" font-family: 'LeferiPoint-WhiteObliqueA';">회원가입을 하고 더 많은 기능을 즐겨보세요</h2>
<br>
<h3 style=" font-family: 'LeferiPoint-WhiteObliqueA'; color: gray; font-size:20px">⚠ 글쓰기와 ToList 는 회원들에게만 제공됩니다.</h1>
</div>
<br><br><br>
<%@ include file="/WEB-INF/views/include/footer.jsp" %>
</body>
</html>