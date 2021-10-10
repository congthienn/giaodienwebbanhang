<?php
    include_once __DIR__ . '/../connect_db.php';
    $ma_quan = $_GET['ma_quan'];
    $sql_select_xa = <<<EOT
        SELECT * FROM vn_quan_huyen quan_huyen
        JOIN vn_xa_phuong xa_phuong ON quan_huyen.districtid = xa_phuong.districtid WHERE quan_huyen.districtid = '$ma_quan'
    EOT;
    $query_select_xa = mysqli_query($conn,$sql_select_xa);
    $data_wardid=[];
    while($result_xa = mysqli_fetch_array($query_select_xa,MYSQLI_ASSOC)){
        $data_wardid[]=array(
            'ma_xa' => $result_xa['wardid'],
            'ten_xa' => $result_xa['name']
        );
    }
    $result_json = '<option value="">Xã/Phường</option>';
    foreach($data_wardid as $val_wardid):
        $result_json .= '<option value="'.$val_wardid['ma_xa'].'">'.$val_wardid['ten_xa'].'</option>';
    endforeach;
    die(json_encode($result_json));
?>