<?php
    include_once __DIR__ .'/../../connect_db.php';
    function input_data($data){
        $data=trim($data);
        $data=htmlspecialchars($data);
        return $data;
    }
    function emailValid($string){ 
        if (preg_match ("/^([a-zA-Z0-9])+([a-zA-Z0-9\._-])*@([a-zA-Z0-9_-])+\.[A-Za-z]{2,30}$/", $string)) 
            return true; 
    }
    function rand_string(){
        $str='';
        $char = "ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789";
        $size = strlen($char);
        for($i=0;$i<10;$i++){
            $str .=$char[rand(0,$size-1)];
        }
        return $str;
    }
    if(empty($_GET['user_name'])){
        $result = '<span><i class="fas fa-exclamation-circle"></i> Vui lòng nhập tên đăng nhập</span>';
        die(json_encode($result));
    }else if(empty($_GET['register_email'])){
        $result = '<span><i class="fas fa-exclamation-circle"></i> Vui lòng nhập địa chỉ email</span>';
        die(json_encode($result));
    }else if(empty($_GET['register_phone'])){
        $result = '<span><i class="fas fa-exclamation-circle"></i> Vui lòng nhập số điện thoại</span>';
        die(json_encode($result));
    }else if(empty($_GET['register_password'])){
        $result = '<span><i class="fas fa-exclamation-circle"></i> Vui lòng nhập mật khẩu</span>';
        die(json_encode($result));
    }else if(empty($_GET['confirm_register_password'])){
        $result = '<span><i class="fas fa-exclamation-circle"></i> Mật khẩu xác nhận không khớp</span>';
        die(json_encode($result));
    }else{
        $user_name = input_data($_GET['user_name']);
        $email =input_data($_GET['register_email']);
        $phone =input_data($_GET['register_phone']);
        if(!emailValid($email)){
            $result = '<span><i class="fas fa-exclamation-circle"></i> Địa chỉ email không hợp lệ</span>';
            die(json_encode($result));
        }else if(!is_numeric($phone) || strlen($phone) < 10){
            $result = '<span><i class="fas fa-exclamation-circle"></i> Số điện thoại không hợp lệ</span>';
            die(json_encode($result));
        }else if(strlen(input_data($_GET['register_password'])) < 10){
            $result = '<span><i class="fas fa-exclamation-circle"></i> Mật khẩu tối thiểu 10 kí tự</span>';
            die(json_encode($result));
        }else{
            $passwd =  md5(sha1(md5(sha1(input_data($_GET['register_password'])))));
            $confirm_passwd = md5(sha1(md5(sha1(input_data($_GET['confirm_register_password'])))));
            if($passwd !== $confirm_passwd){
                $result = '<span><i class="fas fa-exclamation-circle"></i> Mật khẩu xác nhận không khớp</span>';
                die(json_encode($result));
            }else{
                $sql_select_email = <<<EOT
                    SELECT * FROM khach_hang WHERE kh_email = '$email' || kh_sdt = '$phone';
                EOT;
                $query_select  = mysqli_query($conn,$sql_select_email);
                $row = mysqli_fetch_array($query_select,MYSQLI_ASSOC);
                if($row > 0){
                    $result = '<span><i class="fas fa-exclamation-circle"></i> Địa chỉ email hoặc số điện thoại đã được sử dụng</span>';
                    die(json_encode($result));
                }else{
                    $id = rand_string();
                    $sql_insert_kh = <<<EOT
                        INSERT INTO khach_hang(kh_hoten,kh_email,kh_sdt,kh_password,kh_quyen,kh_maso) 
                        VALUES ('$user_name','$email','$phone','$passwd','kh','$id');
                    EOT;
                    mysqli_query($conn,$sql_insert_kh);
                    die(json_encode(1));
                }
            }
        }
    }
?>