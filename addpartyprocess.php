<?php
include('config.php');

if ($conn->connect_error)
	{
		 die("Connection failed: " . $conn->connect_error);
	} 

	if(@isset($_POST["btnsubmit"]))
	{
		
		
		$name=$_POST['partyname'];
		$contactperson=$_POST['contactperson'];
		$location=$_POST['partylocation'];
		$contactno=$_POST['contactno'];
		$mobile=$_POST['mobileno'];
		$email=$_POST['emailid'];

		if($name!="" && $location!="" && $contactno!="" && $mobile!="" && $email!="")
		{
			
			$query="insert into party(p_name,contactperson,p_location,contactNo,mobileNo,email) values('$name','$contactperson','$location','$contactno','$mobile','$email')";
           
            $result =mysqli_query($conn,$query) or die(mysqli_error($conn));

            if($result)
					{
						header('Location:party.php');
							
					}
					else
					{
						header('Location:addparty.php?error=Failed to update.');

					}	
		}
		else
		{
			header("Location:addparty.php?error=Field should not be Empty");
		}

 

	}

?>