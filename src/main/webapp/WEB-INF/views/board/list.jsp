<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
  <table border="1">
    <tr>
      <th>NO</th>
      <th>����</th>
      <th>�ۼ���</th>
      <th>�ۼ���</th>
      <th>��ȸ��</th>
    </tr>
    <c:forEach var="board" items="${boardList}" varStatus="loop">
      <tr>
        <td>${board.seq}</td>
        <td><a href="<c:url value="/board/read/${board.seq}" />">
          ${board.title}</a></td>
        <td>${board.writer}</td>
        <td>${board.regDate}</td>
        <td>${board.cnt}</td>
      </tr>
    </c:forEach>
  </table>
  <a href="<c:url value="/board/write" />">����</a>
</body>
</html>