<?php
include('config.php');

if ($conn->connect_error)
	{
		 die("Connection failed: " . $conn->connect_error);
	} 

	if(@isset($_POST["btnsubmit"]))
	{
		
		$id=$_POST['id'];
		$name=$_POST['warehousename'];
		$address=$_POST['address'];
		$mobile=$_POST['mobileno'];
		$email=$_POST['emailid'];
		$responperson=$_POST['resperson'];
	
		

		if($name!="" && $address!="" && $mobile!="" && $email!="" && $responperson!="")
		{
			
			$query="update warehousemanagement set name='$name', address='$address', mobile='$mobile',email='$email' , responsiblePerson='$responperson' where warehouseId='$id'";
           
            $result =mysqli_query($conn,$query) or die(mysqli_error($conn));

            if($result)
					{
						header('Location:warehouse.php');
							
					}
					else
					{
						header('Location: editwarehouse.php?id=$id&error=Failed to update.');

					}	
		}
		else
		{
			header("Location: editwarehouse.php?id=$id&error=Field should not be Empty");
		}

 

	}

?>