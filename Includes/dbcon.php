<?php
$host = "your-db-host";
$user = "your-db-user";
$pass = "your-db-pass";
$db = "your-db-name";
$port = "5432"; // PostgreSQL

$conn = new PDO("pgsql:host=$host;port=$port;dbname=$db;", $user, $pass);
?>
