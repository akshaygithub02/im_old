<!DOCTYPE html>
<?php
  include('config.php');
  include('checksession.php');
   $fy=$_SESSION['fy'];
  $company=$_SESSION['cname'];
  $id=$_GET['id'];

 		

 		if ($conn->connect_error)
		{
			 die("Connection failed: " . $conn->connect_error);
		}
		$sql = "SELECT * FROM production where id ='$id'";
		$result = $conn->query($sql);
		$count=0;

		$sql1 = "SELECT * FROM m_grade ";
		$result1 = $conn->query($sql1);
		$count1=0;
		
		$sql2 = "SELECT * FROM m_shape ";
		$result2 = $conn->query($sql2);
		$count2=0;
		

		$sql3 = "SELECT * FROM m_surface ";
		$result3 = $conn->query($sql3);
		$count3=0;
		


		$sql4 = "SELECT * FROM m_condition ";
		$result4 = $conn->query($sql4);
		$count4=0;
		
		$sql5 = "SELECT * FROM lotno ";
		$result5 = $conn->query($sql5);
		$count5=0;


		$sql6 = "SELECT * FROM m_grade ";
		$result6 = $conn->query($sql6);
		$count6=0;


		$sql7 = "SELECT * FROM m_shape ";
		$result7 = $conn->query($sql7);
		$count7=0;

		$sql8 = "SELECT * FROM m_surface ";
		$result8 = $conn->query($sql8);
		$count8=0;


		$sql9 = "SELECT * FROM m_condition ";
		$result9 = $conn->query($sql9);
		$count9=0;

		$sql10 = "SELECT * FROM lotno ";
		$result10 = $conn->query($sql10);
		$count10=0;


		
?>
<html lang="en">
	<head>
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
		<meta charset="utf-8" />
		<title>jQuery UI - Ace Admin</title>

		<meta name="description" content="Restyling jQuery UI Widgets and Elements" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />

		<!-- bootstrap & fontawesome -->
		<link rel="stylesheet" href="assets/css/bootstrap.min.css" />
		<link rel="stylesheet" href="assets/font-awesome/4.5.0/css/font-awesome.min.css" />

		<!-- page specific plugin styles -->
		<link rel="stylesheet" href="assets/css/jquery-ui.min.css" />

		<!-- text fonts -->
		<link rel="stylesheet" href="assets/css/fonts.googleapis.com.css" />

		<!-- ace styles -->
		<link rel="stylesheet" href="assets/css/ace.min.css" class="ace-main-stylesheet" id="main-ace-style" />

		<!--[if lte IE 9]>
			<link rel="stylesheet" href="assets/css/ace-part2.min.css" class="ace-main-stylesheet" />
		<![endif]-->
		<link rel="stylesheet" href="assets/css/ace-skins.min.css" />
		<link rel="stylesheet" href="assets/css/ace-rtl.min.css" />

		<!--[if lte IE 9]>
		  <link rel="stylesheet" href="assets/css/ace-ie.min.css" />
		<![endif]-->

		<!-- inline styles related to this page -->

		<!-- ace settings handler -->
		<script src="assets/js/ace-extra.min.js"></script>

		<!-- HTML5shiv and Respond.js for IE8 to support HTML5 elements and media queries -->

		<!--[if lte IE 8]>
		<script src="assets/js/html5shiv.min.js"></script>
		<script src="assets/js/respond.min.js"></script>
		<![endif]-->
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
								Edit Production Details
								
							</h1>
						</div><!-- /.page-header -->
						<h5 class="header blue lighter bigger" align="center">
												<b>Company:&nbsp; <?php echo $company ?>  &nbsp;
												Financial Year:&nbsp; <?php echo $fy ?> </b>
								
						</h5>
							<h5 class="header blue lighter bigger">
								<b>Select materials</b>
								
							</h5>
						<div class="row">
							
							<div class="col-xs-12">
								<!-- PAGE CONTENT BEGINS -->

									<?php
													$query=mysqli_query($conn,"select * from production where id='$id'");
													while($row=mysqli_fetch_array($query))
													{
														$id=$row['id'];
														$date=$row['date'];
														$code=$row['newCode'];
														$grade=$row['grade'];
														$size=$row['size'];
														$shape=$row['shape'];
														$inwgt=$row['inweight'];
														$surface=$row['surface'];
														$condition=$row['conditn'];
														$heatno=$row['heatNo'];
														$lotno=$row['lotNo'];
														$make=$row['make'];
														$finsize=$row['size'];
														$remarks=$row['remark'];
														$recloss=$row['recoverableLoss'];
														$nonreclos=$row['nrLoss'];
														$purchase_id=$row['pur_fk_id'];


														}

													?>
								<div class="row">
									<div class="col-sm-6" style="margin-top: 12px;">
										<label class="col-sm-1 control-label no-padding-left" for="form-field-1" style="width: 175px;"> Date </label>
										<div class="row">
											<div class="col-xs-6">
												<div class="input-group input-group-sm">
													<input type="text" id="datepicker1" name="date1"   value="<?php echo $date ; ?>" class="form-control"  style="width: 230px;height: 32px;"/>
													<span class="input-group-addon">
														<i class="ace-icon fa fa-calendar" id='date1p'></i>
													</span>
												</div>
											</div>
										</div>
									</div>
									
									
									
									<div class="col-sm-6" style="margin-top: 12px;">
										<label class="col-sm-1 control-label no-padding-left" for="form-field-1" style="width: 100px;"> Surface  </label>
										<div class="row">
											<div class="col-xs-6">
												<div class="input-group input-group-sm">
													
													<select id="surface1" name="surface1"   style="width: 230px;height: 32px;">

														

														<?php

															$sql13 = "SELECT m_surface.name,m_surface.id FROM production INNER JOIN m_surface ON production.surface =m_surface.Id where pur_fk_id =".$purchase_id;
															$result13 = $conn->query($sql13);
															while($row=mysqli_fetch_array($result13))
																	{
																		$id=$row['id'];
																		$surface=$row['name'];
																	}	
																if($surface){

																	
														?>
														<option value="<?php echo $id ?>"><?php echo $surface ?></option>
															<?php 
															}
															else
															{
																?>
														<option value="">Select Surface</option>
															<?php	
															}
																	while($row=mysqli_fetch_array($result3))
																	{
																		$id=$row['id'];
																		$surname=$row['name'];
																		$count3++;
																		
																?>
																<option value="<?php echo $id;?>"><?php echo $surname;?></option>
																<?php			
																	}	
																?>
											
													</select>
													
												</div>
											</div>
										</div>
									</div>

									<div class="col-sm-6" style="margin-top: 12px;">
										<label class="col-sm-1 control-label no-padding-left" for="form-field-1" style="width: 175px;"> Code <span style="color:red">*</span> </label>
										<div class="row">
											<div class="col-xs-6">
												<div class="input-group input-group-sm">
													<input type="text" id="code" name="code"   value="<?php echo $code; ?>" class="form-control" style="width: 230px;height: 32px;" />
													
												</div>
											</div>
										</div>
									</div>
									
								

										<div class="col-sm-6" style="margin-top: 12px;">
										<label class="col-sm-1 control-label no-padding-left" for="form-field-1" style="width: 100px;"> Condition  </label>
										<div class="row">
											<div class="col-xs-6">
												<div class="input-group input-group-sm">
													
													<select id="condition1" name="condition1" style="width: 230px;height: 32px; ">
														<?php
														 if($condition)
														 {

														?>
														<option value="<?php echo $condition ?>"><?php echo $condition ?></option>

															<?php
															}
															else
															{
																?>
															<option value="">Select Condition</option>	
															<?php	
															} 
																	while($row=mysqli_fetch_array($result9))
																	{
																		$id=$row['id'];
																		$condtxt=$row['condition_text'];
																		$count9++;
																		
																?>

																<option value="<?php echo $condtxt;?>"><?php echo $condtxt;?></option>
																<?php			
																	}	
																?>
											
													</select>
													
												</div>
											</div>
										</div>
									</div>

										<div class="col-sm-6" style="margin-top: 12px;">
										<label class="col-sm-1 control-label no-padding-left" for="form-field-1" style="width: 175px;"> Grade  </label>
										<div class="row">
											<div class="col-xs-6">
												<div class="input-group input-group-sm">
													
													<select id="grade1" name="grade1"  style="width: 230px;height: 32px;">

														<?php 


															$sql11 = "SELECT m_grade.name,m_grade.id FROM production INNER JOIN m_grade ON production.grade =m_grade.Id where pur_fk_id =".$purchase_id; 
															$result11 = $conn->query($sql11);
															while($row=mysqli_fetch_array($result11))
																	{
																		$id=$row['id'];
																		$grade=$row['name'];
																	}	

																if($grade){

														?>
														<option value="<?php echo $id?>"><?php echo $grade ?></option>

															<?php 
														}
														else
														{ 
															?>
															<option value="">Select Grade</option>

														<?php
														}
																	while($row=mysqli_fetch_array($result1))
																	{
																		$id=$row['id'];
																		$gname=$row['name'];
																		$count1++;
																		
																?>
																<option value="<?php echo $id;?>"><?php echo $gname;?></option>
																<?php			
																	}	
																?>
											
													</select>
											
												</div>
											</div>
										</div>
									</div>
									
									

									<div class="col-sm-6" style="margin-top: 12px;">
										<label class="col-sm-1 control-label no-padding-left" for="form-field-1" style="width: 100px;"> Heat No </label>
										<div class="row">
											<div class="col-xs-6">
												<div class="input-group input-group-sm">

													<input type="text" id="heatno" name="heatno" value="<?php echo $heatno; ?>" class="form-control" style="width: 230px;height: 32px;" />
													
												</div>
											</div>
										</div>
									</div>
									
									<div class="col-sm-6" style="margin-top: 12px;">
										<label class="col-sm-1 control-label no-padding-left" for="form-field-1" style="width: 175px;"> Size(mm) <span style="color:red">*</span> </label>
										<?php
										
											$NewSize  = $size;
											if (strpos($NewSize, ".") == true) {

											    list($part1,$part2) = explode(".", $NewSize);	
											}
											else{
												$part1 = $NewSize;
												$part2 = 0;

											}
											
										?>

										<div class="row">
											<div class="col-xs-6">
												<div class="input-group input-group-sm">
													<?php if($part1 && $part2){ ?>
													<input type="text" name="size1" class="form-control" value="<?php echo $part1; ?>" style="width: 110px;height: 32px; margin-right: 5px"/>
													<input type="text" name="size2" class="form-control" value="<?php echo $part2; ?>" style="width: 110px;height: 32px; margin-left: 5px" />
													<?php }
													else if ($part1){ ?>
													<input type="text" name="size1" class="form-control" value="<?php echo $part1;?>" style="width: 110px;height: 32px; margin-right: 5px"/>
													<input type="text" name="size2" class="form-control" value="0" style="width: 110px;height: 32px; margin-left: 5px" />
													<?php } 
													else {?>
													<input type="text" name="size1" class="form-control" value="0" style="width: 110px;height: 32px; margin-right: 5px"/>
													<input type="text" name="size2" class="form-control" value="0" style="width: 110px;height: 32px; margin-left: 5px" />
													<?php } ?>

												</div>
											</div>
										</div>
									</div>
									

									<div class="col-sm-6" style="margin-top: 12px;">
										<label class="col-sm-1 control-label no-padding-left" for="form-field-1" style="width: 100px;"> Lot No. </label>

										<div class="row">
											<div class="col-xs-6">
												<div class="input-group input-group-sm">

													<select id="LotNo1"  name="lotno1" style="width: 230px;height: 32px; margin-right: 5px;">

														<?php

															$sql14 = "SELECT lotno.lotNo,lotno.id FROM newpurchase INNER JOIN lotno ON newpurchase.lotNo =lotno.Id where pur_fk_id =".$purchase_id; 
															$result14 = $conn->query($sql14);
															while($row=mysqli_fetch_array($result14))
																	{
																		$id=$row['id'];
																		$lotNo=$row['lotNo'];
																	}
																if($lotNo){

																	
														?>

														<option value="<?php echo $id ?>"><?php echo $lotNo ?></option>

														<?php 
														}
														else
														{
															?>
														<option value="">Select Lot Number</option>
														<?php	
														}	
																	while($row=mysqli_fetch_array($result10))
																	{
																		$id=$row['id'];
																		$lotno=$row['lotNo'];
																		$count10++;
																		
																?>
																<option value="<?php echo $id;?>"><?php echo $lotno;?></option>
																<?php			
																	}	
																?>
											
													</select>
												
													
												</div>
											</div>
										</div>
									</div>

									<div class="col-sm-6" style="margin-top: 12px;">
										<label class="col-sm-1 control-label no-padding-left" for="form-field-1" style="width: 175px;"> Shape  </label>
										<div class="row">
											<div class="col-xs-6">
												<div class="input-group input-group-sm">
													
													<select id="shape1" name="shape1" style="width: 230px;height: 32px; ">

														<?php

															$sql12 = "SELECT m_shape.name,m_shape.id FROM production INNER JOIN m_shape ON production.shape =m_shape.Id where pur_fk_id =".$purchase_id;
															$result12 = $conn->query($sql12);
															while($row=mysqli_fetch_array($result12))
																	{
																		$id=$row['id'];
																		$shape=$row['name'];
																	}	
																if($shape){

																	
														?>

														<option value="<?php echo $id ?>"><?php echo $shape ?></option>
															<?php
															}
															else{
															?> 
														<option value="">Select Shape</option>

														<?php
															}
																	while($row=mysqli_fetch_array($result2))
																	{
																		$id=$row['id'];
																		$shname=$row['name'];
																		$count2++;
																		
																?>
																<option value="<?php echo $id;?>"><?php echo $shname;?></option>
																<?php			
																	}	
																?>
													</select>
													
												</div>
											</div>
										</div>
									</div>
									
									<div class="col-sm-6" style="margin-top: 12px;">
										<label class="col-sm-1 control-label no-padding-left" for="form-field-1" style="width: 100px;"> Make  </label>
										<div class="row">
											<div class="col-xs-6">
												<div class="input-group input-group-sm">

													<input type="text" id="make1" value="<?php echo $make; ?> " name="make1" class="form-control" style="width: 230px;height: 32px;" />
													
												</div>
											</div>
										</div>
									</div>

								
									
									<div class="col-sm-6" style="margin-top: 12px;">
										<label class="col-sm-1 control-label no-padding-left" for="form-field-1" style="width: 175px;"> In House Weight(In Kg.)  </label>
										<div class="row">
											<div class="col-xs-6">
												<div class="input-group input-group-sm">
													
													<input type="text" id="inhwgt" name="inhwgt"  value="<?php echo $inwgt ; ?>"  class="form-control" style="width: 230px;height: 32px;" />
													
												</div>
											</div>
										</div>
									</div>

								</div><!-- ./row -->

								
								<!-- PAGE CONTENT ENDS -->
							</div><!-- /.col -->
						</div><!-- /.row -->

					<pre style="background-color: white; border-color: white;border-bottom-color:#87b87f"></pre>
					<h5 class="header blue lighter bigger">
								<b>Make Production Entry</b>
								
							</h5>
						<div class="row">

							<div class="col-xs-12">
								<!-- PAGE CONTENT BEGINS -->
								<div class="row">
									<div class="col-sm-6" style="margin-top: 12px;" >
										<label class="col-sm-1 control-label no-padding-left" for="form-field-1" style="width: 175px;"> Date <span style="color:red">*</span> </label>
										<div class="row">
											<div class="col-xs-6">
												<div class="input-group input-group-sm">
													<input type="text" id="datepicker2" name="date2" class="form-control"  style="width: 230px;height: 32px;"/>
													<span class="input-group-addon">
														<i class="ace-icon fa fa-calendar" id=date2p></i>
													</span>
												</div>
											</div>
										</div>
									</div>
									
									<div class="col-sm-6" style="margin-top: 12px;">
										<label class="col-sm-1 control-label no-padding-left" for="form-field-1" style="width: 175px;">Choose New  Lot No.  </label>

										<div class="row">
											<div class="col-xs-6">
												<div class="input-group input-group-sm">

													<select id="LotNo2" name ="lotno2" style="width: 230px;height: 32px; margin-right: 5px;">

														<option value="">Select new Lot No</option>
																<?php 
																	while($row=mysqli_fetch_array($result5))
																	{
																		$id=$row['id'];
																		$lname=$row['lotNo'];
																		$count5++;
																		
																?>
																<option value="<?php echo $id;?>"><?php echo $lname;?></option>
																<?php			
																	}	
																?>
													</select>
												
													
												</div>
											</div>
										</div>
									</div>
									<div class="col-sm-6" style="margin-top: 12px;">
										<label class="col-sm-1 control-label no-padding-left" for="form-field-1" style="width: 175px;"> Grade <span style="color:red">*</span> </label>
										<div class="row">
											<div class="col-xs-6">
												<div class="input-group input-group-sm">
													
													<select id="grade2" name="grade2" style="width: 230px;height: 32px;">

														<option value="">Select Grade</option>
															<?php 
																	while($row=mysqli_fetch_array($result6))
																	{
																		$id=$row['id'];
																		$gname=$row['name'];
																		$count6++;
																		
																?>
																<option value="<?php echo $count6;?>"><?php echo $gname;?></option>
																<?php			
																	}	
																?>
													</select>
											
												</div>
											</div>
										</div>
									</div>
									
									<div class="col-sm-6" style="margin-top: 12px;">
										<label class="col-sm-1 control-label no-padding-left" for="form-field-1" style="width: 175px;">Process <span style="color:red">*</span> </label>
										<div class="row">
											<div class="col-xs-6">
												<div class="input-group input-group-sm">
													
													<select id="process"  name="process" style="width: 230px;height: 32px;">

														<option value="">Select Process</option>
											
													</select>
											
												</div>
											</div>
										</div>
									</div>

									<div class="col-sm-6" style="margin-top: 12px;">
										<label class="col-sm-1 control-label no-padding-left" for="form-field-1" style="width: 175px;"> Finished Size <span style="color:red">*</span> </label>
										<div class="row">
											<div class="col-xs-6">
												<div class="input-group input-group-sm">
													
													<input type="text" id="size3" name="size3" value="<?php echo $size; ?> " class="form-control" style="width: 230px;height: 32px; margin-right: 20px;"/>
													
													
												</div>
											</div>
										</div>
									</div>
									
									<div class="col-sm-6" style="margin-top: 12px;">
										<label class="col-sm-1 control-label no-padding-left" for="form-field-1" style="width: 175px;"> In Weight(In Kg.) <span style="color:red">*</span> </label>
										<div class="row">
											<div class="col-xs-6">
												<div class="input-group input-group-sm">
													
													<input type="text" id="inwgt" name="inwgt" class="form-control" style="width: 230px;height: 32px;" />
													
												</div>
											</div>
										</div>
									</div>

									<div class="col-sm-6" style="margin-top: 12px;">
										<label class="col-sm-1 control-label no-padding-left" for="form-field-1" style="width: 175px;"> Shape <span style="color:red">*</span> </label>
										<div class="row">
											<div class="col-xs-6">
												<div class="input-group input-group-sm">
													
													<select id="shape2" name="shape2" style="width: 230px;height: 32px; ">

														<option value="">Select Shape</option>
																<?php 
																	while($row=mysqli_fetch_array($result7))
																	{
																		$id=$row['id'];
																		$shname=$row['name'];
																		$count7++;
																		
																?>
																<option value="<?php echo $count7;?>"><?php echo $shname;?></option>
																<?php			
																	}	
																?>
													</select>
													
												</div>
											</div>
										</div>
									</div>

									<div class="col-sm-6" style="margin-top: 12px;">
										<label class="col-sm-1 control-label no-padding-left" for="form-field-1" style="width: 175px;"> Out Weight(In Kg.) <span style="color:red">*</span> </label>
										<div class="row">
											<div class="col-xs-6">
												<div class="input-group input-group-sm">
													
													<input type="text" id="outhwgt" name="outhwgt" class="form-control" style="width: 230px;height: 32px;" />
													
												</div>
											</div>
										</div>
									</div>

									<div class="col-sm-6" style="margin-top: 12px;">
										<label class="col-sm-1 control-label no-padding-left" for="form-field-1" style="width: 175px;">Surface <span style="color:red">*</span> </label>
										<div class="row">
											<div class="col-xs-6">
												<div class="input-group input-group-sm">

													<select id="surface2" name="surface2"  style="width: 230px;height: 32px;">
														<option value="">Select Surface</option>
																<?php 
																	while($row=mysqli_fetch_array($result8))
																	{
																		$id=$row['id'];
																		$surname=$row['name'];
																		$count8++;
																		
																?>
																<option value="<?php echo $count8;?>"><?php echo $surname;?></option>
																<?php			
																	}	
																?>
											
													</select>
													
												</div>
											</div>
										</div>
									</div>
									
									<div class="col-sm-6" style="margin-top: 12px;">
										<label class="col-sm-1 control-label no-padding-left" for="form-field-1" style="width: 175px;"> Rec Loss(In Kg.)  </label>
										<div class="row">
											<div class="col-xs-6">
												<div class="input-group input-group-sm">
													
													<input type="text" id="reclos" name="reclos"  value="<?php echo $recloss; ?>" class="form-control" style="width: 230px;height: 32px;" />
													
												</div>
											</div>
										</div>
									</div>

									<div class="col-sm-6" style="margin-top: 12px;">
										<label class="col-sm-1 control-label no-padding-left" for="form-field-1" style="width: 175px;"> Condition <span style="color:red">*</span> </label>
										<div class="row">
											<div class="col-xs-6">
												<div class="input-group input-group-sm">

													<select id="condition2" name="condition2" style="width: 230px;height: 32px;">

													<option value="">Select Condition</option>

														<?php 
																	while($row=mysqli_fetch_array($result4))
																	{
																		$id=$row['id'];
																		$condition=$row['condition_text'];
																		$count4++;
																		
																?>
																<option value="<?php echo $count9;?>"><?php echo $condition;?></option>
																<?php			
																	}	
																?>
											
													</select>
													
												</div>
											</div>
										</div>
									</div>
									
								<div class="col-sm-6" style="margin-top: 12px;">
										<label class="col-sm-1 control-label no-padding-left" for="form-field-1" style="width: 175px;"> Non Rec.Loss(In Kg.)</label>
										<div class="row">
											<div class="col-xs-6">
												<div class="input-group input-group-sm">
													
													<input type="text" id="nonreclos" name="nonreclos"  value="<?php echo $nonreclos; ?>" class="form-control" style="width: 230px;height: 32px;" />
													
												</div>
											</div>
										</div>
									</div>
								
										<div class="col-sm-6" style="margin-top: 12px;">
										<label class="col-sm-1 control-label no-padding-left" for="form-field-1" style="width: 175px;">Process Code</label>
										<div class="row">
											<div class="col-xs-6">
												<div class="input-group input-group-sm">
													
													<input type="text" id="procescode" name="procescode" class="form-control" style="width: 230px;height: 32px; margin-right: 20px;"/>
													
													
												</div>
											</div>
										</div>
									</div>
									
									<div class="col-sm-12" style="margin-top: 12px;">
										<label class="col-sm-1 control-label no-padding-left" for="form-field-1" style="width: 175px;"> Remark </label>
										<div class="row">
											<div class="col-xs-6">
												<div class="input-group input-group-sm">

													<textarea id="remark" name="remark"   class="autosize-transition form-control" style="overflow: hidden; word-wrap: break-word; resize: horizontal; width: 400px; height: 100px;"> <?php echo $remarks; ?> </textarea>
													
												</div>
											</div>
										</div>
									</div>

									<div class="form-group" >
										<div class="col-md-offset-5 col-md-12" style="margin-top: 15px;">
											
											<input type="Submit" class="btn btn-bg btn-success" name="btnsubmit" value="submit"/>
													
										</div>
									</div>
								
								</div><!-- ./row -->
								<!-- PAGE CONTENT ENDS -->
							</div><!-- /.col -->
						</div>
					</div><!-- /.page-content -->
				</div>
			</div><!-- /.main-content -->

		<a href="#" id="btn-scroll-up" class="btn-scroll-up btn btn-sm btn-inverse">
				<i class="ace-icon fa fa-angle-double-up icon-only bigger-110"></i>
			</a>
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
		<script src="assets/js/bootstrap.min.js"></script>

		<!-- page specific plugin scripts -->
		<script src="assets/js/jquery-ui.min.js"></script>
		<script src="assets/js/jquery.ui.touch-punch.min.js"></script>
		
		<!-- ace scripts -->
		<script src="assets/js/ace-elements.min.js"></script>
		<script src="assets/js/ace.min.js"></script>
	

		<!-- inline scripts related to this page -->
		<script type="text/javascript">
			jQuery(function($) {
			
				$( "#datepicker1" ).datepicker({
					showOtherMonths: true,
					selectOtherMonths: false,
					dateFormat: 'yy-mm-dd',
		
				});
				$('#date1p').click(function() {
  				  $("#datepicker1").focus();
				 });
			
			$( "#datepicker2" ).datepicker({
					showOtherMonths: true,
					selectOtherMonths: false,
					dateFormat: 'yy-mm-dd',
		
				});
			$('#date2p').click(function() {
  				  $("#datepicker2").focus();
				 });
				//override dialog's title function to allow for HTML titles
				$.widget("ui.dialog", $.extend({}, $.ui.dialog.prototype, {
					_title: function(title) {
						var $title = this.options.title || '&nbsp;'
						if( ("title_html" in this.options) && this.options.title_html == true )
							title.html($title);
						else title.text($title);
					}
				}));
			
				$( "#id-btn-dialog1" ).on('click', function(e) {
					e.preventDefault();
			
					var dialog = $( "#dialog-message" ).removeClass('hide').dialog({
						modal: true,
						title: "<div class='widget-header widget-header-small'><h4 class='smaller'><i class='ace-icon fa fa-check'></i> jQuery UI Dialog</h4></div>",
						title_html: true,
						buttons: [ 
							{
								text: "Cancel",
								"class" : "btn btn-minier",
								click: function() {
									$( this ).dialog( "close" ); 
								} 
							},
							{
								text: "OK",
								"class" : "btn btn-primary btn-minier",
								click: function() {
									$( this ).dialog( "close" ); 
								} 
							}
						]
					});
			
					/**
					dialog.data( "uiDialog" )._title = function(title) {
						title.html( this.options.title );
					};
					**/
				});
			
			
				$( "#id-btn-dialog2" ).on('click', function(e) {
					e.preventDefault();
				
					$( "#dialog-confirm" ).removeClass('hide').dialog({
						resizable: false,
						width: '320',
						modal: true,
						title: "<div class='widget-header'><h4 class='smaller'><i class='ace-icon fa fa-exclamation-triangle red'></i> Empty the recycle bin?</h4></div>",
						title_html: true,
						buttons: [
							{
								html: "<i class='ace-icon fa fa-trash-o bigger-110'></i>&nbsp; Delete all items",
								"class" : "btn btn-danger btn-minier",
								click: function() {
									$( this ).dialog( "close" );
								}
							}
							,
							{
								html: "<i class='ace-icon fa fa-times bigger-110'></i>&nbsp; Cancel",
								"class" : "btn btn-minier",
								click: function() {
									$( this ).dialog( "close" );
								}
							}
						]
					});
				});
			
			
				
				//autocomplete
				 var availableTags = [
					"ActionScript",
					"AppleScript",
					"Asp",
					"BASIC",
					"C",
					"C++",
					"Clojure",
					"COBOL",
					"ColdFusion",
					"Erlang",
					"Fortran",
					"Groovy",
					"Haskell",
					"Java",
					"JavaScript",
					"Lisp",
					"Perl",
					"PHP",
					"Python",
					"Ruby",
					"Scala",
					"Scheme"
				];
				$( "#tags" ).autocomplete({
					source: availableTags
				});
			
				//custom autocomplete (category selection)
				$.widget( "custom.catcomplete", $.ui.autocomplete, {
					_create: function() {
						this._super();
						this.widget().menu( "option", "items", "> :not(.ui-autocomplete-category)" );
					},
					_renderMenu: function( ul, items ) {
						var that = this,
						currentCategory = "";
						$.each( items, function( index, item ) {
							var li;
							if ( item.category != currentCategory ) {
								ul.append( "<li class='ui-autocomplete-category'>" + item.category + "</li>" );
								currentCategory = item.category;
							}
							li = that._renderItemData( ul, item );
								if ( item.category ) {
								li.attr( "aria-label", item.category + " : " + item.label );
							}
						});
					}
				});
				
				 var data = [
					{ label: "anders", category: "" },
					{ label: "andreas", category: "" },
					{ label: "antal", category: "" },
					{ label: "annhhx10", category: "Products" },
					{ label: "annk K12", category: "Products" },
					{ label: "annttop C13", category: "Products" },
					{ label: "anders andersson", category: "People" },
					{ label: "andreas andersson", category: "People" },
					{ label: "andreas johnson", category: "People" }
				];
				$( "#search" ).catcomplete({
					delay: 0,
					source: data
				});
				
				
				//tooltips
				$( "#show-option" ).tooltip({
					show: {
						effect: "slideDown",
						delay: 250
					}
				});
			
				$( "#hide-option" ).tooltip({
					hide: {
						effect: "explode",
						delay: 250
					}
				});
			
				$( "#open-event" ).tooltip({
					show: null,
					position: {
						my: "left top",
						at: "left bottom"
					},
					open: function( event, ui ) {
						ui.tooltip.animate({ top: ui.tooltip.position().top + 10 }, "fast" );
					}
				});
			
			
				//Menu
				$( "#menu" ).menu();
			
			
				//spinner
				var spinner = $( "#spinner" ).spinner({
					create: function( event, ui ) {
						//add custom classes and icons
						$(this)
						.next().addClass('btn btn-success').html('<i class="ace-icon fa fa-plus"></i>')
						.next().addClass('btn btn-danger').html('<i class="ace-icon fa fa-minus"></i>')
						
						//larger buttons on touch devices
						if('touchstart' in document.documentElement) 
							$(this).closest('.ui-spinner').addClass('ui-spinner-touch');
					}
				});
			
				//slider example
				$( "#slider" ).slider({
					range: true,
					min: 0,
					max: 500,
					values: [ 75, 300 ]
				});
			
			
			
				//jquery accordion
				$( "#accordion" ).accordion({
					collapsible: true ,
					heightStyle: "content",
					animate: 250,
					header: ".accordion-header"
				}).sortable({
					axis: "y",
					handle: ".accordion-header",
					stop: function( event, ui ) {
						// IE doesn't register the blur when sorting
						// so trigger focusout handlers to remove .ui-state-focus
						ui.item.children( ".accordion-header" ).triggerHandler( "focusout" );
					}
				});
				//jquery tabs
				$( "#tabs" ).tabs();
				
				
				//progressbar
				$( "#progressbar" ).progressbar({
					value: 37,
					create: function( event, ui ) {
						$(this).addClass('progress progress-striped active')
							   .children(0).addClass('progress-bar progress-bar-success');
					}
				});
			
				
				//selectmenu
				 $( "#number" ).css('width', '200px')
				.selectmenu({ position: { my : "left bottom", at: "left top" } })
					
			});
		</script>

		
	</body>
</html>
