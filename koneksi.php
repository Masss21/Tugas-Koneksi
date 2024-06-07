<?php
$host = "localhost";
$user = "root";
$password = "";
$database = "uts_312310015";

// Membuat koneksi ke database
$koneksi = mysqli_connect($host, $user, $password, $database);

// Cek koneksi
if (!$koneksi) {
    die("Koneksi database gagal: " . mysqli_connect_error());
}
?>
