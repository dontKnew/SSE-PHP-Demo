<?php
header('Content-Type: text/event-stream');
header('Cache-Control: no-cache');

$servername = "localhost";
$username = "root";
$password = "";
$dbname = "my_database";

$lastTimestamp = isset($_GET['lastTimestamp']) ? $_GET['lastTimestamp'] : '1970-01-01 00:00:00';

$conn = new mysqli($servername, $username, $password, $dbname);
if ($conn->connect_error) {
    echo "data: " . json_encode(["error" => "Connection failed: " . $conn->connect_error]) . "\n\n";
    exit();
}


$stmt = $conn->prepare("SELECT * FROM submissions WHERE created_at > ? ORDER BY created_at ASC");
if ($stmt === false) {
    echo "data: " . json_encode(["error" => "Prepare failed: " . $conn->error]) . "\n\n";
    exit();
}
$stmt->bind_param("s", $lastTimestamp);
$stmt->execute();
$result = $stmt->get_result();

$newData = false;
$maxTimestamp = $lastTimestamp; // Track the latest timestamp

while ($row = $result->fetch_assoc()) {
    $currentTimestamp = $row['created_at'];
    sendUpdate($row);
    $newData = true;
    $maxTimestamp = max($maxTimestamp, $currentTimestamp); // Update the latest timestamp
    usleep(1000); 
}
if (!$newData) {
    sendUpdate([]);
} else {
    sendUpdate(['lastTimestamp' => $maxTimestamp]);
}

$stmt->close();
$conn->close();

function sendUpdate($data) {
    echo "data: " . json_encode($data) . "\n\n";
    ob_flush();
    flush();
}
?>
