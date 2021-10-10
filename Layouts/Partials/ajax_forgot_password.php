<?php
    include_once __DIR__ . '/../../connect_db.php';
    function emailValid($string){ 
        if (preg_match ("/^([a-zA-Z0-9])+([a-zA-Z0-9\._-])*@([a-zA-Z0-9_-])+\.[A-Za-z]{2,30}$/", $string)) 
            return true; 
    }
    function input_data($data){
        $data=trim($data);
        $data=htmlspecialchars($data);
        return $data;
    }
    if(empty($_GET['email'])){
        $result = '<span><i class="fas fa-exclamation-circle"></i> Vui lòng nhập địa chỉ email đã đăng ký tài khoản</span>';
        die(json_encode($result));
    }else if(empty($_GET['phone'])){
        $result = '<span><i class="fas fa-exclamation-circle"></i> Vui lòng nhập số điện thoại đã đăng ký tài khoản</span>';
        die(json_encode($result));
    }else if(empty($_GET['passwd'])){
        $result = '<span><i class="fas fa-exclamation-circle"></i> Vui lòng nhập lại mật khẩu mới</span>';
        die(json_encode($result));
    }else if(empty($_GET['confirm_passwd'])){
        $result = '<span><i class="fas fa-exclamation-circle"></i> Mật khẩu xác nhận không khớp</span>';
        die(json_encode($result));
    }else{
        $email = input_data($_GET['email']);
        $passwd = md5(sha1(md5(sha1(input_data($_GET['passwd'])))));
        $phone = input_data($_GET['phone']);
        $confirm_passwd =  md5(sha1(md5(sha1(input_data($_GET['confirm_passwd'])))));
        if(!emailValid($email)){
            $result = '<span><i class="fas fa-exclamation-circle"></i> Địa chỉ email không hợp lệ</span>';
            die(json_encode($result));
        }else if(!is_numeric($phone) || strlen($phone) < 10){
            $result = '<span><i class="fas fa-exclamation-circle"></i> Số điện thoại không hợp lệ</span>';
            die(json_encode($result));
        }else if(strlen($_GET['passwd']) < 10){
            $result = '<span><i class="fas fa-exclamation-circle"></i> Mật khẩu tối thiểu 10 kí tự</span>';
            die(json_encode($result));
        }else if($passwd !== $confirm_passwd){
            $result = '<span><i class="fas fa-exclamation-circle"></i> Mật khẩu xác nhận không khớp</span>';
            die(json_encode($result));
        }else{
            $sql_select_email = <<<EOT
                SELECT * FROM khach_hang WHERE kh_email = '$email' AND kh_sdt = '$phone';
            EOT;
            $query_select = mysqli_query($conn,$sql_select_email);
            $row = mysqli_fetch_array($query_select,MYSQLI_ASSOC);
            if($row ==0){
                $result = '<span><i class="fas fa-exclamation-circle"></i> Địa chỉ email hoặc số điện thoại không đúng</span>';
                die(json_encode($result));
            }else{
                $sql_update = <<<EOT
                    UPDATE khach_hang SET kh_password = '$passwd' WHERE kh_email = '$email' AND kh_sdt = '$phone';
                EOT;
                mysqli_query($conn,$sql_update);
                $result=1;
                die(json_encode($result));
            }
        }
    }
?>