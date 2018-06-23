<?php
include('config.php');

if ($conn->connect_error)
	{
		 die("Connection failed: " . $conn->connect_error);
	} 

	if(@isset($_POST["btnsubmit"]))
	{
		
		$prevcode=$_POST['Ncode'];
		$date=$_POST['date2'];
		$grade=$_POST['grade2'];
		$make=$_POST['make1'];
		$surface=$_POST['surface2'];
		$condition=$_POST['condition2'];
		$shape=$_POST['shape2'];
		$finsize=$_POST['size3'];

		$pcode=$_POST['procescode'];
		$remark=$_POST['remark'];
		$nlotno=$_POST['lotno2'];
		$jobwork=$_POST['jobwork'];
		$heatno=$_POST['heatno'];
		$inwt=$_POST['inwgt'];
		$outwt=$_POST['outwgt'];
		$reclos=$_POST['reclos'];
		$nrecloss=$_POST['nonreclos'];
		$balwt=$_POST['balwgt'];
		$balancewt=$balwt-$inwt;


		if($prevcode!="" && $date!="" && $grade!="" && $shape!="" && $finsize!="" && $make!="" && $surface!="" && $condition!="" && $jobwork!="" && $heatno!="" && $inwt!="" && $outwt!="")
		{
			
			$query="insert into production(date,grade,shape,surface,size,lotNo,heatNo,newCode,make,inweight,openingbalwt,recoverableLoss,nrLoss,previousCode,jobWorkerId,remark,conditn,balanceWt) values('$date',$grade,$shape,$surface,'$finsize',$nlotno,'$heatno','$pcode','$make','$inwt','$outwt','$reclos','$nrecloss','$prevcode',$jobwork,'$remark','$condition','$balancewt')";
           
            $result =mysqli_query($conn,$query) or die(mysqli_error($conn));

            if($result)
					{
						header('Location:jobwork1.php');
							
					}
					else
					{
						header('Location:addjobwork1.php?error=Failed to update.');

					}	
		}
		else
		{
			header("Location:addjobwork1.php?error=Field should not be Empty");
		}

 

	}

?>