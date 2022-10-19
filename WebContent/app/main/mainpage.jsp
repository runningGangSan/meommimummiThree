<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>h.hyeoniya_main</title>
</head>
<body>
	<%
	    String userId = (String)session.getAttribute("userId");
	    boolean loginOk = userId == null ? false : true;
	    System.out.println("userId: " + userId);
	    System.out.println("카카오 로그인" + loginOk);

	    if(loginOk){ %>
	 	<jsp:include page = '${pageContext.request.contextPath}/app/fix/header_MainLogin.jsp'/>
	<% }else{ %>
		<jsp:include page = '${pageContext.request.contextPath}/app/fix/header.jsp'/>
	<% } %>

	
	<jsp:include page = '${pageContext.request.contextPath}/app/main/banner.jsp'/>  
	<jsp:include page = '${pageContext.request.contextPath}/app/main/mainFinal.jsp'/>  
	<jsp:include page = '${pageContext.request.contextPath}/app/fix/footer.jsp'/>  
	
</body>
</html>