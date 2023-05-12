<?php
  $conn = mysqli_connect("localhost", "username", "password", "database_name");
  if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
  }

  if ($_SERVER["REQUEST_METHOD"] === "POST") {
    $data = $_POST["data"];

    $sql = "INSERT INTO subassembly_data (data) VALUES ('$data')";
    if (mysqli_query($conn, $sql)) {
      echo "Data added successfully.";
    } else {
      echo "Error: " . $sql . "<br>" . mysqli_error($conn);
    }
  }

  mysqli_close($conn);
?>
