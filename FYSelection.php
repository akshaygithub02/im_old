<!DOCTYPE html>
<?php

 		include('checksession.php');
 		include('config.php');
 		if ($conn->connect_error)
		{
			 die("Connection failed: " . $conn->connect_error);
		}
//		$sql = "SELECT id,fy FROM financialyear";
//		$result = $conn->query($sql);
		
		$sql1 = "SELECT id,companyName FROM company";
		$result1 = $conn->query($sql1);

		//$count=0;
		

?>
<html lang="en">
	<head>
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
		<meta charset="utf-8" />
		<title>Select financial year - Ace Admin</title>

		<meta name="description" content="User login page" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />

		<!-- bootstrap & fontawesome -->
		<link rel="stylesheet" href="assets/css/bootstrap.min.css" />
		<link rel="stylesheet" href="assets/font-awesome/4.5.0/css/font-awesome.min.css" />

		<!-- text fonts -->
		<link rel="stylesheet" href="assets/css/fonts.googleapis.com.css" />

		<!-- ace styles -->
		<link rel="stylesheet" href="assets/css/ace.min.css" />

		<!--[if lte IE 9]>
			<link rel="stylesheet" href="assets/css/ace-part2.min.css" />
		<![endif]-->
		<link rel="stylesheet" href="assets/css/ace-rtl.min.css" />

		<!--  -->
		<script type="text/javascript">
		function showUser(str) {
    		if (str == "") {
        		document.getElementById("fyid").innerHTML = "";
        		return;
    		}
    		else { 
        		if (window.XMLHttpRequest) {
            	// code for IE7+, Firefox, Chrome, Opera, Safari
            	xmlhttp = new XMLHttpRequest();
        	} 
        	else {
            // code for IE6, IE5
            	xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
        }

        xmlhttp.onreadystatechange = function() {
            if (this.readyState == 4 && this.status == 200) {
                document.getElementById("fyid").innerHTML = this.responseText;
            }
        };
        //document.write(str);
        xmlhttp.open("GET","getFY.php ? cn="+str,true);
        xmlhttp.send();
    }
}
</script>


	</head>

	<body class="login-layout">
		<div class="main-container">
			<div class="main-content">
				<div class="row">
					<div class="col-sm-10 col-sm-offset-1">
					<div class="login-container" style="width: 450px; height: 342px;">
							<div class="center">
								<h1>
									<i class="ace-icon fa fa-leaf green"></i>
									<span class="red">Inventory</span>
									<span class="white" id="id-text2">Management</span>
								</h1>
								<h4 class="blue" id="id-company-text">&copy; Tekticks</h4>
							</div>

							<div class="space-6"></div>

							<div class="position-relative">
								<div id="login-box" class="login-box visible widget-box no-border">
									<div class="widget-body">
										<div class="widget-main">
											<h5 class="header blue lighter bigger"><b>Please Select Financial Year and Company Name.</b> 
											</h5>

											<div class="space-6"></div>

											<form action="dashboard.php" method="post">
												<fieldset>
													
													<label class="block clearfix">
														<span class="block input-icon input-icon-right">
															<label for="form-field-select-2"><b>Company Name :</b></label>
															<select class="form-control" id="form-field-select-2" name="companyname" required onchange="showUser(this.value)">
																<option value="">Select Company Name</option>
																<?php 
																	while($row=mysqli_fetch_array($result1))
																	{
																		$id=$row['id'];
																		$cname=$row['companyName'];
																		$count++;
																		
																?>
																 <option value="<?php echo $cname;?>"><?php echo $cname;?></option>
																<?php			
																	}	
																?>
															</select>
														</span>
													</label>

													<div id = "fyid">

													</div>



													<div class="space"></div>

													<div class="form-action center">
														
														<input type="submit" name ="btnsubmit" value="Submit" class="width-35 btn btn-sm btn-primary"  >

													</div>
													
													
													<div class="space-4"></div>
												</fieldset>
											</form>
										</div>
									</div>
								</div>
							</div>	
							</div>
							</div>
				</div><!-- /.row -->
			</div><!-- /.main-content -->
		</div><!-- /.main-container -->

		<!-- basic scripts -->

		<!--[if !IE]> -->
		<script src="assets/js/jquery-2.1.4.min.js"></script>

		<!-- <![endif]-->

		<!--[if IE]>
<script src="assets/js/jquery-1.11.3.min.js"></script>
<![endif]-->
		<script type="text/javascript">
			if('ontouchstart' in document.documentElement) document.write("<script src='assets/js/jquery.mobile.custom.min.js'>"+"<"+"/script>");
		</script>

	
	
	</body>
</html>