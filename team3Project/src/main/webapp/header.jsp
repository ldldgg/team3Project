<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>	

<div id="headerDiv" style="background-color: #2964e0; height: 63px;">
	<img src="../img/danawalogo.png" style="background-color: #fff; margin-left: 0;" 
		onclick="location.href='./list?page=1';"/>
	<div style="float: right;">
			<p style="margin: 8px; font-weight: bold; color: #fff;">닉네임: ${member.nickname}</p>
			<p style="margin: 8px; text-align: right; color: #fff;">
				<a href="../auth/logout" style="text-decoration: none;
					color: #FFF;">로그아웃</a>
			</p>
	</div>
</div>
