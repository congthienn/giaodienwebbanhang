<?php
    include_once __DIR__ . '/../connect_db.php';
    $id_product = $_GET['id_product']; 
    $result='';
    if(!empty($_GET['id_color'])){
        $id_color = $_GET['id_color']; 
        $sql_select_sp= <<<EOT
            SELECT sp_ten,sp_ten_mau FROM san_pham sp 
            JOIN sp_mau_sac spm ON sp.sp_id = spm.sp_id WHERE sp.sp_id = '$id_product' AND id='$id_color'
        EOT;
        $query_select_sp = mysqli_query($conn,$sql_select_sp);
        $result_select_sp = mysqli_fetch_array($query_select_sp,MYSQLI_ASSOC);
        $sp_ten = $result_select_sp['sp_ten'];
        $color = $result_select_sp['sp_ten_mau'];
        $sql_select_img = <<<EOT
            SELECT * FROM sanpham_hinh WHERE sp_id = '$id_product' AND id = '$id_color'
        EOT;
        $query_select_img = mysqli_query($conn,$sql_select_img);
        $i=0;
        while($result_img = mysqli_fetch_array($query_select_img,MYSQLI_ASSOC)){
            $i++;
            if($i==1){
                $result .= '
                    <div class="carousel-item active">
                        <img src="/../KitiStore/assets/uploads/'.$sp_ten.'/'.$color.'/'.$result_img['ten_file'].'" width="100%">
                    </div>
                ';
            }else{
                $result .= '
                    <div class="carousel-item">
                        <img src="/../KitiStore/assets/uploads/'.$sp_ten.'/'.$color.'/'.$result_img['ten_file'].'" width="100%">
                    </div>
                ';
            }
        } 
    }else{
        $sql_select_htq = <<<EOT
            SELECT sp_ten,ten_file FROM san_pham sp 
            JOIN sp_hinh_tongquan htq ON sp.sp_id = htq.sp_id WHERE sp.sp_id = '$id_product'
        EOT;
        $query_htq = mysqli_query($conn,$sql_select_htq);
        $i=0;
        while($result_htq = mysqli_fetch_array($query_htq,MYSQLI_ASSOC)){
            $i++;
            if($i==1){
                $result .= '
                    <div class="carousel-item active">
                        <img src="/../KitiStore/assets/uploads/'.$result_htq['sp_ten'].'/'.'Đặc điểm nổi bật'.'/'.$result_htq['ten_file'].'" width="100%">
                    </div>
                ';
            }else{
                $result .= '
                    <div class="carousel-item">
                    <img src="/../KitiStore/assets/uploads/'.$result_htq['sp_ten'].'/'.'Đặc điểm nổi bật'.'/'.$result_htq['ten_file'].'" width="100%">
                    </div>
                ';
            }
        }
    }
    die(json_encode($result));
?>