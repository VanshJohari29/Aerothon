<?php
  // Establish a connection to the MySQL database
  $conn = mysqli_connect("localhost", "username", "password", "database_name");

  // Check if the connection was successful
  if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
  }

  // Check if the form was submitted
  if ($_SERVER["REQUEST_METHOD"] === "POST") {
    // Retrieve the data from the form submission
    $data = $_POST["data"];

    // Perform SQL query to insert data into the "department1_data" table
    $sql = "INSERT INTO fabrication_data (data) VALUES ('$data')";
    if (mysqli_query($conn, $sql)) {
      echo "Data added successfully.";
    } else {
      echo "Error: " . $sql . "<br>" . mysqli_error($conn);
    }
  }

  // Close the database connection
  mysqli_close($conn);
?>
