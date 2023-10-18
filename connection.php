<?php

	$conn = mysqli_connect("localhost", "root", "", "food-order");

	if (!$conn) 
	{
		echo("Connection failed: " . mysqli_connect_error());
	}
?>