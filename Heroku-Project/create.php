<!DOCTYPE html>
<html>
<head>
	<title>Add Student</title>
</head>
<body>
	<h1>Add Student</h1>

	<form action="create.php" method="post">
		<label for="course_id">Course ID:</label>
		<input type="text" name="course_id" id="course_id" pattern="[0-9]{5}" required><br>

		<label for="first_name">First Name:</label>
		<input type="text" name="first_name" id="first_name" required><br>

		<label for="last_name">Last Name:</label>
		<input type="text" name="last_name" id="last_name" required><br>

		<label for="phone_number">Phone Number:</label>
		<input type="text" name="phone_number" id="phone_number" pattern="\d{3}-\d{4}" required><br>

		<input type="submit" value="Add Student">
	</form>

	<?php

	include "connection.php";

	// Check connection
	if ($conn->connect_error) {
	    die("Connection failed: " . $conn->connect_error);
	}

	// Retrieve form data
	$course_id = mysqli_real_escape_string($conn, $_POST['course_id']);
	$first_name = mysqli_real_escape_string($conn, $_POST['first_name']);
	$last_name = mysqli_real_escape_string($conn, $_POST['last_name']);
	$phone_number = mysqli_real_escape_string($conn, $_POST['phone_number']);

	// Prepare and execute SQL query to insert student data into database
	$stmt = $conn->prepare("INSERT INTO student (course_id, first_name, last_name, phone_number) VALUES (?, ?, ?, ?)");
	$stmt->bind_param("ssss", $course_id, $first_name, $last_name, $phone_number);
	if ($stmt->execute()) {
		echo "Student added successfully!";
	} else {
		// Handle errors
	    echo "Error: " . mysqli_error($conn);
	}

	// Close prepared statement and database connection
	$stmt->close();
	$conn->close();
	?>
</body>
</html>


