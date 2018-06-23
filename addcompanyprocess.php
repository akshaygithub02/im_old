<?php
include('config.php');

if ($conn->connect_error)
	{
		 die("Connection failed: " . $conn->connect_error);
	} 

	if(@isset($_POST["btnsubmit"]))
	{
		
		$id=$_POST['id'];
		$name=$_POST['companyname'];
		$address=$_POST['address'];
		$mobile=$_POST['mobileno'];
		$contact=$_POST['contactno'];
		$email=$_POST['emailid'];
		$responperson=$_POST['responperson'];
	
		
if($name!="" && $address!="" && $mobile!="" && $email!="" && $contact!="" && $responperson!="")
		{
			
			$query="insert into company(companyName,address,mobileNo,contact,email,responsiblePerson)values('$name','$address','$mobile','$contact','$email','$responperson')";
           
            $result =mysqli_query($conn,$query) or die(mysqli_error($conn));

            if($result)
					{
						header('Location:company.php');
							
					}
					else
					{
						header('Location: addcompany.php?error=Failed to update.');

					}	
		}
		else
		{
			header("Location: addcompany.php?error=Field should not be Empty");
		}

 

	}

?>