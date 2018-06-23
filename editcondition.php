<?php 

	include('config.php');
	$idupdate =$_GET['id'];
	$valupdate =$_GET['txtvalue'];
	
	$updatequery ="update m_condition set condition_text='$valupdate' where id='$idupdate'";
	$updateresult= mysqli_query($conn,$updatequery);
	if($updateresult)
	{
		header('Location:condition.php');
			
	}
?>