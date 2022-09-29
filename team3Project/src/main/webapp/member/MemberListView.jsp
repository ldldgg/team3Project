<%@page import="spms.dto.MemberDto"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원목록</title>
</head>
<body>
	<jsp:include page="/header.jsp" />
	<h1>회원가입 목록</h1>
	<c:forEach var="memberDto" items="${memberList}">
		${memberDto.getMno()}.
		<a href="./update?mno=${memberDto.mno}">${memberDto.id},</a>
		${memberDto.email},
		${memberDto.pwd},
		${memberDto.mname},
		${memberDto.nickname},
		${memberDto.cre_date},
		${memberDto.mod_date}
		<a href="#">[회원삭제]</a><br>
	</c:forEach>
	<jsp:include page="/footer.jsp" />
</body>
</html>