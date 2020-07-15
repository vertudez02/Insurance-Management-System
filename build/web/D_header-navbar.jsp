	<div id="header" class="header navbar-default" style="background-color:rgb(0,100,157);">
			<!-- begin navbar-header -->
			<div class="navbar-header" >
                            <a href="index.jsp" class="navbar-brand"  style="color:white"> <b>Health </b>Maintenance Organization</a>
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
						<span class="label">5</span>
					</a>
					<ul class="dropdown-menu media-list dropdown-menu-right">
						<li class="dropdown-header">NOTIFICATIONS (5)</li>
						<li class="media">
							<a href="javascript:;">
								<div class="media-left">
									<i class="fa fa-bug media-object bg-silver-darker"></i>
								</div>
								<div class="media-body">
									<h6 class="media-heading">Server Error Reports <i class="fa fa-exclamation-circle text-danger"></i></h6>
									<div class="text-muted f-s-11">3 minutes ago</div>
								</div>
							</a>
						</li>
						<li class="media">
							<a href="javascript:;">
								<div class="media-left">
									<img src="assets/img/user/user-1.jpg" class="media-object" alt="" />
									<i class="fab fa-facebook-messenger text-primary media-object-icon"></i>
								</div>
								<div class="media-body">
									<h6 class="media-heading">John Smith</h6>
									<p>Quisque pulvinar tellus sit amet sem scelerisque tincidunt.</p>
									<div class="text-muted f-s-11">25 minutes ago</div>
								</div>
							</a>
						</li>
						<li class="media">
							<a href="javascript:;">
								<div class="media-left">
									<img src="assets/img/user/user-2.jpg" class="media-object" alt="" />
									<i class="fab fa-facebook-messenger text-primary media-object-icon"></i>
								</div>
								<div class="media-body">
									<h6 class="media-heading">Olivia</h6>
									<p>Quisque pulvinar tellus sit amet sem scelerisque tincidunt.</p>
									<div class="text-muted f-s-11">35 minutes ago</div>
								</div>
							</a>
						</li>
						<li class="media">
							<a href="javascript:;">
								<div class="media-left">
									<i class="fa fa-plus media-object bg-silver-darker"></i>
								</div>
								<div class="media-body">
									<h6 class="media-heading"> New User Registered</h6>
									<div class="text-muted f-s-11">1 hour ago</div>
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
						<img src="assets/img/user/user-13.jpg" alt="" /> 
                                                <span class="d-none d-md-inline" style="color: white">${sessionScope.name}</span> <b class="caret"></b>
					</a>
					<div class="dropdown-menu dropdown-menu-right">
						<a href="javascript:;" class="dropdown-item">Edit Profile</a>
						
						
						<div class="dropdown-divider"></div>
						<a href="${pageContext.request.contextPath}/sign_out" class="dropdown-item">Log Out</a>
					</div>
				</li>
			</ul>
			<!-- end header navigation right -->
		</div>
		<!-- end #header -->
		
		<!-- begin #sidebar -->
		<div id="sidebar" class="sidebar  sidebar-custom"  style="background-color:rgb(0,100,157);" >
			<!-- begin sidebar scrollbar -->
                        <div data-scrollbar="true" data-height="100%" >
				<!-- begin sidebar user -->
				<ul class="nav">
					<li class="nav-profile">
						<a href="javascript:;" data-toggle="nav-profile">
							<div class="cover with-shadow" style="background-image: url(assets/login-cover.jpeg)"></div>
							<div class="image">
								<img src="assets/img/user/user-13.jpg" alt="" />
							</div>
							<div class="info">
								${sessionScope.name}
								<small>${sessionScope.roledescriptions}</small>
							</div>
						</a>
					</li>
					<li>
				
					</li>
				</ul>
				<!-- end sidebar user -->
                                
				<!-- begin sidebar nav -->
                                <ul class="nav ">
                                    <li class="nav-header" >Navigation</li>
                                        
                                    <!-- Dashboard -->
                                    
                                    <li class="has-sub ${sessionScope.roledesciptions == 'Patient' ? 'hide': ''} <%=request.getRequestURI().endsWith("index.jsp") ? "active" : ""%>"><a href="index.jsp"><i class="fa fa-th-large"></i> <span>Dashboard</span></a></li>
                                   
                                  
                                    
                                    <!-- Vendor --> 
                                    
                                    <li class="has-sub  ${sessionScope.roledesciptions == 'HMO Staff' || sessionScope.roledesciptions == 'Patient' ? 'hide': ''} <%=request.getRequestURI().endsWith("#") || request.getRequestURI().endsWith("#")  ? "active" : ""%>">
						<a href="javascript:;">
					        <b class="caret"></b>
						    <i class="fa fa-users"></i>
						    <span>Vendor</span> 
						</a>
						<ul class="sub-menu">
							
                                                        <li class="has-sub">
                                                                <a href="javascript:;">
                                                                <b class="caret"></b>
                                                                    <i class="fa fa-users"></i>
                                                                    <span>List of Vendor</span> 
                                                                </a>
                                                                <ul class="sub-menu">
                                                                    <li class="<%=request.getRequestURI().endsWith("HMOV_vendoraddreg.jsp") ? "active" : ""%>"><a href="HMOV_vendoraddreg.jsp"><i class="fa fa-user"></i> <span>New Record Vendor</span></a></li>
                                                                    <li class="<%=request.getRequestURI().endsWith("HMOV_vendorreg.jsp") ? "active" : ""%>"><a href="HMOV_vendorreg.jsp"><i class="fa fa-user"></i> <span>Vendor Registered</span></a></li>
                                                                </ul>
                                                        </li>
                                                        
                                                        <li class="has-sub">
                                                                <a href="javascript:;">
                                                                <b class="caret"></b>
                                                                    <i class="fa fa-users"></i>
                                                                    <span>Vendor Category</span> 
                                                                </a>
                                                                <ul class="sub-menu">
                                                                    <li class="<%=request.getRequestURI().endsWith("HMOV_inscategoryadd.jsp") ? "active" : ""%>"><a href="HMOV_inscategoryadd.jsp"><i class="fa fa-user"></i> <span>New Insurance Category</span></a></li>
                                                                    <li class="<%=request.getRequestURI().endsWith("HMOV_inscategory.jsp") ? "active" : ""%>"><a href="HMOV_inscategory.jsp"><i class="fa fa-user"></i> <span>Insurance Category</span></a></li>
                                                                </ul>
                                                        </li>
						</ul>
					</li>
                                    
                                    
                                    
                                    <!-- HMO Staff --> 
                                    
                                    <li class="has-sub  ${sessionScope.roledesciptions == 'HMO Staff' || sessionScope.roledesciptions == 'Patient' ? 'hide': ''} <%=request.getRequestURI().endsWith("HMOV_applicationAdd.jsp") || request.getRequestURI().endsWith("HMOV_applicationAdd.jsp")  ? "active" : ""%>">
						<a href="javascript:;">
					        <b class="caret"></b>
						    <i class="fa fa-users"></i>
						    <span>Insured Member</span> 
						</a>
						<ul class="sub-menu">
                                                    
                                                        <li class="has-sub">
                                                                <a href="javascript:;">
                                                                <b class="caret"></b>
                                                                    <i class="fa fa-users"></i>
                                                                    <span>Patient</span> 
                                                                </a>
                                                                <ul class="sub-menu">
                                                                    <li class="<%=request.getRequestURI().endsWith("HMOS_patientinfo.jsp") ? "active" : ""%>"><a href="HMOS_patientinfo.jsp"><i class="fa fa-user"></i> <span>Patient Information</span></a></li>
                                                                </ul>
                                                        </li>
                                                        
                                                         <li class="has-sub">
                                                                <a href="javascript:;">
                                                                <b class="caret"></b>
                                                                    <i class="fa fa-users"></i>
                                                                    <span>List of Insured</span> 
                                                                </a>
                                                                <ul class="sub-menu">
                                                                    <li class="<%=request.getRequestURI().endsWith("HMOS_insuredforreview.jsp") ? "active" : ""%>"><a href="HMOS_insuredforreview.jsp"><i class="fa fa-user"></i> <span>For Review</span></a></li>
                                                                    <li class="<%=request.getRequestURI().endsWith("HMOS_insuredapproved.jsp") ? "active" : ""%>"><a href="HMOS_insuredapproved.jsp"><i class="fa fa-user"></i> <span>Approved</span></a></li>
                                                                    <li class="<%=request.getRequestURI().endsWith("HMOS_insureddenied.jsp") ? "active" : ""%>"><a href="HMOS_insureddenied.jsp"><i class="fa fa-user"></i> <span>Denied</span></a></li>
                                                                </ul>
                                                        </li>
							
							<!-- <li class="<%=request.getRequestURI().endsWith("HMOV_applicationAdd.jsp") ? "active" : ""%>"><a href="HMOV_applicationAdd.jsp"><i class="fa fa-cog"></i> <span>Add Applicant</span></a></li> -->
							
						</ul>
					</li>
                                    
                                    
                                    <!-- Claims and Section --> 
                                    
                                    <li class="has-sub  ${sessionScope.roledesciptions == 'HMO Staff' || sessionScope.roledesciptions == 'Patient' ? 'hide': ''} <%=request.getRequestURI().endsWith("HMOV_applicationAdd.jsp") || request.getRequestURI().endsWith("HMOV_applicationAdd.jsp")  ? "active" : ""%>">
						<a href="javascript:;">
					        <b class="caret"></b>
						    <i class="fa fa-address-book"></i>
						    <span>Claims and Section</span> 
						</a>
						<ul class="sub-menu">
                                                    
                                                    
                                                         <li class="has-sub">
                                                                <a href="javascript:;">
                                                                <b class="caret"></b>
                                                                    <i class="fa fa-users"></i>
                                                                    <span>PCP</span> 
                                                                </a>
                                                                <ul class="sub-menu">
							
                                                                    <li class="<%=request.getRequestURI().endsWith("HMOS_pcpadd.jsp") ? "active" : ""%>"><a href="HMOS_pcpadd.jsp"><i class="fa fa-cog"></i> <span>Add new PCP</span></a></li>
                                                                    <li class="<%=request.getRequestURI().endsWith("HMOS_pcpreg.jsp") ? "active" : ""%>"><a href="HMOS_pcpreg.jsp"><i class="fa fa-cog"></i> <span>Registered</span></a></li>
                                                                    <li class="<%=request.getRequestURI().endsWith("#") ? "active" : ""%>"><a href="#"><i class="fa fa-user"></i> <span>Disabled</span></a></li>
                                                        
                                                                </ul>
                                                        </li>
							
						</ul>
					</li>
                                    
                                    <!-- Billing --> 
                                    
                                    <li class="has-sub  ${sessionScope.roledesciptions == 'HMO Staff' || sessionScope.roledesciptions == 'Patient' ? 'hide': ''} <%=request.getRequestURI().endsWith("HMOV_applicationAdd.jsp") || request.getRequestURI().endsWith("HMOV_applicationAdd.jsp")  ? "active" : ""%>">
						<a href="javascript:;">
					        <b class="caret"></b>
						    <i class="fa fa-clipboard"></i>
						    <span>Billing</span> 
						</a>
						<ul class="sub-menu">
                                                    
                                                    
                                                    <li class="has-sub">
                                                                <a href="javascript:;">
                                                                <b class="caret"></b>
                                                                    <i class="fa fa-users"></i>
                                                                    <span>Billing Transaction</span> 
                                                                </a>
                                                                <ul class="sub-menu">
							
                                                                    <li class="<%=request.getRequestURI().endsWith("#") ? "active" : ""%>"><a href="#"><i class="fa fa-cog"></i> <span>Billing Record</span></a></li>
                                                                    <li class="<%=request.getRequestURI().endsWith("HMOB_BillingTransaction.jsp") ? "active" : ""%>"><a href="HMOB_BillingTransaction.jsp"><i class="fa fa-user"></i> <span>Paid</span></a></li>
                                                                    <li class="<%=request.getRequestURI().endsWith("HMOB_BillingTransactionunpaid.jsp") ? "active" : ""%>"><a href="HMOB_BillingTransactionunpaid.jsp"><i class="fa fa-user"></i> <span>Unpaid</span></a></li>
                                                                </ul>
                                                        </li>
                                                    
                                                    
                                                    
                                                         <li class="has-sub">
                                                                <a href="javascript:;">
                                                                <b class="caret"></b>
                                                                    <i class="fa fa-users"></i>
                                                                    <span>Billing Doctor</span> 
                                                                </a>
                                                                <ul class="sub-menu">
							
                                                                    <li class="<%=request.getRequestURI().endsWith("HMOB_BillDoctorRec.jsp") ? "active" : ""%>"><a href="HMOB_BillDoctorRec.jsp"><i class="fa fa-cog"></i> <span>Bill Doctor Record</span></a></li>
                                                                    <li class="<%=request.getRequestURI().endsWith("HMOB_BillDoctorUnpaid.jsp") ? "active" : ""%>"><a href="HMOB_BillDoctorUnpaid.jsp"><i class="fa fa-user"></i> <span>Unpaid</span></a></li>
                                                        
                                                                </ul>
                                                        </li>
							
                                                        <li class="has-sub">
                                                                <a href="javascript:;">
                                                                <b class="caret"></b>
                                                                    <i class="fa fa-users"></i>
                                                                    <span>Billing Laboratory</span> 
                                                                </a>
                                                                <ul class="sub-menu">
							
                                                                    <li class="<%=request.getRequestURI().endsWith("#") ? "active" : ""%>"><a href="#"><i class="fa fa-cog"></i> <span>Bill Laboratory Record</span></a></li>
                                                                    <li class="<%=request.getRequestURI().endsWith("HMOB_BillLabUnpaid.jsp") ? "active" : ""%>"><a href="HMOB_BillLabUnpaid.jsp"><i class="fa fa-user"></i> <span>Unpaid</span></a></li>
                                                        
                                                                </ul>
                                                        </li>
                                                        
                                                        <li class="has-sub">
                                                                <a href="javascript:;">
                                                                <b class="caret"></b>
                                                                    <i class="fa fa-users"></i>
                                                                    <span>Billing Pharmacy</span> 
                                                                </a>
                                                                <ul class="sub-menu">
							
                                                                    <li class="<%=request.getRequestURI().endsWith("#") ? "active" : ""%>"><a href="#"><i class="fa fa-cog"></i> <span>Bill Pharmacy Record</span></a></li>
                                                                    <li class="<%=request.getRequestURI().endsWith("HMOB_BillphaUnpaid.jsp") ? "active" : ""%>"><a href="HMOB_BillphaUnpaid.jsp"><i class="fa fa-user"></i> <span>Unpaid</span></a></li>
                                                        
                                                                </ul>
                                                        </li>
                                                        
                                                        <li class="has-sub">
                                                                <a href="javascript:;">
                                                                <b class="caret"></b>
                                                                    <i class="fa fa-users"></i>
                                                                    <span>Billing Room</span> 
                                                                </a>
                                                                <ul class="sub-menu">
							
                                                                    <li class="<%=request.getRequestURI().endsWith("#") ? "active" : ""%>"><a href="#"><i class="fa fa-cog"></i> <span>Bill Room Record</span></a></li>
                                                                    <li class="<%=request.getRequestURI().endsWith("HMOB_BillroomUnpaid.jsp") ? "active" : ""%>"><a href="HMOB_BillroomUnpaid.jsp"><i class="fa fa-user"></i> <span>Unpaid</span></a></li>
                                                        
                                                                </ul>
                                                        </li>
                                                        
                                                        
						</ul>
					</li>
                                        
                                    
                                    
                                  <!-- Patient -->
                               <!-- <li class="has-sub ${sessionScope.roledesciptions == 'admin' || sessionScope.roledesciptions == 'Billing' || sessionScope.roledesciptions == 'HMO staff' || sessionScope.roledesciptions == 'PCP' ? 'hide': ''} <%=request.getRequestURI().endsWith("p_profile.jsp") ? "active" : ""%>"><a href="p_profile.jsp"><i class="fa fa-th-large"></i> <span>Profile</span></a></li> -->
                                 
                               <!-- <li class="has-sub ${sessionScope.roledesciptions == 'admin' || sessionScope.roledesciptions == 'Billing' || sessionScope.roledesciptions == 'HMO staff' || sessionScope.roledesciptions == 'PCP' ? 'hide': ''} <%=request.getRequestURI().endsWith("#") ? "active" : ""%>"><a href="#"><i class="fa fa-th-large"></i> <span>Status</span></a></li> -->
                                        
                                     <!-- Transaction -->
                                   <!--    <li class="has-sub  ${sessionScope.roledesciptions == 'Billing' || sessionScope.roledesciptions == 'PCP' || sessionScope.roledesciptions == 'Patient' ? 'hide': ''} <%=request.getRequestURI().endsWith("t_patient.jsp") || request.getRequestURI().endsWith("view_t_patient.jsp")  ? "active" : ""%>">
						<a href="javascript:;">
					        <b class="caret"></b>
						    <i class="fa fa-users"></i>
						    <span>Manage Insured</span> 
						</a>
						<ul class="sub-menu">
							
							<li class="<%=request.getRequestURI().endsWith("t_patient.jsp") ? "active" : ""%>"><a href="t_patient.jsp"><i class="fa fa-cog"></i> <span>Manage Insured Member</span></a></li>
							<li class="<%=request.getRequestURI().endsWith("view_t_patient.jsp") ? "active" : ""%>"><a href="view_t_patient.jsp"><i class="fa fa-user"></i> <span>List of Insured</span></a></li>
                                                        <li class="<%=request.getRequestURI().endsWith("view_t_patient.jsp") ? "active" : ""%>"><a href="view_t_FRpatient.jsp"><i class="fa fa-user"></i> <span>For Review</span></a></li>
                                                        <li class="<%=request.getRequestURI().endsWith("view_t_patient.jsp") ? "active" : ""%>"><a href="view_t_Apatient.jsp"><i class="fa fa-user"></i> <span>Approved</span></a></li>
                                                        <li class="<%=request.getRequestURI().endsWith("view_t_patient.jsp") ? "active" : ""%>"><a href="view_t_Dpatient.jsp"><i class="fa fa-user"></i> <span>Disabled</span></a></li>
						</ul>
					</li> -->  
                                        
                                 <!-- SET UP -->   
                                     
                             <!--   <li class="has-sub ${sessionScope.roledesciptions == 'HMO Staff' || sessionScope.roledesciptions == 'PCP' || sessionScope.roledesciptions == 'Billing' ? 'hide': ''} <%=request.getRequestURI().endsWith("r_patient.jsp") || request.getRequestURI().endsWith("#")  ? "active" : ""%>">
						<a href="javascript:;">
					        <b class="caret"></b>
						    <i class="fa fa-cogs"></i>
						    <span>Set Up</span> 
						</a>
						<ul class="sub-menu">
							
							<li class="has-sub <%=request.getRequestURI().endsWith("r_patient.jsp") ? "active" : ""%>"><a href="r_patient.jsp"><i class="fa fa-user"></i> <span>Add Patient </span></a></li>
                                                        <li class="has-sub <%=request.getRequestURI().endsWith("view_patient.jsp") ? "active" : ""%>"><a href="view_patient.jsp"><i class="fa fa-user"></i> <span>List of Patient</span></a></li>
							<li class="has-sub <%=request.getRequestURI().endsWith("r_doctor.jsp") ? "active" : ""%>"><a href="r_doctor.jsp"><i class="fa fa-user"></i> <span>Add Doctor</span></a></li>
                                                        <li class="has-sub <%=request.getRequestURI().endsWith("r_insurance.jsp") ? "active" : ""%>"><a href="r_insurance.jsp"><i class="fa fa-file"></i> <span>Add Insurance</span></a></li>
                                                        <li class="has-sub <%=request.getRequestURI().endsWith("r_category.jsp") ? "active" : ""%>"><a href="r_category.jsp"><i class="fa fa-file"></i> <span>Add Category</span></a></li>
                                                        <li class="has-sub <%=request.getRequestURI().endsWith("view_category.jsp") ? "active" : ""%>"><a href="view_category.jsp"><i class="fa fa-user"></i> <span>List of category</span></a></li>
						</ul>
					</li> --> 
                               
                                        
                               <!-- <li class="has-sub ${sessionScope.roledesciptions == 'HMO Staff' || sessionScope.roledesciptions == 'Billing' || sessionScope.roledesciptions == 'PCP' || sessionScope.roledesciptions == 'admin' ? 'hide': ''} <%=request.getRequestURI().endsWith("p_appointmentpcp.jsp") ? "active" : ""%>"><a href="p_appointmentpcp.jsp"><i class="fa fa-table"></i> <span>Appointment</span></a></li> -->
                                        
                               <!-- <li class="has-sub ${sessionScope.roledesciptions == 'Patient' || sessionScope.roledesciptions == 'PCP' || sessionScope.roledesciptions == 'Billing' ? 'hide': ''} <%=request.getRequestURI().endsWith("hs_pcplist.jsp") ? "active" : ""%>"><a href="hs_pcplist.jsp"><i class="fa fa-table"></i> <span>PCP</span></a></li> -->
                                        
                               <!-- <li class="has-sub ${sessionScope.roledesciptions == 'Patient' || sessionScope.roledesciptions == 'HMO Staff' || sessionScope.roledesciptions == 'PCP'? 'hide': ''} <%=request.getRequestURI().endsWith("b_addbill.jsp") ? "active" : ""%>"><a href="b_addbill.jsp"><i class="fa fa-table"></i> <span>Billing</span></a></li> -->
                               
                               
                               
                               <!-- MANAGE USER -->

                              <!-- <li class="has-sub  ${sessionScope.roledesciptions == 'HMO Staff' || sessionScope.roledesciptions == 'Billing' || sessionScope.roledesciptions == 'PCP' || sessionScope.roledesciptions == 'Patient' ? 'hide': ''} <%=request.getRequestURI().endsWith("manageuser.jsp") || request.getRequestURI().endsWith("manageuserlist.jsp")  ? "active" : ""%>">
						<a href="javascript:;">
					        <b class="caret"></b>
						    <i class="fa fa-users"></i>
						    <span>Manage User</span> 
						</a>
						<ul class="sub-menu">
							
							<li class="<%=request.getRequestURI().endsWith("admin_r_role.jsp") ? "active" : ""%>"><a href="admin_r_role.jsp"><i class="fa fa-cog"></i> <span>Manage Role</span></a></li>
							<li class="<%=request.getRequestURI().endsWith("admin_t_user.jsp") ? "active" : ""%>"><a href="admin_t_user.jsp"><i class="fa fa-user"></i> <span>Manage User</span></a></li>
						</ul>
					</li> -->
				
                                        
                                           <!-- Try -->
                                           
                              <!-- <li class="has-sub ${sessionScope.roledesciptions == 'Patient' || sessionScope.roledesciptions == 'HMO Staff' || sessionScope.roledesciptions == 'PCP'? 'hide': ''} <%=request.getRequestURI().endsWith("b_addbill.jsp") ? "active" : ""%>"><a href="b_addbill.jsp"><i class="fa fa-table"></i> <span>TRY</span></a></li> -->
					
					
					
					
					
			        
				</ul>
				<!-- end sidebar nav -->
			</div>
			<!-- end sidebar scrollbar -->
		</div>
		<div class="sidebar-bg"></div>