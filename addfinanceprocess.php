<?php
include('config.php');

if ($conn->connect_error)
	{
		 die("Connection failed: " . $conn->connect_error);
	} 

	if(@isset($_POST["btnsubmit"]))
	{
		
		
		$startdate=$_POST['startdate'];
		$enddate=$_POST['enddate'];
		$financialyear=$_POST['financialyear'];
		$status=$_POST['status'];
		
	
		
if($startdate!="" && $enddate!="" && $financialyear!="")
		{
			
			$query="insert into financialyear(startDate,endDate,fy,status)values('$startdate','$enddate','$financialyear','$status')";
           
            $result =mysqli_query($conn,$query) or die(mysqli_error($conn));

            if($result)
					{
						header('Location:finance.php');
							
					}
					else
					{
						header('Location: addfinance.php?error=Failed to update.');

					}	
		}
		else
		{
			header("Location: addfinance.php?error=Field should not be Empty");
		}

 

	}

?>