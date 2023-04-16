<!DOCTYPE html>
<html>
<head>
    <title>Delete Student Record</title>
</head>
<body>
    <h1>Delete Student Record</h1>

    <form action="" method="post">
        <label for="student_id">Student ID:</label>
        <input type="text" id="student_id" name="student_id" required><br><br>

        <label for="first_name">First Name:</label>
        <input type="text" id="first_name" name="first_name" required><br><br>

        <label for="last_name">Last Name:</label>
        <input type="text" id="last_name" name="last_name" required><br><br>

        <input type="submit" name="delete" value="Delete Student Record">
    </form>

    <?php
    error_reporting(E_ALL);
    ini_set('display_errors', 1);

    // include the database connection code
    include "connection.php";

    // Check connection
    if ($conn->connect_error) {
        die("Connection failed: " . $conn->connect_error);
    }

    if (isset($_POST['delete'])) {
        $student_id = $_POST['student_id'];
        $first_name = $_POST['first_name'];
        $last_name = $_POST['last_name'];

        // Delete the row from the student table that has the matching values
        $sql = "DELETE FROM student WHERE student_id='$student_id' AND first_name='$first_name' AND last_name='$last_name'";

        if ($conn->query($sql) === TRUE) {
            echo "Student record deleted successfully";
        } else {
            echo "Error deleting student record: " . $conn->error;
        }
    }

    // Close database connection
    $conn->close();
    ?>
</body>
</html>
