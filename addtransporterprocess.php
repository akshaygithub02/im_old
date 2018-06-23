<?php
include('config.php');

if ($conn->connect_error)
	{
		 die("Connection failed: " . $conn->connect_error);
	} 

	if(@isset($_POST["btnsubmit"]))
	{
		
	
		$name=$_POST['transportername'];
		$address=$_POST['address'];
		$contactno=$_POST['contactno'];
		$mobile=$_POST['mobileno'];
		$email=$_POST['emailid'];
		
		
	if($name!="" && $address!="" &&  $contactno!="" && $mobile!="" && $email!="")
		{
			
			$query="insert into transporter(companyName,address,contact,mobileNo,email)values('$name','$address','$contactno','$mobile','$email')";
           
            $result =mysqli_query($conn,$query) or die(mysqli_error($conn));

            if($result)
					{
						header('Location:Transporter.php');
							
					}
					else
					{
						header('Location: addtransporter.php?error=Failed to update.');

					}	
		}
		else
		{
			header("Location: addtransporter.php?error=Field should not be Empty");
		}

 

	}

?>