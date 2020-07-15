
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
        <div id="content" class="content"><!-- begin of content #content -->
			<!-- begin page-header -->
			<h1 class="page-header"> Manage Application </h1>
            <div class="row"><!-- begin row -->
                <div class="col-lg-12">  <!-- begin col-10 -->
                    <div class="panel panel-inverse">  <!-- begin panel-heading -->
                       <div class="panel-heading" style="background-color: rgb(0,100,157);">
                           <h1 class="panel-title" style="color:white;" >Application</h1>
                        </div><!-- end panel-heading -->
                        <div class="panel-body">  <!-- begin panel-body -->
							
                            <form data-parsley-validate="true" id="AddForm" method="POST" action="HMOS_pcpaddinsert.jsp">
                                
                                <div class="row row-space-10">  
                                
                                <div class="col-md-6">
                                        <div class="form-group m-b-10 p-t-5">
                                            <label for="username">Insurance</label>
                                             <select  class="form-control form-control-lg" required="required"  data-parsley-required="true"  name="insid" id="insid" > 
                                                  <option value="">Please choose</option>        
                                                 <%
                                        try
                                        {
                                         String Query="select * from hms_hmo_r_insurance";
                                         Class.forName("com.mysql.jdbc.Driver").newInstance();
                                        Connection conn1=DriverManager.getConnection("jdbc:mysql://localhost:3306/insurance","root","");
                                        Statement stm=conn1.createStatement();
                                        ResultSet rs=stm.executeQuery(Query);
                                        while(rs.next())   
                                        {
                                        %>
                                        <option value="<%=rs.getInt("insid")%>"
                                                
                                                
                                        <%
                                        if(request.getParameter("insid")!=null)
                                        {
                                            if(rs.getInt("insid")==Integer.parseInt(request.getParameter("insid")))
                                            {
                                                out.print("selected");
                                            }
                                         }
                                        %>        
                                               
                                         ><%=rs.getString("insname")%></option>
                                        <%
                                        }
                                            
                                        }
                                        catch(Exception ex)
                                        {
                                        ex.printStackTrace();
                                        }
                                        %>
                                                    </select>  
                                        </div>
                                   </div>
                                </div>
                                
                               <div class="row row-space-10">  
                                  
                                 
                                                                     
                                    <div class="col-md-4">
                                         <div class="form-group m-b-10 p-t-5">
                                            <label for="username">Primary Care Physicians:</label>
                                            <input id="pcpname" name="pcpname" class="form-control form-control-lg" type="text" placeholder="Ex. Dr. Jayson B. Palmares"  data-parsley-required="true" autofocus="autofocus"/>
                                        </div>
                                    </div>
                                   
                                    <div class="col-md-2">
                                        <div class="form-group m-b-10 p-t-5">
                                            <label for="username">Gender</label>
                                           <select id="pcpgender" name="pcpgender" class="form-control form-control-lg" data-parsley-required="true">
                                                <option value="">Please choose</option>
                                                <option value="Male"> Male</option>
                                                <option value="female"> Female</option>
                              
                                             </select>
                                        </div>
                                    </div>
                                   
                                    <div class="col-md-3">
                                        <div class="form-group m-b-10 p-t-5">
                                         <label for="username">Email:</label>
                                         <input  id="pcpemail" name="pcpemail" class="form-control form-control-lg"  type="text" placeholder="" data-parsley-required="true" />
                                        </div>
                                    </div>
                                   
                                   
                                     <div class="col-md-3">
                                        <div class="form-group m-b-10 p-t-5">
                                            <label for="username">Mobile number:</label>
                                            <input id="pcpcontact" type="text" name="pcpcontact" class="form-control form-control-lg"  placeholder="Mobile Number"  data-parsley-type="number"  data-parsley-required="true" />
                                        </div>
                                    </div>
                                    
                                </div>		
                                
											
				<div class="modal-footer">
                                   <button type="submit" id="AddBtn" class="btn btn-success"><i class="fa fa-save">&nbsp;Save </i></button>
                                      <button type="reset" class="btn btn-danger">&nbsp;Clear</button>
                                </div>							
                            </form>
                        </div>
                    </div> <!-- end panel-heading -->
                </div> <!-- begin col-10 -->
            </div>  <!-- end row-->
        </div><!-- end of content #content -->
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
	<script src="assets/plugins/parsley/dist/parsley.js"></script>
	<script src="assets/plugins/highlight/highlight.common.js"></script>
	<script src="assets/js/demo/render.highlight.js"></script>
	
	<!-- ================== BEGIN PAGE LEVEL JS ================== -->
	
    <script src="assets/plugins/gritter/js/jquery.gritter.js"></script>
	<script src="assets/plugins/bootstrap-sweetalert/sweetalert.min.js"></script>
	<script src="assets/js/demo/ui-modal-notification.demo.min.js"></script>
        
        
        <script src="assets/plugins/DataTables/media/js/jquery.dataTables.js"></script>
	<script src="assets/plugins/DataTables/media/js/dataTables.bootstrap.min.js"></script>
	
	<script src="assets/plugins/DataTables/extensions/Responsive/js/dataTables.responsive.min.js"></script>
	<script src="assets/plugins/DataTables/extensions/AutoFill/js/dataTables.autoFill.min.js"></script>
	<script src="assets/plugins/DataTables/extensions/ColReorder/js/dataTables.colReorder.min.js"></script>
	<script src="assets/plugins/DataTables/extensions/Select/js/dataTables.select.min.js"></script>
	<script src="assets/js/demo/table-manage-combine.demo.min.js"></script>
	<!-- ================== END PAGE LEVEL JS ================== -->
	
	
</body>
</html>
<script>
    $(document).ready(function() {
		App.init(); 
                Notification.init();
               TableManageCombine.init();
                  
                
                
                $("#AddBtn").click(function(){
                    
                    if($("#isnid").val()!= "" && $("#pcpname").val()!= "" && $("#pcpgender").val()!= "" && $("#pcpemail").val()!= "" 
                        && $("#pcpcontact").val()!= "")
                    
                        
        {
                        
                        $.ajax({
                         
                        data:{
                              insid:$("#isnid").val(),
                              pcpname:$("#pcpname").val(),
                              pcpgender:$("#pcpgender").val(),
                              pcpemail:$("#pcpemail").val(),
                              pcpcontact:$("#pcpcontact").val(),
                              
                        },
                        success:function(data){ 
                        
                                 swal("Appointment Added!", "Active", "success").then(function(){ 
                                 ////// location.href='doctors-specialty.jsp';
                                            
                                         $("#AddForm").trigger('reset');
                                        
                                 });
                        }
                        
                        });
                    }
                    
                    else{
                  swal("Please enter the required fields!", "", "error");
                        
                    }
                });
                                
                        
                   
        });
         $("#insid").change(function(){
                    
                  
                   $.ajax({
                      url:'InsuranceandCategory',
                      type:'post',
                      data:{insid:$(this).val()},
                      success:function(data){
                          $("#categoryid").find('option').remove();
                          $("#categoryid").append(data);
//                          convert_to_json = JSON.parse(data);
                          
                      },
                      error:function(){
                          alert("hello");
                          
                      }
                   });
                });
                
      
    $("#insid").change(function(){
                    
                  
                   $.ajax({
                      url:'InsuranceandPCP',
                      type:'post',
                      data:{insid:$(this).val()},
                      success:function(data){
                          $("#pcpid").find('option').remove();
                          $("#pcpid").append(data);
//                          convert_to_json = JSON.parse(data);
                          
                      },
                      error:function(){
                          alert("hello");
                          
                      }
                   });
                });
                
                
                
        </script>