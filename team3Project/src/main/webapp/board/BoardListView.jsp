<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판</title>

<link rel="stylesheet" href="./css/BoardListView.css">

</head>
<body>


	<div id="rootDiv">
		<jsp:include page="/header.jsp"/>
		
		<div id="topDiv">
			<h1>3팀 게시판	</h1>
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
						<td class="subject"><a href="./update?no=${board.bno}">${board.subject}</a></td>
						<td class="infoTd">${board.writer}</td>
						<td class="infoTd">${board.cre_date}</td>
						<td class="infoTd">${board.view_count}</td>
					</tr>
				</c:forEach>
			</table>
		</div>
		<div id="pagemoveDiv">
			<div id="cre_board">
				<input type="button" value="글작성" onclick="location.href='./add'">
			</div>
			<div id="btnDiv">
			
				<c:if test="${page > 1}">
					<input type="button" value="<이전" 
						onclick="location.href='./list?page=${page-1}'">
				</c:if>
				
				<c:set var="pageOne" value="${(page-1)%10}"/>
				<c:set var="pageFloor" value="${(page-1)-pageOne+1}"/>
				
				<c:set var="boardListOne" value="${boardList.size()/10}"/>
				<c:set var="pageList" value="${boardListOne+(1-boardListOne%1)%1}"/>
				
				<c:choose>
					<c:when test="${pageList-pageFloor <= 10}">
						<c:set var="pageEnd" value="${pageList}"/>
					</c:when>
					<c:otherwise>
						<c:set var="pageEnd" value="${pageFloor + 9}"/>
					</c:otherwise>
				</c:choose>
				
				<c:forEach begin="${pageFloor}" end="${pageEnd}" var="i">

					<c:if test="${page eq i}">
						<input type="button" value="${i}"
							onclick="location.href='./list?page=${i}'"
							style="color: red;">
					</c:if>
					<c:if test="${page ne i}">
						<input type="button" value="${i}"
							onclick="location.href='./list?page=${i}'">
					</c:if>
				</c:forEach>
				
				<c:if test="${page < boardList.size()/10}">
					<input type="button" value="다음>"
						onclick="location.href='./list?page=${page+1}'">
				</c:if>
					
			</div>
			<div style="clear:both;"></div>
		</div>
		
		<jsp:include page="/footer.jsp"/>
	</div>
</body>
</html>