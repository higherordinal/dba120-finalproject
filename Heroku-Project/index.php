<!DOCTYPE html>
<html>
<head>
	<title>DBA 120 - Database Project</title>
</head>
<body>
	<?php
        //Establish Connection
        include 'connection.php';

		// Set the page title using a PHP variable
		$pageTitle = "Course Management";
		echo "<h1>$pageTitle</h1>";

		// Create links using PHP and HTML
		$createURL = "create.php";
		$createText = "Add Student";
		echo "<a href=\"$createURL\">$createText</a><br>";

        $readURL = "read.php";
		$readText = "Course Info";
		echo "<a href=\"$readURL\">$readText</a><br>";

        $updateURL = "update.php";
		$updateText = "Edit Student";
		echo "<a href=\"$updateURL\">$updateText</a><br>";

        $deleteURL = "delete.php";
		$deleteText = "Remove Student";
		echo "<a href=\"$deleteURL\">$deleteText</a>";
	?>
</body>
</html>
