<?php
	include('config.php');
 	if ($conn->connect_error){
 		die("Connection failed: " . $conn->connect_error);
	}

	$cname = $_GET["cn"];

	$sql0 = "SELECT id FROM company where companyName = '$cname' ";
		$result0 = $conn->query($sql0);
		$row0 = mysqli_fetch_array($result0);
		$cid = $row0["id"];


	$sql = "SELECT id,fy FROM financialyear where companyId = '$cid'";
	echo $sql;
	$result = $conn->query($sql);
	$count = 0;
	?> <label class='block clearfix'>
			<span class='block input-icon input-icon-right'>
			<label for='form-field-select-1'>
				<b>Financial Year :</b></label>
					<select class='form-control' id='fYear' name='financialyear' required>
						<option value="">Select Financial Year</option>
						
						<?php while($row=mysqli_fetch_array($result))
						{
							$id=$row['id'];
							$fy=$row['fy'];
							$count++;
						?>

						<option value="<?php echo $fy;?>"> <?php echo $fy;?></option>
												
					<?php	}?>
					</select>
				</span>
		</label>

