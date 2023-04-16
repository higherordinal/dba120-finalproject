<!DOCTYPE html>
<html>
<head>
    <title>Edit Student</title>
</head>
<body>
    <h1>Change Enrollment</h1>
    
    <form action="" method="post">
        <label for="student_id">Student ID:</label>
        <input type="text" name="student_id" id="student_id" required><br><br>
        
        <label for="first_name">First Name:</label>
        <input type="text" name="first_name" id="first_name"><br><br>
        
        <label for="last_name">Last Name:</label>
        <input type="text" name="last_name" id="last_name"><br><br>
        
        <label for="course_id">Current Course ID:</label>
        <input type="text" name="course_id" id="course_id" required><br><br>
        
        <label for="new_course_id">New Course ID:</label>
        <input type="text" name="new_course_id" id="new_course_id" required><br><br>
        
        <input type="submit" name="submit" value="Change Enrollment">
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

    if (isset($_POST['submit'])) {
        // Retrieve data from the form
        $student_id = mysqli_real_escape_string($conn, $_POST['student_id']);
        $first_name = mysqli_real_escape_string($conn, $_POST['first_name']);
        $last_name = mysqli_real_escape_string($conn, $_POST['last_name']);
        $course_id = mysqli_real_escape_string($conn, $_POST['course_id']);
        $new_course_id = mysqli_real_escape_string($conn, $_POST['new_course_id']);
        
        // Build the SQL query to search for the student
        $sql = "SELECT * FROM student WHERE ";
        if (!empty($student_id)) {
            $sql .= "student_id='$student_id'";
        } else {
            $sql .= "first_name='$first_name' AND last_name='$last_name'";
        }

        // Execute the query and check for errors
        $result = mysqli_query($conn, $sql);
        if (!$result) {
            echo "Error: " . mysqli_error($conn);
        } else {
            // Check if a student was found
            if (mysqli_num_rows($result) > 0) {
                // Update the course_id for the student
                $row = mysqli_fetch_assoc($result);
                $update_sql = "UPDATE student SET course_id='$new_course_id' WHERE student_id='{$row['student_id']}'";
                if (mysqli_query($conn, $update_sql)) {
                    echo "Enrollment changed successfully!";
                } else {
                    echo "Error updating enrollment: " . mysqli_error($conn);
                }
            } else {
                echo "No student found with those details.";
            }
        }
    }

    // Close database connection
    $conn->close();
    ?>
</body>
</html>
