<?php 

	include('config.php');
	$name =$_GET['name'];
	
	
	$updatequery ="insert into m_code(name) values('$name');";
	$updateresult= mysqli_query($conn,$updatequery);
	if($updateresult)
	{
		header('Location:codepr.php');

	}


?>