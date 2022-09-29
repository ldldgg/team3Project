<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시글 수정</title>

<link rel="stylesheet" href="./css/BoardSelectView.css?a"/>
<script type="text/javascript" src="./js/BoardSelectView.js?abc"></script>

</head>
<body>
<input id="nePwd" type="hidden" value="${pwd}">

	<div id="rootDiv">
		<jsp:include page="/header.jsp"/>
		
		<div id="wrapDiv">
		<div id="titleDiv"><h2>Write</h2></div>
		
		<div id="tableDiv">
			<form action="./update" method="post">
				<table>
					<tr>
						<td class="titleTd" style="width: 100px;">Writer</td>
						<td>
							<input type="text" value="${board.writer}" readonly name="writer">
							<span id="subjectEmptyMsg" style="font-size: 10px; color: red;
							 display: none;">제목을 입력해주세요</span>
						</td>
					</tr>
					<tr>
						<td class="titleTd">Subject</td>
						<td><input type="text" value="${board.subject}" id="subject" name="subject"></td>
					</tr>	
					<tr>
						<td class="titleTd">Email</td>
						<td><input type="email" value="${board.email}" readonly name="email"></td>
					</tr>	
					<tr>
						<td class="titleTd">Content</td>
						<td><textarea id="content" name="content">${board.content}</textarea></td>
					</tr>	
					<tr>
						<td class="titleTd">Password</td>
						<td>
							<input id="pwd" type="text" name="pwd" value="${pwd}">
							<span id="pwdEmptyMsg" style="font-size: 10px; color: red;
							 display: none;">비밀번호를 입력하세요</span>
							<span id="pwdNeMsg" style="font-size: 10px; color: red;
							 display: none;">비밀번호가 다릅니다</span>
						</td>
					</tr>	
					<tr>
						<td id="btnTd" colspan="2">
							<input id="submit" type="submit" value="Save">
							<input id="delete" type="submit" value="Delete" formaction="./delete">
							<input type="button" value="Go to Main"
								onclick="location.href='./list?filter=${filter}&selectFil=${selectFil}&page=${page}'">
						</td>
					</tr>
				</table>
				<input type="hidden" value="${board.bno}" name="no">
			</form>
		</div>
		</div>
		<jsp:include page="/footer.jsp"/>
	</div>
</body>
</html>