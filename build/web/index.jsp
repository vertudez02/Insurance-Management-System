<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>

<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->
<!--[if !IE]><!-->
<html lang="en">
<!--<![endif]-->
<head>
     <jsp:include page="D_csslink.jsp"/>
     
          <!-- ================== BEGIN BASE CSS STYLE ================== -->
    
    <link href="assets/plugins/jquery-ui/jquery-ui.min.css" rel="stylesheet" />
    <link href="assets/plugins/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" />
    <link href="assets/plugins/font-awesome/5.0/css/fontawesome-all.min.css" rel="stylesheet" />
    <link href="assets/plugins/animate/animate.min.css" rel="stylesheet" />
    <link href="assets/css/default/style.min.css" rel="stylesheet" />
    <link href="assets/css/default/style-responsive.min.css" rel="stylesheet" />
    <link href="assets/css/default/theme/default.css" rel="stylesheet" id="theme" />
    <!-- ================== END BASE CSS STYLE ================== -->
    
    <!-- ================== BEGIN PAGE LEVEL STYLE ================== -->
    <link href="assets/plugins/fullcalendar/fullcalendar.print.css" rel="stylesheet" media='print' />
    <link href="assets/plugins/fullcalendar/fullcalendar.min.css" rel="stylesheet" />
    <!-- ================== END PAGE LEVEL STYLE ================== -->
    <link href="assets/plugins/jquery-jvectormap/jquery-jvectormap.css" rel="stylesheet" />
    <link href="assets/plugins/bootstrap-datepicker/css/bootstrap-datepicker.css" rel="stylesheet" />
    <link href="assets/plugins/gritter/css/jquery.gritter.css" rel="stylesheet" />
    
    
</head>
<body>
	<!-- begin #page-loader -->
	<div id="page-loader" class="fade show"><span class="spinner"></span></div>
	<!-- end #page-loader -->
	
	<!-- begin #page-container -->
	<div id="page-container" class="fade page-sidebar-fixed page-header-fixed">
                 <jsp:include page="D_header-navbar.jsp"/>
		<div id="content" class="content">
			<!-- begin page-header -->
			<h1 class="page-header">Dashboard</h1>
			
                         <div class="row">
                <!-- begin col-3 -->
                
                
      <div class="col-lg-3 col-md-6">
                    <div class="widget widget-stats bg-gradient-blue">
                        <div class="stats-icon stats-icon-lg"><i class="fa fa-user-md"></i></div>
                        <div class="stats-content">
                            <div class="stats-title">Registered Vendor</div>
                            <div class="stats-text"><small>Total Registered:</small> </div>
                            <div class="stats-number"><%
try
{
Class.forName("com.mysql.jdbc.Driver").newInstance();
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/insurance","root","");
Statement st=con.createStatement();
String strQuery = "SELECT COUNT(*) FROM hms_hmo_r_insurance where insremarks='Registered' ";
ResultSet rs = st.executeQuery(strQuery);
String Countrow="";
while(rs.next()){
Countrow = rs.getString(1);
out.println("" +Countrow);
}
}
catch (Exception e){
e.printStackTrace();
}
%></div>

                            <div class="stats-progress progress">
                                <div class="progress-bar" style="width: 70.1%;"></div>
                            </div>
                           	<div class="stats-link">
                                    <a href="HMOV_vendorreg.jsp">View Detail <i class="fa fa-arrow-alt-circle-right"></i></a>
                                </div>

		
	

                        </div>
                    </div>
                </div>
                <!-- end col-3 -->
                
               
                
                 <div class="col-lg-3 col-md-6">
                    <div class="widget widget-stats bg-gradient-blue">
                        <div class="stats-icon stats-icon-lg"><i class="fa fa-users"></i></div>
                        <div class="stats-content">
                            <div class="stats-title">Out Patient</div>
                            <div class="stats-text"><small>Total:</small> </div>
                            <div class="stats-number">
                                
                                
                               <%
                                try
                                {
                                Class.forName("com.mysql.jdbc.Driver").newInstance();
                                Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/insurance","root","");
                                Statement st=con.createStatement();
                                String strQuery = "SELECT COUNT(*) FROM hms_patient_r_information where pat_remarks='Out-Patient' ";
                                ResultSet rs = st.executeQuery(strQuery);
                                String Countrow="";
                                while(rs.next()){
                                Countrow = rs.getString(1);
                                out.println("" +Countrow);
                                }
                                }
                                catch (Exception e){
                                e.printStackTrace();
                                }
                                %>
                                
                               
                            </div>
                            <div class="stats-progress progress">
                                <div class="progress-bar" style="width: 76.3%;"></div>
                            </div>
                                
                                <div class="stats-link">
                                    <a href="HMOS_patientinfo.jsp">View Detail <i class="fa fa-arrow-alt-circle-right"></i></a>
                                </div>
                            
                        </div>
                    </div>
                </div>
                               
                            
                                <div class="col-lg-3 col-md-6">
                    <div class="widget widget-stats bg-gradient-blue">
                        <div class="stats-icon stats-icon-lg"><i class="fa fa-users"></i></div>
                        <div class="stats-content">
                            <div class="stats-title">In Patient</div>
                            <div class="stats-text"><small>Total:</small> </div>
                            <div class="stats-number">
                                
                                
                               <%
                                try
                                {
                                Class.forName("com.mysql.jdbc.Driver").newInstance();
                                Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/insurance","root","");
                                Statement st=con.createStatement();
                                String strQuery = "SELECT COUNT(*) FROM hms_patient_r_information where pat_remarks='In-Patient' ";
                                ResultSet rs = st.executeQuery(strQuery);
                                String Countrow="";
                                while(rs.next()){
                                Countrow = rs.getString(1);
                                out.println("" +Countrow);
                                }
                                }
                                catch (Exception e){
                                e.printStackTrace();
                                }
                                %>
                                
                               
                            </div>
                            <div class="stats-progress progress">
                                <div class="progress-bar" style="width: 76.3%;"></div>
                            </div>
                                
                                <div class="stats-link">
                                    <a href="HMOS_patientinfo.jsp">View Detail <i class="fa fa-arrow-alt-circle-right"></i></a>
                                </div>
                            
                        </div>
                    </div>
                </div>
                <!-- end col-3 -->
                
                 <div class="col-lg-3 col-md-6">
                    <div class="widget widget-stats bg-gradient-blue">
                        <div class="stats-icon stats-icon-lg"><i class="fa fa-users"></i></div>
                        <div class="stats-content">
                            <div class="stats-title">Insured Member</div>
                            <div class="stats-text"><small> Total Approved:</small> </div>
                            <div class="stats-number">
                                
                                
                               <%
                                try
                                {
                                Class.forName("com.mysql.jdbc.Driver").newInstance();
                                Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/insurance","root","");
                                Statement st=con.createStatement();
                                String strQuery = "SELECT COUNT(*) FROM hms_hmo_t_insured where insured_status='approved'";
                                ResultSet rs = st.executeQuery(strQuery);
                                String Countrow="";
                                while(rs.next()){
                                Countrow = rs.getString(1);
                                out.println("" +Countrow);
                                }
                                }
                                catch (Exception e){
                                e.printStackTrace();
                                }
                                %>
                                
                               
                            </div>
                            <div class="stats-progress progress">
                                <div class="progress-bar" style="width: 76.3%;"></div>
                            </div>
                                
                                <div class="stats-link">
                                    <a href="HMOS_insuredapproved.jsp">View Detail <i class="fa fa-arrow-alt-circle-right"></i></a>
                                </div>
                            
                        </div>
                    </div>
                </div>
                <!-- end col-3 -->
                
                <div class="col-lg-3 col-md-6">
                    <div class="widget widget-stats bg-gradient-blue">
                        <div class="stats-icon stats-icon-lg"><i class="fa fa-users"></i></div>
                        <div class="stats-content">
                            <div class="stats-title">Insured Member</div>
                            <div class="stats-text"><small> Total For Review: </small> </div>
                            <div class="stats-number">
                                
                                
                               <%
                                try
                                {
                                Class.forName("com.mysql.jdbc.Driver").newInstance();
                                Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/insurance","root","");
                                Statement st=con.createStatement();
                                String strQuery = "SELECT COUNT(*) FROM hms_hmo_t_insured where insured_status='for review'";
                                ResultSet rs = st.executeQuery(strQuery);
                                String Countrow="";
                                while(rs.next()){
                                Countrow = rs.getString(1);
                                out.println("" +Countrow);
                                }
                                }
                                catch (Exception e){
                                e.printStackTrace();
                                }
                                %>
                                
                               
                            </div>
                            <div class="stats-progress progress">
                                <div class="progress-bar" style="width: 76.3%;"></div>
                            </div>
                                
                                <div class="stats-link">
                                    <a href="HMOS_insuredforreview.jsp">View Detail <i class="fa fa-arrow-alt-circle-right"></i></a>
                                </div>
                            
                        </div>
                    </div>
                </div>
                <!-- end col-3 -->
                
                <div class="col-lg-3 col-md-6">
                    <div class="widget widget-stats bg-gradient-blue">
                        <div class="stats-icon stats-icon-lg"><i class="fa fa-users"></i></div>
                        <div class="stats-content">
                            <div class="stats-title">Insured Member</div>
                            <div class="stats-text"><small> Total Denied: </small> </div>
                            <div class="stats-number">
                                
                                
                               <%
                                try
                                {
                                Class.forName("com.mysql.jdbc.Driver").newInstance();
                                Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/insurance","root","");
                                Statement st=con.createStatement();
                                String strQuery = "SELECT COUNT(*) FROM hms_hmo_t_insured where insured_status='denied'";
                                ResultSet rs = st.executeQuery(strQuery);
                                String Countrow="";
                                while(rs.next()){
                                Countrow = rs.getString(1);
                                out.println("" +Countrow);
                                }
                                }
                                catch (Exception e){
                                e.printStackTrace();
                                }
                                %>
                                
                               
                            </div>
                            <div class="stats-progress progress">
                                <div class="progress-bar" style="width: 76.3%;"></div>
                            </div>
                                
                                <div class="stats-link">
                                    <a href="HMOS_insureddenied.jsp">View Detail <i class="fa fa-arrow-alt-circle-right"></i></a>
                                </div>
                            
                        </div>
                    </div>
                </div>
                <!-- end col-3 -->
                
                  
                <div class="col-lg-3 col-md-6">
                    <div class="widget widget-stats bg-gradient-blue">
                        <div class="stats-icon stats-icon-lg"><i class="fa fa-user-md"></i></div>
                        <div class="stats-content">
                            <div class="stats-title">Primary Care Physician</div>
                            <div class="stats-text"><small> Total PCP: </small> </div>
                            <div class="stats-number">
                                
                                
                               <%
                                try
                                {
                                Class.forName("com.mysql.jdbc.Driver").newInstance();
                                Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/insurance","root","");
                                Statement st=con.createStatement();
                                String strQuery = "SELECT COUNT(*) FROM hms_hmo_r_pcp where pcpstatus='Active'";
                                ResultSet rs = st.executeQuery(strQuery);
                                String Countrow="";
                                while(rs.next()){
                                Countrow = rs.getString(1);
                                out.println("" +Countrow);
                                }
                                }
                                catch (Exception e){
                                e.printStackTrace();
                                }
                                %>
                                
                               
                            </div>
                            <div class="stats-progress progress">
                                <div class="progress-bar" style="width: 76.3%;"></div>
                            </div>
                                
                                <div class="stats-link">
                                    <a href="HMOS_pcpreg.jsp">View Detail <i class="fa fa-arrow-alt-circle-right"></i></a>
                                </div>
                            
                        </div>
                    </div>
                </div>
                <!-- end col-3 -->
            </div>
            <!-- end row -->
            
            
            

			
		 <!-- begin vertical-box -->
            <div class="vertical-box">
                <!-- begin event-list -->
                <div class="vertical-box-column p-r-30 d-none d-lg-table-cell" style="width: 215px">
                    <div id="external-events" class="fc-event-list">
                        <h5 class="m-t-0 m-b-15">Draggable Events</h5>
                        <div class="fc-event" data-color="#00acac"><div class="fc-event-icon"><i class="fas fa-circle fa-fw f-s-9 text-success"></i></div> Meeting with Client</div>
                        <div class="fc-event" data-color="#348fe2"><div class="fc-event-icon"><i class="fas fa-circle fa-fw f-s-9 text-primary"></i></div> Appointment</div>
                        <div class="fc-event" data-color="#f59c1a"><div class="fc-event-icon"><i class="fas fa-circle fa-fw f-s-9 text-warning"></i></div> Patient Appointment</div>
                        <div class="fc-event" data-color="#ff5b57"><div class="fc-event-icon"><i class="fas fa-circle fa-fw f-s-9 text-danger"></i></div> Checkup Schedule</div>
                        <div class="fc-event"><div class="fc-event-icon"><i class="fas fa-circle fa-fw f-s-9 text-inverse"></i></div>Room Admission</div>
                        <hr class="bg-grey-lighter m-b-15"/>
                        <h5 class="m-t-0 m-b-15">Other Events</h5>
                        <div class="fc-event" data-color="#b6c2c9"><div class="fc-event-icon"><i class="fas fa-circle fa-fw f-s-9 text-grey"></i></div> Other Event 1</div>
                        <div class="fc-event" data-color="#b6c2c9"><div class="fc-event-icon"><i class="fas fa-circle fa-fw f-s-9 text-grey"></i></div> Other Event 2</div>
                        <div class="fc-event" data-color="#b6c2c9"><div class="fc-event-icon"><i class="fas fa-circle fa-fw f-s-9 text-grey"></i></div> Other Event 3</div>
                        <div class="fc-event" data-color="#b6c2c9"><div class="fc-event-icon"><i class="fas fa-circle fa-fw f-s-9 text-grey"></i></div> Other Event 4</div>
                        <div class="fc-event" data-color="#b6c2c9"><div class="fc-event-icon"><i class="fas fa-circle fa-fw f-s-9 text-grey"></i></div> Other Event 5</div>
                    </div>
                </div>
                <!-- end event-list -->
                <!-- begin calendar -->
                <div id="calendar" class="vertical-box-column calendar"></div>
                <!-- end calendar -->
            </div>
            <!-- end vertical-box -->
        </div>
        <!-- end #content -->
        <!-- begin scroll to top btn -->
        <a href="javascript:;" class="btn btn-icon btn-circle btn-success btn-scroll-to-top fade" data-click="scroll-top"><i class="fa fa-angle-up"></i></a>
        <!-- end scroll to top btn -->
    </div>
    <!-- end page container -->
	
	
        <!-- ================== BEGIN BASE JS ================== -->
    <script src="assets/plugins/jquery/jquery-3.2.1.min.js"></script>
    <script src="assets/plugins/jquery-ui/jquery-ui.min.js"></script>
    <script src="assets/plugins/bootstrap/4.0.0/js/bootstrap.bundle.min.js"></script>
    <!--[if lt IE 9]>
        
    <![endif]-->
    <script src="assets/plugins/slimscroll/jquery.slimscroll.min.js"></script>
    <script src="assets/plugins/js-cookie/js.cookie.js"></script>
    <script src="assets/js/theme/default.min.js"></script>
    <script src="assets/js/apps.min.js"></script>
    <!-- ================== END BASE JS ================== -->
    
    <!-- ================== BEGIN PAGE LEVEL JS ================== -->
    <script src="assets/plugins/fullcalendar/lib/moment.min.js"></script>
    <script src="assets/plugins/fullcalendar/fullcalendar.min.js"></script>
    <script src="assets/js/demo/calendar.demo.min.js"></script>
    <!-- ================== END PAGE LEVEL JS ================== -->
    
           
        <script>
        $(document).ready(function() {
            App.init();
            Calendar.init();
        });
    </script>
    
</body>
</html>
