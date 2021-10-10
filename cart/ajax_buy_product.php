<?php
    include_once __DIR__ . '/../connect_db.php';
    if(session_id()===""){
        session_start();
    }
    echo (json_encode(1));
    function rand_string(){
        $str='';
        $char = "ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789";
        $size = strlen($char);
        for($i=0;$i<10;$i++){
            $str .=$char[rand(0,$size-1)];
        }
        return $str;
    }
    date_default_timezone_set("Asia/Ho_Chi_Minh");
    $day = date("Y-m-d H:i:s");
    $new_day = strtotime("+5 day",strtotime($day));
    $new_day = date("Y-m-d",$new_day);
    $user_name = $_SESSION['user_name'];
    $user_id = $_SESSION['user_id'];
    $sql_select_user = <<<EOT
        SELECT * FROM khach_hang WHERE kh_maso = '$user_id';
    EOT;
    $query_select_user = mysqli_query($conn,$sql_select_user);
    $result = mysqli_fetch_array($query_select_user,MYSQLI_ASSOC);
    $id = $result['kh_id'];
    $ma_dh = rand_string();
    $xa = $_GET['xa'];
    $val = $_GET['val'];
    if(strcmp($val,'0')==0){
        $location = ($_GET['diachi']);
    }else{ 
        if(empty($_GET['diachi_nha'])){
            $diachi_nha ='';
        }else {
            $diachi_nha = $_GET['diachi_nha'].' - ';
        }
        $sql_select_location = <<<EOT
            SELECT tinh.name ten_tinh,huyen.name ten_huyen,xa_phuong.name ten_xa FROM vn_tinh tinh
            JOIN vn_quan_huyen huyen ON tinh.provinceid = huyen.provinceid
            JOIN vn_xa_phuong xa_phuong ON huyen.districtid = xa_phuong.districtid WHERE xa_phuong.wardid='$xa'
        EOT;
        $query_select_location = mysqli_query($conn,$sql_select_location);
        $result_location = mysqli_fetch_array($query_select_location,MYSQLI_ASSOC);
        $location = $diachi_nha .''.$result_location['ten_xa'].' - '.$result_location['ten_huyen'].' - '.$result_location['ten_tinh'];
    }
    $httt = $_GET['httt'];
    $discount_code = $_GET['discount_code'];
    $sql_insert_dh = <<<EOT
        INSERT INTO don_hang(dh_ma,dh_ngaynhap,dh_ngaygiao,dh_noigiao,dh_trangthai_thanhtoan,httt_id,kh_id,dh_giao,dh_tt) 
        VALUES ('$ma_dh','$day','$new_day','$location','0','$httt','$id','0','0');
    EOT;
    mysqli_query($conn,$sql_insert_dh);
    $id_dh = $conn->insert_id;
    $data_cart = $_SESSION['cart'];
    foreach($data_cart as $product){
        foreach($product as $val){
            $sp_id = $val['sp_id'];
            $sp_mau = $val['color_id'];
            $soluong = $val['quantity'];
            $sql_insert_sp_dh = <<<EOT
                INSERT INTO sanpham_donhang(sp_id,dh_id,sp_mau,soluong) VALUES ('$sp_id','$id_dh','$sp_mau','$soluong');
            EOT;
            mysqli_query($conn,$sql_insert_sp_dh);
            $sql_update_soluong = <<<EOT
                UPDATE sanpham_soluong SET so_luong_daban = so_luong_daban + $soluong, so_luong_tonkho = so_luong_tonkho - $soluong 
                WHERE sp_id = '$sp_id' AND sp_mau = '$sp_mau' 
            EOT;
            mysqli_query($conn,$sql_update_soluong);
        }
    }
    unset($_SESSION['cart']);
    unset($_SESSION['cart_product']);
    setcookie("Quantity",$_COOKIE['Quantity'],time()-60,'/');
    setcookie("Cart",$_COOKIE['Cart'],time()-60,'/');
?>