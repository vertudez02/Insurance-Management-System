<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%! int x;%>
    <%
        try
          {
              Class.forName("com.mysql.jdbc.Driver").newInstance();
              Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/insurance","root","");
              Statement st=con.createStatement();
              String strQuery = "SELECT COUNT(*) FROM hms_hmo_r_application";
              ResultSet rs = st.executeQuery(strQuery);
              String Countrow="";
              while(rs.next()){
              Countrow = rs.getString(1);
              out.println("" +Countrow);
                 }
                 x = Integer.parseInt(Countrow);
                 out.print(+x);
                 }
              catch (Exception e){
              e.printStackTrace();
          }
     %>


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
    <script src="assets/plugins/chart-js/Chart.bundle"/>
    
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
                            <div>
                                <canvas id="bar-chart" data-render="chart-js"></canvas>
                            </div>
                            <script>
                            var ctx = document.getElementById('myChart').getContext('2d');
                            var myChart = new Chart(ctx, {
                                type: 'bar',
                                data: {
                                    datasets: [{
                                        data: [
                                            <%=x%>,
                                             rs.getstring("insname");
                                              ],
                                        backgroundColor: [
                                            window.chartColors.red,
                                            window.chartColors.orange,
                                            window.chartColors.yellow,
                                            window.chartColors.green,
                                            window.chartColors.blue,
                                        ],
                                        borderColor: [
                                            'rgba(255, 99, 132, 1)',
                                            'rgba(54, 162, 235, 1)',
                                            'rgba(255, 206, 86, 1)',
                                            'rgba(75, 192, 192, 1)',
                                            'rgba(153, 102, 255, 1)',
                                            'rgba(255, 159, 64, 1)'
                                        ],
                                        borderWidth: 1
                                    }]
                                },
                                options: {
                                    scales: {
                                        yAxes: [{
                                            ticks: {
                                                beginAtZero: true
                                            }
                                        }]
                                    }
                                }
                            });
                            </script>
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
         
            </div>
            <!-- end row -->
            
            
            

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
