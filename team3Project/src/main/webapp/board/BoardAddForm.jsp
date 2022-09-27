<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시글 작성</title>

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