<?php
    include_once __DIR__ . '/../connect_db.php';
    if(session_id()===""){
        session_start();
    }
    $cancel = $_GET['cancel'];
    $dh_tt = $_GET['dh_tt'];
    if($cancel == '1'){
        $dh_ma = $_GET['id_dh'];
        $sql_update = <<<EOT
            UPDATE don_hang SET dh_tt = '3' WHERE dh_ma = '$dh_ma';
        EOT;
        mysqli_query($conn,$sql_update); 
    }else{
        $dh_ma = $_GET['id_dh'];
        $sql_update = <<<EOT
            UPDATE don_hang SET dh_tt = '0' WHERE dh_ma = '$dh_ma';
        EOT;
        mysqli_query($conn,$sql_update); 
    }
    $user_id = $_SESSION['user_id'];
    $sql_select_dh = "
        SELECT * FROM don_hang dh 
        JOIN khach_hang kh ON dh.kh_id = kh.kh_id
        JOIN httt ON dh.httt_id=httt.httt_id WHERE kh_maso ='$user_id'
    ";
    if($dh_tt == '4'){
        $sql_select_dh .="ORDER BY dh_ngaynhap DESC";
    }
    else{
        $sql_select_dh .="AND dh_tt = '$dh_tt' ORDER BY dh_ngaynhap DESC";
    }
    $query_select_dh = mysqli_query($conn,$sql_select_dh);
    $data_dh = [];
    while($result_select_dh = mysqli_fetch_array($query_select_dh,MYSQLI_ASSOC)){
        $data_dh[]=array(                            
            'dh_id' => $result_select_dh['dh_id'],
            'dh_ma' => $result_select_dh['dh_ma'],
            'dh_ngaynhap' => $result_select_dh['dh_ngaynhap'],
            'dh_ngaygiao' => $result_select_dh['dh_ngaygiao'],
            'dh_noigiao' => $result_select_dh['dh_noigiao'],
            'dh_trangthai_thanhtoan' => $result_select_dh['dh_trangthai_thanhtoan'],
            'dh_giao' => $result_select_dh['dh_giao'],
            'dh_tt' => $result_select_dh['dh_tt'],
            'kh_hoten' => $result_select_dh['kh_hoten'],
            'kh_sdt' => $result_select_dh['kh_sdt'],
            'httt_ten' => $result_select_dh['httt_ten']
        );
    }
    $result ='';
    if(empty($data_dh)){
        $result .='
        <div class="user_order--container">
            <div class="user_order--empty">
                <div class="user_order--empty--item user_order--empty--icon">
                    <i class="far fa-clipboard"></i>
                </div>
                <div class="user_order--empty--item">
                    Ch??a c?? ????n h??ng n??o
                </div>
            </div>
        </div>';
    }else{
        foreach($data_dh as $val_dh):
            $result .= '
                <div class="user_order--item">
                    <div class="user_order--item--content">
                        <div class="user_order--item--title">
                            <div class="order_id">M?? ????n: <span class="user_order--important">'.$val_dh['dh_ma'].'</span></div>
                            <div class="order_time">Ng??y ?????t: <span class="user_order--important">'.date("H:i:s d-m-Y",strtotime($val_dh['dh_ngaynhap'])).'</span></div>';
                            if($val_dh['dh_tt'] == '1'):
                                $result .='<div class="time_receive--container"> Ng??y nh???n: <span class="time_receive">'.date("d-m-Y",strtotime($val_dh['dh_ngaygiao'])).'</span></div>';
                            endif;
                $result .=' </div>
                            <div class="order_status">';
                                if($val_dh['dh_tt'] == '0'):
                                    $result.='
                                        <div class="order_status--item  btn__cancel" data-id_dh="'.$val_dh['dh_ma'].'">H???Y ????N H??NG</div>
                                        <div class="order_status--item order_status--processing">??ANG X??? L??</div>';
                                else:
                                    if($val_dh['dh_tt'] == '1'):
                                        $result .='<div class="order_status--item order_status--delivery">??ANG GIAO</div>';
                                    else:
                                        if($val_dh['dh_tt'] == '2'):
                                            $result.='<div class="order_status--item order_status--delivered">???? GIAO</div>';
                                        else:
                                            $result.='<div class="order_status--item btn__cancel btn__order" data-id_dh="'.$val_dh['dh_ma'].'">MUA L???I</div>
                                                        <div class="order_status--item order_status--cancel">???? H???Y</div>';
                                        endif;
                                    endif;
                                endif;
                $result .='
                    <script>
                        $(document).ready(function(){
                            $(".btn__cancel").click(function(){
                                var id_dh = $(this).data("id_dh");
                                var cancel = 1;
                                swal({
                                    title:"B???n mu???n h???y ????n h??ng",
                                    icon:"warning",
                                    buttons:true,
                                    dangerMode:true
                                })
                                .then((ok)=>{
                                    if(ok){
                                        $.ajax({
                                            url:"ajax_cancel_order.php",
                                            type:"get",
                                            dataType:"json",
                                            data:{
                                                id_dh,cancel,dh_tt
                                            },  
                                            success:function(result){
                                                    swal({
                                                        title:"H???y ????n h??ng th??nh c??ng",
                                                        icon:"success"
                                                    })
                                                    .then((willok)=>{
                                                        $("#result_cancel--order").html(result);
                                                    });
                                            
                                            }
                                        });
                                    }
                                });
                            });
                            $(".btn__order").click(function(){
                                var id_dh = $(this).data("id_dh");
                                var cancel = 0;
                                    swal({
                                        title:"B???n mu???n mua l???i ????n h??ng",
                                        icon:"warning",
                                        buttons:true,
                                        dangerMode:true
                                    })
                                    .then((OK)=>{
                                        if(OK){
                                            $.ajax({
                                                url:"ajax_cancel_order.php",
                                                type:"get",
                                                dataType:"json",
                                                data:{
                                                    id_dh,cancel,dh_tt
                                                },  
                                                success:function(result){
                                                    swal({
                                                        title:"?????t h??ng th??nh c??ng",
                                                        icon:"success",
                                                        text:"????n h??ng c???a b???n ??ang ???????c x??? l??"
                                                    })
                                                    .then((willok)=>{
                                                        $("#result_cancel--order").html(result);
                                                    });
                                                        
                                                }
                                            });
                                        }
                                    });
                                });
                        });
                    </script>';
                $result.='  </div>
                        </div> ';
                $result.='
                        <div class="user_order--item--details">';
                            $id_dh = $val_dh['dh_ma'];
                            $sql_select_ctdh = <<<EOT
                                SELECT * FROM sanpham_donhang spdh 
                                JOIN don_hang dh ON spdh.dh_id = dh.dh_id 
                                JOIN san_pham sp ON spdh.sp_id = sp.sp_id 
                                JOIN sp_mau_sac spm  ON spm.sp_id = spdh.sp_id AND spm.id = spdh.sp_mau WHERE dh.dh_ma = '$id_dh';
                            EOT;
                            $query_select_ctdh = mysqli_query($conn,$sql_select_ctdh);
                            $data_ctdh=[];
                            while($result_select_ctdh = mysqli_fetch_array($query_select_ctdh,MYSQLI_ASSOC)){
                                $data_ctdh[]=array(
                                    'soluong' => $result_select_ctdh['soluong'],
                                    'sp_ten' => $result_select_ctdh['sp_ten'],
                                    'sp_gia' => $result_select_ctdh['sp_gia'],
                                    'sp_ten_mau' => $result_select_ctdh['sp_ten_mau'],
                                    'hinh_anh' => $result_select_ctdh['hinh_anh'] 
                                );
                            }
                            $sum = 0;
                            foreach($data_ctdh as $val_ctdh):
                                $result .='
                                <div class="user_order--item--details--item">
                                    <img src="/../KitiStore/assets/uploads/'.$val_ctdh['sp_ten'].'/'.$val_ctdh['sp_ten_mau'].'/'.$val_ctdh['hinh_anh'].'">
                                    <div>
                                        <span class="details">??i???n tho???i '.$val_ctdh['sp_ten'].'</span></br>
                                        <span>M??u: '.$val_ctdh['sp_ten_mau'].'</span></br>
                                        <span>Gi?? b??n: '.number_format($val_ctdh['sp_gia'],0,',','.').'??</span></br>
                                        <span class="details details-red">x'.$val_ctdh['soluong'].' s???n ph???m</span>
                                    </div>';
                                    $sum = $sum + $val_ctdh['soluong'] * $val_ctdh['sp_gia'];
                    $result .=' </div>
                                ';
                            endforeach;
                $result.='
                        </div>
                        <div>
                            <div class="text-primary">Ng?????i nh???n: '.$val_dh['kh_hoten'].' - '.$val_dh['kh_sdt'].'</div>
                            <div>?????a ch??? nh???n h??ng: <i class="fas fa-map-marker-alt"></i> '.$val_dh['dh_noigiao'].'</div>
                            <div class="container_sum">T???ng ????n h??ng: <span class="sum">'.number_format($sum,0,',','.').'??</span></div>
                        </div>
                    </div>
                </div>';
        endforeach;
    }
    echo (json_encode($result));
?>