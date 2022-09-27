<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시글 수정</title>

<link rel="stylesheet" href="./css/BoardSelectView.css">
<script type="text/javascript" src="./js/BoardSelectView.js"></script>

</head>
<body>
	<div id="rootDiv">
		<jsp:include page="/header.jsp"/>
		
		<div id="titleDiv"><h2>Write</h2></div>
		
		<div id="tableDiv">
			<form action="./update" method="post">
				<table>
					<tr>
						<td class="titleTd" style="width: 100px;">Writer</td>
						<td><input type="text" value="${board.writer}" readonly name="writer"></td>
					</tr>
					<tr>
						<td class="titleTd">Subject</td>
						<td><input type="text" value="${board.subject}" id="subject" name="subject" required></td>
					</tr>	
					<tr>
						<td class="titleTd">Email</td>
						<td><input type="email" value="${board.email}" readonly name="email"></td>
					</tr>	
					<tr>
						<td class="titleTd">Content</td>
						<td>
						<textarea id="content" name="content">${board.content}</textarea>
						</td>
					</tr>	
					<tr>
						<td class="titleTd">Password</td>
						<td><input type="text" name="pwd" required></td>
					</tr>	
					<tr>
						<td id="btnTd" colspan="2">
							<input type="hidden" value="${board.bno}" name="no">
							<input type="submit" value="Save">
							<input type="submit" value="Delete" formaction="./delete">
							<input type="button" value="Go to Main"
								onclick="pageBackFnc();">
						</td>
					</tr>
				</table>
			</form>
		</div>
		<jsp:include page="/footer.jsp"/>
	</div>
</body>
</html>