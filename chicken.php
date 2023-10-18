<?php
include "connection.php";
include "navbar.php";

	if ($_SERVER["REQUEST_METHOD"] == "POST") 
	{
		$id = $_POST["id"];
		$name = $_POST["name"];
		$email = $_POST["email"];
        $phone = $_POST["phone"];
		$address = $_POST["address"];
        $payment = $_POST["payment"];
        $quantity = $_POST["quantity"];
        $date=$_POST["date"];
        $time=$_POST["time"];

		$sql = "INSERT INTO `chicken`(``id`,name`, `email`, `phone`, `address`, `payment`, `quantity`,`date`,`time`) VALUES ('$id','$name', '$email','$phone', '$address','$payment','$quantity','$date','$time')";
		if (mysqli_query($conn, $sql)) 
		{
            echo '<script>alert("Chicken Order successful!");</script>';
		} 
		else 
		{
			echo "Error: " . mysqli_error($conn);
		}
	}

?>



<html>
<style>
h1 {
	text-align: center;
	margin-top: 30px;
}

form {
	margin: 30px auto;
	width: 80%;
	max-width: 800px;
}

fieldset {
	margin: 20px 0;
	padding: 20px;
	border: 1px solid #ccc;
}

label {
	display: block;
	margin-bottom: 10px;
}

input[type="text"], input[type="email"], input[type="tel"], textarea, select {
	width: 100%;
	padding: 10px;
	margin
                            
    }

body {
  background-color: #C0C0C0;
  /* background-image: linear-gradient(45deg,#328f8a,#08ac4b); */
  font-family: "Roboto", sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
}


  

</style>
        
        
    <body>
    <form method="post" action="<?php echo htmlspecialchars($_SERVER['PHP_SELF']); ?>">

    <fieldset>
			<legend>Order Information</legend>
			<label for="name">Name:</label>
			<input type="text" id="name" name="name" required><br>

			<label for="email">Email:</label>
			<input type="email" id="email" name="email" required><br>

			<label for="phone">Phone:</label>
			<input type="tel" id="phone" name="phone" required><br>

			<label for="address">Delivery Address:</label>
			<textarea id="address" name="address" required></textarea><br>

			<label for="payment">Payment Method:</label>
			<select id="payment" name="payment" required>
				<option value="">Select Payment Method</option>
				<option value="credit">Credit Card</option>
				<option value="debit">Debit Card</option>
				<option value="paypal">PayPal</option>
			</select>
		</fieldset>

		<fieldset>

			<label for="quantity">Quantity:</label>
			<input type="number" id="quantity" name="quantity" min="1" required><br>
		</fieldset>

		<fieldset>
			<legend>Delivery Information</legend>
			<label for="date">Delivery Date:</label>
			<input type="date" id="date" name="date" required><br>

			<label for="time">Delivery Time:</label>
			<input type="time" id="time" name="time" required><br>
		</fieldset>

		<button type="submit">Submit Order</button>
    </form>
</body>
</html>