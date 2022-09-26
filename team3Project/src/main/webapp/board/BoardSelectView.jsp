<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시글 수정</title>

<style type="text/css">
	
	#rootDiv{
		width: 700px;
	}
	
	#titleDiv{
 		text-align: center;
	}
	
	.titleTd{
	 	height: 25px;
		text-align: center;
	}

	table{
		width: 100%;
		border-collapse: collapse;
	}
	
	td{
		border: 1px solid;
	}
	#subject{
		box-sizing: border-box;
		width: 100%;
	}
	
	#content {
		box-sizing: border-box;
		display: table;
		width: 100%;
		height: 300px;
	}
	
	#btnTd{
		text-align: center;
	}
	
</style>

</head>
<body>
	<div id="rootDiv">
	
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
						<td><input type="text" value="${board.email}" readonly name="email"></td>
					</tr>	
					<tr>
						<td class="titleTd">Content</td>
						<td>
						<textarea id="content" name="content">${board.content}</textarea>
						</td>
					</tr>	
					<tr>
						<td class="titleTd">Password</td>
						<td><input type="password" name="pwd"></td>
					</tr>	
					<tr>
						<td id="btnTd" colspan="2">
							<input type="hidden" value="${board.bno}" name="no">
							<input type="submit" value="Save">
							<input type="reset" value="Reset">
							<input type="button" value="Go to Main"
								onclick="location.href='./list?page=1'">
						</td>
					</tr>
				</table>
			</form>
		</div>
		
	</div>
</body>
</html>