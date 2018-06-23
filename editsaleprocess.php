<?php
 include('config.php');
 include('checksession.php');
 
 	$fy=$_SESSION['fy'];
 	$company=$_SESSION['cname'];
	
	$sql = "SELECT id FROM financialyear where fy='$fy'";
	$result = $conn->query($sql);
	while($row=mysqli_fetch_array($result))
	{
		$fin=$row['id'];
	}
	
	$sql1 = "SELECT id FROM company where companyName='$company'";
	$result1 = $conn->query($sql1);
	while($row=mysqli_fetch_array($result1))
	{
		$com=$row['id'];
	}

	if ($conn->connect_error)
	{
		 die("Connection failed: " . $conn->connect_error);
	} 

	if(@isset($_POST["btnsubmit"]))
	{
		
		$id=$_POST['id'];
		$date=$_POST['date'];
		$code=$_POST['code'];
		$party=$_POST['party'];
		$grade=$_POST['grade'];
		$billno=$_POST['billno'];
		$make=$_POST['make'];
		$shape=$_POST['shape'];
		$lotno=$_POST['lotno'];
		//$warehouse=$_POST['warehouse'];
		$condition=$_POST['condition'];
		$transporter=$_POST['transporter'];
		$surface=$_POST['surface'];
		$inhwgt=$_POST['inhwgt'];
		$lorryno=$_POST['lorryno'];
		$invwgt=$_POST['invwgt'];
		$freightfixed=$_POST['freightfixed'];
		$cnffob=$_POST['cnffob'];
		$remark=$_POST['remark'];
		$size1=$_POST['size1'];
		$size2=$_POST['size2'];
			
		if($size2=="")
		{
			$size=$size1;
		}
		else
		{
			$size=$size1.'.'.$size2;
	
		}
		/*echo "date:". $date;
		echo "code:" .$code;
		echo "party:". $party;
		echo "grade:". $grade;
		echo "bn:". $billno;
		echo "make:" .$make;
		 echo "sh: ".$shape;
		 echo "ltn:" .$lotno;
		 //echo "wareh:".$warehouse;
		 echo "cndn" .$condition ;
		 echo "sur:" .$surface;
		 echo "inhwg" .$inhwgt;
		  echo "invwg" .$invwgt;
		   echo "size:". $size;


		exit();*/


		if($date!="" && $code!="" && $party!="" && $grade!="" && $billno!="" && $make!=""  && $shape!="" && $lotno!="" && $condition!=""  && $surface!="" && $inhwgt!=""  && $invwgt!="" && $size!="")  
		{
			
			$query="update trade set fyId='$fin',companyId='$com',lotNo='$lotno',date='$date',billNo='$billno',party='$party',make='$make',code='$code',grade='$grade',shape='$shape',size='$size',invoiceWt='$invwgt',actualWeight='$inhwgt',surface='$surface',lorryNo='$lorryno',freightFixed='$freightfixed',cnfFobId='$cnffob',remarks='$remark',conditn='$condition',transporterId='$transporter' where purchaseId='$id'";
           
            $result =mysqli_query($conn,$query) or die(mysqli_error($conn));

            if($result)
			{
				header('Location:sale.php');
					
			}
			else
			{
				header('Location: editsale.php?id='.$id.'&error=Failed to update.');

			}	
		}
		else
		{
			header('Location: editsale.php?id='.$id.'&error=Field should not be Empty');
		}

 

	}

?>