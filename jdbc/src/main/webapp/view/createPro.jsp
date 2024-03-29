<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>
<%-- <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> --%>
<%@ page import="dao.TodoDao"%>
<%@ page import="dto.TodoDto"%>
<%
    // 한글 처리
    request.setCharacterEncoding("utf-8");

    // 사용자가 입력한 todo 가져오기
    String title = request.getParameter("title");
    String description = request.getParameter("description");
    
    // DB 연동 작업 - Dao
    TodoDao dao = new TodoDao();
    
    TodoDto inserDto = new TodoDto();
    inserDto.setTitle(title);
    inserDto.setDescription(description);

    int result = dao.insert(inserDto);

    // 화면이동(list)
    response.sendRedirect("list.jsp");
%>