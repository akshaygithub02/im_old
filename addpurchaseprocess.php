<?php
include('config.php');
include('checksession.php');
$fy=$_SESSION['fy'];
$company=$_SESSION['cname'];
$sql = "SELECT id FROM financialyear where fy='$fy'";
$res = $conn->query($sql);
	while($row=mysqli_fetch_array($res))
	{
		$fin=$row['id'];
	}

$sql1 = "SELECT id FROM company where companyName='$company'";
$res1 = $conn->query($sql1);
	while($row=mysqli_fetch_array($res1))
	{
		$com=$row['id'];
	}

	if($conn->connect_error)
	{
		 die("Connection failed: " . $conn->connect_error);
	} 

	if(@isset($_POST["btnsubmit"]))
	{
		
		$items=$_POST['items'];
		if($items==""){
			header("Location: addpurchase.php?error=Add at least one item.");
		}
		else
		{
			for($i=1;$i<=$items;$i++)
			{
				
				${"code".$i}=$_POST['code'.$i];
				${"grade".$i}=$_POST['grade'.$i];
				${"shape".$i}=$_POST['shape'.$i];
				${"condition".$i}=$_POST['condition'.$i];
				${"surface".$i}=$_POST['surface'.$i];
				${"inhwgt".$i}=$_POST['inhwgt'.$i];
				${"invwgt".$i}=$_POST['invwgt'.$i];
				${"sizeN".$i}=$_POST['size1'.$i];
				${"sizeD".$i}=$_POST['size2'.$i];
					
				if(${"sizeD".$i}=="")
				{
					${"size".$i}=${"sizeN".$i};
				}
				else
				{
					${"size".$i}=${"sizeN".$i}.'.'.${"sizeD".$i};
			
				}
				
			}
			
			$date=$_POST['date'];
			$party=$_POST['party'];
			$billno=$_POST['billno'];
			$make=$_POST['make'];
			$lotno=$_POST['lotno'];
			$warehouse=$_POST['warehouse'];
			$transporter=$_POST['transporter'];
			$lorryno=$_POST['lorryno'];
			$freightfixed=$_POST['freightfixed'];
			$cnffob=$_POST['cnffob'];
			$remark=$_POST['remark'];

			if($date!="" && $party!="" && $billno!="" && $make!="" && $lotno!="" && $warehouse!="")  
			{
				for($i=1;$i<=$items;$i++)
				{
					if(${"code".$i}!="" && ${"grade".$i}!="" && ${"shape".$i}!="" && ${"condition".$i}!="" && ${"surface".$i}!="" && ${"inhwgt".$i}!="" && ${"invwgt".$i}!="" && ${"size".$i}!="" )
					{
						${"query".$i}="insert into newpurchase(fyId,companyId,lotNo,date,billNo,party,make,code,grade,shape,size,purchaseWeight,actualWeight,surface,warehouseId,transporterId,lorryNo,freightFixed,cnfFobId,remarks,conditn)values($fin,$com,$lotno,'$date','$billno','$party','$make','${"code".$i}',${"grade".$i},${"shape".$i},'${"size".$i}','${"invwgt".$i}','${"inhwgt".$i}',${"surface".$i},$warehouse,'$transporter','$lorryno','$freightfixed','$cnffob','$remark','${"condition".$i}')";
			           	
		           		 ${"result".$i} =mysqli_query($conn,${"query".$i}) or die(mysqli_error($conn));
		           		
		            		if(${"result".$i})
							{
								header('Location:purchase.php');
									
							}
							else
							{
								header('Location: addpurchase.php?error=Failed to update.');

							}
					}
					
					else
					{
						header("Location: addpurchase.php?error=Field should not be Empty");
					}
				}				
			}
			else
			{
				header("Location: addpurchase.php?error=Field should not be Empty");
			}


		}	

	}

?>