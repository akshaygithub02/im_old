<?php
include('config.php');

if ($conn->connect_error)
	{
		 die("Connection failed: " . $conn->connect_error);
	} 

	if(@isset($_POST["btnsubmit"]))
	{
		
		
		$id=$_POST['id'];
		$startdate=$_POST['startdate'];
		$enddate=$_POST['enddate'];
		$financialyear=$_POST['fy'];
		$status=$_POST['status'];
		
	
		
if($startdate!="" && $enddate!="" && $financialyear!="")
		{
			
			$query="update  financialyear set startDate='$startdate',endDate='$enddate',fy='$financialyear',status='$status' where id='$id'";
           
            $result =mysqli_query($conn,$query) or die(mysqli_error($conn));

            if($result)
					{
						header('Location:finance.php');
							
					}
					else
					{
						header('Location: editfinance.php?id=$id&error=Failed to update.');

					}	
		}
		else
		{
			header("Location: editfinance.php?id=$id&error=Field should not be Empty");
		}

 

	}

?>