<?php

$host=$_ENV['MARIADB_HOST'];
$db=$_ENV['MARIADB_DATABASE'];
$login=$_ENV['MARIADB_USER'];
$password=$_ENV['MARIADB_PASSWORD'];

try {
	$pdo = new PDO("mysql:dbname=$db; host=$host", $login, $password);
} catch (PDOException $e) {
	die($e->getMessage());
}
