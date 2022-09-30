<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>3팀 게시판</title>

<link rel="stylesheet" href="./css/BoardListView.css?ab"/>
<script type="text/javascript" src="./js/BoardListView.js?a"></script>

</head>
<body>
<input id="selectFil" type="hidden" value="${selectFil}">

	<div id="rootDiv">
		<jsp:include page="/header.jsp" />
		<div id="wrapDiv">

		<div id="topDiv">
			<form action="./list" method="get">
				<span id="filterDiv">
					 <input class="filterForm" type="hidden" name="page"value="1">
					 <select id="selectFilSel" name="selectFil">
					 	<option value="subject">제목</option>
					 	<option value="writer">글쓴이</option>
					 	<option value="content">내용</option>
					 </select>
					 <input class="filterForm" type="text" name="filter" value="${filter}" 
					 	size="30">
					 <input class="filterForm filterBtn" type="submit" value="검색">
				</span>
			</form>
			<h1 id="boardTitle">3팀 게시판</h1>
		</div>
		<div id="tableDiv">
			<table>
				<tr id="titleTr">
					<th id="titleTh">제목</th>
					<th id="writerTh">글쓴이</th>
					<th id="dateTh">날짜</th>
					<th id="viewCountTh">조회수</th>
				</tr>
				<c:forEach var="board" items="${boardList}" begin="0"
					end="9">
					<tr>
						<td class="subject">
							<a class="boardSelect" href="./update?no=${board.bno}
							&filter=${filter}&selectFil=${selectFil}&page=${page}">${board.subject}</a>
						</td>
						<td class="infoTd">${board.writer}</td>
						<td class="infoTd"><fmt:formatDate value="${board.cre_date}"
								pattern="yyyy/MM/dd" /></td>
						<td class="infoTd">${board.view_count}</td>
					</tr>
				</c:forEach>
			</table>
		</div>
		<div id="pagemoveDiv">
			<div id="cre_board">
				<input type="button" value="글작성" class="moveBtn"
					onclick="location.href='./add'">
			</div>
			<div id="btnDiv">

				<c:if test="${page > 1}">
					<input type="button" value="< 이전" class="moveBtn"
						onclick="location.href='./list?filter=${filter}&selectFil=${selectFil}&page=${page-1}'">
				</c:if>

				<c:set var="pageOne" value="${(page-1) mod 10}" />
				<c:set var="pageFloor" value="${(page-1)-pageOne+1}" />

				<c:set var="boardListOne" value="${boardAllNum/10}" />
				<c:set var="pageList"
					value="${boardListOne+(1-boardListOne mod 1) mod 1}" />

				<c:choose>
					<c:when test="${pageList-pageFloor <= 10}">
						<c:set var="pageEnd" value="${pageList}" />
					</c:when>
					<c:otherwise>
						<c:set var="pageEnd" value="${pageFloor + 9}" />
					</c:otherwise>
				</c:choose>

				<c:forEach begin="${pageFloor}" end="${pageEnd}" var="i">

					<c:if test="${page eq i}">
						<input type="button" value="${i}" id="selectPage" class="pageBtn"
							onclick="location.href='./list?filter=${filter}&selectFil=${selectFil}&page=${i}'">
					</c:if>
					<c:if test="${page ne i}">
						<input type="button" value="${i}" class="pageBtn"
							onclick="location.href='./list?filter=${filter}&selectFil=${selectFil}&page=${i}'">
					</c:if>
				</c:forEach>

				<c:if test="${page < boardAllNum/10}">
					<input type="button" value="다음 >" class="moveBtn"
						onclick="location.href='./list?filter=${filter}&selectFil=${selectFil}&page=${page+1}'">
				</c:if>

			</div>
			<div style="clear: both;"></div>
		</div>
		</div>
		<jsp:include page="/footer.jsp" />
	</div>
</body>
</html>