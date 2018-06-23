<?php
include('config.php');

if ($conn->connect_error)
	{
		 die("Connection failed: " . $conn->connect_error);
	} 

	if(@isset($_POST["btnsubmit"]))
	{
		$pname=$_POST['pname'];

		$id=$_POST['id'];
		$name=$_POST['partyname'];
		$contactperson=$_POST['contactperson'];
		$location=$_POST['partylocation'];
		$contactno=$_POST['contactno'];
		$mobile=$_POST['mobileno'];
		$email=$_POST['emailid'];

		if($name!="" && $location!="" && $contactno!="" && $mobile!="" && $email!="")
		{
			
			$query="update party set p_name='$name', contactPerson='$contactperson', p_location='$location',contactNo='$contactno',mobileNo='$mobile',email='$email' where id='$id'";
           
            $result =mysqli_query($conn,$query) or die(mysqli_error($conn));

            $query1="update newpurchase set party='$name' where party='$pname'";

 			$result1 =mysqli_query($conn,$query1) or die(mysqli_error($conn));

            if($result==1 && $result1>=0)
					{
						header('Location:party.php');
							
					}
					else
					{
						header('Location: editparty.php?id=$id&pname=$pname&error=Failed to update.');

					}	
		}
		else
		{
			header("Location: editparty.php?id=$id&pname=$pname&error=Field should not be Empty");
		}

 

	}

?>