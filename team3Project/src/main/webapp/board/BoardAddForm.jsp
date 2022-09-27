<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시글 작성</title>

<link rel="stylesheet" href="./css/BoardAddForm.css">

</head>
<body>
	<div id="rootDiv">
		<jsp:include page="/header.jsp"/>
	
		<div id="titleDiv"><h2>Write</h2></div>
		
		<div id="tableDiv">
			<form action="./add" method="post">
				<table>
					<tr>
						<td class="titleTd" style="width: 100px;">Writer</td>
						<td><input type="text" value="${member.nickname}" readonly name="writer"></td>
					</tr>
					<tr>
						<td class="titleTd">Subject</td>
						<td><input type="text" id="subject" name="subject" required></td>
					</tr>	
					<tr>
						<td class="titleTd">Email</td>
						<td><input type="email" value="${member.email}" readonly name="email"></td>
					</tr>	
					<tr>
						<td class="titleTd">Content</td>
						<td><textarea id="content" name="content"></textarea></td>
					</tr>	
					<tr>
						<td class="titleTd">Password</td>
						<td><input type="text" name="pwd" required></td>
					</tr>	
					<tr>
						<td id="btnTd" colspan="2">
							<input type="submit" onclick="boardAddFnc();" value="Save">
							<input type="reset" value="Reset">
							<input type="button" value="Go to Main"
								onclick="history.back();">
						</td>
					</tr>
				</table>
			</form>
		</div>
		
		<jsp:include page="/footer.jsp"/>
	</div>
</body>
</html>