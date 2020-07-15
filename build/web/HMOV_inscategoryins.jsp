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
		String insid = request.getParameter("insid");
		String categoryname = request.getParameter("categoryname");
                String categorydescription = request.getParameter("categorydescription");
		
                int val = st.executeUpdate("INSERT INTO hms_hmo_r_insurancecategory ( insid, categoryname, categorydescription) VALUES ('"+insid+"', '"+categoryname+"','"+categorydescription+"')");

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

response.sendRedirect("HMOV_inscategory.jsp");


%>
