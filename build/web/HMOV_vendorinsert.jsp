<%@ page import = "java.util.*" %>
<%@ page import = "java.sql.Connection" %>
<%@ page import = "java.sql.DriverManager" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import = "java.sql.SQLException" %>
<%@ include file = "D_connector.jsp"%>
<% 

	
	try{
	
		try{
		Statement st = conn.createStatement();
		String insname = request.getParameter("insname");
		String insdescription = request.getParameter("insdescription");
                String insremarks = request.getParameter("insremarks");

		
                int val = st.executeUpdate("INSERT INTO hms_hmo_r_insurance ( insname, insdescription, insremarks) VALUES ('"+insname+"', '"+insdescription+"','"+insremarks+"')");

		conn.close();
		}
		catch (SQLException ex){
		out.println("SQL statement is not executed!");
		}
		}
	catch (Exception e){
	e.printStackTrace();
	}
%>

	<%

response.sendRedirect("HMOV_vendorreg.jsp");


%>
