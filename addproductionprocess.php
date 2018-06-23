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
		$make=$_POST['make2'];
		$surface=$_POST['surface2'];
		$condition=$_POST['condition2'];
		$shape=$_POST['shape2'];
		$finsize=$_POST['size3'];

		$newcode=$_POST['procescode'];
		$remark=$_POST['remark'];
		$nlotno=$_POST['lotno2'];
		$heatno=$_POST['heatno'];
		$inwt=$_POST['inwgt'];
		$outwt=$_POST['outwgt'];
		$reclos=$_POST['reclos'];
		$nrecloss=$_POST['nonreclos'];
		$balwt=$_POST['balwgt'];
		$balancewt=$balwt-$inwt;

		if($prevcode!="" && $date!="" && $grade!="" && $shape!="" && $finsize!="" && $make!="" && $surface!="" && $condition!="" && $newcode!="" && $heatno!="" && $inwt!="" && $outwt!="")
		{
			
			$query="insert into production(date,grade,shape,surface,size,lotNo,heatNo,make,inweight,openingbalwt,recoverableLoss,nrLoss,previousCode,newCode,remark,conditn,balanceWt) values('$date',$grade,$shape,$surface,'$finsize',$nlotno,'$heatno','$make','$inwt','$outwt','$reclos','$nrecloss','$prevcode','$newcode','$remark','$condition','$balancewt')";
           	
            $result =mysqli_query($conn,$query) or die(mysqli_error($conn));

            if($result)
					{
						header('Location:production.php');
							
					}
					else
					{
						header('Location:addproduction.php?error=Failed to update.');

					}	
		}
		else
		{
			header("Location:addproduction.php?error=Field should not be Empty");
		}

 

	}

?>