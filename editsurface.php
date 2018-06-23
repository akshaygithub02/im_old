<?php 

	include('config.php');
	$idupdate =$_GET['id'];
	$valupdate =$_GET['txtvalue'];
	
	$updatequery ="update m_surface set name='$valupdate' where id='$idupdate'";
	$updateresult= mysqli_query($conn,$updatequery);

	$updatequery1="update newpurchase set name='$valupdate' where surface='$idupdate'";
	$updateresult1= mysqli_query($conn,$updatequery1);

	$updatequery2="update production set name='$valupdate' where grade='$idupdate'";
	$updateresult2=mysqli_query($conn,$updatequery2);

	$updatequery3="update trade set name='$valupdate' where grade='$idupdate'";
	$updateresult3=mysqli_query($conn,$updatequery3);

	if($updateresult==1 && $updateresult1>=0  $updateresult2>=0 $updateresult3>=0)
	{
		header('Location:surface.php');
			
	}
?>