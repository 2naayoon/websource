<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>
<%@ page import="dao.TodoDao"%>
<%@ page import="dto.TodoDto"%>
<%
    // 한글 처리
    request.setCharacterEncoding("utf-8");

    // 제목 클릭 시 no 가져오기
    String no = request.getParameter("no");
    
    // DB 연동 작업 - Dao
    TodoDao dao = new TodoDao();
    TodoDto todo = dao.getRow(no);

    // todo 를 read.jsp에 보여주기
    request.setAttribute("todo", todo);

    // 화면이동(read)
    pageContext.forward("modify.jsp");
%>