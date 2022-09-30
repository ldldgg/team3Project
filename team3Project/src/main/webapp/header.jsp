<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>	

<div id='hearder' class="join_header header__login" style="height: 63px; margin-bottom: 20px;">
	<img src="../img/danawalogo.png" style="background-color: #fff; margin-left: 0;" 
		onclick="location.href='./list?page=1';"/>
	<div style="float: right;">
		<c:if test="${member ne null}">
			<p style="margin: 5px 10px; font-weight: bold; color: #000;">닉네임: ${member.nickname}</p>
			<p style="margin-bottom: 0px; margin-top: 11px; margin-right: 10px;
				 text-align: right;">
				<a href="../auth/logout" style="text-decoration: none;
					color: #000;">로그아웃</a>
			</p>
		</c:if>
	</div>
</div>
