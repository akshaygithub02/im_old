<?php 

	include('config.php');
	$pname =$_GET['pname'];
	$abbr =$_GET['abbr'];
	
	
	$updatequery ="insert into m_process(processName,abbrevation) values('$pname','$abbr');";
	$updateresult= mysqli_query($conn,$updatequery);
	if($updateresult)
	{
		header('Location:process.php');

	}


?>