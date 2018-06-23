<?php 

	include('config.php');
	$lotno =$_GET['lotno'];
	$id=$_GET['id'];
	
	$updatequery ="insert into lotno(lotNo) values('$lotno');";
	$updateresult= mysqli_query($conn,$updatequery);
	if($updateresult)
	{
		header('Location:editpurchase.php?id='.$id);

	}


?>