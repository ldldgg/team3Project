<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<div id="headerDiv" style="background-color: #D0F5A9;">
	<img src="../img/danawalogo.png" onclick="location.reload();" />
	<div style="float: right;">
		<p style="margin: 10px;">닉네임: ${member.nickname}</p>
		<p style="margin: 10px; text-align: right;">
			<a href="../auth/logout">로그아웃</a>
		</p>
	</div>
</div>
