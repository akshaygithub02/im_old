<?php
include('config.php');

if ($conn->connect_error)
	{
		 die("Connection failed: " . $conn->connect_error);
	} 

	if(@isset($_POST["btnsubmit"]))
	{
		
		/*$id=$_POST['id'];*/
		$name=$_POST['JobWorkname'];
		$address=$_POST['address'];
		$email=$_POST['emailid'];
		$contactno=$_POST['contactno'];
		$mobile=$_POST['mobileno'];
	

		if($name!="" && $address!="" && $email!="" && $contactno!="" && $mobile!="")
		{
			
			$query="insert into jobworkmanagement(name,address,email,contact,mobNo)values('$name','$address','$email','$contactno','$mobile')";
           
            $result =mysqli_query($conn,$query) or die(mysqli_error($conn));

            if($result)
					{
						header('Location:jobwork.php');
							
					}
					else
					{
						header('Location: addjobwork.php?error=Failed to update.');

					}	
		}
		else
		{
			header("Location: addjobwork.php?error=Field should not be Empty");
		}

 

	}

?>