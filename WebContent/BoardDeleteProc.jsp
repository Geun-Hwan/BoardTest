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
	int num=Integer.parseInt(request.getParameter("num"));
	
	BoardDAO bdao = new BoardDAO();
	String pass=bdao.getPass(num);
	
	if(pass.equals(request.getParameter("password"))){
		bdao.deleteBoard(num);
		response.sendRedirect("BoardList.jsp");
	}else{
%>
	<script type="text/javascript">
		alert("패스워드가 틀려 삭제할 수 없습니다.패스워드를 확인해 주세요.");
		history.go(-1);
	</script>
<%
	}
%>
</body>
</html>