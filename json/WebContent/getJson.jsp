<%@page import="java.util.Map"%>
<%@page import="com.google.gson.Gson"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
Gson gson = new Gson();
String param = request.getParameter("param");
Map<String,Object> map = gson.fromJson(param, Map.class);	// fromJson : Integer형 값이 모두 Double형으로 변경됨
System.out.println(map); 
%>
