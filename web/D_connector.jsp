<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import = "java.sql.*, java.sql.DriverManager, java.sql.SQLException, java.util.Properties" %>

<%
	String user = "root";
	String password ="";
	
	Class.forName("com.mysql.jdbc.Driver");
	Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/insurance", "root", "");
%>