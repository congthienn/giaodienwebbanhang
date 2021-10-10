<?php
    include_once __DIR__ . '/../../connect_db.php';
    if(session_id()===""){
        session_start();
    }
    setcookie("User",$_SESSION['user_name'],time()-60,'/');
    setcookie("ID",$_SESSION['user_id'],time()-60,'/');
    unset($_SESSION['user_name']);
    unset($_SESSION['user_id']);
    die(json_encode(1));
?>