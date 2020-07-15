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
		String pcpname = request.getParameter("pcpname");
                String pcpgender = request.getParameter("pcpgender");
                String pcpemail = request.getParameter("pcpemail");
                String pcpcontact = request.getParameter("pcpcontact");
                
		
                int val = st.executeUpdate("INSERT INTO hms_hmo_r_pcp ( insid, pcpname,pcpgender, pcpemail, pcpcontact) VALUES ('"+insid+"', '"+pcpname+"','"+pcpgender+"', '"+pcpemail+"', '"+pcpcontact+"')");

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

response.sendRedirect("HMOS_pcpreg.jsp");


%>
