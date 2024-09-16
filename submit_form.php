<?php

$servername = "localhost";
$username = "root";
$password = "";
$dbname = "my_database";

$conn = new mysqli($servername, $username, $password, $dbname);
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $name = $_POST['name'];

    $stmt = $conn->prepare("INSERT INTO submissions (name) VALUES (?)");
    $stmt->bind_param("s", $name);

    if ($stmt->execute()) {
        $response['message'] = "Data submitted successfully";
        $response['name'] = $name;
    } else {
        $response['message'] = "Error: " . $stmt->error;
        $response['name'] = $name;
    }
    echo  json_encode($response);
    $stmt->close();
}
$conn->close();

?>
