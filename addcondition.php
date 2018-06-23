<?php 

	include('config.php');
	$condition =$_GET['condition'];
	
	
	$updatequery ="insert into m_condition(condition_text) values('$condition');";
	$updateresult= mysqli_query($conn,$updatequery);
	if($updateresult)
	{
		header('Location:condition.php');

	}


?>