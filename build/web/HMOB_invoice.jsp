<%-- 
    Document   : billinvoice
    Created on : Sep 13, 2019, 10:25:32 AM
    Author     : HARVEY
--%>
<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->
<!--[if !IE]><!-->
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<html lang="en">
<!--<![endif]-->
<head>
	<meta charset="utf-8" />
	<title>Billing | Invoice</title>
	<meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" name="viewport" />
	<meta content="" name="description" />
	<meta content="" name="author" />
	
	<!-- ================== BEGIN BASE CSS STYLE ================== -->
	<link href="http://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700" rel="stylesheet" />
	<link href="assets/plugins/jquery-ui/jquery-ui.min.css" rel="stylesheet" />
	<link href="assets/plugins/bootstrap/4.1.0/css/bootstrap.min.css" rel="stylesheet" />
	<link href="assets/plugins/font-awesome/5.0/css/fontawesome-all.min.css" rel="stylesheet" />
	<link href="assets/plugins/animate/animate.min.css" rel="stylesheet" />
	<link href="assets/css/default/style.min.css" rel="stylesheet" />
	<link href="assets/css/default/style-responsive.min.css" rel="stylesheet" />
	<link href="assets/css/default/theme/default.css" rel="stylesheet" id="theme" />
	<!-- ================== END BASE CSS STYLE ================== -->
	
	<!-- ================== BEGIN PAGE LEVEL CSS STYLE ================== -->
	<link href="assets/css/default/invoice-print.min.css" rel="stylesheet" />
	<!-- ================== END PAGE LEVEL CSS STYLE ================== -->
	
	<!-- ================== BEGIN BASE JS ================== -->
	<script src="assets/plugins/pace/pace.min.js"></script>
	<!-- ================== END BASE JS ================== -->
</head>
<body>
	<!-- begin #page-loader -->
	<div></span></div>
	<div>
		<div>			
			<!-- begin invoice -->
			<div class="invoice">
                <!-- begin invoice-company -->
                <div class="invoice-company text-inverse f-w-600">
                    <span class="pull-right hidden-print">
                    <a href="javascript:;" class="btn btn-sm btn-white m-b-10 p-l-5"><i class="fa fa-file-pdf t-plus-1 text-danger fa-fw fa-lg"></i> Export as PDF</a>
                    <a href="javascript:;" onclick="window.print()" class="btn btn-sm btn-white m-b-10 p-l-5"><i class="fa fa-print t-plus-1 fa-fw fa-lg"></i> Print</a>
                    </span>
                    <P>Bill Invoice</P>
                </div>
                <!-- end invoice-company -->
                <!-- begin invoice-header -->
                <div class="invoice-header">
                    <div class="invoice-from">
                        <address class="m-t-5 m-b-5">
                            <strong class="text-inverse">Hospital Name</strong><br />
                            Street Address<br />
                            City, Zip Code<br />
                            Phone: (123) 456-7890<br />
                            Fax: (123) 456-7890
                        </address>
                    </div>
                    <%
                               String host = "jdbc:mysql://localhost:3306/insurance";
                               Statement stat = null;
                               Connection conn = null;
                               ResultSet res = null;
                               PreparedStatement stmt = null;
                               Class.forName("com.mysql.jdbc.Driver").newInstance();
                               conn = DriverManager.getConnection(host, "root", "");
                            %>
                    <div class="invoice-date" action="" method="post" >
                        <%
                                    stat = conn.createStatement();
                                    String u = request.getParameter("u");
                                    int num = Integer.parseInt(u);
                                    String data = "SELECT * FROM hms_bill_t_billing p INNER JOIN hms_hmo_t_insured a ON a.insured_id = p.insured_id INNER JOIN hms_patient_r_information g ON g.pat_id = p.pat_id INNER JOIN hms_hmo_r_insurance b ON b.insid = p.insid INNER JOIN hms_bill_r_billdoctor c ON c.billdocid = p.billdocid INNER JOIN hms_bill_r_billlab d ON d.billlabid = p.billlabid INNER JOIN hms_bill_r_pharmacy f ON f.billpid = p.billpid INNER JOIN hms_bill_r_room e ON e.billroomid = p.billroomid WHERE billid ='"+num+"'";
                                    res = stat.executeQuery(data);
                                    while(res.next())
                                    {
                                %>
                        <strong class="text-inverse" style="font-size:20px;"><%= res.getString("insured_idno")%> <br>
                            <%= res.getString("pat_firstname")%>  <%= res.getString("pat_middlename")%> <%= res.getString("pat_lastname")%></strong>
                        <div class="invoice-detail">
                            <%= res.getString("insname")%>  <br/>
                            <%= res.getString("billpaymentdate")%>
                        </div>
                    </div>
                </div>
                <!-- end invoice-header -->
                <!-- begin invoice-content -->
                <div class="invoice-content">
                	<!-- begin table-responsive -->
                    <div class="table-responsive">
                        <table class="table table-invoice">
                            <thead>
                                <tr>
                                    <th>DESCRIPTION</th>
                                    <th class="text-center" width="10%">FEE</th>
                                    <th class="text-center" width="20%">LINE TOTAL</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td class="text-center">Doctor's Fee </td> 
                                   <td class="text-center">₱ <%= res.getString("billdocfee")%></td>
                                   <td class="text-center">₱ <%= res.getString("billdocfee")%></td> 
                                </tr>
                                <tr>
                                    <td class="text-center">Laboratory's Fee <br>
                                    ( <%= res.getString("billlabdescription")%> ) 
                                    </td>
                                    <td class="text-center">₱ <%= res.getString("billlabfee")%></td>
                                    <td class="text-center">₱ <%= res.getString("billlabfee")%></td> 
                                </tr> 
                                
                                
                                <tr>
                                    <td class="text-center">Room's Fee <br>
                                    ( <%= res.getString("billbednum")%> : <%= res.getString("billroomdescriptions")%> ) 
                                    </td>
                                  
                                    <td class="text-center">₱ <%= res.getString("billroomfee")%></td>
                                    <td class="text-center">₱ <%= res.getString("billroomfee")%></td>
                                </tr> 
                                
                                <tr>
                                    <td class="text-center">Medicine <br>
                                    ( <%= res.getString("Billpdescriptions")%> : <%= res.getString("billpqty")%> ) 
                                    </td>
                                  
                                    <td class="text-center">₱ <%= res.getString("billpfee")%></td>
                                    <td class="text-center">₱ <%= res.getString("billpfee")%></td>
                                </tr> 
                            </tbody>
                        </table>
                    </div>
                	<!-- end table-responsive -->
                	<!-- begin invoice-price -->
                    <div class="invoice-price">
                        <div class="invoice-price-left">
                            <div class="invoice-price-row">
                                <div class="sub-price">
                                    <small>SUBTOTAL</small
                                    
                                   <span class="text-inverse">₱ <%= res.getString("billfees")%></span>
                                </div>
                                <div class="sub-price">
                                    <i class="fa fa-minus text-muted"></i>
                                </div>
                                <div class="sub-price">
                                    <small>DISCOUNT/INSURANCE</small>
                                  <span class="text-inverse">₱ <%= res.getString("billdiscount")%></span>
                                </div>
                            </div>
                        </div>
                        <div class="invoice-price-right">
                            <small>TOTAL</small> <span class="f-w-600">₱ <%= res.getString("billtotal")%></span>
                        </div>
                    </div>
                        <%
                            }
                        %>
                	<!-- end invoice-price -->
                </div>
                <!-- end invoice-content -->
<!--                 begin invoice-note 
                <div class="invoice-note">
                    * Make all cheques payable to [Your Company Name]<br />
                    * Payment is due within 30 days<br />
                    * If you have any questions concerning this invoice, contact  [Name, Phone Number, Email]
                </div>
                 end invoice-note -->
                <!-- begin invoice-footer -->
                <div class="invoice-footer">
                    <p class="text-center m-b-5 f-w-600">
                        Reach us
                    </p>
                    <p class="text-center">
                        <span class="m-r-10"><i class="fa fa-fw fa-lg fa-globe"></i> hospitalname.com</span>
                        <span class="m-r-10"><i class="fa fa-fw fa-lg fa-phone-volume"></i> T:016-18192302</span>
                        <span class="m-r-10"><i class="fa fa-fw fa-lg fa-envelope"></i> hospitalname@gmail.com</span>
                    </p>
                </div>
                <!-- end invoice-footer -->
            </div>
			<!-- end invoice -->
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
	<script src="assets/plugins/bootstrap/4.1.0/js/bootstrap.bundle.min.js"></script>
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
	
	<script>
		$(document).ready(function() {
			App.init();
		});
	</script>
</body>
</html>
