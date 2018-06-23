<?php 

	include('config.php');
	$name =$_GET['name'];
	
	
	$updatequery ="insert into m_grade(name) values('$name');";
	$updateresult= mysqli_query($conn,$updatequery);
	if($updateresult)
	{
		
		header('Location:grade.php');

	}


?>

