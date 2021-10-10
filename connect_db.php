<?php
    $server_name = "localhost";
    $user_name = "root";
    $passwd ="";
    $database="kiti";
    $conn = mysqli_connect("$server_name","$user_name","$passwd","$database");
    mysqli_set_charset($conn, 'UTF8');
?>