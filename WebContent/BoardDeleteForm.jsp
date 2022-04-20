<%@page import="model.BoardBean"%>
<%@page import="model.BoardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div align="center">
	<h2>게시글 삭제</h2>
	<%
		int num=Integer.parseInt(request.getParameter("num").trim());
		BoardDAO bdao = new BoardDAO();
		BoardBean bean=bdao.getOneUpdateBoard(num);
	%>
	
	<form action="BoardDeleteProc.jsp" method="post">
			<table style="width:600; background-color:skyblue; border-color:gray;" border="1">
				<tr height="40">
					<td align="center" width="120">작성자</td>
					<td align="center" width="180"><%=bean.getWriter()%></td>
					<td align="center" width="180">작성일</td>
					<td align="center" width="180"><%=bean.getReg_date()%></td>
				</tr>
				<tr height="40">
					<td align="center" width="120">제목</td>
					<td align="center"width="180"><%=bean.getSubject()%></td>
				</tr>
				<!-- <tr height="40">
					<td align="center" width="150">이메일</td>
					<td width="480"><input type="email" name="email" required size="60"></td>
				</tr> -->
				<tr height="40">
					<td align="center" width="120">비밀번호</td>
					<td align="left" colspan="3">&nbsp;<input type="password" name="password" required size="60"></td>
				</tr>
				<tr height="40">
					<td align="center" colspan="4">
						<input type="hidden" name="num" value="<%=num%>">
						<input type="submit" value="글 삭제">&nbsp;&nbsp;
						<input type="button" onclick="location.href='BoardList.jsp'" value="목록 보기">
					</td>
				</tr>
			</table>
		</form>
</div>
</body>
</html>