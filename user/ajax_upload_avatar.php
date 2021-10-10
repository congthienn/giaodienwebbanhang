<?php
    include_once __DIR__ . '/../connect_db.php';
    if(session_id()===""){
        session_start();
    }
    if(!empty($_FILES['file']['name'])){
        $upload_dir =  __DIR__ . "/../../KitiStore/assets/uploads/User_avatar/";
        $avatar_name = $_SESSION['user_id'].'_'.$_FILES['file']['name'];
        $size = $_FILES['file']['size'];
        $type_array = array('jpg', 'png', 'jpeg');
        $type_img = pathinfo($_FILES['file']['name'],PATHINFO_EXTENSION);
        if(!in_array($type_img,$type_array)){
            $result_json = 2;
            echo (json_encode($result_json)); 
        }else if($size > 1024000){
            $result_json = 3;
            echo (json_encode($result_json));
        }else{
            $user_id = $_SESSION['user_id'];
            $sql_select_img = <<<EOT
                SELECT kh_avatar FROM khach_hang WHERE kh_maso = '$user_id';
            EOT;
            $query_select_img = mysqli_query($conn,$sql_select_img);
            $result_img = mysqli_fetch_array($query_select_img,MYSQLI_ASSOC);
            if(!empty($result_img['kh_avatar'])){
                $avatar_old = $result_img['kh_avatar'];
                if(file_exists($upload_dir.$avatar_old)){
                    unlink($upload_dir.$avatar_old);
                }
            }
            $target_file = $upload_dir.$avatar_name;
            if(!file_exists($target_file)){
               
                move_uploaded_file($_FILES['file']['tmp_name'],$target_file);
                $result_json = '
                    <div class="user_avatar_img">
                        <img src="/../KitiStore/assets/uploads/User_avatar/'.$avatar_name.'">
                    </div>
                ';
                $result_json .= $_SESSION['user_name'];
                echo (json_encode($result_json));
                $sql_update_avatar = <<<EOT
                    UPDATE khach_hang SET kh_avatar = '$avatar_name' WHERE kh_maso = '$user_id'
                EOT;
                mysqli_query($conn,$sql_update_avatar);
            }
        }
    }
?>