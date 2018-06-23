<?php
	include("checksession.php");
	include("config.php");

	if ($conn->connect_error)
	{
		 die("Connection failed: " . $conn->connect_error);
	} 

	if(@isset($_POST["btnsubmit"]))
	{
		$_SESSION['username']=$_POST['username'];
		$User=$_POST['username'];
		$Password=$_POST['password'];
		$Remember=$_POST['remember'];

		if($User!="" && $Password!="")
		{
				$sql = "SELECT * FROM login WHERE username='".$User."' AND password='".$Password."'";
				$result = $conn->query($sql);
				$count=0;
			
			while($row = $result->fetch_assoc())
				{
				   $count++;
				}
			if($count>0)
				{
					setcookie('usernameX', $User, 60 * 60 * 24 * 2 + time(), "/");
					if($Remember==1)
							{ 
								setcookie('username', $User, 60 * 60 * 24 * 2 + time(), "/");
								setcookie('password', $Password, 60 * 60 * 24 * 2 + time(), "/");
								
							}
							else 
							{ 
								$twoDaysBack = time() - 60 * 60 * 24 * 2;
								setcookie('username', '', $twoDaysBack, "/");
								setcookie('password', '', $twoDaysBack, "/");
							}
							
							header('Location: FYSelection.php');
				}
			else 
				{
					//echo "<script type='text/javascript'>alert('Enter valid Username and Password.')</script>";
					header('Location: index.php?error=Enter valid Username and Password.');
				}
				
		}
		
		else
		{
			//echo "<script type='text/javascript'>alert('Username or Password should not be Empty.')</script>";
			header('Location: index.php?error=Username or Password should not be Empty.');
		}	
	$conn->close();
	}
	
?>