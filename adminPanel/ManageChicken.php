<?php
include "connection.php";

$sql ="SELECT * FROM `chicken`";
$result = $conn->query($sql);

?>
<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="UTF-8">
	<style>
		table {
			margin: 0 auto;
			font-size: large;
			border: 1px solid black;
		}

		h1 {
			text-align: center;
			color: #000000;
			font-size: xx-large;
			font-family: 'Gill Sans', 'Gill Sans MT',
			' Calibri', 'Trebuchet MS', 'sans-serif';
		}

		td {
			background-color:  #d9b3ff;
			border: 1px solid black;
		}

		th,
		td {
			font-weight: bold;
			border: 1px solid black;
			padding: 10px;
			text-align: center;
		}

		td {
			font-weight: lighter;
		}
	</style>
</head>

<body>
	<section>
		<h1>Manage Chicken Orders</h1>
		<table>
			<tr>
				<th>Id</th>
				<th>Name</th>
				<th>Email</th>
				<th>Phone</th>
				<th>Address</th>
                <th>Payment</th>
                <th>Quantity</th>
				<th>Date</th>
                <th>Time</th>
				<th>Operations</th>
			</tr>
			<?php
				
				while($rows=$result->fetch_assoc())
				{
			?>
			<tr>
				<td><?php echo $rows['id'];?></td>
				<td><?php echo $rows['name'];?></td>
				<td><?php echo $rows['email'];?></td>
				<td><?php echo $rows['phone'];?></td>
				<td><?php echo $rows['address'];?></td>
                <td><?php echo $rows['payment'];?></td>
                <td><?php echo $rows['quantity'];?></td>
                <td><?php echo $rows['date'];?></td>
                <td><?php echo $rows['time'];?></td>
				<td><a href="adminPanel\update.php">Update</a></td>
			</tr>
			<?php
				}
			?>
		</table>
	</section>
</body>
</html>