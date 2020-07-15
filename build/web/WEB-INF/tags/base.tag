
<%@tag description="base html" pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>

 

<c:if test="${empty sessionScope.USER_ID}">
<c:redirect url="/login.jsp"></c:redirect>

</c:if>
 
  



<%-- The list of normal or fragment attributes can be specified here: --%>

<%@attribute name="title"%>
<%@attribute name="content" fragment="true"%>

<%@attribute name="js_page" fragment="true"%>
<%@attribute name="css_page" fragment="true"%>
<%-- any content can be specified here e.g.: --%>




 
<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->
<!--[if !IE]><!-->
<html lang="en">
<!--<![endif]-->
<head>
	<meta charset="utf-8" />
	<title> HMS | ${title}</title>
	<meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" name="viewport" />
	<meta content="" name="description" />
	<meta content="" name="author" />
	
	<!-- ================== BEGIN BASE CSS STYLE ================== -->
	<link href="http://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700" rel="stylesheet" />
	<link href="assets/plugins/jquery-ui/jquery-ui.min.css" rel="stylesheet" />
	<link href="assets/plugins/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" />
	<link href="assets/plugins/font-awesome/5.0/css/fontawesome-all.min.css" rel="stylesheet" />
	<link href="assets/plugins/animate/animate.min.css" rel="stylesheet" />
	<link href="assets/css/default/style.min.css" rel="stylesheet" />
            <link href="assets/css/default/style.css" rel="stylesheet" type="text/css"/>
	<link href="assets/css/default/style-responsive.min.css" rel="stylesheet" />
	<link href="assets/css/default/theme/default.css" rel="stylesheet" id="theme" />
	<!-- ================== END BASE CSS STYLE ================== -->
	
	<!-- ================== BEGIN BASE JS ================== -->
	<script src="assets/plugins/pace/pace.min.js"></script>
	<!-- ================== END BASE JS ================== -->
        
        <jsp:invoke fragment="css_page"/>
        
        
</head>

<body>
	<!-- begin #page-container -->
	<div id="page-container" class="page-container fade page-sidebar-fixed page-header-fixed">
		<!-- begin #header -->
		<div id="header" class="header navbar-default" style="background-color:rgb(0,100,157);">
			<!-- begin navbar-header -->
			<div class="navbar-header" >
                            <a href="index.jsp" class="navbar-brand"  style="color:white"> <b>Hospital Management </b> System</a>
				<button type="button" class="navbar-toggle" data-click="sidebar-toggled">
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>
			</div>
			<!-- end navbar-header -->
			
			<!-- begin header-nav -->
			<ul class="navbar-nav navbar-right">
				
				<li class="dropdown">
					<a href="javascript:;" data-toggle="dropdown" class="dropdown-toggle f-s-14">
						<i class="fa fa-bell"></i>
						<span class="label">2</span>
					</a>
					<ul class="dropdown-menu media-list dropdown-menu-right">
						<li class="dropdown-header">NOTIFICATIONS (3)</li>
					
						<li class="media">
							<a href="javascript:;">
								<div class="media-left">
									<img src="assets/img/user/user-1.jpg" class="media-object" alt="" />
									<i class="fab fa-facebook-messenger text-primary media-object-icon"></i>
								</div>
								<div class="media-body">
                    							<h6 class="media-heading">New Appointment Request</h6>
									<p>new approved appointment</p>
									<div class="text-muted f-s-11">a minute ago</div>
								</div>
							</a>
						</li>
					
						
                                                <li class="media">
							<a href="javascript:;">
								<div class="media-left">
									<i class="fa fa-envelope media-object bg-silver-darker"></i>
									<i class="fab fa-google text-warning media-object-icon f-s-14"></i>
								</div>
								<div class="media-body">
									<h6 class="media-heading"> New Email From John</h6>
									<div class="text-muted f-s-11">2 hour ago</div>
								</div>
							</a>
						</li>
						<li class="dropdown-footer text-center">
							<a href="javascript:;">View more</a>
						</li>
					</ul>
				</li>
				<li class="dropdown navbar-user">
					<a href="javascript:;" class="dropdown-toggle" data-toggle="dropdown">
						<img src="assets/img/user/nurse-guy.jpg" alt="" /> 
                                                <span class="d-none d-md-inline" style="color: white">${sessionScope.NAME}</span> <b class="caret"></b>
					</a>
					<div class="dropdown-menu dropdown-menu-right">
						<a href="profile.jsp" class="dropdown-item">Edit Profile</a>
						
						
						<div class="dropdown-divider"></div>
						<a href="${pageContext.request.contextPath}/sign_out" class="dropdown-item">Log Out</a>
					</div>
				</li>
			</ul>
			<!-- end header navigation right -->
		</div>
		<!-- end #header -->
		
		<!-- begin #sidebar -->
		<div id="sidebar" class="sidebar  sidebar-custom" style="background-color: rgb(0,100,157); color:white" data-disable-slide-animation="true" style="position: fixed ;" >
			<!-- begin sidebar scrollbar -->
                        <div data-scrollbar="true" data-height="100%" ">
				<!-- begin sidebar user -->
				<ul class="nav">
                                    <li class="nav-profile">
						<a href="javascript:;" data-toggle="nav-profile">
							<div class="cover with-shadow" style="background-image: url(assets/login-cover.jpeg)"></div>
							<div class="image">
								<img src="assets/img/user/nurse-guy.jpg" alt="" />
							</div>
							<div class="info">
								${sessionScope.NAME}
								<small>${sessionScope.ROLE}</small>
							</div>
						</a>
					</li>
                                    <ul class="nav " >
					<li class="nav-header" >Navigation</li>
 
 
             <!--- Pharmacy -->
                                 
            <li class="has-sub <%=request.getRequestURI().endsWith("javascript:;") || request.getRequestURI().endsWith("javascript:;")  ? "active" : ""%>${sessionScope.ROLE == "Pharmacist" ? "" : "hide"}">
            <a href="javascript:;">
            <b class="caret"></b>
                <i class="fa fa-bed"></i>
                <span>Requests Management</span> 
                
            </a>
            <ul class="sub-menu">
            <li class="<%=request.getRequestURI().endsWith("p_pendingReq.jsp") ? "active" : ""%>"><a href="p_pendingReq.jsp"><span>Pending Requests</span></a></li>
            <li class="<%=request.getRequestURI().endsWith("p_approvedReq.jsp") ? "active" : ""%>"><a href="p_approvedReq.jsp"><span>Approved Requests</span></a></li>
            <li class="<%=request.getRequestURI().endsWith("p_rejectedReq.jsp") ? "active" : ""%>"><a href="p_rejectedReq.jsp"><span>Rejected Requests</span></a></li>
            </ul>
        </li> 
              
        
        
<li class="has-sub <%=request.getRequestURI().endsWith("javascript:;") || request.getRequestURI().endsWith("javascript:;")  ? "active" : ""%>${sessionScope.ROLE == "Inventory Manager" ? "" : "hide"}">
            <a href="javascript:;">
            <b class="caret"></b>
                <i class="fa fa-bed"></i>
                <span>Product Management</span> 
                
            </a>
            <ul class="sub-menu">
            <li class="<%=request.getRequestURI().endsWith("m_product.jsp") ? "active" : ""%>"><a href="m_product.jsp"><span>Item Management</span></a></li>
            <li class="<%=request.getRequestURI().endsWith("m_category.jsp") ? "active" : ""%>"><a href="m_category.jsp"><span>Category Management</span></a></li>
            </ul>
        </li> 
        
 
<li class="has-sub <%=request.getRequestURI().endsWith("javascript:;") || request.getRequestURI().endsWith("javascript:;")  ? "active" : ""%>${sessionScope.ROLE == "Inventory Manager" ? "" : "hide"}">
            <a href="javascript:;">
            <b class="caret"></b>
                <i class="fa fa-clipboard"></i>
                <span>Supplier Management</span> 
                
            </a>
            <ul class="sub-menu">
            <li class="<%=request.getRequestURI().endsWith("m_supplier.jsp") ? "active" : ""%>"><a href="m_supplier.jsp"><span>Supplier Management</span></a></li>
            <li class="<%=request.getRequestURI().endsWith("m_productSupplier.jsp") ? "active" : ""%>"><a href="m_productSupplier.jsp"><span>Product Supplier Management</span></a></li>
            </ul>
        </li>
        
         <li class="has-sub <%=request.getRequestURI().endsWith("d_requests.jsp") || request.getRequestURI().endsWith("d_requests.jsp")  ? "active" : ""%>${sessionScope.ROLE == "Doctor" ? "" : "hide"}">
            <a href="d_requests.jsp">
            
                <i class="fa fa-stethoscope"></i>
                <span>Manage Requests</span> 
                
            </a>
        </li>
        
        <li class="has-sub <%=request.getRequestURI().endsWith("inPatients.jsp") || request.getRequestURI().endsWith ("outPatient.jsp")  ? "active" : ""%>${sessionScope.ROLE == "Nurse" ? "" : "Clerk/Staff"}">
            <a href="javascript:;">
            <b class="caret"></b>
                <i class="fa fa-users"></i>
                <span>Inventory</span> 
                
            </a>
            <ul class="sub-menu">
            <li class="<%=request.getRequestURI().endsWith("inPatients.jsp") ? "active" : ""%>"><a href="inPatients.jsp"><span>New Stock</span></a></li>
            <li class="<%=request.getRequestURI().endsWith("outPatient.jsp") ? "active" : ""%>"><a href="outPatient.jsp"><span>Old Stock</span></a></li>
           
            </ul>
        </li>
                                        
				<!-- end sidebar nav -->
			</div>
			<!-- end sidebar scrollbar -->
		</div>
		<div class="sidebar-bg"></div>
		<!-- end #sidebar -->
		
		<!-- begin #content -->
		<div id="content" class="content">
                    
                    <!--CONTENT HERE-->
                    <jsp:invoke fragment="content"/>
			
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
		<script src="assets/crossbrowserjs/html5shiv.js"></script>
		<script src="assets/crossbrowserjs/respond.min.js"></script>
		<script src="assets/crossbrowserjs/excanvas.min.js"></script>
	<![endif]-->
	<script src="assets/plugins/slimscroll/jquery.slimscroll.min.js"></script>
	<script src="assets/plugins/js-cookie/js.cookie.js"></script>
	<script src="assets/js/theme/default.min.js"></script>
	<script src="assets/js/apps.min.js"></script>
	<!-- ================== END BASE JS ================== -->
        
        <jsp:invoke fragment="js_page"/>
	
	<script>
		$(document).ready(function() {
			App.init();
		});
	</script>
</body>
</html>
