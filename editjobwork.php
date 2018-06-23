<!DOCTYPE html>
<?php
  include('config.php');
  include('checksession.php');
  $fy=$_SESSION['fy'];
  $company=$_SESSION['cname'];
  $id=$_GET['id'];

?>

<html lang="en">
	<head>
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
		<meta charset="utf-8" />
		<title>Tables - Ace Admin</title>

		<meta name="description" content="Static &amp; Dynamic Tables" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />

		
		<link rel="stylesheet" href="assets/css/bootstrap.min.css" />
		<link rel="stylesheet" href="assets/font-awesome/4.5.0/css/font-awesome.min.css" />

		
		<link rel="stylesheet" href="assets/css/fonts.googleapis.com.css" />

	
		<link rel="stylesheet" href="assets/css/ace.min.css" class="ace-main-stylesheet" id="main-ace-style" />

	
		<link rel="stylesheet" href="assets/css/ace-skins.min.css" />
		<link rel="stylesheet" href="assets/css/ace-rtl.min.css" />
		<script src="assets/js/ace-extra.min.js"></script>
		<script src="assets/js/jquery.min.js"></script>
	

	</head>

	<body class="no-skin">
		<?php include('navbar.php') ?>

		<div class="main-container ace-save-state" id="main-container">
			<script type="text/javascript">
				try{ace.settings.loadState('main-container')}catch(e){}
			</script>

			<?php include('menubar.php') ?>

			<div class="main-content">
				<div class="main-content-inner">
					

					<div class="page-content">
						<div class="page-header">
							<h1>
						JobWork Details
								
							</h1>
						</div><!-- /.page-header -->
						<h5 class="header blue lighter bigger" align="center">
												<b>Company:&nbsp; <?php echo $company ?>  &nbsp;
												Financial Year:&nbsp; <?php echo $fy ?> </b>
								
						</h5>

						<div class="row">
							<div class="col-xs-12">
								<!-- PAGE CONTENT BEGINS -->


								<?php
													$query=mysqli_query($conn,"select * from jobworkmanagement where id='$id'");
													while($row=mysqli_fetch_array($query))
													{
														$id=$row['id'];
														$name=$row['name'];
														$address=$row['address'];
														$email=$row['email'];
														$contactno=$row['contact'];
														$mobile=$row['mobNo'];
														}

													?>
								<form class="form-horizontal" method="POST" action="editjobworkpro.php" class="pull-right">
									<h5 class="header blue lighter bigger"><b>
												<?php if(@isset($_GET['error'])){echo $_GET['error'];} else{echo 'Edit JobWork Details';} ?></b> 
											</h5>
									<div class="form-group">
										<label class="col-sm-1
										 control-label no-padding-right" for="form-field-1"  style="width: 140px;"> Job/Work Name <span style="color:red">*</span></label>

										<div class="col-sm-9">
											<input type="text"  name="JobWorkname" value="<?php echo $name ; ?>" class="col-xs-10 col-sm-5">
											<input type="hidden"  name="id" value="<?php echo $id ; ?>">
										</div>
									</div>

									<div class="form-group">
										<label class="col-sm-1 control-label no-padding-right" for="form-field-1"  style="width: 140px;"> Address 
										<span style="color:red">*</span></label>

										<div class="col-sm-9">
											<input type="text" pattern="[a-zA-Z]+" name="address"  value="<?php echo $address ; ?>" class="col-xs-10 col-sm-5" />
										</div>
									</div>
									<div class="form-group">
										<label class="col-sm-1 control-label no-padding-right" for="form-field-1"  style="width: 140px;"> Email id <span style="color:red">*</span></label>

										<div class="col-sm-9">
											<input type="email" name="emailid" value="<?php echo $email ; ?>" class="col-xs-10 col-sm-5" />
										</div>
									</div>

									<div class="form-group">
										<label class="col-sm-1 control-label no-padding-right" for="form-field-1"  style="width: 140px;"> Contact No <span style="color:red">*</span></label>

										<div class="col-sm-9">
											<input type="tel"  pattern="[789][0-9]{9}" maxlength="10" id="form-field-1" name="contactno" value="<?php echo $contactno ; ?>" class="col-xs-10 col-sm-5" />
										</div>
									</div>

									<div class="form-group">
										<label class="col-sm-1 control-label no-padding-right" for="form-field-1"  style="width: 140px;"> Mobile No <span style="color:red">*</span></label>

										<div class="col-sm-9">
											<input type="tel"  pattern="[789][0-9]{9}"  maxlength="10" id="form-field-1" name="mobileno" value="<?php echo $mobile ; ?>"  class="col-xs-10 col-sm-5" />
										</div>
									</div>
								
									<div class="form-group">
									<div class="col-md-offset-4 col-md-9">
										<input type="Submit" class="btn btn-bg btn-success" type="button" name="btnsubmit" value="submit"/>
												
									</div>
								</div>

								</form>

						
					</div>
				</div>
			</div>
				
			

			 

			<a href="#" id="btn-scroll-up" class="btn-scroll-up btn btn-sm btn-inverse">
				<i class="ace-icon fa fa-angle-double-up icon-only bigger-110"></i>
			</a>
		</div><!-- /.main-container -->
</div>
</div>

		
		<script src="assets/js/jquery-2.1.4.min.js"></script>

		
		<script type="text/javascript">
			if('ontouchstart' in document.documentElement) document.write("<script src='assets/js/jquery.mobile.custom.min.js'>"+"<"+"/script>");
		</script>
		<script src="assets/js/bootstrap.min.js"></script>
	
		<!-- ace scripts -->
		<script src="assets/js/ace-elements.min.js"></script>
		<script src="assets/js/ace.min.js"></script>

	
	</body>
</html>

