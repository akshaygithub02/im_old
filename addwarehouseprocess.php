<?php
include('config.php');

if ($conn->connect_error)
	{
		 die("Connection failed: " . $conn->connect_error);
	} 

	if(@isset($_POST["btnsubmit"]))
	{
		
		$name=$_POST['warehousename'];
		$address=$_POST['address'];
		$mobile=$_POST['mobileno'];
		$email=$_POST['emailid'];
		$responperson=$_POST['resperson'];
	
		

		if($name!="" && $address!="" && $mobile!="" && $email!="" && $responperson!="")
		{
			
			$query="insert into warehousemanagement(name,address,mobile,email,responsiblePerson)values('$name','$address','$mobile','$email','$responperson')";
           
            $result =mysqli_query($conn,$query) or die(mysqli_error($conn));

            if($result)
					{
						header('Location:warehouse.php');
							
					}
					else
					{
						header('Location: addwarehouse.php?error=Failed to update.');

					}	
		}
		else
		{
			header("Location: addwarehouse.php?error=Field should not be Empty");
		}

 

	}

?>