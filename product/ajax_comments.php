<?php
    include_once __DIR__ . '/../connect_db.php';
    $id_product = $_GET['id_product'];
    $user_name = $_GET['user_name'];
    $user_phone = $_GET['user_phone'];
    $star = $_GET['star'];
    $comment = $_GET['comment'];
    if(empty($_GET['user_email'])){
        $user_email = "NULL";
    }else{
        $user_email = $_GET['user_email'];
    }
    $sql_insert_comment = <<<EOT
        INSERT INTO danhgia_sanpham(sp_id,danh_gia,sao,kh_hoten,kh_sdt,kh_email)
        VALUES ('$id_product','$comment','$star','$user_name','$user_phone','$user_email');
    EOT;
    mysqli_query($conn,$sql_insert_comment);
    die(json_encode(1));
    
?>