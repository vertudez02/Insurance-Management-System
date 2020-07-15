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
                                        <th class="text-nowrap">Patient Name</th>
                                        <th class="text-nowrap">Description</th>
                                        <th class="text-nowrap">Quantity</th>
                                        <th class="text-nowrap">Fee's</th>
                                        <th class="text-nowrap">Date Registered</th>
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
                            String data = "SELECT * FROM hms_bill_r_pharmacy p INNER JOIN hms_patient_r_information b ON b.pat_id = p.pat_id where billpstatus = 'unpaid' ORDER BY billpid DESC";
                            res = stat.executeQuery(data);
                            while(res.next()){
                            %> 
                            <tr>
                                <td hidden><%=res.getString("billpid")%></td>
                                <td><%=res.getString("pat_firstname")+" "+res.getString("pat_middlename")+" "+res.getString("pat_lastname")%></td>
                                <td><%=res.getString("billpdescriptions")%></td>
                                <td><%=res.getString("billpqty")%></td>
                                <td><%=res.getString("billpfee")%></td>
                                <td><%=res.getString("billpdateregistered")%></td>
                                <td><span class="label label-warning "><%=res.getString("billpstatus")%></span></td>
                                
                               <td>
                                          
                                <a href='#?u=<%=res.getString("billpid")%>' class="btn btn-lime"><i class='fa fa-edit'></i></a>
                          
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