<?php
		include('config.php');
		include('checksession.php');
		$code=$_GET['code'];
 
	 	
		if ($conn->connect_error)
		{
			 die("Connection failed: " . $conn->connect_error);
		} 

		$sql = "SELECT * FROM production where newCode='$code'";
		$result = $conn->query($sql);
		while($row=mysqli_fetch_array($result))
		{
			$date=$row['date'];
			$grade=$row['grade'];
			$size=$row['size'];
			$shape=$row['shape'];
			$balwgt=$row['balanceWt'];
			$surface=$row['surface'];
			$condition=$row['conditn'];
			$heatno=$row['heatNo'];
			$lotno=$row['lotNo'];
			$make=$row['make'];	
		}
		$_SESSION['Allvalues'] =$code.','.$date.','.$grade.','.$size.','.$shape.','.$balwgt.','.$surface.','.$condition.','.$heatno.','.$lotno.','.$make;
		if($result)
		{
			header('Location:addproduction.php');
		}
		else
		{
			header('Location:production.php');
		}	

?>