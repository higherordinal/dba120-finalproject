<!DOCTYPE html>
<html>
<head>
    <title>Course Info</title>
</head>
<body>
    <h1>Course Info</h1>

    <form action="" method="post">
        <input type="submit" name="display" value="Display All Courses">
    </form>

    <?php
    // include the database connection code
    include "connection.php";

    if (isset($_POST['display'])) {
        // Retrieve all data from the course table
        $sql = "SELECT * FROM course";
        $result = mysqli_query($conn, $sql);

        if (mysqli_num_rows($result) > 0) {
            // Display the data in a table
            echo "<table>";
            echo "<tr><th>Course ID</th><th>Department ID</th><th>Instructor ID</th><th>Duration</th><th>Course Name</th></tr>";
            while($row = mysqli_fetch_assoc($result)) {
                echo "<tr>";
                echo "<td>" . $row["course_id"] . "</td>";
                echo "<td>" . $row["department_id"] . "</td>";
                echo "<td>" . $row["instructor_id"] . "</td>";
                echo "<td>" . $row["duration"] . "</td>";
                echo "<td>" . $row["course_name"] . "</td>";
                echo "</tr>";
            }
            echo "</table>";
        } else {
            echo "No courses found";
        }
    }

    // Close database connection
    $conn->close();
    ?>
</body>
</html>

    