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
		String insured_idno = request.getParameter("insured_idno");
                String pat_id = request.getParameter("pat_id");
                String insid = request.getParameter("insid");
                String categoryid = request.getParameter("categoryid");
                String pcpid = request.getParameter("pcpid");
		
                int val = st.executeUpdate("INSERT INTO hms_hmo_t_insured ( insured_idno, pat_id, insid, categoryid, pcpid) VALUES ('"+insured_idno+"', '"+pat_id+"', '"+insid+"', '"+categoryid+"', '"+pcpid+"')");

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

response.sendRedirect("HMOS_insuredforreview.jsp");


%>
