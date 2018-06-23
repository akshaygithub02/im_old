<?php 

	include('config.php');
	$idupdate =$_GET['id'];
	$valupdate =$_GET['txtvalue'];
	
	$updatequery ="update lotno set lotNo='$valupdate' where id='$idupdate'";
	$updateresult= mysqli_query($conn,$updatequery);

	$updatequery1="update newpurchase set lotNo='$valupdate' where lotNo='$idupdate'";
	$updateresult1= mysqli_query($conn,$updatequery1);

	$updatequery2="update production set lotNo='$valupdate' where lotNo='$idupdate'";
	$updateresult2=mysqli_query($conn,$updatequery2);

	$updatequery3="update trade set lotNo='$valupdate' where lotNo='$idupdate'";
	$updateresult3=mysqli_query($conn,$updatequery3);

	if($updateresult==1  && $updateresult1>=0 && $updateresult2>=0 && $updateresult3>=0 )
	{
		header('Location:lot.php');
			
	}
?>