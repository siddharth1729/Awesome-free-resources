﻿<!DOCTYPE html>
<!--[if IE 7]>
<html class="ie ie7" lang="en-US" prefix="og: http://ogp.me/ns#">
<![endif]-->
<!--[if IE 8]>
<html class="ie ie8" lang="en-US" prefix="og: http://ogp.me/ns#">
<![endif]-->
<!--[if !(IE 7) | !(IE 8)  ]><!-->
<!--[if !(IE 7) | !(IE 8)  ]><!-->
<html lang="en-US" prefix="og: http://ogp.me/ns#">
<head>
<meta charset="utf-8">
<title>Mastering DAX and Data Models in Power BI Desktop - Tutorialspoint</title>    
<meta name="Description" content="Mastering DAX and Data Models in Power BI Desktop - If you are planning to get started with Power BI and your data analytics journey it is very important that you follow a proper path to learn various concepts ab"/>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width,initial-scale=1.0,user-scalable=yes">
<base href="https://www.tutorialspoint.com/" />
<meta name="apple-mobile-web-app-capable" content="yes">
<meta name="apple-mobile-web-app-status-bar-style" content="black">
<link rel="shortcut icon" href="https://www.tutorialspoint.com/favicon.ico" type="image/x-icon"/> 
<link rel="stylesheet" href="https://www.tutorialspoint.com/videotutorials/css/custom.css?v=1.6" />
<link rel="stylesheet" href="https://www.tutorialspoint.com/videotutorials/css/vd.css?v=18" />
<script src="https://www.tutorialspoint.com/videotutorials/js/vendors.min.js"></script>
<script src="https://www.tutorialspoint.com/videotutorials/js/fontawesome.js"></script>
<script src="https://www.tutorialspoint.com/videotutorials/js/videos-custom.js"></script>  
<script src="https://code.jquery.com/ui/1.10.4/jquery-ui.js"></script>
<style>
</style>
<script>
   var emailPattern =  /^([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$/;
   var phonePattern = /^[0-9]{10}$/;
   var numberPattern = /^\d*$/;
   var baseurl = 'https://www.tutorialspoint.com/videotutorials';
   var videobaseurl = 'https://www.tutorialspoint.com/videotutorials';
   var profile_baseurl = 'https://www.tutorialspoint.com/videotutorials';
   var videoapiurl = 'https://www.tutorialspoint.com/videotutorials';
   var videos_image_url = 'https://www.tutorialspoint.com/videotutorials/assets/videos/courses';
   var var_auth = '';
   var video_server_url = 'https://videos.tutorialspoint.com/';
</script>
<script src="https://www.tutorialspoint.com/videotutorials/js/videos.js?v=2.4"></script>
</head>

<body class="vertical-layout vertical-menu 2-columns fixed-navbar pace-done menu-expanded" data-open="click" data-menu="vertical-menu" data-col="2-columns">

	<!-- fixed-top-->
	<nav class="header-navbar navbar-expand-md navbar navbar-with-menu fixed-top navbar-semi-dark navbar-shadow">
		<div class="navbar-wrapper desktop large">
         <div class="mui-container">
            <div class="navbar-header">
				<ul class="nav navbar-nav flex-row">
					<li class="nav-item mobile-menu d-md-none mr-auto"><a class="nav-link nav-menu-main menu-toggle hidden-xs" href="#"></a></li>
					<li class="nav-item"><a class="navbar-brand" href="https://www.tutorialspoint.com/"><img class="brand-logo" alt="Premium Online Courses - Videotutorials" src="https://www.tutorialspoint.com/videotutorials/images/tp-diamond.png" title="Premium Online Courses - Videotutorials" /> <h3 class="brand-text"><img class="" alt="Premium Online Courses - Videotutorials" src="https://www.tutorialspoint.com/videotutorials/images/tp-diamond-text.png" title="Premium Online Courses - Videotutorials" /></h3></a></li>
					<li class="nav-item d-md-none"><a class="nav-link open-navbar-container" data-toggle="collapse" data-target="#navbar-mobile"><i class="fa fa-ellipsis-h header-icons"></i></a></li>
				</ul>
			</div>
			<div class="navbar-container content">
          <div class="collapse navbar-collapse" id="navbar-mobile">
            <ul class="nav navbar-nav mr-auto float-left">
					<li class="nav-item d-none d-md-block"><a class="nav-link nav-menu-main menu-toggle hidden-xs" href="#"></a></li>
					<li class="dropdown dropdown-language nav-item"><a class="dropdown-toggle nav-link" id="dropdown-flag" href="#" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i class="fa fa-th-solid"></i> &nbsp;<span>Categories <i class="fa fa-caret-down" style="vertical-align:middle;"></i></span></a>
						<div class="dropdown-menu" aria-labelledby="dropdown-flag">
							<ul class="dropdown-menu categoryShow">                        
								<li><ul><li><a href='https://www.tutorialspoint.com/videotutorials/category/it_and_software'><i class='fa fa-tv icon'></i><span>IT & Software</span><i class='fa fa-angle-right'></i></a><ul><li class='expanded'><a href='https://www.tutorialspoint.com/videotutorials/category/hardware'>Hardware  <i class='fa fa-angle-right'></i></a><ul><li><a href='https://www.tutorialspoint.com/videotutorials/category/arduino'>Arduino</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/electronics'>Electronics</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/embedded_systems'>Embedded Systems</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/fpga'>FPGA</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/microcontroller'>Microcontroller</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/raspberry_pi'>Raspberry Pi</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/rtos'>RTOS</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/plc'>PLC</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/embedded_c'>Embedded C</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/iot'>IoT</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/hardware_other'>Hardware Other</a></li></ul></li><li class='expanded'><a href='https://www.tutorialspoint.com/videotutorials/category/it_certification'>IT Certification  <i class='fa fa-angle-right'></i></a><ul><li><a href='https://www.tutorialspoint.com/videotutorials/category/aws_certification'>AWS Certification</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/cisco_ccna'>Cisco CCNA</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/comptia_aplus'>CompTIA A+</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/comptia_networkplus'>CompTIA Network+</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/comptia_securityplus'>CompTIA Security+</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/itil_certification'>ITIL Certification</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/aws_certified_developer_associate'>AWS Certified Developer - Associate</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/aws_certified_cloud_practitioner'>AWS Certified Cloud Practitioner</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/aws_certified_solutions_architect_associate'>AWS Certified Solutions Architect - Associate</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/aws_certified_solutions_architect_professional'>AWS Certified Solutions Architect - Professional</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/icnd'>ICND</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/it_certification_other'>IT Certification Other</a></li></ul></li><li class='expanded'><a href='https://www.tutorialspoint.com/videotutorials/category/network_and_security'>Network & Security  <i class='fa fa-angle-right'></i></a><ul><li><a href='https://www.tutorialspoint.com/videotutorials/category/active_directory'>Active Directory</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/cyber_security'>Cyber Security</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/ethical_hacking'>Ethical Hacking</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/it_networking_fundamentals'>IT Networking Fundamentals</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/network_security'>Network Security</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/penetration_testing'>Penetration Testing</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/deep_web'>Deep Web</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/network_and_security_other'>Network & Security Other</a></li></ul></li><li class='expanded'><a href='https://www.tutorialspoint.com/videotutorials/category/operating_systems'>Operating Systems  <i class='fa fa-angle-right'></i></a><ul><li><a href='https://www.tutorialspoint.com/videotutorials/category/linux'>Linux</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/linux_administration'>Linux Administration</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/powershell'>PowerShell</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/shell_scripting'>Shell Scripting</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/system_center_configuration'>System Center Configuration</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/vmware_vsphere'>VMware Vsphere</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/windows_server'>Windows Server</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/computer_science'>Computer Science</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/lpic_1_linux_administrator'>LPIC-1: Linux Administrator</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/operating_systems_other'>Operating Systems Other</a></li></ul></li><li class='expanded'><a href='https://www.tutorialspoint.com/videotutorials/category/telecom'>Telecom  <i class='fa fa-angle-right'></i></a><ul><li><a href='https://www.tutorialspoint.com/videotutorials/category/telecom_other'>Telecom Other</a></li></ul></li><li class='expanded'><a href='https://www.tutorialspoint.com/videotutorials/category/it_other'>IT Other  <i class='fa fa-angle-right'></i></a></li></ul></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/business'><i class='fa fa-chart-bar icon'></i><span>Business</span><i class='fa fa-angle-right'></i></a><ul><li class='expanded'><a href='https://www.tutorialspoint.com/videotutorials/category/business_law'>Business Law  <i class='fa fa-angle-right'></i></a><ul><li><a href='https://www.tutorialspoint.com/videotutorials/category/contract_law'>Contract Law</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/gdpr'>GDPR</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/law'>Law</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/contract_negotiation'>Contract Negotiation</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/intellectual_property'>Intellectual Property</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/business_law_other'>Business Law Other</a></li></ul></li><li class='expanded'><a href='https://www.tutorialspoint.com/videotutorials/category/communication'>Communication  <i class='fa fa-angle-right'></i></a><ul><li><a href='https://www.tutorialspoint.com/videotutorials/category/communication_skills'>Communication Skills</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/fiction_writing'>Fiction Writing</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/novel_writing'>Novel Writing</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/presentation_skills'>Presentation Skills</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/public_speaking'>Public Speaking</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/storytelling'>Storytelling</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/writing'>Writing</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/non_fiction_writing'>Non-Fiction Writing</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/storytelling'>Storytelling</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/technical_writing'>Technical Writing</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/communication_other'>Communication Other</a></li></ul></li><li class='expanded'><a href='https://www.tutorialspoint.com/videotutorials/category/finance'>Finance  <i class='fa fa-angle-right'></i></a><ul><li><a href='https://www.tutorialspoint.com/videotutorials/category/economics'>Economics</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/accounting_and_bookkeeping'>Accounting & Bookkeeping</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/complaince'>Complaince</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/crypptocurrency_and_blockchain'>Crypptocurrency & Blockchain</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/financial_modeling_and_analysis'>Financial Modeling & Analysis</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/investing_and_trading'>Investing & Trading</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/money_management_tools'>Money Management Tools</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/taxes'>Taxes</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/finance_other'>Finance Other</a></li></ul></li><li class='expanded'><a href='https://www.tutorialspoint.com/videotutorials/category/home_business'>Home Business  <i class='fa fa-angle-right'></i></a><ul><li><a href='https://www.tutorialspoint.com/videotutorials/category/online_business'>Online Business</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/passive_income'>Passive Income</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/seo'>SEO</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/home_business_other'>Home Business Other</a></li></ul></li><li class='expanded'><a href='https://www.tutorialspoint.com/videotutorials/category/human_resources'>Human Resources  <i class='fa fa-angle-right'></i></a><ul><li><a href='https://www.tutorialspoint.com/videotutorials/category/conflict_management'>Conflict Management</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/emotional_intelligence'>Emotional Intelligence</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/instructional_design'>Instructional Design</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/interviewing_skills'>Interviewing Skills</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/talent_management'>Talent Management</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/diversity'>Diversity</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/harassment'>Harassment</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/recruitment_and_hiring'>Recruitment & Hiring</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/human_resources_other'>Human Resources Other</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/human_resources_other'>Human Resources Other</a></li></ul></li><li class='expanded'><a href='https://www.tutorialspoint.com/videotutorials/category/industry'>Industry  <i class='fa fa-angle-right'></i></a><ul><li><a href='https://www.tutorialspoint.com/videotutorials/category/electrical_engineering'>Electrical Engineering</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/life_coaching'>Life Coaching</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/management_consulting'>Management Consulting</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/solar_energy'>Solar Energy</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/manufacturing'>Manufacturing</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/oil_and_gas_industry'>Oil & Gas Industry</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/wind_energy'>Wind Energy</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/industry_other'>Industry Other</a></li></ul></li><li class='expanded'><a href='https://www.tutorialspoint.com/videotutorials/category/management'>Management  <i class='fa fa-angle-right'></i></a><ul><li><a href='https://www.tutorialspoint.com/videotutorials/category/business_process_management'>Business Process Management</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/management_skills'>Management Skills</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/quality_management'>Quality Management</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/management_other'>Management Other</a></li></ul></li><li class='expanded'><a href='https://www.tutorialspoint.com/videotutorials/category/media'>Media  <i class='fa fa-angle-right'></i></a><ul><li><a href='https://www.tutorialspoint.com/videotutorials/category/after_effects'>After Effects</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/environment_lighting'>Environment Lighting</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/motion_graphics'>Motion Graphics</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/podcasting'>Podcasting</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/screenwriting'>Screenwriting</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/scrivener'>Scrivener</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/audiobook_creation'>Audiobook Creation</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/motion_graphics'>Motion Graphics</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/media_other'>Media Other</a></li></ul></li><li class='expanded'><a href='https://www.tutorialspoint.com/videotutorials/category/operations'>Operations  <i class='fa fa-angle-right'></i></a><ul><li><a href='https://www.tutorialspoint.com/videotutorials/category/six_sigma'>Six Sigma</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/supply_chain'>Supply Chain</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/operations_other'>Operations Other</a></li></ul></li><li class='expanded'><a href='https://www.tutorialspoint.com/videotutorials/category/project_management'>Project Management  <i class='fa fa-angle-right'></i></a><ul><li><a href='https://www.tutorialspoint.com/videotutorials/category/agile'>Agile</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/capm'>CAPM</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/pmbok'>PMBOK</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/pmi_acp'>PMI-ACP</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/prince2'>PRINCE2</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/scrum'>Scrum</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/microsoft_project'>Microsoft Project</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/pmi'>PMI</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/risk_management'>Risk Management</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/change_management'>Change Management</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/project_management_other'>Project Management Other</a></li></ul></li><li class='expanded'><a href='https://www.tutorialspoint.com/videotutorials/category/real_estate'>Real Estate  <i class='fa fa-angle-right'></i></a><ul><li><a href='https://www.tutorialspoint.com/videotutorials/category/construction'>Construction</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/house_buying'>House Buying</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/real_estate_investing'>Real Estate Investing</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/mortgage'>Mortgage</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/property_management'>Property Management</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/real_estate_other'>Real Estate Other</a></li></ul></li><li class='expanded'><a href='https://www.tutorialspoint.com/videotutorials/category/sales'>Sales  <i class='fa fa-angle-right'></i></a><ul><li><a href='https://www.tutorialspoint.com/videotutorials/category/b2b_sales'>B2B Sales</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/business_development'>Business Development</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/lead_generation'>Lead Generation</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/linkedin'>LinkedIn</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/sales_funnel'>Sales Funnel</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/sales_skills'>Sales Skills</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/cold_email'>Cold Email</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/customer_success_management'>Customer Success Management</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/linkedin'>Linkedin</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/sales_other'>Sales Other</a></li></ul></li><li class='expanded'><a href='https://www.tutorialspoint.com/videotutorials/category/strategy'>Strategy  <i class='fa fa-angle-right'></i></a><ul><li><a href='https://www.tutorialspoint.com/videotutorials/category/business_model'>Business Model</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/forex'>Forex</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/innovation'>Innovation</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/strategic_planning'>Strategic Planning</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/strategy_other'>Strategy Other</a></li></ul></li><li class='expanded'><a href='https://www.tutorialspoint.com/videotutorials/category/entrepreneurship'>Entrepreneurship  <i class='fa fa-angle-right'></i></a><ul><li><a href='https://www.tutorialspoint.com/videotutorials/category/amazon_fba'>Amazon FBA</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/amazon_kindle'>Amazon Kindle</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/blogging'>Blogging</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/business_fundamentals'>Business Fundamentals</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/business_plan'>Business Plan</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/business_strategy'>Business Strategy</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/dropshipping'>Dropshipping</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/entrepreneurship_fundamentals'>Entrepreneurship Fundamentals</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/startup'>Startup</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/entrepreneurship_other'>Entrepreneurship Other</a></li></ul></li><li class='expanded'><a href='https://www.tutorialspoint.com/videotutorials/category/data_analytics'>Data Analytics  <i class='fa fa-angle-right'></i></a><ul><li><a href='https://www.tutorialspoint.com/videotutorials/category/data_analysis'>Data Analysis</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/mysql'>MySQL</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/sql'>SQL</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/tableau'>Tableau</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/business_analysis'>Business Analysis</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/business_intelligence'>Business Intelligence</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/data_modeling'>Data Modeling</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/hadoop'>Hadoop</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/microsoft_power_bi'>Microsoft Power BI</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/microsoft_power_bi'>Microsoft Power BI</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/data_analytics_other'>Data Analytics Other</a></li></ul></li><li class='expanded'><a href='https://www.tutorialspoint.com/videotutorials/category/business_other'>Business Other  <i class='fa fa-angle-right'></i></a></li></ul></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/lifestyle'><i class='fa fa-person-dolly-empty icon'></i><span>Lifestyle</span><i class='fa fa-angle-right'></i></a><ul><li class='expanded'><a href='https://www.tutorialspoint.com/videotutorials/category/arts_and_crafts'>Arts & Crafts  <i class='fa fa-angle-right'></i></a><ul><li><a href='https://www.tutorialspoint.com/videotutorials/category/drawing'>Drawing</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/figure_drawing'>Figure Drawing</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/painting'>Painting</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/pencil_drawing'>Pencil Drawing</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/procreate_digital_illustration_app'>Procreate Digital Illustration App</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/sketching'>Sketching</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/watercolor_painting'>Watercolor Painting</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/colored_pencil_drawing'>Colored Pencil Drawing</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/portaiture'>Portaiture</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/arts_and_crafts_other'>Arts & Crafts Other</a></li></ul></li><li class='expanded'><a href='https://www.tutorialspoint.com/videotutorials/category/beauty_and_makeup'>Beauty & Makeup  <i class='fa fa-angle-right'></i></a><ul><li><a href='https://www.tutorialspoint.com/videotutorials/category/beauty'>Beauty</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/cosmetics'>Cosmetics</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/hair_styling'>Hair Styling</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/herbalism'>Herbalism</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/makeup_artistry'>Makeup Artistry</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/marketing_plan'>Marketing Plan</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/nail_art'>Nail Art</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/skincare'>Skincare</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/cupping_therapy'>Cupping Therapy</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/face_yoga'>Face Yoga</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/beauty_and_makeup_other'>Beauty & Makeup Other</a></li></ul></li><li class='expanded'><a href='https://www.tutorialspoint.com/videotutorials/category/gaming'>Gaming  <i class='fa fa-angle-right'></i></a><ul><li><a href='https://www.tutorialspoint.com/videotutorials/category/chess'>Chess</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/esports'>eSports</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/league_of_legends'>League of Legends</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/poker'>Poker</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/rubiks_cube'>Rubiks Cube</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/twitch'>Twitch</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/kipper_cards'>Kipper Cards</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/texas_holdem'>Texas HoldEm</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/gaming_other'>Gaming Other</a></li></ul></li><li class='expanded'><a href='https://www.tutorialspoint.com/videotutorials/category/home_improvement'>Home Improvement  <i class='fa fa-angle-right'></i></a><ul><li><a href='https://www.tutorialspoint.com/videotutorials/category/aquaculture'>Aquaculture</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/decluttering'>Decluttering</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/electricity'>Electricity</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/farming'>Farming</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/feng_shui'>Feng Shui</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/gardening'>Gardening</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/electrical_writing'>Electrical Writing</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/home_repair'>Home repair</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/home_improvement_other'>Home Improvement Other</a></li></ul></li><li class='expanded'><a href='https://www.tutorialspoint.com/videotutorials/category/music'>Music  <i class='fa fa-angle-right'></i></a><ul><li><a href='https://www.tutorialspoint.com/videotutorials/category/instruments'>Instruments</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/music_fundamentals'>Music Fundamentals</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/music_software'>Music Software</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/music_techniques'>Music Techniques</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/production'>Production</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/vocals'>Vocals</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/music_other'>Music Other</a></li></ul></li><li class='expanded'><a href='https://www.tutorialspoint.com/videotutorials/category/pet_care_and_training'>Pet Care & Training  <i class='fa fa-angle-right'></i></a><ul><li><a href='https://www.tutorialspoint.com/videotutorials/category/crystal_energy'>Crystal Energy</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/dog_care'>Dog Care</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/dog_training'>Dog Training</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/dog_walking'>Dog Walking</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/pet_care'>Pet Care</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/pet_training'>Pet Training</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/animal_nutrition'>Animal Nutrition</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/cat_behaviour'>Cat Behaviour</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/dog_behaviour'>Dog Behaviour</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/pet_care_and_training_other'>Pet Care & Training Other</a></li></ul></li><li class='expanded'><a href='https://www.tutorialspoint.com/videotutorials/category/photography'>Photography  <i class='fa fa-angle-right'></i></a><ul><li><a href='https://www.tutorialspoint.com/videotutorials/category/commercial_photography'>Commercial Photography</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/digital_photography'>Digital Photography</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/photography_fundamentals'>Photography Fundamentals</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/photography_tools'>Photography Tools</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/portraits'>Portraits</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/video_design'>Video Design</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/wedding_photography'>Wedding Photography</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/black_and_white'>Black & White</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/landscape'>Landscape</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/mobile_photography'>Mobile Photography</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/travel_photography'>Travel Photography</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/wildlife_photography'>Wildlife Photography</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/photography_other'>Photography Other</a></li></ul></li><li class='expanded'><a href='https://www.tutorialspoint.com/videotutorials/category/travel'>Travel  <i class='fa fa-angle-right'></i></a><ul><li><a href='https://www.tutorialspoint.com/videotutorials/category/airbnb_hosting'>AirBnB Hosting</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/digital_nomad'>Digital Nomad</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/imovie'>iMovie</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/journaling'>Journaling</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/mac_basics'>Mac Basics</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/travel_hacking'>Travel Hacking</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/travel_tips'>Travel Tips</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/writing'>Writing</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/tavel_hacking'>Tavel Hacking</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/travel_writing'>Travel Writing</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/all_travel'>All Travel</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/travel_writing'>Travel Writing</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/travel_other'>Travel Other</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/travel_other'>Travel Other</a></li></ul></li><li class='expanded'><a href='https://www.tutorialspoint.com/videotutorials/category/food_and_beverages'>Food & Beverages  <i class='fa fa-angle-right'></i></a><ul><li><a href='https://www.tutorialspoint.com/videotutorials/category/baking'>Baking</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/bread_baking'>Bread Baking</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/cake_decorating'>Cake Decorating</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/cooking'>Cooking</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/sourdough_bread_baking'>Sourdough Bread Baking</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/wine'>Wine</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/bartending'>Bartending</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/cake_baking'>Cake Baking</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/pizza'>Pizza</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/food_and_beverages_other'>Food & Beverages Other</a></li></ul></li><li class='expanded'><a href='https://www.tutorialspoint.com/videotutorials/category/health_and_fitness'>Health and Fitness  <i class='fa fa-angle-right'></i></a><ul><li><a href='https://www.tutorialspoint.com/videotutorials/category/dance'>Dance</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/dieting'>Dieting</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/fitness'>Fitness</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/general_health'>General Health</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/meditation'>Meditation</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/mental_health'>Mental Health</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/nutrition'>Nutrition</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/safety_and_first_aid'>Safety & First Aid</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/self_defense'>Self Defense</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/sports'>Sports</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/meditation_and_yoga'>Meditation and Yoga</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/health_and_fitness_other'>Health and Fitness Other</a></li></ul></li><li class='expanded'><a href='https://www.tutorialspoint.com/videotutorials/category/lifestyle_other'>Lifestyle Other  <i class='fa fa-angle-right'></i></a></li></ul></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/marketing'><i class='fa fa-bullseye-arrow icon'></i><span>Marketing</span><i class='fa fa-angle-right'></i></a><ul><li class='expanded'><a href='https://www.tutorialspoint.com/videotutorials/category/advertising'>Advertising  <i class='fa fa-angle-right'></i></a><ul><li><a href='https://www.tutorialspoint.com/videotutorials/category/email_marketing'>Email Marketing</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/facebook_marketing'>Facebook Marketing</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/mailchimp'>MailChimp</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/ppc_advertising'>PPC Advertising</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/youtube_marketing'>YouTube Marketing</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/google_ads_adwords'>Google Ads (Adwords)</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/google_ads_adwords_certification'>Google Ads (AdWords) Certification</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/google_ads_adwords'>Google Ads (Adwords)</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/google_ads_adwords_certification'>Google Ads (AdWords) Certification</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/google_ads_adwords'>Google Ads (Adwords)</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/advertising_other'>Advertising Other</a></li></ul></li><li class='expanded'><a href='https://www.tutorialspoint.com/videotutorials/category/affiliate_marketing'>Affiliate Marketing  <i class='fa fa-angle-right'></i></a><ul><li><a href='https://www.tutorialspoint.com/videotutorials/category/amazon_affiliate_marketing'>Amazon Affiliate Marketing</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/business_development'>Business Development</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/clickbank'>ClickBank</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/cpa_marketing'>CPA Marketing</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/email_marketing'>Email Marketing</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/marketing_strategy'>Marketing Strategy</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/seo'>SEO</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/teespring'>Teespring</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/affiliate_marketing_other'>Affiliate Marketing Other</a></li></ul></li><li class='expanded'><a href='https://www.tutorialspoint.com/videotutorials/category/branding'>Branding  <i class='fa fa-angle-right'></i></a><ul><li><a href='https://www.tutorialspoint.com/videotutorials/category/blogging'>Blogging</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/brand_management'>Brand Management</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/business_branding'>Business Branding</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/communication_skills'>Communication Skills</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/graphic_design'>Graphic Design</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/marketing_strategy'>Marketing Strategy</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/personal_branding'>Personal Branding</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/youtube_audience_growth'>YouTube Audience Growth</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/youtube_marketing'>YouTube Marketing</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/branding_other'>Branding Other</a></li></ul></li><li class='expanded'><a href='https://www.tutorialspoint.com/videotutorials/category/content_marketing'>Content Marketing  <i class='fa fa-angle-right'></i></a><ul><li><a href='https://www.tutorialspoint.com/videotutorials/category/blogging'>Blogging</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/content_writing'>Content Writing</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/copywriting'>Copywriting</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/freelancing'>Freelancing</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/marketing_strategy'>Marketing Strategy</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/storytelling'>Storytelling</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/wordpress'>WordPress</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/writing'>Writing</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/content_marketing_other'>Content Marketing Other</a></li></ul></li><li class='expanded'><a href='https://www.tutorialspoint.com/videotutorials/category/digital_marketing'>Digital Marketing  <i class='fa fa-angle-right'></i></a><ul><li><a href='https://www.tutorialspoint.com/videotutorials/category/email_marketing'>Email Marketing</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/facebook_marketing'>Facebook Marketing</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/google_analytics'>Google Analytics</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/marketing_strategy'>Marketing Strategy</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/google_ads_adwords'>Google Ads (Adwords)</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/google_ads_adwords_certification'>Google Ads (AdWords) Certification</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/digital_marketing_other'>Digital Marketing Other</a></li></ul></li><li class='expanded'><a href='https://www.tutorialspoint.com/videotutorials/category/growth_hacking'>Growth Hacking  <i class='fa fa-angle-right'></i></a><ul><li><a href='https://www.tutorialspoint.com/videotutorials/category/app_marketing'>App Marketing</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/marketing_strategy'>Marketing Strategy</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/seo'>SEO</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/website_traffic'>Website Traffic</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/conversion_rate_optimization'>Conversion Rate Optimization</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/growth_hacking_other'>Growth Hacking Other</a></li></ul></li><li class='expanded'><a href='https://www.tutorialspoint.com/videotutorials/category/marketing_fundamentals'>Marketing Fundamentals  <i class='fa fa-angle-right'></i></a><ul><li><a href='https://www.tutorialspoint.com/videotutorials/category/copywriting'>Copywriting</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/data_analysis'>Data Analysis</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/event_planning'>Event Planning</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/marketing_plan'>Marketing Plan</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/marketing_strategy'>Marketing Strategy</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/persuasion'>Persuasion</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/presentation_skills'>Presentation Skills</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/sales_skills'>Sales Skills</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/career_coaching'>Career Coaching</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/marketing_fundamentals_other'>Marketing Fundamentals Other</a></li></ul></li><li class='expanded'><a href='https://www.tutorialspoint.com/videotutorials/category/public_relations'>Public Relations  <i class='fa fa-angle-right'></i></a><ul><li><a href='https://www.tutorialspoint.com/videotutorials/category/communication_skills'>Communication Skills</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/copywriting'>Copywriting</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/event_planning'>Event Planning</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/marketing_strategy'>Marketing Strategy</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/media_training'>Media Training</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/public_speaking'>Public Speaking</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/public_relations_other'>Public Relations Other</a></li></ul></li><li class='expanded'><a href='https://www.tutorialspoint.com/videotutorials/category/search_engine_optimization'>Search Engine Optimization  <i class='fa fa-angle-right'></i></a><ul><li><a href='https://www.tutorialspoint.com/videotutorials/category/keyword_research'>Keyword Research</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/local_seo'>Local SEO</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/seo'>SEO</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/seo_audit'>SEO Audit</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/wordpress'>WordPress</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/youtube_marketing'>YouTube Marketing</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/link_building'>Link Building</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/google_ads_adwords'>Google Ads (Adwords)</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/google_ads_adwords_certification'>Google Ads (AdWords) Certification</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/search_engine_optimization_other'>Search Engine Optimization Other</a></li></ul></li><li class='expanded'><a href='https://www.tutorialspoint.com/videotutorials/category/social_media_marketing'>Social Media Marketing  <i class='fa fa-angle-right'></i></a><ul><li><a href='https://www.tutorialspoint.com/videotutorials/category/facebook_marketing'>Facebook Marketing</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/instagram_marketing'>Instagram Marketing</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/linkedin'>LinkedIn</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/pinterest_marketing'>Pinterest Marketing</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/ppc_advertising'>PPC Advertising</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/social_media_management'>Social Media Management</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/youtube_audience_growth'>YouTube Audience Growth</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/twitter_marketing'>Twitter Marketing</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/social_media_marketing_other'>Social Media Marketing Other</a></li></ul></li><li class='expanded'><a href='https://www.tutorialspoint.com/videotutorials/category/video_and_mobile_marketing'>Video & Mobile Marketing  <i class='fa fa-angle-right'></i></a><ul><li><a href='https://www.tutorialspoint.com/videotutorials/category/app_marketing'>App Marketing</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/app_store_optimization'>App Store Optimization</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/powerpoint'>PowerPoint</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/video_creation'>Video Creation</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/video_marketing'>Video Marketing</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/whiteboard_animation'>Whiteboard Animation</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/youtube_audience_growth'>YouTube Audience Growth</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/youtube_marketing'>YouTube Marketing</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/videoscribe'>VideoScribe</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/video_and_mobile_marketing_other'>Video & Mobile Marketing Other</a></li></ul></li><li class='expanded'><a href='https://www.tutorialspoint.com/videotutorials/category/analytics_and_automaton'>Analytics & Automaton  <i class='fa fa-angle-right'></i></a><ul><li><a href='https://www.tutorialspoint.com/videotutorials/category/data_analysis'>Data Analysis</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/google_analytics'>Google Analytics</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/google_tag_manager'>Google Tag Manager</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/marketing_analytics'>Marketing Analytics</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/marketing_automation'>Marketing Automation</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/marketing_strategy'>Marketing Strategy</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/sql'>SQL</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/activecampaign'>ActiveCampaign</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/google_analytics_individual_qualification_iq'>Google Analytics Individual Qualification (IQ)</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/analytics_and_automaton_other'>Analytics & Automaton Other</a></li></ul></li><li class='expanded'><a href='https://www.tutorialspoint.com/videotutorials/category/product_marketing'>Product Marketing  <i class='fa fa-angle-right'></i></a><ul><li><a href='https://www.tutorialspoint.com/videotutorials/category/amazon_kindle'>Amazon Kindle</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/amazon_sellers_account'>Amazon Sellers Account</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/copywriting'>Copywriting</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/e_commerce'>E-Commerce</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/marketing_plan'>Marketing Plan</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/product_management'>Product Management</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/self_publishing'>Self-Publishing</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/etsy'>Etsy</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/selling_on_amazon'>Selling on Amazon</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/product_marketing_other'>Product Marketing Other</a></li></ul></li><li class='expanded'><a href='https://www.tutorialspoint.com/videotutorials/category/marketing_other'>Marketing Other  <i class='fa fa-angle-right'></i></a></li></ul></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/design'><i class='fa fa-pencil-ruler icon'></i><span>Design</span><i class='fa fa-angle-right'></i></a><ul><li class='expanded'><a href='https://www.tutorialspoint.com/videotutorials/category/3d_and_animation'>3D & Animation  <i class='fa fa-angle-right'></i></a><ul><li><a href='https://www.tutorialspoint.com/videotutorials/category/3d_animation'>3D Animation</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/3d_modeling'>3D Modeling</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/3ds_max'>3Ds Max</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/after_effects'>After Effects</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/blender'>Blender</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/maya'>Maya</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/motion_graphics'>Motion Graphics</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/zbrush'>zBrush</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/2d_animation'>2D Animation</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/2d_animation'>2D Animation</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/3d_and_animation_other'>3D & Animation Other</a></li></ul></li><li class='expanded'><a href='https://www.tutorialspoint.com/videotutorials/category/architectural_design'>Architectural Design  <i class='fa fa-angle-right'></i></a><ul><li><a href='https://www.tutorialspoint.com/videotutorials/category/3d_animation'>3D Animation</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/3ds_max'>3Ds Max</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/autocad'>AutoCAD</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/blender'>Blender</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/revit'>Revit</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/sketchup'>SketchUp</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/archicad'>ARCHICAD</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/photorealistic_rendering'>Photorealistic Rendering</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/leed'>LEED</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/architectural_design_other'>Architectural Design Other</a></li></ul></li><li class='expanded'><a href='https://www.tutorialspoint.com/videotutorials/category/design_thinking'>Design Thinking  <i class='fa fa-angle-right'></i></a><ul><li><a href='https://www.tutorialspoint.com/videotutorials/category/drawing'>Drawing</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/gamification'>Gamification</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/logo_design'>Logo Design</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/powerpoint'>PowerPoint</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/vlsi'>VLSI</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/solidworks'>SOLIDWORKS</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/autocad_electrical'>AutoCAD Electrical</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/solidworks'>SOLIDWORKS</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/design_thinking_other'>Design Thinking Other</a></li></ul></li><li class='expanded'><a href='https://www.tutorialspoint.com/videotutorials/category/design_tools'>Design Tools  <i class='fa fa-angle-right'></i></a><ul><li><a href='https://www.tutorialspoint.com/videotutorials/category/adobe_illustrator'>Adobe Illustrator</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/adobe_premiere'>Adobe Premiere</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/after_effects'>After Effects</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/digital_art'>Digital Art</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/graphic_design'>Graphic Design</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/photoshop'>Photoshop</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/procreate_digital_illustration_app'>Procreate Digital Illustration App</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/video_editing'>Video Editing</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/solidworks'>SOLIDWORKS</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/design_tools_other'>Design Tools Other</a></li></ul></li><li class='expanded'><a href='https://www.tutorialspoint.com/videotutorials/category/fashion'>Fashion  <i class='fa fa-angle-right'></i></a><ul><li><a href='https://www.tutorialspoint.com/videotutorials/category/adobe_illustrator'>Adobe Illustrator</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/fashion_design'>Fashion Design</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/jewelry_design'>Jewelry Design</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/merch_by_amazon'>Merch by Amazon</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/sewing'>Sewing</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/t_shirt_design'>T-Shirt Design</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/t_shirt_business'>T-Shirt Business</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/fashion_other'>Fashion Other</a></li></ul></li><li class='expanded'><a href='https://www.tutorialspoint.com/videotutorials/category/game_design'>Game Design  <i class='fa fa-angle-right'></i></a><ul><li><a href='https://www.tutorialspoint.com/videotutorials/category/3d_animation'>3D Animation</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/3d_modeling'>3D Modeling</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/3ds_max'>3Ds Max</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/after_effects'>After Effects</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/blender'>Blender</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/digital_painting'>Digital Painting</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/drawing'>Drawing</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/game_development_fundamentals'>Game Development Fundamentals</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/maya'>Maya</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/motion_graphics'>Motion Graphics</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/pixel_art'>Pixel Art</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/unity'>Unity</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/unreal_engine'>Unreal Engine</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/zbrush'>zBrush</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/2d_animation'>2D Animation</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/vfx_visual_effects'>VFX Visual Effects</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/3d_and_animations'>3D & ANIMATIONS</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/game_design_other'>Game Design Other</a></li></ul></li><li class='expanded'><a href='https://www.tutorialspoint.com/videotutorials/category/interior_design'>Interior Design  <i class='fa fa-angle-right'></i></a><ul><li><a href='https://www.tutorialspoint.com/videotutorials/category/blender'>Blender</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/color_theory'>Color Theory</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/lighting_design'>Lighting Design</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/minimalist_lifestyle'>Minimalist Lifestyle</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/sketchup'>SketchUp</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/hvac'>HVAC</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/piping'>Piping</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/interior_design_other'>Interior Design Other</a></li></ul></li><li class='expanded'><a href='https://www.tutorialspoint.com/videotutorials/category/user_experience'>User Experience  <i class='fa fa-angle-right'></i></a><ul><li><a href='https://www.tutorialspoint.com/videotutorials/category/adobe_xd'>Adobe XD</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/figma'>Figma</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/mobile_app_design'>Mobile App Design</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/usability_testing'>Usability Testing</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/user_experience_design'>User Experience Design</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/user_interface'>User Interface</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/prototyping'>Prototyping</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/user_experience_other'>User Experience Other</a></li></ul></li><li class='expanded'><a href='https://www.tutorialspoint.com/videotutorials/category/web_design'>Web Design  <i class='fa fa-angle-right'></i></a><ul><li><a href='https://www.tutorialspoint.com/videotutorials/category/css'>CSS</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/html'>HTML</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/landing_page_optimization'>Landing Page Optimization</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/user_interface'>User Interface</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/web_design_business'>Web Design Business</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/wordpress'>WordPress</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/html5'>HTML5</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/web_design_other'>Web Design Other</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/jquery-42'>jQuery</a></li></ul></li><li class='expanded'><a href='https://www.tutorialspoint.com/videotutorials/category/design_other'>Design Other  <i class='fa fa-angle-right'></i></a></li></ul></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/teaching_and_academics'><i class='fa fa-chalkboard-teacher icon'></i><span>Teaching & Academics</span><i class='fa fa-angle-right'></i></a><ul><li class='expanded'><a href='https://www.tutorialspoint.com/videotutorials/category/engineering'>Engineering  <i class='fa fa-angle-right'></i></a><ul><li><a href='https://www.tutorialspoint.com/videotutorials/category/civil_engineering'>Civil Engineering</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/electrical_engineering'>Electrical Engineering</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/electronics'>Electronics</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/robotics'>Robotics</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/mechanical_engineering'>Mechanical Engineering</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/algorithms'>Algorithms</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/data_structures'>Data Structures</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/structural_engineering'>Structural Engineering</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/engineering_other'>Engineering Other</a></li></ul></li><li class='expanded'><a href='https://www.tutorialspoint.com/videotutorials/category/humanities'>Humanities  <i class='fa fa-angle-right'></i></a><ul><li><a href='https://www.tutorialspoint.com/videotutorials/category/academic_writing'>Academic Writing</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/art_history'>Art History</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/chinese_language'>Chinese Language</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/creative_writing'>Creative Writing</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/critical_thinking'>Critical Thinking</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/philosophy'>Philosophy</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/psychology'>Psychology</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/humanities_other'>Humanities Other</a></li></ul></li><li class='expanded'><a href='https://www.tutorialspoint.com/videotutorials/category/math'>Math  <i class='fa fa-angle-right'></i></a><ul><li><a href='https://www.tutorialspoint.com/videotutorials/category/algebra'>Algebra</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/calculus'>Calculus</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/math_other'>Math Other</a></li></ul></li><li class='expanded'><a href='https://www.tutorialspoint.com/videotutorials/category/online-education'>Online Education  <i class='fa fa-angle-right'></i></a><ul><li><a href='https://www.tutorialspoint.com/videotutorials/category/online-course-creation'>Online Course Creation</a></li></ul></li><li class='expanded'><a href='https://www.tutorialspoint.com/videotutorials/category/science'>Science  <i class='fa fa-angle-right'></i></a><ul><li><a href='https://www.tutorialspoint.com/videotutorials/category/chemistry'>Chemistry</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/physics'>Physics</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/biology'>Biology</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/science_other'>Science Other</a></li></ul></li><li class='expanded'><a href='https://www.tutorialspoint.com/videotutorials/category/test_prep'>Test Prep  <i class='fa fa-angle-right'></i></a><ul><li><a href='https://www.tutorialspoint.com/videotutorials/category/gre'>GRE</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/ielts'>IELTS</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/toefl'>TOEFL</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/test_taking_skills'>Test Taking Skills</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/grad_entry_exam'>Grad Entry Exam</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/international_high_school'>International High School</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/college_entry_exam'>College Entry Exam</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/test_prep_other'>Test Prep Other</a></li></ul></li><li class='expanded'><a href='https://www.tutorialspoint.com/videotutorials/category/schools'>Schools  <i class='fa fa-angle-right'></i></a><ul><li><a href='https://www.tutorialspoint.com/videotutorials/category/12th_class'>12th Class</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/11th_class'>11th Class</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/9th_class'>9th Class</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/10th_class'>10th Class</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/5th_class'>5th Class</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/6th_class'>6th Class</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/7th_class'>7th Class</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/8th_class'>8th Class</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/schools_other'>Schools Other</a></li></ul></li><li class='expanded'><a href='https://www.tutorialspoint.com/videotutorials/category/social_sciences'>Social Sciences  <i class='fa fa-angle-right'></i></a><ul><li><a href='https://www.tutorialspoint.com/videotutorials/category/accounting'>Accounting</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/counseling'>Counseling</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/economics'>Economics</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/psychotherapy'>Psychotherapy</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/research_methods'>Research Methods</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/social_psychology'>Social Psychology</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/history'>History</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/dialectical_behavior_therapy_dbt'>Dialectical Behavior Therapy (DBT)</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/social_sciences_other'>Social Sciences Other</a></li></ul></li><li class='expanded'><a href='https://www.tutorialspoint.com/videotutorials/category/teaching'>Teaching  <i class='fa fa-angle-right'></i></a><ul><li><a href='https://www.tutorialspoint.com/videotutorials/category/instructional_design'>Instructional Design</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/educational_development'>Educational Development</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/teaching_tools'>Teaching Tools</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/teaching_other'>Teaching Other</a></li></ul></li><li class='expanded'><a href='https://www.tutorialspoint.com/videotutorials/category/languages'>Languages  <i class='fa fa-angle-right'></i></a><ul><li><a href='https://www.tutorialspoint.com/videotutorials/category/english'>English</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/french'>French</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/german'>German</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/japanese'>Japanese</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/portugese'>Portugese</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/chinese'>Chinese</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/russian'>Russian</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/latin'>Latin</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/arabic'>Arabic</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/hebrew'>Hebrew</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/italian'>Italian</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/languages_other'>Languages Other</a></li></ul></li><li class='expanded'><a href='https://www.tutorialspoint.com/videotutorials/category/academics_other'>Academics Other  <i class='fa fa-angle-right'></i></a></li></ul></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/office_productivity'><i class='fa fa-clipboard-list-check icon'></i><span>Office Productivity</span><i class='fa fa-angle-right'></i></a><ul><li class='expanded'><a href='https://www.tutorialspoint.com/videotutorials/category/apple'>Apple  <i class='fa fa-angle-right'></i></a><ul><li><a href='https://www.tutorialspoint.com/videotutorials/category/apple_keynote'>Apple Keynote</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/imovie'>iMovie</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/mac_basics'>Mac Basics</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/mac_pages'>Mac Pages</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/macos'>macOS</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/microsoft_word'>Microsoft Word</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/numbers_for_mac'>Numbers for Mac</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/video_creation'>Video Creation</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/video_editing'>Video Editing</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/apple_other'>Apple Other</a></li></ul></li><li class='expanded'><a href='https://www.tutorialspoint.com/videotutorials/category/google'>Google  <i class='fa fa-angle-right'></i></a><ul><li><a href='https://www.tutorialspoint.com/videotutorials/category/data_analysis'>Data Analysis</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/excel'>Excel</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/g_suite'>G Suite</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/gmail_productivity'>Gmail Productivity</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/google_apps'>Google Apps</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/google_sheets'>Google Sheets</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/google_drive'>Google Drive</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/google_forms'>Google Forms</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/google_other'>Google Other</a></li></ul></li><li class='expanded'><a href='https://www.tutorialspoint.com/videotutorials/category/microsoft'>Microsoft  <i class='fa fa-angle-right'></i></a><ul><li><a href='https://www.tutorialspoint.com/videotutorials/category/data_analysis'>Data Analysis</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/excel'>Excel</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/excel_dashboard'>Excel Dashboard</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/excel_vba'>Excel VBA</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/microsoft_access'>Microsoft Access</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/microsoft-azure'>Microsoft Azure</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/pivot_tables'>Pivot Tables</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/powerpoint'>PowerPoint</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/microsoft_power_bi'>Microsoft Power BI</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/excel_formulas_and_functions'>Excel Formulas and Functions</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/microsoft_outlook'>Microsoft Outlook</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/microsoft_other'>MicroSoft Other</a></li></ul></li><li class='expanded'><a href='https://www.tutorialspoint.com/videotutorials/category/oracle'>Oracle  <i class='fa fa-angle-right'></i></a><ul><li><a href='https://www.tutorialspoint.com/videotutorials/category/database_administration'>Database Administration</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/oracle_business_intelligence'>Oracle Business Intelligence</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/oracle_data_integrator'>Oracle Data Integrator</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/oracle_database'>Oracle Database</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/oracle_primavera'>Oracle Primavera</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/oracle_sql'>Oracle SQL</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/pl_sql'>PL/SQL</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/sql'>SQL</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/oracle_fusion_hcm'>Oracle Fusion HCM</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/oracle_other'>Oracle Other</a></li></ul></li><li class='expanded'><a href='https://www.tutorialspoint.com/videotutorials/category/sap'>SAP  <i class='fa fa-angle-right'></i></a><ul><li><a href='https://www.tutorialspoint.com/videotutorials/category/sap_abap'>SAP ABAP</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/sap_financial_accounting'>SAP Financial Accounting</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/sap_mm'>SAP MM</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/sap_sd'>SAP SD</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/supply_chain'>Supply Chain</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/sap_basis'>SAP Basis</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/sap_fico'>SAP FICO</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/sap_s_4hana'>SAP S/4HANA</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/sap_lumira'>SAP Lumira</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/sap_bi'>SAP BI</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/sap_other'>SAP Other</a></li></ul></li><li class='expanded'><a href='https://www.tutorialspoint.com/videotutorials/category/office_other'>Office Other  <i class='fa fa-angle-right'></i></a></li><li class='expanded'><a href='https://www.tutorialspoint.com/videotutorials/category/salesforce'>Salesforce  <i class='fa fa-angle-right'></i></a><ul><li><a href='https://www.tutorialspoint.com/videotutorials/category/salesforce_administration'>Salesforce Administration</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/salesforce_certification'>Salesforce Certification</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/salesforce_other'>Salesforce Other</a></li></ul></li></ul></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/personal_development'><i class='fa fa-user icon'></i><span>Personal Development</span><i class='fa fa-angle-right'></i></a><ul><li class='expanded'><a href='https://www.tutorialspoint.com/videotutorials/category/career_development'>Career Development  <i class='fa fa-angle-right'></i></a><ul><li><a href='https://www.tutorialspoint.com/videotutorials/category/interviewing_skills'>Interviewing Skills</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/job_search'>Job Search</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/life_coaching'>Life Coaching</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/linkedin'>LinkedIn</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/personal_networking'>Personal Networking</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/shopify_dropshipping'>Shopify Dropshipping</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/soft_skills'>Soft Skills</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/career_coaching'>Career Coaching</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/resume_and_cv_writing'>Resume and CV Writing</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/career_coaching'>Career Coaching</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/career_development_other'>Career Development Other</a></li></ul></li><li class='expanded'><a href='https://www.tutorialspoint.com/videotutorials/category/creativity'>Creativity  <i class='fa fa-angle-right'></i></a><ul><li><a href='https://www.tutorialspoint.com/videotutorials/category/aromatherapy'>Aromatherapy</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/art_therapy'>Art Therapy</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/creative_writing'>Creative Writing</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/screenwriting'>Screenwriting</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/storytelling'>Storytelling</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/writing'>Writing</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/writing_a_book'>Writing a Book</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/drawin'>Drawin</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/creativity_other'>Creativity Other</a></li></ul></li><li class='expanded'><a href='https://www.tutorialspoint.com/videotutorials/category/happiness'>Happiness  <i class='fa fa-angle-right'></i></a><ul><li><a href='https://www.tutorialspoint.com/videotutorials/category/cbt'>CBT</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/decluttering'>Decluttering</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/emotional_intelligence'>Emotional Intelligence</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/law_of_attraction'>Law of Attraction</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/life_coaching'>Life Coaching</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/mindfulness'>Mindfulness</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/positive_psychology'>Positive Psychology</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/habits'>Habits</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/habits'>Habits</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/habits'>Habits</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/happiness_other'>Happiness Other</a></li></ul></li><li class='expanded'><a href='https://www.tutorialspoint.com/videotutorials/category/influence'>Influence  <i class='fa fa-angle-right'></i></a><ul><li><a href='https://www.tutorialspoint.com/videotutorials/category/body_language'>Body Language</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/communication_skills'>Communication Skills</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/confidence'>Confidence</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/entrepreneurship_fundamentals'>Entrepreneurship Fundamentals</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/negotiation'>Negotiation</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/persuasion'>Persuasion</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/presentation_skills'>Presentation Skills</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/public_speaking'>Public Speaking</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/voice_training'>Voice Training</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/influence_other'>Influence Other</a></li></ul></li><li class='expanded'><a href='https://www.tutorialspoint.com/videotutorials/category/leadership'>Leadership  <i class='fa fa-angle-right'></i></a><ul><li><a href='https://www.tutorialspoint.com/videotutorials/category/communication_skills'>Communication Skills</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/conflict_management'>Conflict Management</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/emotional_intelligence'>Emotional Intelligence</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/management_skills'>Management Skills</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/neuro_linguistic_programming'>Neuro-Linguistic Programming</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/public_speaking'>Public Speaking</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/charisma'>Charisma</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/manager_training'>Manager Training</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/leadership_other'>Leadership Other</a></li></ul></li><li class='expanded'><a href='https://www.tutorialspoint.com/videotutorials/category/memory_and_study_skills'>Memory & Study Skills  <i class='fa fa-angle-right'></i></a><ul><li><a href='https://www.tutorialspoint.com/videotutorials/category/focus_mastery'>Focus Mastery</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/learning_disability'>Learning Disability</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/learning_strategies'>Learning Strategies</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/memory'>Memory</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/mental_math'>Mental Math</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/mind_mapping'>Mind Mapping</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/speed_reading'>Speed Reading</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/study_skills'>Study Skills</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/memory_and_study_skills_other'>Memory & Study Skills Other</a></li></ul></li><li class='expanded'><a href='https://www.tutorialspoint.com/videotutorials/category/parenting_and_relationships'>Parenting & Relationships  <i class='fa fa-angle-right'></i></a><ul><li><a href='https://www.tutorialspoint.com/videotutorials/category/child_psychology'>Child Psychology</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/dating'>Dating</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/early_childhood_education'>Early Childhood Education</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/life_coaching'>Life Coaching</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/love'>Love</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/neuroscience'>Neuroscience</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/parenting'>Parenting</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/couples_counseling'>Couples Counseling</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/relationship_building'>Relationship Building</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/parenting_and_relationships_other'>Parenting & Relationships Other</a></li></ul></li><li class='expanded'><a href='https://www.tutorialspoint.com/videotutorials/category/personal_brand_building'>Personal Brand Building  <i class='fa fa-angle-right'></i></a><ul><li><a href='https://www.tutorialspoint.com/videotutorials/category/body_language'>Body Language</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/business_branding'>Business Branding</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/french_language'>French Language</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/linkedin'>LinkedIn</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/personal_branding'>Personal Branding</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/writing_a_book'>Writing a Book</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/business_communication'>Business Communication</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/meetings'>Meetings</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/personal_brand_building_other'>Personal Brand Building Other</a></li></ul></li><li class='expanded'><a href='https://www.tutorialspoint.com/videotutorials/category/personal_finance'>Personal Finance  <i class='fa fa-angle-right'></i></a><ul><li><a href='https://www.tutorialspoint.com/videotutorials/category/forex'>Forex</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/investing'>Investing</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/options_trading'>Options Trading</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/stock_trading'>Stock Trading</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/technical_analysis'>Technical Analysis</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/value_investing'>Value Investing</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/day_trading'>Day Trading</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/stock_options'>Stock Options</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/personal_finance_other'>Personal Finance Other</a></li></ul></li><li class='expanded'><a href='https://www.tutorialspoint.com/videotutorials/category/personal_transformation'>Personal Transformation  <i class='fa fa-angle-right'></i></a><ul><li><a href='https://www.tutorialspoint.com/videotutorials/category/energy_healing'>Energy Healing</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/hypnotherapy'>Hypnotherapy</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/life_coaching'>Life Coaching</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/meditation'>Meditation</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/mindfulness'>Mindfulness</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/neuro_linguistic_programming'>Neuro-Linguistic Programming</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/neuroscience'>Neuroscience</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/reiki'>Reiki</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/personal_transformation_other'>Personal Transformation Other</a></li></ul></li><li class='expanded'><a href='https://www.tutorialspoint.com/videotutorials/category/productivity'>Productivity  <i class='fa fa-angle-right'></i></a><ul><li><a href='https://www.tutorialspoint.com/videotutorials/category/focus_mastery'>Focus Mastery</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/goal_setting'>Goal Setting</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/organization'>Organization</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/personal_productivity'>Personal Productivity</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/procrastination'>Procrastination</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/speed_reading'>Speed Reading</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/time_management'>Time Management</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/habits'>Habits</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/productivity_other'>Productivity Other</a></li></ul></li><li class='expanded'><a href='https://www.tutorialspoint.com/videotutorials/category/religion_and_spirituality'>Religion & Spirituality  <i class='fa fa-angle-right'></i></a><ul><li><a href='https://www.tutorialspoint.com/videotutorials/category/crystal_energy'>Crystal Energy</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/mindfulness'>Mindfulness</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/past_lives'>Past Lives</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/psychic'>Psychic</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/spiritual_healing'>Spiritual Healing</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/spirituality'>Spirituality</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/tarot_reading'>Tarot Reading</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/mediumship'>Mediumship</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/shamanism'>Shamanism</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/religion_and_spirituality_other'>Religion & Spirituality Other</a></li></ul></li><li class='expanded'><a href='https://www.tutorialspoint.com/videotutorials/category/self_esteem'>Self Esteem  <i class='fa fa-angle-right'></i></a><ul><li><a href='https://www.tutorialspoint.com/videotutorials/category/confidence'>Confidence</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/conversation_skills'>Conversation Skills</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/dance'>Dance</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/neuro_linguistic_programming'>Neuro-Linguistic Programming</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/social_skills'>Social Skills</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/self_esteem'>Self-Esteem</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/self_esteem_other'>Self Esteem Other</a></li></ul></li><li class='expanded'><a href='https://www.tutorialspoint.com/videotutorials/category/stress_management'>Stress Management  <i class='fa fa-angle-right'></i></a><ul><li><a href='https://www.tutorialspoint.com/videotutorials/category/anger_management'>Anger Management</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/eft'>EFT</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/emotional_intelligence'>Emotional Intelligence</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/energy_healing'>Energy Healing</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/meditation'>Meditation</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/mindfulness'>Mindfulness</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/resilience'>Resilience</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/anxiety_management'>Anxiety Management</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/stress_management_other'>Stress Management Other</a></li></ul></li><li class='expanded'><a href='https://www.tutorialspoint.com/videotutorials/category/motivation_and_others'>Motivation & Others  <i class='fa fa-angle-right'></i></a><ul><li><a href='https://www.tutorialspoint.com/videotutorials/category/confidence'>Confidence</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/goal_achievement'>Goal Achievement</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/goal_setting'>Goal Setting</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/neuroplasticity'>Neuroplasticity</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/neuroscience'>Neuroscience</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/personal_success'>Personal Success</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/procrastination'>Procrastination</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/habits'>Habits</a></li></ul></li><li class='expanded'><a href='https://www.tutorialspoint.com/videotutorials/category/personal_development_other'>Personal Development Other  <i class='fa fa-angle-right'></i></a></li></ul></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/development'><i class='fa fa-code icon'></i><span>Development</span><i class='fa fa-angle-right'></i></a><ul><li class='expanded'><a href='https://www.tutorialspoint.com/videotutorials/category/data_science'>Data Science  <i class='fa fa-angle-right'></i></a><ul><li><a href='https://www.tutorialspoint.com/videotutorials/category/artificial_intelligence'>Artificial Intelligence</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/data_analysis'>Data Analysis</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/deep_learning'>Deep Learning</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/machine_learning'>Machine Learning</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/python'>Python</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/neural_networks'>Neural Networks</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/tensorflow'>TensorFlow</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/r'>R</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/data_mining'>Data Mining</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/data_science_other'>Data Science Other</a></li></ul></li><li class='expanded'><a href='https://www.tutorialspoint.com/videotutorials/category/databases'>Databases  <i class='fa fa-angle-right'></i></a><ul><li><a href='https://www.tutorialspoint.com/videotutorials/category/apache_kafka'>Apache Kafka</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/database_management'>Database Management</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/mongodb'>MongoDB</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/mysql'>MySQL</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/oracle_certification'>Oracle Certification</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/oracle_sql'>Oracle SQL</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/sql'>SQL</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/sql_server'>SQL Server</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/database_programming'>Database Programming</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/databases_other'>Databases Other</a></li></ul></li><li class='expanded'><a href='https://www.tutorialspoint.com/videotutorials/category/development_tools'>Development Tools  <i class='fa fa-angle-right'></i></a><ul><li><a href='https://www.tutorialspoint.com/videotutorials/category/aws_certification'>AWS Certification</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/devops'>DevOps</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/docker'>Docker</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/git'>Git</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/jira'>Jira</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/kubernetes'>Kubernetes</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/aws_certified_developer_associate'>AWS Certified Developer - Associate</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/jenkins'>Jenkins</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/aws_certified_developer_associate'>AWS Certified Developer - Associate</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/aws_certified_developer_associate'>AWS Certified Developer - Associate</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/development_tools_other'>Development Tools Other</a></li></ul></li><li class='expanded'><a href='https://www.tutorialspoint.com/videotutorials/category/game_development'>Game Development  <i class='fa fa-angle-right'></i></a><ul><li><a href='https://www.tutorialspoint.com/videotutorials/category/3d_game_development'>3D Game Development</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/2d_game_development'>2D Game Development</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/chash'>C#</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/cplusplus'>C++</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/game_development_fundamentals'>Game Development Fundamentals</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/mobile_game_development'>Mobile Game Development</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/unity'>Unity</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/unreal_engine'>Unreal Engine</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/unreal_engine_blueprints'>Unreal Engine Blueprints</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/game_development_other'>Game Development Other</a></li></ul></li><li class='expanded'><a href='https://www.tutorialspoint.com/videotutorials/category/mobile_apps'>Mobile Apps  <i class='fa fa-angle-right'></i></a><ul><li><a href='https://www.tutorialspoint.com/videotutorials/category/android_development'>Android Development</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/google_flutter'>Google Flutter</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/ionic'>Ionic</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/ios_development'>IOS Development</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/kotlin'>Kotlin</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/react_native'>React Native</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/swift'>Swift</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/dart_programming_language'>Dart Programming Language</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/mobile_development'>Mobile Development</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/mobile_apps_other'>Mobile Apps Other</a></li></ul></li><li class='expanded'><a href='https://www.tutorialspoint.com/videotutorials/category/programming_languages'>Programming Languages  <i class='fa fa-angle-right'></i></a><ul><li><a href='https://www.tutorialspoint.com/videotutorials/category/chash'>C#</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/cplusplus'>C++</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/java'>Java</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/javascript'>Javascript</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/python'>Python</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/react'>React</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/spring_framework'>Spring Framework</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/java_technologies'>Java Technologies</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/c'>C</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/go_programming_language'>Go Programming Language</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/perl'>Perl</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/scratch-programming'>Scratch Programming</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/vb-net-4'>VB.NET</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/programming_languages_other'>Programming Languages Other</a></li></ul></li><li class='expanded'><a href='https://www.tutorialspoint.com/videotutorials/category/software_engineering'>Software Engineering  <i class='fa fa-angle-right'></i></a><ul><li><a href='https://www.tutorialspoint.com/videotutorials/category/aws_certification'>AWS Certification</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/big_data'>Big Data</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/kubernetes'>Kubernetes</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/python'>Python</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/aws_certified_developer_associate'>AWS Certified Developer - Associate</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/microservices'>Microservices</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/cloud_computing'>Cloud Computing</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/software_engineering_other'>Software Engineering Other</a></li></ul></li><li class='expanded'><a href='https://www.tutorialspoint.com/videotutorials/category/software_testing'>Software Testing  <i class='fa fa-angle-right'></i></a><ul><li><a href='https://www.tutorialspoint.com/videotutorials/category/api_testing'>API Testing</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/appium'>Appium</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/python'>Python</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/selenium_testing_framework'>Selenium Testing Framework</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/selenium_webdriver'>Selenium WebDriver</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/software_quality'>Software Quality</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/automation_testing'>Automation Testing</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/rest_assured'>REST Assured</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/java_testing'>Java Testing</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/python_testing'>Python Testing</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/hp_uft'>HP UFT</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/software_testing_other'>Software Testing Other</a></li></ul></li><li class='expanded'><a href='https://www.tutorialspoint.com/videotutorials/category/web_development'>Web Development  <i class='fa fa-angle-right'></i></a><ul><li><a href='https://www.tutorialspoint.com/videotutorials/category/angular'>Angular</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/css'>CSS</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/html'>HTML</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/javascript'>Javascript</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/node_js'>Node.JS</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/php'>PHP</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/python'>Python</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/react'>React</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/java_technologies'>Java Technologies</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/sapui_5'>SAPUI 5</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/html5'>HTML5</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/net'>.Net</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/net-framework'>.Net Framework</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/vue_js'>Vue JS</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/web_development_other'>Web Development Other</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/jquery-42'>jQuery</a></li></ul></li><li class='expanded'><a href='https://www.tutorialspoint.com/videotutorials/category/ecommerce'>Ecommerce  <i class='fa fa-angle-right'></i></a><ul><li><a href='https://www.tutorialspoint.com/videotutorials/category/confluence'>Confluence</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/magento'>Magento</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/shopify'>Shopify</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/woocommerce'>WooCommerce</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/wordpress'>WordPress</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/wordpress'>Wordpress</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/wordpress_for_ecommerce'>WordPress for Ecommerce</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/prestashop'>PrestaShop</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/ecommerce_other'>Ecommerce Other</a></li></ul></li><li class='expanded'><a href='https://www.tutorialspoint.com/videotutorials/category/development_other'>Development Other  <i class='fa fa-angle-right'></i></a></li><li class='expanded'><a href='https://www.tutorialspoint.com/videotutorials/category/salesforce'>Salesforce  <i class='fa fa-angle-right'></i></a><ul><li><a href='https://www.tutorialspoint.com/videotutorials/category/salesforce_administration'>Salesforce Administration</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/salesforce_certification'>Salesforce Certification</a></li><li><a href='https://www.tutorialspoint.com/videotutorials/category/salesforce_other'>Salesforce Other</a></li></ul></li></ul></li></ul></li><div class="clear"></div>
							</ul>
						</div>
					</li>
					<li class="nav-item nav-search">
						<div class="search-input open">
							<form method="GET" class="" name="searchform" action="https://www.tutorialspoint.com/videotutorials/search.php" >
								<input class="input" type="text" id="search-strings" name="key" placeholder="search video courses..."  autocomplete="off">
								<button><i class="fa fa-search"></i></button>
							</form>
						</div>
					</li>
				</ul>
				<ul class="nav navbar-nav float-right">   
										<li class="dropdown dropdown-notification nav-item library">
						<div class="cart">
							<a href="https://store.tutorialspoint.com/" title="tutorials point eBooks" class="nav-link nav-link-label"><i class="fa fa-book"></i> eBooks</a>
						</div>
					</li>               
					<li class="dropdown dropdown-notification nav-item library">
						<div class="cart">
							<a href="https://www.tutorialspoint.com/videotutorials/index.php" title="tutorials point video courses" class="nav-link nav-link-label"><i class="fa fa-play-circle"></i> Videos</a>
						</div>
					</li>
					<li class="dropdown dropdown-notification nav-item">
						<div class="cart">
							<a href="https://www.tutorialspoint.com/videotutorials/teach-with-us.php" class="nav-link nav-link-label teach"><i class="fa fa-user header-icons" title="Teach with Us"></i> Teach with Us</a>
						</div>
					</li>
										<li class="dropdown dropdown-notification nav-item">
												<div class="cart">
							<a href="https://www.tutorialspoint.com/videotutorials/login.php" class="nav-link nav-link-label"><i class="fa fa-sign-in-alt header-icons"></i> Login</span></a>
						</div>
						     
					</li>
				</ul>
			  </div>
			</div>
		</div>
		</div>
	</nav>		
	<div style="clear:both;"></div>
	
	<div class="alert alert-success boxshw" role="alert" style="display:none;">
		<b class="alert-close"><i class="fa fa-times " title="close"></i></b><span></span>
	</div>
	<div class="alert alert-danger" role="alert" style="display:none;">
	  <b class="alert-close"><i class="fa fa-times " title="close"></i></b><span></span>
	</div>
	<div class="alert alert-warning" role="alert" style="display:none;">
	  <b class="alert-close"><i class="fa fa-times " title="close"></i></b><span></span>
	</div> 
	<div style="clear:both;"></div>
	<div class="wrap_loader" style="height:5304px;">
		<div class="imgLoader"><img src="https://www.tutorialspoint.com/videotutorials/images/loader.gif" alt="Tutorialspoint" width="70" height="70"></div>
	</div>
	<div style="clear:both;"></div>
<script src="https://www.tutorialspoint.com/videotutorials/js/videos_user.js"></script> 
<script>
   $(function(){
	 $(".Preview_btn").on("click",function(){
		var purl = $(this).data('href');
      $.ajax({
            url: purl,
				 method: "GET",
         }).done(function (returnData) {
            $('#popupDivContent').html(returnData);
            $('#popupDiv').show();
      });
   });
	 
    $(".link").on("click",function(){
       //alert("Please enroll the course to continue");
       $('.alert-warning span').html('Please enroll the course to continue');
       $('.alert-warning span').html('Please enroll the course to continue');
       $('.alert-warning').show();
       setTimeout(function(){
         $('.alert-warning').hide();
         $('.alert-warning span').html('');
       },5000);
       return false;
   });
});         
</script>  
<style>.course_header_title{margin:0% 0 0 0!important;} body.vertical-layout.vertical-menu.menu-expanded .content{margin-left:0px;} body.vertical-layout.vertical-menu.menu-expanded .footer{margin-left:0px;} .main-menu,.d-md-block{display:none!important;}</style>
       
<div style='width:0px;'></div>
<div class="app-content content" style='margin-left:0px;'>
	
			<div class="content-wrapper">
				<div class="desktop large">
					<div class="col-md-12" id="coursesDisplayDiv">
					
					<div class="col-md-4 padding">
						<div class="courseimg panel sticky large-panel"> 
							<div class="course_header">
								<div class="course_img"><img src="https://www.tutorialspoint.com/videotutorials/assets/videos/courses/900/images/course_900_image.png" /></div>
							</div>    
							<div class="tp-includes">
								<div class="item-head"><i class="fa fa-paperclip"></i> Subscription Includes</div>
								<div class="item-link"><i class="fa fa-clock"></i>&nbsp;05:32:01 of High Quality Videos</div>
								<div class="item-link"><i class="fa fa-play-circle"></i>&nbsp;53 &nbsp;Lectures</div>
								<div class="item-link"><i class="fa fa-universal-access"></i>&nbsp;Full Lifetime Access</div>
																<div class="item-link"><i class="fa fa-file-certificate"></i>&nbsp;Certificate on Completion</div>
															</div>
                     <div class="">
															
								<h5 class="py-2" href="javascript:void(0);" contenteditable='false'>
									<strike>&#8377; 7700</strike>&nbsp;&nbsp;
									<b><i class="fa fa-rupee-sign"></i> 2100</b>
								</h5>								
								   
                    </div>
                    <div class="col-md-12 col-sm-12 padding">
								                           <button class="btn btn-success" title="Add to Cart"><a href="javascript:void(0);" class="add-to-cart-form"><i class="fa fa-shopping-cart"></i> Add To Cart<input type = "hidden" name="couser_id" id="course_id" value="900"></a></button>
								  
							</div>
						</div>         
						<div class="clear"></div>
					</div>
			              
					<div class="col-md-8 course-index-padding-20">   
						<div class="content-body">				
							<div class="">
								<div class="panel large-panel">
								<div class="background">
									<h1 class="course_header_title">Mastering DAX and Data Models in Power BI Desktop</h1>
									<h2 class="course_header_sub">Build your foundation for Data Modelling, Relationhsip, DAX language in Power BI</h2>
									<h3>Created by
									 									  
									 <a href="https://www.tutorialspoint.com/videotutorials/profile/abhay_gadiya" title="View Profile Abhay Gadiya"> <b>Abhay Gadiya</b></a>,
									 									  Last Updated <a href="javascript:void(0);"><b>31-Jan-2020</b></a>, Language:<a href="javascript:void(0);"><b>English</b></a></h3>
								</div>
								<div class="padding tp-pre-tags">
									<div class="tp-widget">                
									   										<h1>What Will I Get ?</h1>
										<ul>
																						<li>Building foundation about Data Models, Relationships and DAX formulas in Power BI</li>  
																						<li>Various foundation concepts of Data Models and relationship not covered in any other course</li>  
																						<li>Normalized and de-normalized datasets &ndash; advantages and difference</li>  
																						<li>Three fundamentals rules for normalizing your dataset for better performance</li>  
																						<li>Star Schema, Snowflakes Schema, Top Down schema for Data Models</li>  
																						<li>One to Many, Many to One, Many to One relationship</li>  
																						<li>Simple and easy to understand approach explaining complex concepts of Power BI DAX</li>  
																						<li>DAX Studio, DAX Variables, Time intelligence and other complex DAX formulas</li>  
																					</ul>
                              <div class="clear"></div>  
										           
									  										<h1>Requirements</h1>
										<ul>
																						<li>Person should know Power BI Query editor &ndash; how to import and transform data inside Power BI</li> 
																						<li>This course is next step after completing my Power BI Query Editor course</li> 
																						<li>Person is keen to learn more concepts about Power BI DAX</li> 
																						<li>Ensure that you have latest version of Power BI Desktop installed</li> 
																					</ul> 
																						 
										<div class="clear"></div>  
                              <h1>Description</h1>
									   <p><p>If you are planning to get started with Power BI and your data analytics journey it is very important that you follow a proper path to learn various concepts about data analytics.</p><ol><li><p><strong>Gathering the data</strong> - Perform your Extract > Transform > Load (ETL) activities.</p></li><li><p><strong>Model your data</strong> - Normalizing your data is one of the critical step</p></li><li><p><strong>Relationship between data tables</strong> - To understand the flow of information</p></li><li><p><strong>DAX</strong> - Perform your data crunching and analysis</p></li><li><p><strong>Visual analytics</strong> - Not just numbers and but pictorial presentation</p></li></ol><p>I have covered ETL activities in my course titled - Power Bi Query Editor - Master Data Transformation. It have more than 6+ hours video content explaining all the concepts related to Power Query and M Language with the help of real world datasets.</p><p>Once you have completed above course you must move on to next step for Data Modelling, Relationships and DAX.</p><p>Currently various courses at Udemy will explain only DAX and will cover data modelling & relationship only briefly. However, structuring data properly is essential to achieving good performance in your reports and to maintaining a low level of complexity in your DAX formulas.</p><p>The easiest way to create a data model in Power BI is to gather the data “as is” from a data source, define relationships, and then start designing reports. But this approach raises several issues when you have too many tables, or different levels of granularity.  This course will explain in detail how you can create appropriate data models by applying fundamental rules of normalizing your data.</p><p>For person starting with DAX it is little challenging as he may need to visualize in my mind what result he would get from the DAX formula he is writing. This can be confusing, so I have created this course which you will give simple and easy to understand explanation about using various DAX formulas. This course will guide you to deep understanding about various concepts of DAX like filter context, row context, evaluation context, Table or scalar DAX functions, Iterator DAX functions, Calculated Measures, Calculated Columns, etc.</p><h1>Who this course is for:</h1><ul><li>Students who have completed my Power BI Query editor course and want to learn now more about DAX</li><li>If you want to prepare for Power BI certifications from Microsoft</li><li>For all those who want to automate management reporting and wow their stakeholders.</li><li>Perform your data analysis quickly using DAX</li></ul></p>
									   <div class="clear"></div>   
									</div>               
									
									<div class="main-scroll">              
										<h1><i class="fa fa-list-alt"></i> Course Content</h1>
										<div class="scroller" style="width:100%!important;overflow:auto;">
											<ul class="nav left-menu" style="overflow-x:hidden;width:100%!important;"> 
												                              
												<li class="toc" data-sid="4252">
													<a href="javascript:void(0);" class="clsSection" style="background-color:#7341a2!important;line-height:10px!important;">Introduction to Data Modelling 
														<span class="toc-options">
															<i class="fa fa-plus-circle plus-hide" style="display:none" id="plus-show-4252"></i> 
															<i class="fa fa-minus-circle plus-show" style="display:block" id ="plus-hide-4252"></i> 
														</span>
														<span class="lec-items">
															<span style="padding-right:18px;">17 Lectures</span>
															<span style="width:60px; margin:-4px 18px 0px 0px;padding:0px;">01:25:56</span>
														</span>
													</a>   
													<ul class="submenu ">
																												<li class="clsLecture clsoptions" style="display:block">
															<div class="">  
                                                                                                   <div class="col-md-9 padding"><p><i class="fa fa-play-circle"></i> Data Modelling mindset - think in multiple tables</p></div>
                                                   <div class="col-md-2 padding">
                                                																	<input type="hidden" name="P_l_id" value="c1c4Z3ZKaFRCRWJ4dzZZRVluVUVVZz09">
																	<span class='Preview_btn preview_video' data-href="https://www.tutorialspoint.com/videotutorials/preview_video.php?vl=c1c4Z3ZKaFRCRWJ4dzZZRVluVUVVZz09&cid=900/preview_video.php?vl=c1c4Z3ZKaFRCRWJ4dzZZRVluVUVVZz09&cid=900" title=""><b><i class="fa fa-video"></i> Preview</b></span>
																	<div class="clear"></div>
																	                                                   </div>
                                                                                                   																<div class="col-md-1 padding"><span>00:05:16</span></div>
                                                      																<div class="clear"></div>
															</div>
														</li>
																												<li class="clsLecture clsoptions" style="display:block">
															<div class="link">  
                                                                                                   <div class="col-md-9 padding"><p><i class="fa fa-file-alt"></i> File Resources</p></div>
                                                   <div class="col-md-2 padding">
                                                                                                   </div>
                                                                                                   																<div class="clear"></div>
															</div>
														</li>
																												<li class="clsLecture clsoptions" style="display:block">
															<div class="">  
                                                                                                   <div class="col-md-9 padding"><p><i class="fa fa-play-circle"></i> Keys in Tables - Primary Key and Foreign Key</p></div>
                                                   <div class="col-md-2 padding">
                                                																	<input type="hidden" name="P_l_id" value="UUdTQlBxUWdIYmdrRThZQXhNTDI0QT09">
																	<span class='Preview_btn preview_video' data-href="https://www.tutorialspoint.com/videotutorials/preview_video.php?vl=UUdTQlBxUWdIYmdrRThZQXhNTDI0QT09&cid=900/preview_video.php?vl=UUdTQlBxUWdIYmdrRThZQXhNTDI0QT09&cid=900" title=""><b><i class="fa fa-video"></i> Preview</b></span>
																	<div class="clear"></div>
																	                                                   </div>
                                                                                                   																<div class="col-md-1 padding"><span>00:05:03</span></div>
                                                      																<div class="clear"></div>
															</div>
														</li>
																												<li class="clsLecture clsoptions" style="display:block">
															<div class="">  
                                                                                                   <div class="col-md-9 padding"><p><i class="fa fa-play-circle"></i> Introduction to Normalisation of Datasets</p></div>
                                                   <div class="col-md-2 padding">
                                                																	<input type="hidden" name="P_l_id" value="a2FQUE5FQTFhYWtuYUE1VGJETEVGQT09">
																	<span class='Preview_btn preview_video' data-href="https://www.tutorialspoint.com/videotutorials/preview_video.php?vl=a2FQUE5FQTFhYWtuYUE1VGJETEVGQT09&cid=900/preview_video.php?vl=a2FQUE5FQTFhYWtuYUE1VGJETEVGQT09&cid=900" title=""><b><i class="fa fa-video"></i> Preview</b></span>
																	<div class="clear"></div>
																	                                                   </div>
                                                                                                   																<div class="col-md-1 padding"><span>00:05:03</span></div>
                                                      																<div class="clear"></div>
															</div>
														</li>
																												<li class="clsLecture clsoptions" style="display:block">
															<div class="link">  
                                                                                                   <div class="col-md-9 padding"><p><i class="fa fa-play-circle"></i> Rule # 1 : First Normal Form - single value and not repeating groups</p></div>
                                                   <div class="col-md-2 padding">
                                                                                                   </div>
                                                                                                   																<div class="col-md-1 padding"><span>00:05:16</span></div>
                                                      																<div class="clear"></div>
															</div>
														</li>
																												<li class="clsLecture clsoptions" style="display:block">
															<div class="link">  
                                                                                                   <div class="col-md-9 padding"><p><i class="fa fa-play-circle"></i> Rule # 2 : Second Normal Form - composite primary key</p></div>
                                                   <div class="col-md-2 padding">
                                                                                                   </div>
                                                                                                   																<div class="col-md-1 padding"><span>00:06:19</span></div>
                                                      																<div class="clear"></div>
															</div>
														</li>
																												<li class="clsLecture clsoptions" style="display:block">
															<div class="link">  
                                                                                                   <div class="col-md-9 padding"><p><i class="fa fa-play-circle"></i> Rule # 3 : Third Normal Form - dependency between non-key fields</p></div>
                                                   <div class="col-md-2 padding">
                                                                                                   </div>
                                                                                                   																<div class="col-md-1 padding"><span>00:05:37</span></div>
                                                      																<div class="clear"></div>
															</div>
														</li>
																												<li class="clsLecture clsoptions" style="display:block">
															<div class="link">  
                                                                                                   <div class="col-md-9 padding"><p><i class="fa fa-play-circle"></i> How to normalize the a dummy dataset by applying normalization rules</p></div>
                                                   <div class="col-md-2 padding">
                                                                                                   </div>
                                                                                                   																<div class="col-md-1 padding"><span>00:13:13</span></div>
                                                      																<div class="clear"></div>
															</div>
														</li>
																												<li class="clsLecture clsoptions" style="display:block">
															<div class="link">  
                                                                                                   <div class="col-md-9 padding"><p><i class="fa fa-play-circle"></i> Recap - Three Normalisation rules</p></div>
                                                   <div class="col-md-2 padding">
                                                                                                   </div>
                                                                                                   																<div class="col-md-1 padding"><span>00:03:01</span></div>
                                                      																<div class="clear"></div>
															</div>
														</li>
																												<li class="clsLecture clsoptions" style="display:block">
															<div class="link">  
                                                                                                   <div class="col-md-9 padding"><p><i class="fa fa-play-circle"></i> Table types - Data / Fact table and Lookup / Dimension Table</p></div>
                                                   <div class="col-md-2 padding">
                                                                                                   </div>
                                                                                                   																<div class="col-md-1 padding"><span>00:05:58</span></div>
                                                      																<div class="clear"></div>
															</div>
														</li>
																												<li class="clsLecture clsoptions" style="display:block">
															<div class="link">  
                                                                                                   <div class="col-md-9 padding"><p><i class="fa fa-play-circle"></i> Relationship Cardinality an introduction</p></div>
                                                   <div class="col-md-2 padding">
                                                                                                   </div>
                                                                                                   																<div class="col-md-1 padding"><span>00:01:50</span></div>
                                                      																<div class="clear"></div>
															</div>
														</li>
																												<li class="clsLecture clsoptions" style="display:block">
															<div class="link">  
                                                                                                   <div class="col-md-9 padding"><p><i class="fa fa-play-circle"></i> One to Many relationship</p></div>
                                                   <div class="col-md-2 padding">
                                                                                                   </div>
                                                                                                   																<div class="col-md-1 padding"><span>00:02:48</span></div>
                                                      																<div class="clear"></div>
															</div>
														</li>
																												<li class="clsLecture clsoptions" style="display:block">
															<div class="link">  
                                                                                                   <div class="col-md-9 padding"><p><i class="fa fa-play-circle"></i> Many to Many relationship</p></div>
                                                   <div class="col-md-2 padding">
                                                                                                   </div>
                                                                                                   																<div class="col-md-1 padding"><span>00:02:22</span></div>
                                                      																<div class="clear"></div>
															</div>
														</li>
																												<li class="clsLecture clsoptions" style="display:block">
															<div class="link">  
                                                                                                   <div class="col-md-9 padding"><p><i class="fa fa-play-circle"></i> One to One relationship</p></div>
                                                   <div class="col-md-2 padding">
                                                                                                   </div>
                                                                                                   																<div class="col-md-1 padding"><span>00:01:45</span></div>
                                                      																<div class="clear"></div>
															</div>
														</li>
																												<li class="clsLecture clsoptions" style="display:block">
															<div class="link">  
                                                                                                   <div class="col-md-9 padding"><p><i class="fa fa-play-circle"></i> Relationship cardinality recap</p></div>
                                                   <div class="col-md-2 padding">
                                                                                                   </div>
                                                                                                   																<div class="col-md-1 padding"><span>00:01:46</span></div>
                                                      																<div class="clear"></div>
															</div>
														</li>
																												<li class="clsLecture clsoptions" style="display:block">
															<div class="link">  
                                                                                                   <div class="col-md-9 padding"><p><i class="fa fa-play-circle"></i> Relationship in Power BI - Active / In-active, one / both way filter propagation</p></div>
                                                   <div class="col-md-2 padding">
                                                                                                   </div>
                                                                                                   																<div class="col-md-1 padding"><span>00:14:50</span></div>
                                                      																<div class="clear"></div>
															</div>
														</li>
																												<li class="clsLecture clsoptions" style="display:block">
															<div class="link">  
                                                                                                   <div class="col-md-9 padding"><p><i class="fa fa-play-circle"></i> Diagram view : Top Down, Star Schema, Snow Flakes - managing table presentation</p></div>
                                                   <div class="col-md-2 padding">
                                                                                                   </div>
                                                                                                   																<div class="col-md-1 padding"><span>00:05:49</span></div>
                                                      																<div class="clear"></div>
															</div>
														</li>
														                           
													</ul> 
												</li> 
												                              
												<li class="toc" data-sid="4614">
													<a href="javascript:void(0);" class="clsSection" style="background-color:#7341a2!important;line-height:10px!important;">Preparing your data for Dashboards 
														<span class="toc-options">
															<i class="fa fa-plus-circle plus-hide" style="display:none" id="plus-show-4614"></i> 
															<i class="fa fa-minus-circle plus-show" style="display:block" id ="plus-hide-4614"></i> 
														</span>
														<span class="lec-items">
															<span style="padding-right:18px;">8 Lectures</span>
															<span style="width:60px; margin:-4px 18px 0px 0px;padding:0px;">00:46:17</span>
														</span>
													</a>   
													<ul class="submenu ">
																												<li class="clsLecture clsoptions" style="display:block">
															<div class="link">  
                                                                                                   <div class="col-md-9 padding"><p><i class="fa fa-play-circle"></i> Tables related options - Table view, Rename, Hide / Delete</p></div>
                                                   <div class="col-md-2 padding">
                                                                                                   </div>
                                                                                                   																<div class="col-md-1 padding"><span>00:05:47</span></div>
                                                      																<div class="clear"></div>
															</div>
														</li>
																												<li class="clsLecture clsoptions" style="display:block">
															<div class="link">  
                                                                                                   <div class="col-md-9 padding"><p><i class="fa fa-play-circle"></i> Columns related - Width, Rename, Sort / Sort by, Hide / Delete, Filters, Groups</p></div>
                                                   <div class="col-md-2 padding">
                                                                                                   </div>
                                                                                                   																<div class="col-md-1 padding"><span>00:17:38</span></div>
                                                      																<div class="clear"></div>
															</div>
														</li>
																												<li class="clsLecture clsoptions" style="display:block">
															<div class="link">  
                                                                                                   <div class="col-md-9 padding"><p><i class="fa fa-play-circle"></i> Data Types valid inside Power BI Desktop</p></div>
                                                   <div class="col-md-2 padding">
                                                                                                   </div>
                                                                                                   																<div class="col-md-1 padding"><span>00:04:27</span></div>
                                                      																<div class="clear"></div>
															</div>
														</li>
																												<li class="clsLecture clsoptions" style="display:block">
															<div class="link">  
                                                                                                   <div class="col-md-9 padding"><p><i class="fa fa-play-circle"></i> Formatting data inside a column</p></div>
                                                   <div class="col-md-2 padding">
                                                                                                   </div>
                                                                                                   																<div class="col-md-1 padding"><span>00:05:38</span></div>
                                                      																<div class="clear"></div>
															</div>
														</li>
																												<li class="clsLecture clsoptions" style="display:block">
															<div class="link">  
                                                                                                   <div class="col-md-9 padding"><p><i class="fa fa-play-circle"></i> How to categorize data inside Power BI Desktop</p></div>
                                                   <div class="col-md-2 padding">
                                                                                                   </div>
                                                                                                   																<div class="col-md-1 padding"><span>00:02:49</span></div>
                                                      																<div class="clear"></div>
															</div>
														</li>
																												<li class="clsLecture clsoptions" style="display:block">
															<div class="link">  
                                                                                                   <div class="col-md-9 padding"><p><i class="fa fa-play-circle"></i> How to apply default summarization to a column inside Power BI Desktop</p></div>
                                                   <div class="col-md-2 padding">
                                                                                                   </div>
                                                                                                   																<div class="col-md-1 padding"><span>00:03:42</span></div>
                                                      																<div class="clear"></div>
															</div>
														</li>
																												<li class="clsLecture clsoptions" style="display:block">
															<div class="link">  
                                                                                                   <div class="col-md-9 padding"><p><i class="fa fa-play-circle"></i> How to mark a table as Date Table inside Power BI Desktop and why is it required</p></div>
                                                   <div class="col-md-2 padding">
                                                                                                   </div>
                                                                                                   																<div class="col-md-1 padding"><span>00:02:46</span></div>
                                                      																<div class="clear"></div>
															</div>
														</li>
																												<li class="clsLecture clsoptions" style="display:block">
															<div class="link">  
                                                                                                   <div class="col-md-9 padding"><p><i class="fa fa-play-circle"></i> How to import Power Pivot data model from Excel into Power BI</p></div>
                                                   <div class="col-md-2 padding">
                                                                                                   </div>
                                                                                                   																<div class="col-md-1 padding"><span>00:03:30</span></div>
                                                      																<div class="clear"></div>
															</div>
														</li>
														                           
													</ul> 
												</li> 
												                              
												<li class="toc" data-sid="4615">
													<a href="javascript:void(0);" class="clsSection" style="background-color:#7341a2!important;line-height:10px!important;">DAX  fundamentals - Power of Power BI desktop 
														<span class="toc-options">
															<i class="fa fa-plus-circle plus-hide" style="display:block" id="plus-show-4615"></i> 
															<i class="fa fa-minus-circle plus-show" style="display:none" id ="plus-hide-4615"></i> 
														</span>
														<span class="lec-items">
															<span style="padding-right:18px;">8 Lectures</span>
															<span style="width:60px; margin:-4px 18px 0px 0px;padding:0px;">01:06:28</span>
														</span>
													</a>   
													<ul class="submenu active">
																												<li class="clsLecture clsoptions" >
															<div class="link">  
                                                                                                   <div class="col-md-9 padding"><p><i class="fa fa-play-circle"></i> An introduction to DAX language fundamentals</p></div>
                                                   <div class="col-md-2 padding">
                                                                                                   </div>
                                                                                                   																<div class="col-md-1 padding"><span>00:03:02</span></div>
                                                      																<div class="clear"></div>
															</div>
														</li>
																												<li class="clsLecture clsoptions" >
															<div class="link">  
                                                                                                   <div class="col-md-9 padding"><p><i class="fa fa-play-circle"></i> Data Types, DAX Operators and DAX Syntax</p></div>
                                                   <div class="col-md-2 padding">
                                                                                                   </div>
                                                                                                   																<div class="col-md-1 padding"><span>00:09:44</span></div>
                                                      																<div class="clear"></div>
															</div>
														</li>
																												<li class="clsLecture clsoptions" >
															<div class="link">  
                                                                                                   <div class="col-md-9 padding"><p><i class="fa fa-play-circle"></i> DAX Functions list by categories - Table and Scalar values</p></div>
                                                   <div class="col-md-2 padding">
                                                                                                   </div>
                                                                                                   																<div class="col-md-1 padding"><span>00:06:41</span></div>
                                                      																<div class="clear"></div>
															</div>
														</li>
																												<li class="clsLecture clsoptions" >
															<div class="link">  
                                                                                                   <div class="col-md-9 padding"><p><i class="fa fa-play-circle"></i> Calculated  in Power Bi</p></div>
                                                   <div class="col-md-2 padding">
                                                                                                   </div>
                                                                                                   																<div class="col-md-1 padding"><span>00:09:38</span></div>
                                                      																<div class="clear"></div>
															</div>
														</li>
																												<li class="clsLecture clsoptions" >
															<div class="link">  
                                                                                                   <div class="col-md-9 padding"><p><i class="fa fa-play-circle"></i> Calculated Measures in Power BI</p></div>
                                                   <div class="col-md-2 padding">
                                                                                                   </div>
                                                                                                   																<div class="col-md-1 padding"><span>00:13:59</span></div>
                                                      																<div class="clear"></div>
															</div>
														</li>
																												<li class="clsLecture clsoptions" >
															<div class="link">  
                                                                                                   <div class="col-md-9 padding"><p><i class="fa fa-play-circle"></i> Calculated Columns vs Calculated Measure</p></div>
                                                   <div class="col-md-2 padding">
                                                                                                   </div>
                                                                                                   																<div class="col-md-1 padding"><span>00:03:19</span></div>
                                                      																<div class="clear"></div>
															</div>
														</li>
																												<li class="clsLecture clsoptions" >
															<div class="link">  
                                                                                                   <div class="col-md-9 padding"><p><i class="fa fa-play-circle"></i> Filter Context and Row Context</p></div>
                                                   <div class="col-md-2 padding">
                                                                                                   </div>
                                                                                                   																<div class="col-md-1 padding"><span>00:11:36</span></div>
                                                      																<div class="clear"></div>
															</div>
														</li>
																												<li class="clsLecture clsoptions" >
															<div class="link">  
                                                                                                   <div class="col-md-9 padding"><p><i class="fa fa-play-circle"></i> Golden rules of Measures and other important things</p></div>
                                                   <div class="col-md-2 padding">
                                                                                                   </div>
                                                                                                   																<div class="col-md-1 padding"><span>00:08:29</span></div>
                                                      																<div class="clear"></div>
															</div>
														</li>
														                           
													</ul> 
												</li> 
												                              
												<li class="toc" data-sid="4616">
													<a href="javascript:void(0);" class="clsSection" style="background-color:#7341a2!important;line-height:10px!important;">Basic DAX function examples 
														<span class="toc-options">
															<i class="fa fa-plus-circle plus-hide" style="display:block" id="plus-show-4616"></i> 
															<i class="fa fa-minus-circle plus-show" style="display:none" id ="plus-hide-4616"></i> 
														</span>
														<span class="lec-items">
															<span style="padding-right:18px;">9 Lectures</span>
															<span style="width:60px; margin:-4px 18px 0px 0px;padding:0px;">01:00:10</span>
														</span>
													</a>   
													<ul class="submenu active">
																												<li class="clsLecture clsoptions" >
															<div class="link">  
                                                                                                   <div class="col-md-9 padding"><p><i class="fa fa-play-circle"></i> Introduction to Common DAX functions</p></div>
                                                   <div class="col-md-2 padding">
                                                                                                   </div>
                                                                                                   																<div class="col-md-1 padding"><span>00:02:06</span></div>
                                                      																<div class="clear"></div>
															</div>
														</li>
																												<li class="clsLecture clsoptions" >
															<div class="link">  
                                                                                                   <div class="col-md-9 padding"><p><i class="fa fa-play-circle"></i> Related and Related Table function</p></div>
                                                   <div class="col-md-2 padding">
                                                                                                   </div>
                                                                                                   																<div class="col-md-1 padding"><span>00:06:48</span></div>
                                                      																<div class="clear"></div>
															</div>
														</li>
																												<li class="clsLecture clsoptions" >
															<div class="link">  
                                                                                                   <div class="col-md-9 padding"><p><i class="fa fa-play-circle"></i> Date and Time functions in DAX</p></div>
                                                   <div class="col-md-2 padding">
                                                                                                   </div>
                                                                                                   																<div class="col-md-1 padding"><span>00:08:13</span></div>
                                                      																<div class="clear"></div>
															</div>
														</li>
																												<li class="clsLecture clsoptions" >
															<div class="link">  
                                                                                                   <div class="col-md-9 padding"><p><i class="fa fa-play-circle"></i> Fundamental Math Operation using DAX functions and Operators</p></div>
                                                   <div class="col-md-2 padding">
                                                                                                   </div>
                                                                                                   																<div class="col-md-1 padding"><span>00:12:11</span></div>
                                                      																<div class="clear"></div>
															</div>
														</li>
																												<li class="clsLecture clsoptions" >
															<div class="link">  
                                                                                                   <div class="col-md-9 padding"><p><i class="fa fa-play-circle"></i> Rounding off numbers inside Power BI</p></div>
                                                   <div class="col-md-2 padding">
                                                                                                   </div>
                                                                                                   																<div class="col-md-1 padding"><span>00:06:11</span></div>
                                                      																<div class="clear"></div>
															</div>
														</li>
																												<li class="clsLecture clsoptions" >
															<div class="link">  
                                                                                                   <div class="col-md-9 padding"><p><i class="fa fa-play-circle"></i> Statistical DAX Functions</p></div>
                                                   <div class="col-md-2 padding">
                                                                                                   </div>
                                                                                                   																<div class="col-md-1 padding"><span>00:05:43</span></div>
                                                      																<div class="clear"></div>
															</div>
														</li>
																												<li class="clsLecture clsoptions" >
															<div class="link">  
                                                                                                   <div class="col-md-9 padding"><p><i class="fa fa-play-circle"></i> DISTINCTCOUNT function in DAX to count unique customers, etc.</p></div>
                                                   <div class="col-md-2 padding">
                                                                                                   </div>
                                                                                                   																<div class="col-md-1 padding"><span>00:07:13</span></div>
                                                      																<div class="clear"></div>
															</div>
														</li>
																												<li class="clsLecture clsoptions" >
															<div class="link">  
                                                                                                   <div class="col-md-9 padding"><p><i class="fa fa-play-circle"></i> Text functions in DAX</p></div>
                                                   <div class="col-md-2 padding">
                                                                                                   </div>
                                                                                                   																<div class="col-md-1 padding"><span>00:05:16</span></div>
                                                      																<div class="clear"></div>
															</div>
														</li>
																												<li class="clsLecture clsoptions" >
															<div class="link">  
                                                                                                   <div class="col-md-9 padding"><p><i class="fa fa-play-circle"></i> SWITCH function best alternative to nested IF functions</p></div>
                                                   <div class="col-md-2 padding">
                                                                                                   </div>
                                                                                                   																<div class="col-md-1 padding"><span>00:06:29</span></div>
                                                      																<div class="clear"></div>
															</div>
														</li>
														                           
													</ul> 
												</li> 
												                              
												<li class="toc" data-sid="4617">
													<a href="javascript:void(0);" class="clsSection" style="background-color:#7341a2!important;line-height:10px!important;">CALCULATE - boss of DAX functions and functions supporting it. 
														<span class="toc-options">
															<i class="fa fa-plus-circle plus-hide" style="display:block" id="plus-show-4617"></i> 
															<i class="fa fa-minus-circle plus-show" style="display:none" id ="plus-hide-4617"></i> 
														</span>
														<span class="lec-items">
															<span style="padding-right:18px;">11 Lectures</span>
															<span style="width:60px; margin:-4px 18px 0px 0px;padding:0px;">01:13:10</span>
														</span>
													</a>   
													<ul class="submenu active">
																												<li class="clsLecture clsoptions" >
															<div class="link">  
                                                                                                   <div class="col-md-9 padding"><p><i class="fa fa-play-circle"></i> Introduction to CALCULATE function in DAX</p></div>
                                                   <div class="col-md-2 padding">
                                                                                                   </div>
                                                                                                   																<div class="col-md-1 padding"><span>00:04:56</span></div>
                                                      																<div class="clear"></div>
															</div>
														</li>
																												<li class="clsLecture clsoptions" >
															<div class="link">  
                                                                                                   <div class="col-md-9 padding"><p><i class="fa fa-play-circle"></i> CALCULATE syntax explanation</p></div>
                                                   <div class="col-md-2 padding">
                                                                                                   </div>
                                                                                                   																<div class="col-md-1 padding"><span>00:06:41</span></div>
                                                      																<div class="clear"></div>
															</div>
														</li>
																												<li class="clsLecture clsoptions" >
															<div class="link">  
                                                                                                   <div class="col-md-9 padding"><p><i class="fa fa-play-circle"></i> Examples using CALCULATE function</p></div>
                                                   <div class="col-md-2 padding">
                                                                                                   </div>
                                                                                                   																<div class="col-md-1 padding"><span>00:06:17</span></div>
                                                      																<div class="clear"></div>
															</div>
														</li>
																												<li class="clsLecture clsoptions" >
															<div class="link">  
                                                                                                   <div class="col-md-9 padding"><p><i class="fa fa-play-circle"></i> FILTER function introduction to syntax, how it works and when to use it.</p></div>
                                                   <div class="col-md-2 padding">
                                                                                                   </div>
                                                                                                   																<div class="col-md-1 padding"><span>00:07:03</span></div>
                                                      																<div class="clear"></div>
															</div>
														</li>
																												<li class="clsLecture clsoptions" >
															<div class="link">  
                                                                                                   <div class="col-md-9 padding"><p><i class="fa fa-play-circle"></i> Using FILTER function in filter argument of CALCULATE</p></div>
                                                   <div class="col-md-2 padding">
                                                                                                   </div>
                                                                                                   																<div class="col-md-1 padding"><span>00:06:37</span></div>
                                                      																<div class="clear"></div>
															</div>
														</li>
																												<li class="clsLecture clsoptions" >
															<div class="link">  
                                                                                                   <div class="col-md-9 padding"><p><i class="fa fa-play-circle"></i> Context Transition using CALCULATE and FILTER function</p></div>
                                                   <div class="col-md-2 padding">
                                                                                                   </div>
                                                                                                   																<div class="col-md-1 padding"><span>00:07:08</span></div>
                                                      																<div class="clear"></div>
															</div>
														</li>
																												<li class="clsLecture clsoptions" >
															<div class="link">  
                                                                                                   <div class="col-md-9 padding"><p><i class="fa fa-play-circle"></i> ALL, ALLEXCEPT and ALLSELECTED function inside DAX to remove filter context</p></div>
                                                   <div class="col-md-2 padding">
                                                                                                   </div>
                                                                                                   																<div class="col-md-1 padding"><span>00:04:25</span></div>
                                                      																<div class="clear"></div>
															</div>
														</li>
																												<li class="clsLecture clsoptions" >
															<div class="link">  
                                                                                                   <div class="col-md-9 padding"><p><i class="fa fa-play-circle"></i> ALL and ALLEXCEPT function case study - single table</p></div>
                                                   <div class="col-md-2 padding">
                                                                                                   </div>
                                                                                                   																<div class="col-md-1 padding"><span>00:11:30</span></div>
                                                      																<div class="clear"></div>
															</div>
														</li>
																												<li class="clsLecture clsoptions" >
															<div class="link">  
                                                                                                   <div class="col-md-9 padding"><p><i class="fa fa-play-circle"></i> ALL and ALLEXCEPT function case study - multiple tables</p></div>
                                                   <div class="col-md-2 padding">
                                                                                                   </div>
                                                                                                   																<div class="col-md-1 padding"><span>00:03:31</span></div>
                                                      																<div class="clear"></div>
															</div>
														</li>
																												<li class="clsLecture clsoptions" >
															<div class="link">  
                                                                                                   <div class="col-md-9 padding"><p><i class="fa fa-play-circle"></i> ALLSELECTED - remove initial filter context and keep filter context selectively</p></div>
                                                   <div class="col-md-2 padding">
                                                                                                   </div>
                                                                                                   																<div class="col-md-1 padding"><span>00:07:08</span></div>
                                                      																<div class="clear"></div>
															</div>
														</li>
																												<li class="clsLecture clsoptions" >
															<div class="link">  
                                                                                                   <div class="col-md-9 padding"><p><i class="fa fa-play-circle"></i> CALCULATE, FILTER, ALL - differences and similarities while using these function</p></div>
                                                   <div class="col-md-2 padding">
                                                                                                   </div>
                                                                                                   																<div class="col-md-1 padding"><span>00:07:54</span></div>
                                                      																<div class="clear"></div>
															</div>
														</li>
														                           
													</ul> 
												</li> 
																							</ul>
										</div>                  
									</div>               
									<div class="clear"></div>
															
								</div>
								</div>
							
							<div class="panel large-panel">
																<div class="course-view-profile">
									<img src="https://www.tutorialspoint.com/assets/profiles/160180/profile/200_50947-1578461531.jpg" title="Abhay Gadiya"/>
									<h4><a href='https://www.tutorialspoint.com/videotutorials/profile/abhay_gadiya' target='_blank' title='View Abhay Gadiya Profile '>Abhay Gadiya</a></h4>
									<h5></h5>
									<p></p>             
								</div>
								
								<h3>More Courses from <a href="https://www.tutorialspoint.com/videotutorials/profile/abhay_gadiya" target="_blank" title="View Abhay Gadiya Profile">Abhay Gadiya </a></h3><div>								<div class="col-md-4 col-sm-6 col-xs-12 padding-left">
									<div class="card center" id="divCourse1050">
										<div class="clsCourseDiv">
											<div class="card-content">    								
												<a href="https://www.tutorialspoint.com/advance_excel_power_query_troubleshooting_case_studies_custom_m_function_with_m_language/index.asp" title="Advance Excel Power Query - Troubleshooting, Case Studies, Custom M Function with M language">
													<div class="card-content" title="Advance Excel Power Query - Troubleshooting, Case Studies, Custom M Function with M language"> 
														<img data-type="" data-ctype='C' data-progressive="" class="card-img-top img-fluid img-sub progressive-img progressive-not-loaded" src="https://www.tutorialspoint.com/videotutorials/assets/videos/courses/1050/images/course_1050_image.jpg?t=1585071254" alt="Advance Excel Power Query - Troubleshooting, Case Studies, Custom M Function with M language Image" />
														<div class="card-title" title="Advance Excel Power Query - Troubleshooting, Case Studies, Custom M Function with M language">Advance Excel Power Query - Tr...</div>
														<div class="clear"></div>
												  </div> 
												</a>
												<hr>
												<div class="col-12 padding">
													<div class="col-sm-6 col-7 text-center">
														 
														<strike>&#8377;14000</strike>&nbsp;&nbsp;<i class="fa fa-rupee-sign"></i>&nbsp;1750																											</div>							
													<div class="col-sm-6 col-5 text-center">
														<div class='add-to-cart-form add-cart-sub' title='Add to Cart'><input type='hidden' name='couser_id' id='course_id' value='1050'> <span><i class='fa fa-plus '></i>&nbsp;<i class='fa fa-shopping-cart'> </i></span></div>   
													</div>
												</div>                       
												<div class="clear"></div>	
											</div>               
										</div> 
										<div class="clear"></div>
									</div>
								  <div class="clear"></div>
								</div>
																<div class="col-md-4 col-sm-6 col-xs-12 padding-left">
									<div class="card center" id="divCourse891">
										<div class="clsCourseDiv">
											<div class="card-content">    								
												<a href="https://www.tutorialspoint.com/excel_power_query_training_beginners_to_advanced_level/index.asp" title="Excel Power Query Training - Beginners to Advanced level">
													<div class="card-content" title="Excel Power Query Training - Beginners to Advanced level"> 
														<img data-type="" data-ctype='C' data-progressive="" class="card-img-top img-fluid img-sub progressive-img progressive-not-loaded" src="https://www.tutorialspoint.com/videotutorials/assets/videos/courses/891/images/course_891_image.png?t=1585071254" alt="Excel Power Query Training - Beginners to Advanced level Image" />
														<div class="card-title" title="Excel Power Query Training - Beginners to Advanced level">Excel Power Query Training - B...</div>
														<div class="clear"></div>
												  </div> 
												</a>
												<hr>
												<div class="col-12 padding">
													<div class="col-sm-6 col-7 text-center">
														 
														<strike>&#8377;7000</strike>&nbsp;&nbsp;<i class="fa fa-rupee-sign"></i>&nbsp;1750																											</div>							
													<div class="col-sm-6 col-5 text-center">
														<div class='add-to-cart-form add-cart-sub' title='Add to Cart'><input type='hidden' name='couser_id' id='course_id' value='891'> <span><i class='fa fa-plus '></i>&nbsp;<i class='fa fa-shopping-cart'> </i></span></div>   
													</div>
												</div>                       
												<div class="clear"></div>	
											</div>               
										</div> 
										<div class="clear"></div>
									</div>
								  <div class="clear"></div>
								</div>
								<div class="clear"></div></div> 
                           
							</div>
							
							 
						</div>
						</div> 
					</div>
					<div class="clear"></div>
				</div>
			</div> 
		</div>

</div>

<footer class="footer footer-static footer-light navbar-border" style="margin-left:0px"> 
	<div class="container">
		<div class="clearfix blue-grey lighten-2 text-sm-center">
			<div><a href="/index.htm" class="logo" target="_blank"><img class="img-responsive" src="/images/logo-black.png" alt="Tutorials Point" title="Tutorials Point"></a></div>			 
			<ul class="footer-ul">
				<li><a href="/about/index.htm" target="_blank"><i class="fa fa-globe"></i> About us</a></li>
				<li><a href="/about/about_terms_of_use.htm" target="_blank"><i class="fa fa-asterisk"></i> Terms of use</a></li>
				<li><a href="/about/about_privacy.htm#cookies" target="_blank"><i class="fa fa-shield-check"></i> Cookies Policy</a></li>
				<li><a href="https://www.tutorialspoint.com/videotutorials/teach-with-us.php#faq" target="_blank"><i class="fa fa-question-circle"></i> FAQ's</a></li>
				<li><a href="/about/about_helping.htm" target="_blank"><i class="fa fa-hands-helping"></i> Helping</a></li>
				<li><a href="/about/contact_us.htm" target="_blank"><i class="fa fa-map-marker-alt"></i> Contact</a></li>
			</ul>
			<span class="copyright">© Copyright 2020. All Rights Reserved.</span>
			
		</div>
	</div>
</footer>

<div id="popupDiv" class="overlay">
   <div class="popup">      
      <div id="popupDivContent"></div>
		<a class="imageclose" href="javascript:void(0);" id="popupDivClose"><i class="fa fa-times"></i></a>
   </div>
</div>
<script async src="https://www.googletagmanager.com/gtag/js?id=UA-232293-1"></script>
<script>
   window.dataLayer = window.dataLayer || [];
   function gtag(){dataLayer.push(arguments);}
   gtag('js', new Date());
   gtag('config', 'UA-232293-1');
</script>
<script src="https://www.tutorialspoint.com/videotutorials/js/app-menu.js"></script> 
<script src="https://www.tutorialspoint.com/videotutorials/js/app.js"></script>
</body>
</html>
