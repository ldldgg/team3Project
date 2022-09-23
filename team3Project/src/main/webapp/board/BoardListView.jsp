<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판</title>
<style type="text/css">
	
	#rootDiv{
	}
	#titleTr {
		background-color: #F1F1F3;
	}

	
	#titleTh{
		width: 400px;
	}
	#writerTh{
		width: 100px;
	}
	#dateTh{
		width: 100px;
	}
	#viewCountTh{
		width: 100px;
	}
	.infoTd {
		text-align: center;
	}
	.subject{
		padding-left: 20px;
	}
		
	#pagemoveDiv{
		margin-top: 20px;
		width: 700px;
	}
	#btnDiv{
		text-align: center;
	}

	table{
		width: 700px;
		border-top: 1px solid #8C8C8C;
		border-bottom: 1px solid #8C8C8C;
 		border-collapse: collapse; 
	}
	th {
		font-size: 14px;
		height: 30px;
		border-bottom: 1px solid #8C8C8C;
	}
	td {
		font-size: 14px;
		height: 30px;
		border-top: 1px solid #D5D5D5;
	}
	
	#cre_board {
		float: right;
	}
</style>
</head>
<body>

	<div id="rootDiv">
		<div id="topDiv">
			<h1>3팀 게시판	</h1>
			<a href="../auth/login">로그아웃</a>
		</div>
		<div id="tableDiv">
			<table>
				<tr id="titleTr">
					<th id="titleTh">제목</th>
					<th id="writerTh">글쓴이</th>
					<th id="dateTh">날짜</th>
					<th id="viewCountTh">조회수</th>
				</tr>
				<c:forEach var="board" items="${boardList}" begin="${(page-1)*10}" end="${page*10-1}">
					<tr>
						<td class="subject"><a href="#">${board.subject}</a></td>
						<td class="infoTd">${board.writer}</td>
						<td class="infoTd">${board.cre_date}</td>
						<td class="infoTd">${board.view_count}</td>
					</tr>
				</c:forEach>
			</table>
		</div>
		<div id="pagemoveDiv">
			<div id="cre_board">
				<input type="button" value="글작성">
			</div>
			<div id="btnDiv">
			
				<c:if test="${page > 1}">
					<input type="button" value="<이전" 
						onclick="location.href='./list?page=${page-1}'">
				</c:if>
				<c:forEach begin="1" end="${boardList.size()/10+0.9}" var="i">
						<input type="button" value="${i}"
							onclick="location.href='./list?page=${i}'">
				</c:forEach>
				<c:if test="${page < boardList.size()/10}">
					<input type="button" value="다음>"
						onclick="location.href='./list?page=${page+1}'">
				</c:if>
					
			</div>
			
		
		</div>
	</div>
</body>
</html>