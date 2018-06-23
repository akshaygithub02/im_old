<!DOCTYPE html>
<?php
  include('config.php');
  include('checksession.php');
  $fy=$_SESSION['fy'];
  $company=$_SESSION['cname'];

  if(isset($_SESSION['Allvalues']) && !empty($_SESSION['Allvalues']))
  {
  	$Allvalues=$_SESSION['Allvalues'];
  	$values = explode(',', $Allvalues);
  }
  else
  {
  	$_SESSION['Allvalues']='';
  	$values=0;
  }	
 

 		if ($conn->connect_error)
		{
			 die("Connection failed: " . $conn->connect_error);
		}
		$sql = "SELECT newCode FROM production where balanceWt!=0 ";
		$result = $conn->query($sql);
		$count=0;

		$sql1 = "SELECT * FROM production where newCode='$values[0]'";
		$result1 = $conn->query($sql1);
		$count1=0;
		
		while($row=mysqli_fetch_array($result1))
		{
			$id=$row['id'];
			$rmsize=$row['rmsize'];
			
			
		}
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

		$sql14 = "SELECT * FROM m_process ";
		$result14 = $conn->query($sql14);
		$count14=0;

		$sql24 = "SELECT * FROM financialyear where fy='$fy'";
		$result24 = $conn->query($sql24);
		while($row=mysqli_fetch_array($result24))
		{
			$ST=$row['startDate'];
			$EN=$row['endDate'];
		}
		
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
		<link rel="stylesheet" href="assets/css/jquery-confirm.css" />
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
						<!-- /.page-header -->
						<h5 class="header blue lighter bigger" align="center">
												<b>Company:&nbsp; <?php echo $company ?>  &nbsp;
												Financial Year:&nbsp; <?php echo $fy ?> </b>
								
						</h5>
						<form class="form-horizontal" method="POST" action="addproductionprocess.php" class="pull-right">
									<h5 class="header blue lighter bigger"><b>
												<?php if(@isset($_GET['error'])){echo $_GET['error'];} else{echo 'Add Production Details';} ?></b> 
											</h5>
						
						<div class="row">
							
							<div class="col-xs-12">
								<!-- PAGE CONTENT BEGINS -->

								
								<div class="row">
									<div class="col-sm-6" style="margin-top: 12px;">
										<label class="col-sm-1 control-label no-padding-left" for="form-field-1" style="width: 175px;"> Date </label>
										<div class="row">
											<div class="col-xs-6">
												<div class="input-group input-group-sm">
													<?php if($values[1]){?>
													<input type="text" id="datepicker1" name="date1" value="<?php echo $values[1];?>" class="form-control"  style="width: 230px;height: 32px;" readonly/>
													<?php } else{?>
													<input type="text" id="datepicker1" name="date1" value="" class="form-control"  style="width: 230px;height: 32px;" readonly/>
													<?php } ?>
													
												</div>
											</div>
										</div>
									</div>
									
									
									
									<div class="col-sm-6" style="margin-top: 12px;">
										<label class="col-sm-1 control-label no-padding-left" for="form-field-1" style="width: 100px;"> Surface  </label>
										<div class="row">
											<div class="col-xs-6">
												<div class="input-group input-group-sm">
											<?php if($values[6]){
												$sql20 = "SELECT name FROM m_surface where id='$values[6]'";
												$result20 = $conn->query($sql20);
												while($row=mysqli_fetch_array($result20))
												{
													$name=$row['name'];
												}
												?>		
											<input type="text" id="surface" name="surface" value="<?php echo $name;?>" class="form-control" style="width: 230px;height: 32px;" readonly />
											<?php } else{?>	
											<input type="text" id="surface" name="surface" value="" class="form-control" style="width: 230px;height: 32px;" readonly />
											<?php } ?>
												</div>
											</div>
										</div>
									</div>

									<div class="col-sm-6" style="margin-top: 12px;">
										<label class="col-sm-1 control-label no-padding-left" for="form-field-1" style="width: 175px;"> Code <span style="color:red">*</span> </label>
										<div class="row">
											<div class="col-xs-6">
												
												<div class="input-group input-group-sm">
													<?php if($values[0]){?>
													<input list="Ncode" name="Ncode" style="width: 230px;height: 32px;" value="<?php echo $values[0];?>" placeholder="Select Code" class="form-control">
													<?php } else{?>	
													<input list="Ncode" name="Ncode" style="width: 230px;height: 32px;" value="" placeholder="Select Code" class="form-control">
													<?php } ?>
													<datalist id="Ncode" name="Ncode" style="width: 230px;height: 32px;" >

														
															<?php 
																	while($row=mysqli_fetch_array($result))
																	{
																		$id=$row['id'];
																		$Ncode=$row['newCode'];
																		$count++;
																		
																?>
																<option value="<?php echo $Ncode;?>"><?php echo $Ncode;?></option>
																<?php			
																	}	
																?>
													</datalist>
											
												</div>
											</div>
										</div>
									</div>
									<script>
							         $(document).ready(function(){
							           $(document).on('change', 'input', function(){
										    var options = $('datalist')[0].options;
										    for (var i=0;i<options.length;i++){
										       if (options[i].value == $(this).val()) 
										         {
										         	$codeval= $(this).val();
										         	window.location="productioncodechange.php?code="+ $codeval;
										         }
										    }
										});
							        });
							        </script>

									   <div class="col-sm-6" style="margin-top: 12px;">
										<label class="col-sm-1 control-label no-padding-left" for="form-field-1" style="width: 100px;"> Condition </label>
										<div class="row">
											<div class="col-xs-6">
											<div class="input-group input-group-sm">
											<?php if($values[7]){?>		
											<input type="text" id="condition" name="condition" value="<?php echo $values[7];?>" class="form-control" style="width: 230px;height: 32px;" readonly />
											<?php } else{?>	
											<input type="text" id="condition" name="condition" value="" class="form-control" style="width: 230px;height: 32px;" readonly />	
											<?php } ?>
											</div>

											</div>
										</div>
									  </div>

								<div class="col-sm-6" style="margin-top: 12px;">
										<label class="col-sm-1 control-label no-padding-left" for="form-field-1" style="width: 175px;"> Grade </label>
										<div class="row">
											<div class="col-xs-6">
												<div class="input-group input-group-sm">
											<?php if($values[2]){
												$sql21 = "SELECT name FROM m_grade where id='$values[2]'";
												$result21 = $conn->query($sql21);
												while($row=mysqli_fetch_array($result21))
												{
													$name=$row['name'];
												}
												?>			
											<input type="text" id="grade" name="grade" value="<?php echo $name;?>" class="form-control" style="width: 230px;height: 32px;" readonly />
											<?php } else{?>	
											<input type="text" id="grade" name="grade" value="" class="form-control" style="width: 230px;height: 32px;" readonly />	
											<?php } ?>	
												</div>
											</div>
										</div>
									</div>
									
									

									<div class="col-sm-6" style="margin-top: 12px;">
										<label class="col-sm-1 control-label no-padding-left" for="form-field-1" style="width: 100px;"> Heat No </label>
										<div class="row">
											<div class="col-xs-6">
												<div class="input-group input-group-sm">
												<?php if($values[8]){?>		
													<input type="text" id="heatno" name="heatno" value="<?php echo $values[8];?>" class="form-control" style="width: 230px;height: 32px;" readonly />
												<?php } else{?>
												<input type="text" id="heatno" name="heatno" value="" class="form-control" style="width: 230px;height: 32px;"  readonly />	
												<?php } ?>		
												</div>
											</div>
										</div>
									</div>
									
									<div class="col-sm-6" style="margin-top: 12px;">
										<label class="col-sm-1 control-label no-padding-left" for="form-field-1" style="width: 175px;"> Size(mm)  </label>
										<div class="row">
											<div class="col-xs-6">
												<div class="input-group input-group-sm">
													<?php if($values[3]){?>	
													<input type="text" id="size" name="size"   value="<?php echo $values[3];?>"  class="form-control" style="width: 230px;height: 32px; " readonly/>
													<?php } else{?>
													<input type="text" id="size" name="size"   value=""  class="form-control" style="width: 230px;height: 32px; " readonly />
													<?php } ?>
												</div>
											</div>
										</div>
									</div>
									

									<div class="col-sm-6" style="margin-top: 12px;">
										<label class="col-sm-1 control-label no-padding-left" for="form-field-1" style="width: 100px;"> Lot No </label>
										<div class="row">
											<div class="col-xs-6">
												<div class="input-group input-group-sm">
												<?php if($values[9]){
													$sql22 = "SELECT lotNo FROM lotno where id='$values[9]' ";
													$result22 = $conn->query($sql22);
													while($row=mysqli_fetch_array($result22))
													{
														$lotNo=$row['lotNo'];
													}
													?>		
													<input type="text" id="lot no" name="lot no" value="<?php echo $lotNo;?>" class="form-control" style="width: 230px;height: 32px;" readonly />
												<?php } else{?>	
													<input type="text" id="lot no" name="lot no" value="" class="form-control" style="width: 230px;height: 32px;" readonly />
												<?php } ?>
												</div>
											</div>
										</div>
									</div>
									<div class="col-sm-6" style="margin-top: 12px;">
										<label class="col-sm-1 control-label no-padding-left" for="form-field-1" style="width: 175px;"> Shape </label>
										<div class="row">
											<div class="col-xs-6">
												<div class="input-group input-group-sm">
												<?php if($values[4]){
													$sql23 = "SELECT name FROM m_shape where id='$values[4]'";
													$result23 = $conn->query($sql23);
													while($row=mysqli_fetch_array($result23))
													{
														$name=$row['name'];
													}
													?>		
													<input type="text" id="shape" name="shape" value="<?php echo $name;?>" class="form-control" style="width: 230px;height: 32px;" readonly />
												<?php } else{?>	
													<input type="text" id="shape" name="shape" value="" class="form-control" style="width: 230px;height: 32px;" readonly />	
												<?php } ?>	
												</div>
											</div>
										</div>
									</div>	
									
									<div class="col-sm-6" style="margin-top: 12px;">
										<label class="col-sm-1 control-label no-padding-left" for="form-field-1" style="width: 100px;"> Make  </label>
										<div class="row">
											<div class="col-xs-6">
												<div class="input-group input-group-sm">
													<?php if($values[10]){?>	
													<input type="text" id="make1" value="<?php echo $values[10];?>" name="make1" class="form-control" style="width: 230px;height: 32px;" readonly />
													<?php } else{?>	
													<input type="text" id="make1" value="" name="make1" class="form-control" style="width: 230px;height: 32px;" readonly />
													<?php } ?>
												</div>
											</div>
										</div>
									</div>

								
									
									<div class="col-sm-6" style="margin-top: 12px;">
										<label class="col-sm-1 control-label no-padding-left" for="form-field-1" style="width: 175px;"> Balance Weight(In Kg.)  </label>
										<div class="row">
											<div class="col-xs-6">
												<div class="input-group input-group-sm">
												<?php if($values[5]){?>
													<input type="text" id="balwgt" name="balwgt"  value="<?php echo $values[5];?>" class="form-control" style="width: 230px;height: 32px;" readonly />
												<?php } else{?>	
													<input type="text" id="balwgt" name="balwgt"  value="" class="form-control" style="width: 230px;height: 32px;" readonly />
												<?php } ?>
												</div>
											</div>
										</div>
									</div>

								</div><!-- ./row -->

								
								<!-- PAGE CONTENT ENDS -->
							</div><!-- /.col -->
						</div><!-- /.row -->

					<pre style="background-color: white; border-color: white;border-bottom-color:#87b87f"></pre>
					
						<div class="row">

							<div class="col-xs-12">
								<!-- PAGE CONTENT BEGINS -->
								<div class="row">
									<div class="col-sm-6" style="margin-top: 12px;" >
										<label class="col-sm-1 control-label no-padding-left" for="form-field-1" style="width: 175px;"> Date <span style="color:red">*</span> </label>
										<div class="row">
											<div class="col-xs-6">
												<div class="input-group input-group-sm">
													<?php if($values[1]){?>
													<input type="text" id="datepicker2" name="date2" class="form-control" value="<?php echo $values[1]; ?>"  style="width: 230px;height: 32px;"/>
													<?php } else{?>
													<input type="text" id="datepicker2" name="date2" class="form-control" value="" style="width: 230px;height: 32px;"/>
													<?php } ?>
													<span class="input-group-addon">
														<i class="ace-icon fa fa-calendar" id=date2p></i>
													</span>
												</div>
											</div>
										</div>
									</div>
									
									<div class="col-sm-6" style="margin-top: 12px;">
										<label class="col-sm-1 control-label no-padding-left" for="form-field-1" style="width: 175px;">Choose New Lot No.  </label>

										<div class="row">
											<div class="col-xs-6">
												<div class="input-group input-group-sm">

													<select id="LotNo2" name ="lotno2" style="width: 230px;height: 32px; margin-right: 5px;">
														<?php
													if($result22){
														while($row=mysqli_fetch_array($result22))
															{
																$lotNo=$row['lotNo'];
															}
															$id=$values[9];
														?>	
														<option value="<?php echo $id;?>"><?php echo $lotNo;?></option>
														<?php }  else { ?>
														<option value="">Select new Lot No</option>
														<?php }
																	while($row=mysqli_fetch_array($result10))
																	{
																		$id=$row['id'];
																		$lname=$row['lotNo'];
																		$count10++;
																		
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
														<?php
													 if($result21){
													$sql25 = "SELECT name FROM m_grade where id='$values[2]'";
													$result25 = $conn->query($sql25);
														while($row=mysqli_fetch_array($result25))
														{
															$grname=$row['name'];
															$id=$values[2];
															
														?>
														<option value="<?php echo $id;?>"><?php echo $grname;?></option>
													<?php } } else { ?>
														<option value="">Select Grade</option>
													<?php }
																	while($row=mysqli_fetch_array($result6))
																	{
																		$id=$row['id'];
																		$gname=$row['name'];
																		$count6++;
																		
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
										<label class="col-sm-1 control-label no-padding-left" for="form-field-1" style="width: 175px;">Process <span style="color:red">*</span> </label>
										<div class="row">
											<div class="col-xs-6">
												<div class="input-group input-group-sm">
													
													<select id="process" name="process" class="process" style="width: 230px;height: 32px;" >

														<option value="">Select Process</option>
															<?php 
																	while($row=mysqli_fetch_array($result14))
																	{
																		$id=$row['id'];
																		$pname=$row['processName'];
																		$abbr=$row['abbrevation'];
																		$count14++;
																		
																?>
																<option value="<?php echo $abbr;?>"><?php echo $pname .' / '. $abbr;?></option>
																<?php			
																	}	
																?>
													</select>
											
												</div>
											</div>
										</div>
									</div>

									<script>
									$(document).ready(function(){
										$('.process').change(function(){
	                       					 var val = $(this).val();
	                       					 var code ='<?php echo $values[0];?>';
	                       					 var v=1;
	                       					 var pcode= code+'/'+val+'/'+v;

	                       					 var result='<?php $sql26 = "SELECT previousCode FROM production";
															$result26 = $conn->query($sql26);
															while($row=mysqli_fetch_array($result26))
																	{
																		echo $previousCode=$row['previousCode'];
																		echo " , ";

																	}	
															?>';
											var newcode = result.split(',');
											var codeval = code.split('/');

											for(var j = 0; j < codeval.length; j++)
											{
											  codeval[j] = codeval[j].replace(/^\s*/, "").replace(/\s*$/, "");
											}
											//alert(codeval);
											for(var i = 0; i < newcode.length; i++)
											{
											  newcode[i] = newcode[i].replace(/^\s*/, "").replace(/\s*$/, "");
											}
											if(codeval[1])
											{	
												if(codeval[1]==val)
												{
													var c = codeval[2];
													c=+c+1;
													pcode= codeval[0]+'/'+val+'/'+c;
													
													for (var i = 0; i < newcode.length; i++) 
													 {
													    if (newcode[i] === pcode) 
													    {
													        v=v+1;
													        pcode= code+'/'+val+'/'+v;
													        document.getElementById('procescode').value=pcode;	
													    }
													    else
													    {
													    	 document.getElementById('procescode').value=pcode;
													    }	
													 }
												}
												else
												{
													document.getElementById('procescode').value=pcode;
												}	

											}	
											else
											{
												for (var i = 0; i < newcode.length; i++) 
												 {
												    if (newcode[i] === pcode) 
												    {
												        v=v+1;
												        pcode= code+'/'+val+'/'+v;
												        
												        document.getElementById('procescode').value=pcode;	
												    }
												    else
												    {
												    	 document.getElementById('procescode').value=pcode;
												    }	
												 }
											}
											 
											
	                       					

										});	
									});	
							        </script>

									<div class="col-sm-6" style="margin-top: 12px;">
										<label class="col-sm-1 control-label no-padding-left" for="form-field-1" style="width: 175px;"> Finished Size <span style="color:red">*</span> </label>
										<div class="row">
											<div class="col-xs-6">
												<div class="input-group input-group-sm">
													
													<input type="text" id="size3" name="size3" value="<?php echo $rmsize;?>" class="form-control" style="width: 230px;height: 32px; margin-right: 20px;"/>
													
													
												</div>
											</div>
										</div>
									</div>

									<div class="col-sm-6" style="margin-top: 12px;">
										<label class="col-sm-1 control-label no-padding-left" for="form-field-1" style="width: 175px;"> Heat No <span style="color:red">*</span> </label>
										<div class="row">
											<div class="col-xs-6">
												<div class="input-group input-group-sm">
												<?php if($values[8]){?>		
													<input type="text" id="heatno1" name="heatno1" value="<?php echo $values[8];?>" class="form-control" style="width: 230px;height: 32px;"  />
												<?php } else{?>
												<input type="text" id="heatno1" name="heatno1" value="" class="form-control" style="width: 230px;height: 32px;"  />	
												<?php } ?>		
												</div>
											</div>
										</div>
									</div>

									<div class="col-sm-6" style="margin-top: 12px;">
										<label class="col-sm-1 control-label no-padding-left" for="form-field-1" style="width: 175px;"> Make <span style="color:red">*</span> </label>
										<div class="row">
											<div class="col-xs-6">
												<div class="input-group input-group-sm">
													<?php if($values[10]){?>	
													<input type="text" id="make2" value="<?php echo $values[10];?>" name="make2" class="form-control" style="width: 230px;height: 32px;"  />
													<?php } else{?>	
													<input type="text" id="make2" value="" name="make2" class="form-control" style="width: 230px;height: 32px;"  />
													<?php } ?>
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
									<script type="text/javascript">
										$('input[name=inwgt]').change(function() { 

											$inwt=document.getElementById('inwgt').value;
											$balwt=document.getElementById('balwgt').value;
											
											if(Number($inwt) > Number($balwt))
											{
												$.confirm({
												    title: 'Message!',
												    content: 'In weight should be less than Balance weight.!',
												    buttons: {
												        OK: function () {
												            close();
												            document.getElementById('inwgt').value='';
												        },
												       
												    }
												});
											}
											else
											{
												document.getElementById('inwgt').value=$inwt;
											}	
											
										 });

									</script>

									<div class="col-sm-6" style="margin-top: 12px;">
										<label class="col-sm-1 control-label no-padding-left" for="form-field-1" style="width: 175px;"> Shape <span style="color:red">*</span> </label>
										<div class="row">
											<div class="col-xs-6">
												<div class="input-group input-group-sm">
													
													<select id="shape2" name="shape2" style="width: 230px;height: 32px; ">
														<?php
													if($result23){
														while($row=mysqli_fetch_array($result23))
															{
																$id=$values[4];
																$shname=$row['name'];
															
														?>
														<option value="<?php echo $id; ?>"><?php echo $shname; ?></option>
														<?php } }else { ?>
														<option value="">Select Shape</option>
														<?php }
																	while($row=mysqli_fetch_array($result7))
																	{
																		$id=$row['id'];
																		$shname=$row['name'];
																		$count7++;
																		
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
										<label class="col-sm-1 control-label no-padding-left" for="form-field-1" style="width: 175px;"> Out Weight(In Kg.) <span style="color:red">*</span> </label>
										<div class="row">
											<div class="col-xs-6">
												<div class="input-group input-group-sm">
													
													<input type="text" id="outwgt" name="outwgt" class="form-control" style="width: 230px;height: 32px;" />
													
												</div>
											</div>
										</div>
									</div>


									<script type="text/javascript">
										$('input[name=outwgt]').change(function() { 

											$inwt=document.getElementById('inwgt').value;
											$outwt=document.getElementById('outwgt').value;
											
											if(Number($outwt) > Number($inwt))
											{
												$.confirm({
												    title: 'Message!',
												    content: 'Out weight should be less than In weight.!',
												    buttons: {
												        OK: function () {
												            close();
												            document.getElementById('outwgt').value='';
												        },
												       
												    }
												});
											}
											else
											{
												$reclos=$inwt-$outwt;
												document.getElementById('reclos').value=$reclos;
											}	
											
										 });

									</script>
									<div class="col-sm-6" style="margin-top: 12px;">
										<label class="col-sm-1 control-label no-padding-left" for="form-field-1" style="width: 175px;">Surface <span style="color:red">*</span> </label>
										<div class="row">
											<div class="col-xs-6">
												<div class="input-group input-group-sm">

													<select id="surface2" name="surface2"  style="width: 230px;height: 32px;">
														<?php
													if($result20){
														while($row=mysqli_fetch_array($result20))
															{
																$id=$values[6];
																$surname=$row['name'];
															
														?>
														<option value="<?php echo $id; ?>"><?php echo $surname;?></option>
														<?php } } else { ?>
														<option value="">Select Surface</option>
														<?php } 
																	while($row=mysqli_fetch_array($result8))
																	{
																		$id=$row['id'];
																		$surname=$row['name'];
																		$count8++;
																		
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
										<label class="col-sm-1 control-label no-padding-left" for="form-field-1" style="width: 175px;"> Rec Loss(In Kg.)  </label>
										<div class="row">
											<div class="col-xs-6">
												<div class="input-group input-group-sm">
													
													<input type="text" id="reclos" name="reclos"  value="0" class="form-control" style="width: 230px;height: 32px;" />
													
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
														<?php if($values[7]){?>
														<option value="<?php echo $values[7];?>"><?php echo $values[7];?></option>
														<?php }  else { ?>
														<option value="">Select Condition</option>
														<?php } 
																	while($row=mysqli_fetch_array($result9))
																	{
																		$id=$row['id'];
																		$condition=$row['condition_text'];
																		$count9++;
																		
																?>
																<option value="<?php echo $condition;?>"><?php echo $condition;?></option>
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
													
													<input type="text" id="nonreclos" name="nonreclos"  value="0" class="form-control" style="width: 230px;height: 32px;" />
													
												</div>
											</div>
										</div>
									</div>
										

									<div class="col-sm-6" style="margin-top: 12px;">
										<label class="col-sm-1 control-label no-padding-left" for="form-field-1" style="width: 175px;">Process Code</label>
										<div class="row">
											<div class="col-xs-6">
												<div class="input-group input-group-sm">
													
													<input type="text" id="procescode" name="procescode" class="form-control" style="width: 230px;height: 32px; margin-right: 20px;"/ readonly>
													
												</div>
											</div>
										</div>
									</div>
									
									<div class="col-sm-12" style="margin-top: 12px;">
										<label class="col-sm-1 control-label no-padding-left" for="form-field-1" style="width: 175px;"> Remark </label>
										<div class="row">
											<div class="col-xs-6">
												<div class="input-group input-group-sm">

													<textarea id="remark" name="remark"   class="autosize-transition form-control" style="overflow: hidden; word-wrap: break-word; resize: horizontal; width: 400px; height: 100px;">  </textarea>
													
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
		<script src="assets/js/jquery-confirm.js"></script>
		<!-- ace scripts -->
		<script src="assets/js/ace-elements.min.js"></script>
		<script src="assets/js/ace.min.js"></script>
		

		<!-- inline scripts related to this page -->
		<script type="text/javascript">

			jQuery(function($) {
			$date='<?php echo $values[1];?>';
			$startdate='<?php echo $ST;?>';
			$enddate='<?php echo $EN;?>';
				
			$( "#datepicker2" ).datepicker({
					showOtherMonths: true,
					selectOtherMonths: false,
					dateFormat: 'yy-mm-dd',
					minDate: $date,
					maxDate: $enddate,
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
