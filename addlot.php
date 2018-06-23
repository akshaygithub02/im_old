<?php 

	include('config.php');
	$lotno =$_GET['lotno'];
	
	
	$updatequery ="insert into lotno(lotNo) values('$lotno');";
	$updateresult= mysqli_query($conn,$updatequery);
	if($updateresult)
	{
		header('Location:lot.php');

	}


?>