<%@ page import = "java.io.*,java.util.*,java.sql.*"%>
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>
<%@ page import = "java.util.*" %>
<%@ page import = "java.sql.Connection" %>
<%@ page import = "java.sql.DriverManager" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import = "java.sql.SQLException" %>
<%@ include file = "D_connector.jsp"%>
<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->
<!--[if !IE]><!-->
<html lang="en">
<!--<![endif]-->
<head>
  <jsp:include page="D_csslink.jsp"/>
</head>
<body>

	<!-- begin #page-loader -->
          <div id="page-loader" class="fade show"><span class="spinner"></span></div><!-- end #page-loader -->
    <div id="page-container" class="fade page-sidebar-fixed page-header-fixed"><!-- begin #page-container -->	
            <jsp:include page="D_header-navbar.jsp"/>
        <div id="content" class="content">	<!-- begin of content #content -->
	
			<!-- begin page-header -->
			<h1 class="page-header">Patient Bill Record</h1>
			<!-- end page-header -->
			
			<!-- begin row -->
			<div class="row">
			    <!-- begin col-10 -->
			    <div class="col-lg-12">
                    <div class="panel panel-inverse">
                        <!-- begin panel-heading -->
                       <div class="panel-heading" style="background-color: rgb(0,100,157);">
                           <h1 class="panel-title" style="color:white;" >Bill Record</h1>
						</div>
                        <!-- end panel-heading -->
                        <!-- begin panel-body -->
                        <div class="panel-body">
                            <br>
                                 <table id="data-table-combine" class="table table-striped table-bordered">
                                <thead>
                                    <tr>
                                        <th class="text-nowrap" hidden>#</th>
                                        <th class="text-nowrap">Bill No</th>
                                        <th class="text-nowrap">Patient Name</th>
                                        <th class="text-nowrap">Insurance</th>
                                        <th class="text-nowrap">Insurance ID Number</th>
                                        <th class="text-nowrap">Doctor's Fee</th>
                                        <th class="text-nowrap">Laboratory Fee</th>
                                        <th class="text-nowrap">Room's Fee</th> 
                                        <th class="text-nowrap">Fee's</th>
                                        <th class="text-nowrap">Status</th>
                                        <th class="text-nowrap">Action</th>
                                        
                                       
				    </tr>
                                </thead>
                                <tbody>
                            <%
                            String host ="jdbc:mysql://localhost:3306/insurance";
                            Connection connection = null;
                            Statement stat = null;
                            ResultSet res = null;
                            Class.forName("com.mysql.jdbc.Driver");
                            connection = DriverManager.getConnection(host,"root","");
                            stat = connection.createStatement();
                            String data = "SELECT * FROM hms_bill_t_billing p INNER JOIN hms_hmo_t_insured a ON a.insured_id = p.insured_id INNER JOIN hms_patient_r_information g ON g.pat_id = p.pat_id INNER JOIN hms_hmo_r_insurance b ON b.insid = p.insid INNER JOIN hms_bill_r_billdoctor c ON c.billdocid = p.billdocid INNER JOIN hms_bill_r_billlab d ON d.billlabid = p.billlabid INNER JOIN hms_bill_r_pharmacy f ON f.billpid = p.billpid INNER JOIN hms_bill_r_room e ON e.billroomid = p.billroomid where billstatus = 'Paid' ORDER BY billid DESC";
                            res = stat.executeQuery(data);
                            while(res.next()){
                            %> 
                            <tr>
                                <td hidden><%=res.getString("billid")%></td>
                                <td><%=res.getString("billidno")%></td>
                                <td><%=res.getString("pat_firstname")+" "+res.getString("pat_middlename")+" "+res.getString("pat_lastname")%></td>
                                <td><%=res.getString("insname")%></td>
                                <td><%=res.getString("insured_idno")%></td>
                                <td><%=res.getString("billdocfee")%></td>
                                <td><%=res.getString("billlabfee")%></td>
                                <td><%=res.getString("billroomfee")%></td>
                                <td><%=res.getString("billfees")%></td>
                                
                                <td>
                                    <span class="label label-primary "><%=res.getString("billstatus")%></span></td>
                               <td>
                                 
                                <a href='HMOB_invoice.jsp?u=<%=res.getString("billid")%>' class="btn btn-success "><i class='fa fa-file'></i></a>
                                
                          
                                </td>

                            </tr>
                                <%
                                }
                                %> 

                                </tbody>
                            </table>
                        </div>
                        <!-- end panel-body -->
                    </div>
			    </div>
			    <!-- end col-10 -->
			</div>
			<!-- end row -->
		</div><!-- end of all #content -->
                
               
        
		
		<!-- begin scroll to top btn -->
		<a href="javascript:;" class="btn btn-icon btn-circle btn-success btn-scroll-to-top fade" data-click="scroll-top"><i class="fa fa-angle-up"></i></a><!-- end scroll to top btn -->
    </div><!-- end page container -->
	
		
	<!-- ================== BEGIN BASE JS ================== -->
	<script src="assets/plugins/jquery/jquery-3.2.1.min.js"></script>
	<script src="assets/plugins/jquery-ui/jquery-ui.min.js"></script>
	<script src="assets/plugins/bootstrap/4.0.0/js/bootstrap.bundle.min.js"></script>
	<!--[if lt IE 9]>
		<script src="../assets/crossbrowserjs/html5shiv.js"></script>
		<script src="../assets/crossbrowserjs/respond.min.js"></script>
		<script src="../assets/crossbrowserjs/excanvas.min.js"></script>
	<![endif]-->
	<script src="assets/plugins/slimscroll/jquery.slimscroll.min.js"></script>
	<script src="assets/plugins/js-cookie/js.cookie.js"></script>
	<script src="assets/js/theme/default.min.js"></script>
	<script src="assets/js/apps.min.js"></script>
	<!-- ================== END BASE JS ================== -->
	
	<!-- ================== BEGIN PAGE LEVEL JS ================== -->
	<script src="assets/plugins/DataTables/media/js/jquery.dataTables.js"></script>
	<script src="assets/plugins/DataTables/media/js/dataTables.bootstrap.min.js"></script>
	
	<script src="assets/plugins/DataTables/extensions/Responsive/js/dataTables.responsive.min.js"></script>
	<script src="assets/plugins/DataTables/extensions/AutoFill/js/dataTables.autoFill.min.js"></script>
	<script src="assets/plugins/DataTables/extensions/ColReorder/js/dataTables.colReorder.min.js"></script>
	<script src="assets/plugins/DataTables/extensions/Select/js/dataTables.select.min.js"></script>
	<script src="assets/js/demo/table-manage-combine.demo.min.js"></script>
	<!-- ================== END PAGE LEVEL JS ================== -->
	
	<script>
		$(document).ready(function() {
			App.init();
			TableManageCombine.init();
		});
                
	</script>
        
        
</body>
</html>