<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상세 게시판</title>

<style type="text/css">
	
	#rootdiv{
		width: 200px;
	}
	#content{
		width: 400px;
		height: 250px;
	}
	.titleTd{
	 	height: 25px;
		text-align: center;
	}
	h2{
		margin-left: 230px;
	}

	table{
		border-collapse: collapse;
	}
	td{
		border: 1px solid;
	}
	
	#btnTd{
		text-align: center;
	}
</style>

</head>
<body>

	<div id="rootDiv">

	<h2>Write</h2>

	<form action="./update" method="post">
		<table>
			<tr>
				<td class="titleTd" style="width: 100px;">Writer</td>
				<td>작성자</td>
			</tr>
			<tr>
				<td class="titleTd">Subject</td>
				<td><input type="text" value="" name="subject"
					style="width: 98%"></td>
			</tr>	
			<tr>
				<td class="titleTd">Email</td>
				<td>이메일</td>
			</tr>	
			<tr>
				<td class="titleTd">Content</td>
				<td><input type="text" value="" id="content" name="content"></td>
			</tr>	
			<tr>
				<td class="titleTd">Password</td>
				<td><input type="password" value="" name="pwd"></td>
			</tr>	
			<tr>
				<td id="btnTd" colspan="2">
					<input type="submit" value="Save">
					<input type="reset" value="Reset">
					<input type="button" value="Go to Main"
						onclick="location.href='./list'">
				</td>
			</tr>
		</table>
	</form>
	</div>
</body>
</html>