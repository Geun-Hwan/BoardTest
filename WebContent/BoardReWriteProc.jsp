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
<%
	request.setCharacterEncoding("utf-8");
%>
<jsp:useBean id="bean" class="model.BoardBean"></jsp:useBean>
<jsp:setProperty property="*" name="bean"/>
<%
	BoardDAO bdao = new BoardDAO();
	bdao.reWriteBoard(bean);
	
	// 게시글 저장 후 전체 게시글 보기
	response.sendRedirect("BoardList.jsp");
%>
</body>
</html>