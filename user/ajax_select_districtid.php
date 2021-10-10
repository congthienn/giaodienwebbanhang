<?php
    include_once __DIR__ . '/../connect_db.php';
    $ma_tinh = $_GET['ma_tinh'];
    $sql_select_districtid = <<<EOT
        SELECT * FROM vn_tinh tinh 
        JOIN vn_quan_huyen quan_huyen ON tinh.provinceid = quan_huyen.provinceid WHERE tinh.provinceid = '$ma_tinh'
    EOT;
    $data_districtid=[];
    $query_select_districtid = mysqli_query($conn,$sql_select_districtid);
    while($result_districtid = mysqli_fetch_array($query_select_districtid,MYSQLI_ASSOC)){
        $data_districtid[]=array(
            'ma_huyen' => $result_districtid['districtid'],
            'ten_huyen' => $result_districtid['name']
        );
    }
    $result_json = '<option value="">Quận/Huyện</option>';
    foreach($data_districtid as $val_districtid):
        $result_json.= '<option value="'.$val_districtid['ma_huyen'].'">'.$val_districtid['ten_huyen'].'</option>';
    endforeach;
    die(json_encode($result_json));
?>