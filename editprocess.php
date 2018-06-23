<?php 

	include('config.php');
	$id =$_GET['id'];
	$pname =$_GET['pname'];
	$abbr=$_GET['abbr'];
	
	$updatequery ="update m_process set processName='$pname',abbrevation='$abbr' where id='$id'";
	$updateresult= mysqli_query($conn,$updatequery);
	if($updateresult)
	{
		header('Location:process.php');
			
	}
?>