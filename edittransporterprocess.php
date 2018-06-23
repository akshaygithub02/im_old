<?php
include('config.php');

if ($conn->connect_error)
	{
		 die("Connection failed: " . $conn->connect_error);
	} 

	if(@isset($_POST["btnsubmit"]))
	{
		
		$id=$_POST['id'];
		$name=$_POST['transportername'];
		$address=$_POST['address'];
		$contactno=$_POST['contactno'];
		$mobile=$_POST['mobileno'];
		$email=$_POST['emailid'];
		
		
	if($name!="" && $address!="" &&  $contactno!="" && $mobile!="" && $email!="")
		{
			
			$query="update transporter set companyName='$name', address='$address',contact='$contactno', mobileNo='$mobile',email='$email' where venorId='$id'";
           
            $result =mysqli_query($conn,$query) or die(mysqli_error($conn));

            if($result)
					{
						header('Location:Transporter.php');
							
					}
					else
					{
						header('Location: edittransporter.php?id=$id&error=Failed to update.');

					}	
		}
		else
		{
			header("Location: edittransporter.php?id=$id&error=Field should not be Empty");
		}

 

	}

?>