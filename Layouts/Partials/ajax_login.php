<?php
    if(session_id()===""){
        session_start();
    }
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
    $email = input_data($_GET['email']);
    $passwd =  md5(sha1(md5(sha1(input_data($_GET['password'])))));
    if(!emailValid($email)){
        $result = 1;
        die(json_encode($result));
    }else{
        $sql_select_exits = <<<EOT
            SELECT * FROM khach_hang WHERE kh_email = '$email';
        EOT;
        $query_exits = mysqli_query($conn,$sql_select_exits);
        $result_exits = mysqli_fetch_array($query_exits,MYSQLI_ASSOC);
        if($result_exits == 0){
            $result = 4;
            die(json_encode($result));
        }
        else{
            $sql_select_email = <<<EOT
                SELECT * FROM khach_hang WHERE kh_email='$email' AND kh_password='$passwd';
            EOT;
            $query = mysqli_query($conn,$sql_select_email);
            $row = mysqli_fetch_array($query,MYSQLI_ASSOC);
            if($row==0){
                $result = 2;
                die(json_encode($result));
            }else{
                $user = $row['kh_hoten'];
                $id = $row['kh_maso'];
                $_SESSION['user_name'] =  $user;
                $_SESSION['user_id'] = $id;
                $result = $user;
                if(!empty($_GET['remember'])){
                    setcookie("User",$user,time()+(24*30*3600),'/');
                    setcookie("ID",$id,time()+(24*3600*30),'/');
                }
                die(json_encode($result));
            }
        }
    }

?>