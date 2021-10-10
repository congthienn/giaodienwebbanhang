<?php
    include_once __DIR__ . '/../../connect_db.php';
    function input_data($data){
        $data=trim($data);
        $data=htmlspecialchars($data);
        return $data;
    }
    $key = input_data($_GET['key']);
    if(!empty($key)){
        $key = strtolower($key);
        $sql_select_sp = <<<EOT
            SELECT sp_ten,sp_gia,file_anh FROM san_pham
        EOT;
        $data_product=[];
        $query_select_sp = mysqli_query($conn,$sql_select_sp);
        $i=0;
        while($result_select = mysqli_fetch_array($query_select_sp,MYSQLI_ASSOC)){
            if(is_numeric(strpos(strtolower($result_select['sp_ten']),$key))){
                $i++;
                if($i == 6){
                    break;
                }
                $data_product[]=array(
                    'sp_ten' => $result_select['sp_ten'],
                    'sp_gia' => $result_select['sp_gia'],
                    'file_anh' => $result_select['file_anh']
                );
            }
        }
        if(!empty($data_product)){
            $result = '
                <div class="header__search--suggestions" id="suggestions--product">
                    <div class="suggestions__title">
                        Sản phẩm gợi ý
                    </div>';
                foreach($data_product as $val_product):
                    $result .='
                    <a class="suggestions__product" href="/../KitiStore/product/?phone='.$val_product['sp_ten'].'">
                        <img src="/../KitiStore/assets/uploads/'.$val_product['sp_ten'].'/'.$val_product['file_anh'].'">
                        <div class="suggestions__product--information">
                            <div class="suggestions__product--name">'.$val_product['sp_ten'].'</div>
                            <div class="suggestions__product--price">'.number_format($val_product['sp_gia'],0,',','.').'đ</div>
                        </div>
                    </a>
                    ';
                endforeach;
            $result .='</div>';
            echo (json_encode($result));
        }else{
            echo json_encode("");
        }
    }else{
        echo json_encode("");
    }
?>