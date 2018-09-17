<%@page import="java.sql.ResultSet"%>
<%@page import="common.DBCon"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.google.gson.Gson"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
Connection con = DBCon.getCon();	// Connection : 연결

String sql = "select * from board_info";
PreparedStatement ps = con.prepareStatement(sql);	// PreparedStatement : 준비됨, prepareStatement : 준비하고 있음 => 파싱단계
ResultSet rs = ps.executeQuery();

List<Map<String,String>> list = new ArrayList<Map<String,String>>();
	while(rs.next()) {
		Map<String,String> bi = new HashMap<String,String>();
		bi.put("binum",rs.getString("binum"));
		bi.put("bititle",rs.getString("bititle"));
		bi.put("bitext",rs.getString("bitext"));
		bi.put("bicnt",rs.getString("bicnt"));
		list.add(bi);
}
Gson gson = new Gson();	// 자동으로 :와 ""를 붙여주는 것
String str = gson.toJson(list);	// toJson : String형
out.println(gson.toJson(list));	// toJson : 객체를 String형으로 바꿔주는것	 
								// fromJson : String형을 객체로 바꿔주는것
%>
