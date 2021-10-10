<?php
    include_once __DIR__ . '/connect_db.php';
    $sql_select_sp ="
        SELECT * FROM san_pham sp 
        JOIN nha_san_xuat nsx ON sp.nsx_id = nsx.nsx_id
        JOIN chitiet_sanpham ctsp ON sp.sp_id = ctsp.sp_id
        JOIN sp_ket_noi kn ON sp.sp_id = kn.sp_id
    ";
    $sp_gia = $_GET['gia_sp'];
    $sql_select_sp .= "WHERE sp_gia BETWEEN '3000000' AND '".$sp_gia."000000'";
    $count=0;
    if(!empty($_GET['data_nsx'])){
        $data_nsx = implode("','",$_GET['data_nsx']);
        $sql_select_sp .= " AND nsx.nsx_id IN('".$data_nsx."')";
        $count++;
    }
    if(!empty($_GET['data_ram'])){
        $data_ram = implode("','",$_GET['data_ram']);
        $sql_select_sp .= " AND ram IN('".$data_ram."')";
        $count++;
    }
    if(!empty($_GET['data_mdd'])){
        $data_mdd = implode("','",$_GET['data_mdd']);
        $sql_select_sp .=" AND mang_di_dong IN('".$data_mdd."')";
        $count++;
    }
    if(!empty($_GET['data_bnt'])){
        $data_bnt = implode("','",$_GET['data_bnt']);
        $sql_select_sp .= " AND bo_nho_trong IN('".$data_bnt."')";
        $count++;
    }
    if(!empty($_GET['data_hdh'])){
        $data_hdh = implode("','",$_GET['data_hdh']);
        $sql_select_sp .=" AND he_dieu_hanh IN('".$data_hdh."')";
        $count++;
    }
    $query_select_sp = mysqli_query($conn,$sql_select_sp);
    $query = mysqli_query($conn,$sql_select_sp);
    $result_sp='';
    $i=0;
    while($row = mysqli_fetch_array($query,MYSQLI_ASSOC)){
        $i++;
    }
    if(($count!=0 && $i!=0) || $sp_gia != 35){
         $result_sp .= '<div class="col l-12 i-12 c-12 result_item"><span><i class="fas fa-search"></i> Tìm thấy '.$i.' sản phẩm phù hợp</span></div>';
    }
    if($i > 0){
        while($val_sp = mysqli_fetch_array($query_select_sp,MYSQLI_ASSOC)){
            $i++;
            $result_sp .= '
                <a class="col l-3 c-6 i-4 product__item" href="./product/?phone='.$val_sp['sp_ten'].'">
                    <div class="product__item-img">
                        <img src="/../KitiStore/assets/uploads/'.$val_sp['sp_ten'].'/'.$val_sp['file_anh'].'">
                    </div>
                    <div class="product__item-content">
                        <div class="product__item-content--name">'.$val_sp['sp_ten'].'</div>
                        <div class="product__item-content--price">'.number_format($val_sp['sp_gia'],0,',','.').'đ</div>
                        <div class="product__item-content--overview">
                            <span>Màn hình: '.$val_sp['man_hinh'].'</span></br>
                            <span>RAM: '.$val_sp['ram'].' - ROM: '.$val_sp['bo_nho_trong'].'</span></br>
                            <span>Camera sau: '.$val_sp['camera_sau'].'</span></br>
                            <span>Camera trước: '.$val_sp['camera_truoc'].'</span></br>
                            <span>Chip xử lý: '.$val_sp['chip'].'</span></br>
                            <span>Pin sạc: '.$val_sp['pin_sac'].'</span></br>
                        </div>
                    </div>
                </a>
            ';
        }  
    }
    else{
        $result_sp .= '
            <div class="col l-12 i-12 c-12 result_no_search">
                <i class="fas fa-search"></i></br>
                <span>Không tìm thấy sản phẩm phù hợp</span>
            </div>
        ';
    }
    die(json_encode($result_sp));
?>