<?php
    include_once __DIR__ . '/../connect_db.php';
    if(session_id()===""){
        session_start();
    }
    if(!isset($_SESSION['user_name'])){
        die(json_encode(0));
    }else{
        $data_cart = $_SESSION['cart'];
        $result ='
            <div class="buy_product show">
                <div class="buy_product--container"></div>
                <div class="buy_product--content">
                    <div class="buy_product--header">
                        Thông tin chi tiết đơn hàng 
                        <div class="exit_buy_product">
                            <i class="fas fa-times"></i>
                        </div>
                    </div>
                    <div class="buy_product--cart">';
                        $sum_price=0;
                        $sum_quantity=0;
                        foreach($data_cart as $data_cart_product):
                            foreach($data_cart_product as $val):
                                $sum_quantity = $sum_quantity + $val['quantity'];
                                $sum_price = $sum_price + $val['quantity']*$val['price'];
                                $result .='
                                    <div class="buy_product--cart--item">
                                        <img src="/../KitiStore/assets/uploads/'.$val['sp_ten'].'/'.$val['color'].'/'.$val['img'].'" class="product_img">
                                        <div style="flex: 1;">
                                            <div class="cart_product_name">Điện thoại '.$val['sp_ten'].'</div>
                                                <div class="cart_product_infomation">
                                                    <div style="flex: 1;">
                                                        <div>Màu: '.$val['color'].'</div>
                                                        <div>Giá bán: '.number_format($val['price'],0,',','.').'đ</div>
                                                    </div>
                                                    <div class="cart_product_infomation--buy">
                                                        <div class="quantity">SL: '.$val['quantity'].' sản phẩm</div>
                                                        <div class="provisional">'.number_format(($val['quantity']*$val['price']),0,',','.').'đ</div>
                                                    </div>
                                                </div>   
                                        </div>
                                    </div>';
                            endforeach;
                        endforeach;
                        $result.= '
                        <div class="buy_product--cart--all">
                            <div class="price_all--title">Tổng thanh toán đơn hàng ('.$sum_quantity.' sản phẩm) </div>
                            <div class="price_all">'.number_format($sum_price,0,',','.').'đ</div>
                        </div>
                        <div class="sale">
                            <span>Tặng Phiếu mua hàng Gia dụng trị giá 500,000đ cho Khách hàng tại các tỉnh thành áp dụng chỉ thị 16</span></br>
                            <span>Tặng Phiếu mua hàng 200,000đ áp dụng mua thẻ cào, thẻ game</span></br>
                            <span>Nhập mã KITI100 giảm giảm 3% tối đa 100.000đ khi thanh toán quét QRcode qua App của ngân hàng</span>
                        </div>
                    </div>
                    <div class="user_infomation--header buy_product--header">
                        Thông tin khách hàng 
                    </div>
                    <div class="user_information--content">';
                        include_once __DIR__ . '/../connect_db.php';
                        $user_id = $_SESSION['user_id'];
                        $sql_select_user = <<<EOT
                            SELECT * FROM khach_hang WHERE kh_maso = '$user_id'
                        EOT;
                        $query_select_user = mysqli_query($conn,$sql_select_user);
                        $result_user = mysqli_fetch_array($query_select_user,MYSQLI_ASSOC);
                        $result .= '
                            <div class="user_infomation--item">
                                Khách hàng: <span class="user_infomation--item-content">'.$result_user['kh_hoten'].'</span>
                            </div>
                            <div class="user_infomation--item user_infomation--item--phone">
                                <div>Số điện thoại: <span class="user_infomation--item-content">'.$result_user['kh_sdt'].'</span></div>
                            </div>
                            <div class="user_infomation--item">
                                Cách thức nhận hàng:
                                <div class="error_cart" id="result_error_htnh"></div>
                                <div class="hinhthuc">
                                    <div class="giaotannoi">
                                        <label for="giaotannoi">Giao tận nơi</label><input type="radio" name="hinhthuc_nhanhang" id="giaotannoi" value="1" class="hinhthuc_nhanhang">
                                    </div>
                                    <div>
                                        <label for="nhantaishop">Nhận tại cửa hàng</label><input type="radio" name="hinhthuc_nhanhang" id="nhantaishop" value="0" class="hinhthuc_nhanhang">
                                    </div>
                                </div>
                                <div class="check_giaotannoi">
                                    <label for="location">Địa chỉ nhận hàng: </label></br>';
                                    $sql_select_tinh = <<<EOT
                                        SELECT * FROM vn_tinh
                                    EOT;
                                    $query_select_tinh = mysqli_query($conn,$sql_select_tinh);
                                    $data_tinh = [];
                                    while($result_select_tinh = mysqli_fetch_array($query_select_tinh,MYSQLI_ASSOC)){
                                        $data_tinh[]=array(
                                            'id_tinh' => $result_select_tinh['provinceid'],
                                            'ten_tinh' => $result_select_tinh['name']
                                        );
                                    }
                            $result.='  
                                <div class="select_location--item">
                                    <select id="tinh">
                                        <option value>Tỉnh/Thành</option>';
                                        foreach($data_tinh as $val_tinh):
                                            $result.='<option value="'.$val_tinh['id_tinh'].'">'.$val_tinh['ten_tinh'].'</option>';
                                        endforeach;
                            $result.='
                                    </select>
                                    <select  id="quan_huyen">
                                        <option value>Quận/Huyện</option>
                                    </select>
                                </div>
                                <div class="select_location--item">
                                    <select id="xa_phuong">
                                        <option value>Xã/Phường</option>
                                    </select>
                                    <input type="text" placeholder="Số nhà, tên đường" id="diachi_nha">
                                    <script>
                                        $(document).ready(function(){
                                            var ma_quan=$("#quan_huyen").val();
                                            $("#tinh").change(function(){
                                                var ma_tinh = $("#tinh").val();
                                                $.ajax({
                                                    url:"/KitiStore/user/ajax_select_districtid.php",
                                                    type:"get",
                                                    dataType:"json",
                                                    data:{
                                                        ma_tinh
                                                    },
                                                    success:function(result){
                                                        $("#xa_phuong option").remove();
                                                        $("#xa_phuong").html("<option value>Xã/Phường</option>")
                                                        $("#quan_huyen").html(result);
                                                    }
                                                });
                                                $("#quan_huyen").change(function(){
                                                    ma_quan = $("#quan_huyen").val();
                                                    $.ajax({
                                                        url:"/KitiStore/user/ajax_select_wardid.php",
                                                        type:"get",
                                                        dataType:"json",
                                                        data:{
                                                            ma_quan
                                                        },
                                                        success:function(result){
                                                            $("#xa_phuong").html(result);
                                                        }
                                                    });
                                                });
                                            });
                                        });
                                    </script>
                                </div>
                                <div class="error_cart" id="result_error_location"></div>
                                </div>
                                <div class="check_taicuahang">Số 19A - Mạc Thiên Tích - Xuân Khánh - Ninh Kiều - Cần Thơ</div>
                                <script>
                                    var val;
                                    $(document).ready(function(){
                                        $(".hinhthuc_nhanhang").click(function(){
                                            val = $(this).val();
                                            if(val==1){
                                                $(".check_giaotannoi").addClass("show");
                                                $(".check_taicuahang").removeClass("show");
                                            }else{
                                                $(".check_taicuahang").addClass("show");
                                                $(".check_giaotannoi").removeClass("show");
                                            }
                                        });
                                    })
                                </script>
                            </div>
                            <div class="user_infomation--item">';
                                $sql_select_httt = <<<EOT
                                    SELECT * FROM httt
                                EOT;
                                $query_select_httt = mysqli_query($conn,$sql_select_httt);
                                $data_httt=[];
                                while($result_httt= mysqli_fetch_array($query_select_httt,MYSQLI_ASSOC)){
                                    $data_httt[]=array(
                                        'httt_id' => $result_httt['httt_id'],
                                        'httt_ten' => $result_httt['httt_ten']
                                    );
                                }
                                $result.='
                                <label for="httt">Hình thức thanh toán:</label></br>
                                <select id="httt">
                                    <option value="0">Chọn hình thức thanh toán</option>';
                                    foreach($data_httt as $val_httt):
                                        $result .= '<option value="'.$val_httt['httt_id'].'">'.$val_httt['httt_ten'].'</option>';
                                    endforeach;
                                $result .= '
                                </select>
                                <div class="error_cart" id="result_error_httt"></div>
                            </div>
                            <div class="user_infomation--item">
                                <label class="discount_code" for="check_discount">
                                    <i class="fas fa-tags"></i> Dùng mã giảm giá <i class="fas fa-caret-down"></i> 
                                </label>
                                <input type="checkbox" id="check_discount" hidden>
                                <div class="discount_code--content">
                                    <div class="discount_code--content--item">
                                        <input type="text" id="discount_code" placeholder="Nhập mã giảm giá">
                                    </div>
                                    <button class="btn_discount_code">Áp dụng</button>
                                </div>
                                <script>
                                    $(document).ready(function(){
                                        $(".discount_code").click(function(){
                                            var check = $("#check_discount").prop("checked");
                                            if(check==false){
                                                $(".discount_code .fas").removeClass("fa-caret-down");
                                                $(".discount_code .fas").addClass("fa-caret-up");
                                                $(".discount_code--content").addClass("show");
                                            }else{
                                                $(".discount_code .fas").removeClass("fa-caret-up");
                                                $(".discount_code .fas").addClass("fa-caret-down");
                                                $(".discount_code--content").removeClass("show");
                                            }
                                        });
                                    });
                                </script>
                            </div>
                            <div class="user_infomation--item">
                                <div class="buy_product--cart--all">
                                    <div class="price_all--title">
                                        Tổng thanh toán đơn hàng
                                    </div>
                                    <div class="price_all">'.number_format($sum_price,0,',','.').'đ</div>
                                </div>
                                <div class="order_button">
                                    <button class="order_button--content order_btn">ĐẶT HÀNG</button>
                                </div>
                                <script>
                                    $(document).ready(function(){
                                        var check = 0;
                                        var hinhthucnhanhang;
                                        var diachi; 
                                        $(".buy_product--container ,.exit_buy_product").click(function(){
                                            $(".buy_product").removeClass("show");
                                        });
                                        $(".hinhthuc_nhanhang").click(function(){
                                            check=1;
                                            hinhthucnhanhang = $(this).val();
                                            $("#result_error_htnh").children().remove();
                                        });
                                        $("#httt").click(function(){
                                            var id =($(this).attr("id"));
                                            setTimeout(() => {
                                                $("#"+id + "~ .error_cart").children().remove();
                                            }, 500);
                                        });
                                        $("#xa_phuong").click(function(){
                                            var val = $(this).val();
                                            if(val != ""){
                                                $("#result_error_location").children().remove();
                                            }
                                        });
                                        $(".order_btn").click(function(){
                                            var error=0;
                                            var tinh  = $("#tinh").val();
                                            var huyen = $("#quan_huyen").val();
                                            var xa = $("#xa_phuong").val();
                                            var diachi_nha = $("#diachi_nha").val();
                                            if(check == 0){
                                                $("#result_error_htnh").html("<span>Quý khách vui lòng chọn hình thức nhận hàng</span>");
                                                error=1;
                                            }
                                            if(hinhthucnhanhang == 1){
                                                if(tinh == "" || huyen == "" || xa == ""){
                                                    $("#result_error_location").html("<span>Quý khách vui lòng nhập địa chỉ nhận hàng</span>");
                                                    error=1;
                                                }
                                            }else if(hinhthucnhanhang == 0){
                                                diachi = $(".check_taicuahang").text();
                                            }
                                            var httt = $("#httt").val();
                                            if(httt == 0){
                                                $("#result_error_httt").html("<span>Quý khách vui lòng chọn hình thức thanh toán</span>");
                                                error=1;
                                            }
                                            var discount_code = $("#discount_code").val();
                                            if(error == 0){
                                                $.ajax({
                                                    url:"ajax_buy_product.php",
                                                    type:"get",
                                                    dataType:"json",
                                                    data:{
                                                        diachi,httt,discount_code,tinh,huyen,xa,diachi_nha,val
                                                    },
                                                    success:function(result){
                                                    if(Number(result)==1){
                                                        swal({
                                                            title:"Đặt hàng thành công",
                                                            icon:"success",
                                                            text:"Đơn hàng của quý khách đang được xử lý"
                                                        })
                                                        .then((ok)=>{
                                                            location.replace("/../KitiStore/");
                                                        });
                                                    }
                                                    }
                                                });
                                            }
                                        }); 
                                    });
                                </script>
                                <div class="sublite">
                                    Quý khách vui lòng kiểm tra lại thông tin trước khi đặt hàng. KITI xin cảm ơn
                                </div>
                            </div>
                    </div>
                </div>
            </div>';    
        die(json_encode($result));
    }
?>