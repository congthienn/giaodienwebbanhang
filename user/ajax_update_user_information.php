<?php
    if(session_id()===""){
        session_start();
    }
    $valid_error=0;
    $user_id = $_SESSION['user_id'];
    function emailValid($string){ 
        if (preg_match ("/^([a-zA-Z0-9])+([a-zA-Z0-9\._-])*@([a-zA-Z0-9_-])+\.[A-Za-z]{2,30}$/", $string)) 
            return true; 
    }
    function input_data($data){
        $data=trim($data);
        $data=htmlspecialchars($data);
        return $data;
    }
    include_once __DIR__ . '/../connect_db.php';
    $error_phone = 0;
    if(empty($_GET['user_name'])){
        $error = '<i class="fas fa-exclamation-circle"></i> Tên đăng nhập không được để trống';
        die(json_encode($error));
        $valid_error=1;
    }else if(empty($_GET['user_phone_new'])){
        $error = '<i class="fas fa-exclamation-circle"></i> Số điện thoại không được để trống';
        die(json_encode($error));
        $error_phone = 1;
        $valid_error=1;
    }else if(strlen($_GET['user_phone_new']) <= 9 || !is_numeric($_GET['user_phone_new'])){
        $error = '<i class="fas fa-exclamation-circle"></i> Số điện thoại không hợp lệ';
        die(json_encode($error));
        $error_phone = 1;
        $valid_error=1;
    }else if($error_phone == 0){
        $phone = input_data($_GET['user_phone_new']);
        $sql_select_phone = <<<EOT
            SELECT * FROM khach_hang WHERE kh_sdt = '$phone' AND kh_maso != '$user_id';
        EOT;
        $query_select_phone = mysqli_query($conn,$sql_select_phone);
        $result_select_phone = mysqli_fetch_array($query_select_phone,MYSQLI_ASSOC);
        if($result_select_phone > 0){
            $error = '<i class="fas fa-exclamation-circle"></i> Số điện thoại đã được đăng ký tài khoản';
            die(json_encode($error));
            $valid_error=1;
        }else if(empty($_GET['user_email_new'])){
            $error = '<i class="fas fa-exclamation-circle"></i> Địa chỉ email không được để trống';
            die(json_encode($error));
        }else if(!emailValid($_GET['user_email_new'])){
            $error = '<i class="fas fa-exclamation-circle"></i> Địa chỉ email không hợp lệ';
            die(json_encode($error));
            $valid_error=1;
        }else{
            $email = input_data($_GET['user_email_new']);
            $sql_select_email = <<<EOT
                SELECT * FROM khach_hang WHERE kh_email = '$email' AND kh_maso != '$user_id'
            EOT;
            $query_select_email = mysqli_query($conn,$sql_select_email);
            $result_select_email = mysqli_fetch_array($query_select_email,MYSQLI_ASSOC);
            if($result_select_email > 0){
                $error = '<i class="fas fa-exclamation-circle"></i> Địa chỉ email đã được sử dụng, vui lòng kiểm tra lại';
                die(json_encode($error));
                $valid_error=1;
            }
        }
    }
    if($valid_error==0){
        $user_name_new = input_data($_GET['user_name']);
        $user_email_new = input_data($_GET['user_email_new']);
        $user_phone_new = input_data($_GET['user_phone_new']);
        $error_day = 0;
        if(empty($_GET['day']) && empty($_GET['month']) && empty($_GET['year'])){
            $birthday = "";
        }else if(!empty($_GET['day']) && !empty($_GET['month']) && !empty($_GET['year'])){
            $day = input_data($_GET['day']);
            $month = input_data($_GET['month']);
            $year = input_data($_GET['year']);
            $birthday = $day.'-'.$month.'-'.$year;
            $birthday = strtotime($birthday);
            $birthday = date("Y-m-d",$birthday);
        }else if(!empty($_GET['day']) || !empty($_GET['month']) || !empty($_GET['year'])){
            $error = '<i class="fas fa-exclamation-circle"></i> Ngày tháng năm sinh không hợp lệ';
            die(json_encode($error));
            $error_day = 1;
        }
    }
    $error_location = 0;
    if($error_day == 0){
        $tinh = $_GET['tinh'];
        $huyen = $_GET['quan_huyen'];
        $xa = $_GET['xa_phuong'];
        if(empty($tinh) && empty($huyen) && empty($xa) && !empty($_GET['dia_chi_nha'])){
            $error = '<i class="fas fa-exclamation-circle"></i> Quý khách vui lòng nhập địa chỉ đầy đủ hơn';
            die(json_encode($error));
            $error_location = 1;
        }else if(empty($tinh) && empty($huyen) && empty($xa) && empty($_GET['dia_chi_nha'])){
            $location="";
            $error_location = 0;
        }
        else if(empty($tinh) || empty($huyen) || empty($xa)){
            $error = '<i class="fas fa-exclamation-circle"></i> Quý khách vui lòng nhập địa chỉ đầy đủ hơn';
            die(json_encode($error));
            $error_location = 1;
        }else {
            if(empty($_GET['dia_chi_nha'])){
                $location = "";
            }else {
                $location =$_GET['dia_chi_nha'];
            }
        }
    }
    $error_passwd = 0;
    if($error_location == 0){
        $check_register_account = $_GET['check_register_account'];
        if($check_register_account == 'true'){
            if(empty($_GET['old_password']) && empty($_GET['new_password']) && empty($_GET['check_new_password'])){
                $error_passwd = 0;
            }else{
                $old_passwd = md5(sha1(md5(sha1(input_data($_GET['old_password'])))));
                $sql_select_passwd = <<<EOT
                    SELECT kh_password FROM khach_hang WHERE kh_maso = '$user_id' AND kh_password = '$old_passwd';
                EOT;
                $query_select_passwd = mysqli_query($conn,$sql_select_passwd);
                $result_select_passwd = mysqli_fetch_array($query_select_passwd,MYSQLI_ASSOC);
                if($result_select_passwd == 0){
                    $error_passwd = 1;
                    $error = '<i class="fas fa-exclamation-circle"></i> Mật khẩu hiện tại của bạn không chính xác';
                    die(json_encode($error)); 
                }else{
                    if(strlen($_GET['new_password']) < 10){
                        $error_passwd = 1;
                        $error = '<i class="fas fa-exclamation-circle"></i> Mật khẩu mới tối thiểu 10 kí tự';
                        die(json_encode($error)); 
                    }else{
                        $new_password = $_GET['new_password'];
                        $check_new_password = $_GET['check_new_password'];
                        if(strcmp($new_password,$check_new_password)==0){
                            $error_passwd = 0;
                            $new_password = md5(sha1(md5(sha1(input_data($_GET['new_password'])))));
                            $sql_update_passwd = <<<EOT
                                UPDATE khach_hang SET kh_password='$new_password' WHERE kh_maso = '$user_id';
                            EOT;
                            mysqli_query($conn,$sql_update_passwd);
                        }else{
                            $error_passwd = 1;
                            $error = '<i class="fas fa-exclamation-circle"></i> Mật khẩu mới không khớp, vui lòng kiểm tra lại';
                            die(json_encode($error)); 
                        }
                    }
                }
            }
        }
    }
    if($error_passwd == 0){
        echo (json_encode(1));
        $user_name_new = input_data($_GET['user_name']);
        $user_email_new = input_data($_GET['user_email_new']);
        $user_phone_new = input_data($_GET['user_phone_new']);
        $sex = input_data($_GET['sex']);
        $new_password = md5(sha1(md5(sha1($_GET['new_password']))));
        $tinh = input_data($_GET['tinh']);
        $huyen = input_data($_GET['quan_huyen']);
        $xa = input_data($_GET['xa_phuong']);
        if(empty($tinh) && empty($huyen) && empty($xa)){
            $sql_update = <<<EOT
                UPDATE khach_hang SET kh_hoten = '$user_name_new',kh_email= '$user_email_new',kh_sdt = '$user_phone_new',kh_gioitinh='$sex',
                kh_ngay_sinh = '$birthday' WHERE kh_maso = '$user_id';
            EOT;
        }else{
            $sql_update = <<<EOT
                UPDATE khach_hang SET kh_hoten = '$user_name_new',kh_email= '$user_email_new',kh_sdt = '$user_phone_new',kh_gioitinh='$sex',
                kh_ngay_sinh = '$birthday', kh_dia_chi = '$location',ma_tinh = '$tinh',ma_huyen='$huyen',ma_xa = '$xa' WHERE kh_maso = '$user_id';
            EOT;
        }
        mysqli_query($conn,$sql_update);
    }
?>