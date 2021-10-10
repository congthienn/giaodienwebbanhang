<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Giỏ hàng</title>
</head>
<?php include_once __DIR__ . '/../Layouts/Library/library.php'?>
<link rel="stylesheet" href="/../KitiStore/cart/style_cart.css">
<body>
    <div>
        <?php include_once __DIR__ . '/../Layouts/Partials/header.php'?>
    </div>
    <div class="main_cart">   
        <div class="grid wide">
            <div class="cart__header">
                <i class="fas fa-user-circle"></i> Giỏ hàng của bạn
            </div>
            <div id="result_cart">
                <?php if(isset($_SESSION['cart']) && !empty($_SESSION['cart'])):?>
                    <div class="row cart">
                        <div class="col l-8 c-12 i-12 container__cart">
                            <?php $sum_price = 0;?>
                            <?php $data_product_in_cart=[];?>
                            <?php $xyz = 0;?>
                            <?php foreach($data_cart as $data_cart_product):?>
                                <?php foreach($data_cart_product as $val):?>
                                    <?php $xyz ++;?>
                                    <div class="col l-12 c-12">
                                        <div class="cart__item">
                                            <img class="product_img" src="/../KitiStore/assets/uploads/<?=$val['sp_ten']?>/<?=$val['color']?>/<?=$val['img']?>">
                                            <div class="cart__item--infomation">
                                                <div class="cart__item--product-name">Điện thoại <?=$val['sp_ten']?></div>
                                                <div class="cart__item--color">Màu: <?=$val['color']?> 
                                                    <label for="product_<?=$val['sp_id']?>_<?=$val['color_id']?>">
                                                        <i class="fas fa-caret-down btn_select_color" data-check_id="product_<?=$val['sp_id']?>_<?=$val['color_id']?>"></i>
                                                    </label>
                                                    <input type="checkbox" id="product_<?=$val['sp_id']?>_<?=$val['color_id']?>" hidden>
                                                    <div class="container_select_product_color"></div>
                                                    <div class="select_product_color">
                                                        <?php
                                                            include_once __DIR__ . '/../connect_db.php';
                                                            $product_name = $val['sp_ten']; 
                                                            $id_product = $val['sp_id'];
                                                            $sql_select_color = <<<EOT
                                                                SELECT * FROM sp_mau_sac WHERE sp_id = '$id_product';
                                                            EOT;
                                                            $data_color = [];
                                                            $query_select_color = mysqli_query($conn,$sql_select_color);
                                                            while($result_color = mysqli_fetch_array($query_select_color,MYSQLI_ASSOC)){
                                                                $data_color[]=array(
                                                                    'id' => $result_color['id'],
                                                                    'sp_ten_mau' => $result_color['sp_ten_mau'],
                                                                    'hinh_anh' => $result_color['hinh_anh']
                                                                );
                                                            }
                                                        ?>
                                                        <?php foreach($data_color as $val_color):?>
                                                            <?php $color = $val_color['sp_ten_mau']?>
                                                            <?php if(isset($data_cart[$product_name][$color])):?>
                                                                <?php if($data_cart[$product_name][$color]['color']==$val['color']):?>
                                                                    <div class="select_product_color--content check">
                                                                        <div><img src="/../KitiStore/assets/uploads/<?=$product_name?>/<?=$val_color['sp_ten_mau']?>/<?=$val_color['hinh_anh']?>"></div>
                                                                        <div>
                                                                            <?=$product_name?></br>
                                                                            <?=$val_color['sp_ten_mau']?>
                                                                        </div>
                                                                    </div> 
                                                                <?php endif;?>
                                                            <?php else:?>
                                                                <div class="select_product_color--content no-check" data-product_name="<?=$product_name?>" data-product_color_old="<?=$val['color']?>" data-product_color_new="<?=$val_color['sp_ten_mau']?>">  
                                                                <div><img src="/../KitiStore/assets/uploads/<?=$product_name?>/<?=$val_color['sp_ten_mau']?>/<?=$val_color['hinh_anh']?>"></div>
                                                                    <div>
                                                                        <?=$product_name?></br>
                                                                        <?=$val_color['sp_ten_mau']?>
                                                                    </div>
                                                                </div> 
                                                            <?php endif;?>
                                                        <?php endforeach;?>
                                                    </div>
                                                </div>
                                                <div class="cart__item-price">Giá bán: <?=number_format($val['price'],0,',','.')?>đ</div>
                                                <?php $data_product_in_cart[] = $val['sp_id'];?>                                  
                                            </div>
                                            <div class="cart__item--price">
                                                <div class="cart__item--quantity">
                                                    <?php if($val['quantity']==1):?>
                                                        <input readonly value="-" class="reduced_quantity quantity__null" data-id="product_<?=$xyz?>">
                                                    <?php else:?>
                                                        <input readonly value="-" class="reduced_quantity" data-id="product_<?=$xyz?>">
                                                    <?php endif;?>
                                                    <input type="text" value="<?=$val['quantity']?>" readonly id="product_<?=$xyz?>" data-product="<?=$val['sp_ten']?>" data-color="<?=$val['color']?>">
                                                    <?php if($val['quantity']==5):?>
                                                        <input readonly value="+" class="increase_quantity quantity__null" data-id="product_<?=$xyz?>">
                                                    <?php else:?>
                                                        <input readonly value="+" class="increase_quantity" data-id="product_<?=$xyz?>">
                                                    <?php endif;?>
                                                </div>
                                                <div class="cart__item--provisional">
                                                    <?php $sum_price = $val['quantity']*$val['price'] + $sum_price?>
                                                    Tạm tính: <?=number_format($val['quantity']*$val['price'],0,',','.')?>đ
                                                </div>
                                            </div>
                                            <div class="delete__product" data-product="<?=$val['sp_ten']?>" data-color="<?=$val['color']?>">
                                                <i class="far fa-times-circle"></i>
                                            </div>
                                        </div>
                                    </div>
                                <?php endforeach;?>
                            <?php endforeach;?>
                            <script>
                                $(document).ready(function(){
                                    if($(".container__cart").height() > 380){
                                        $(".related_products--item--header").css("margin-top","100px");
                                    }
                                    $(".delete__product").click(function(){
                                        var product= $(this).data("product");
                                        var color = $(this).data("color");
                                        var act = 3;
                                        $.ajax({
                                            url:"ajax_update_cart.php",
                                            dataType:"json",
                                            type:"get",
                                            data:{
                                                product,color,act
                                            },
                                            success:function(result){
                                                $("#result_cart").html(result);
                                            }
                                        });
                                    });
                                    $(".btn_select_color").click(function(){
                                        $(".cart__item--color").removeClass("show");
                                        var checked = $(this).data("check_id");
                                        $(".btn_select_color").removeClass("fa-caret-up");
                                        $(".btn_select_color").addClass("fa-caret-down");
                                        // $("input:checkbox").prop("checked",false);
                                        if($("#"+checked).prop("checked")==false){
                                            $(this).removeClass("fa-caret-down");
                                            $(this).addClass("fa-caret-up");
                                            $(this).parent().parent().addClass("show");
                                        }else{
                                            $(this).removeClass("fa-caret-up");
                                            $(this).addClass("fa-caret-down");
                                            $(this).parent().parent().removeClass("show");
                                        }
                                    });
                                    $(".container_select_product_color").click(function(){
                                        $("input:checkbox").prop("checked",false);
                                        $(".cart__item--color").removeClass("show");
                                        $(".btn_select_color").removeClass("fa-caret-up");
                                        $(".btn_select_color").addClass("fa-caret-down");
                                    });
                                    $(".select_product_color--content.check").click(function(){
                                        $("input:checkbox").prop("checked",false);
                                        $(".btn_select_color").removeClass("fa-caret-up");
                                        $(".btn_select_color").addClass("fa-caret-down");
                                        $(".cart__item--color").removeClass("show");
                                    });
                                    $(".select_product_color--content.no-check").click(function(){
                                        var product_name = $(this).data("product_name");
                                        var product_color_new = $(this).data("product_color_new");
                                        var product_color_old = $(this).data("product_color_old");
                                        var act = 2;
                                        $.ajax({
                                            url:"ajax_update_cart.php",
                                            type:"get",
                                            dataType:"json",
                                            data:{
                                                product_name,product_color_new,product_color_old,act
                                            },
                                            success:function(result){
                                                $("#result_cart").html(result);
                                            }
                                        });
                                    });
                                    // Tăng giảm số lượng
                                    $(".increase_quantity").click(function(){
                                        var id_product = $(this).data("id");
                                        var product = $("#"+id_product).data("product");
                                        var color = $("#"+id_product).data("color");
                                        var quantity_value = $("#"+id_product).val();
                                        var act = 1;
                                        if(quantity_value < 5){
                                            $.ajax({
                                                url:"ajax_update_cart.php",
                                                type:"get",
                                                dataType:"json",
                                                data:{
                                                    product,color,act
                                                },
                                                success:function(result){
                                                $("#result_cart").html(result);
                                                }
                                            });
                                        }
                                    });
                                    $(".reduced_quantity").click(function(){
                                        var id_product = $(this).data("id");
                                        var product = $("#"+id_product).data("product");
                                        var color = $("#"+id_product).data("color");
                                        var quantity_value = $("#"+id_product).val();
                                        var act = 0;
                                        if(quantity_value > 1){
                                            $.ajax({
                                                url:"ajax_update_cart.php",
                                                type:"get",
                                                dataType:"json",
                                                data:{
                                                    product,color,act
                                                },
                                                success:function(result){
                                                    $("#result_cart").html(result);
                                                }
                                            });
                                        } 
                                    });
                                });
                            </script>
                        </div>
                        <div class="col l-4 c-12 i-12">
                            <div class="sum__price">
                                <div class="sum__price--header">
                                    Tổng thanh toán đơn hàng
                                </div>
                                <div class="sum__price--quantity">
                                    Số lượng: <span class="sum__price--quantity--item"><?=$_SESSION['cart_product']?> sản phẩm</span>
                                </div>
                                <div class="sum_price--price">
                                    Tổng tiền: <span class="sum_price--price--item"><?=number_format($sum_price,0,',','.')?>đ</span>
                                </div>
                                <div class="sum__price--btn_buy">
                                    <button class="btn_buy_cart">MUA HÀNG</button>
                                </div>
                                <script>
                                    $(document).ready(function(){
                                        $(".btn_buy_cart").click(function(){
                                            $.ajax({
                                                url:"ajax_check_buy_product.php",
                                                type:"get",
                                                dataType:"json",
                                                success:function(result){
                                                    if(Number(result)==0){
                                                        swal({
                                                            title:"Không thể mua hàng",
                                                            icon:"error",
                                                            text:"Quý khách vui lòng đăng nhập trước khi mua hàng",
                                                            dangerMode:true,
                                                            buttons:[true,"Đăng nhập"]
                                                        })
                                                        .then((ok)=>{
                                                            if(ok){
                                                                $(".login_user").addClass("show");
                                                            }
                                                        });
                                                    }else{
                                                        $("#result_buy_product").html(result);
                                                    }
                                                }
                                            });
                                        });
                                    });
                                </script>
                            </div>
                        </div>
                    </div>
                <?php else:?>
                    <div class="cart__empty">
                        <div class="cart__empty--icon"><i class="fas fa-shopping-cart"></i></div>
                        <div>Không có sản phẩm nào trong giỏ hàng</div>
                        <div class="cart__empty--btn">
                            <a class="btn_cart_empty" href="/../KitiStore/">MUA HÀNG NGAY</a>
                        </div>
                    </div>
                <?php endif;?>
            </div>
            <div id="result_buy_product">
                <!-- <div class="buy_product show">
                        <div class="buy_product--container"></div>
                        <div class="buy_product--content">
                            <div class="buy_product--header">
                                Thông tin đơn hàng 
                                <div class="exit_buy_product">
                                    <i class="fas fa-times"></i>
                                </div>
                            </div>
                            <div class="buy_product--cart">
                                <?php foreach($data_cart as $data_cart_product):?>
                                    <?php foreach($data_cart_product as $val):?>
                                        <div class="buy_product--cart--item">
                                            <img src="/../KitiStore/assets/uploads/<?=$val['sp_ten']?>/<?=$val['color']?>/<?=$val['img']?>" class="product_img">
                                            <div style="flex: 1;">
                                                <div class="cart_product_name">Điện thoại <?=$val['sp_ten']?></div>
                                                <div class="cart_product_infomation">
                                                    <div style="flex: 1;">
                                                        <div>Màu: <?=$val['color']?></div>
                                                        <div>Giá bán: <?=number_format($val['price'],0,',','.')?>đ</div>
                                                    </div>
                                                    <div class="cart_product_infomation--buy">
                                                        <div class="quantity">SL: <?=$val['quantity']?> sản phẩm</div>
                                                        <div class="provisional"><?=number_format(($val['quantity']*$val['price']),0,',','.')?>đ</div>
                                                    </div>
                                                </div>   
                                            </div>
                                        </div>
                                    <?php endforeach;?>
                                <?php endforeach;?>
                                <div class="buy_product--cart--all">
                                    <div class="price_all--title">Tổng thanh toán đơn hàng (<?=$sum_quantity?> sản phẩm)</div>
                                    <div class="price_all"><?=number_format($sum_price,0,',','.')?>đ</div>
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
                            <div class="user_information--content">
                                <?php
                                    include_once __DIR__ . '/../connect_db.php';
                                    $user_id = $_SESSION['user_id'];
                                    $sql_select_user = <<<EOT
                                        SELECT * FROM khach_hang WHERE kh_maso = '$user_id'
                                    EOT;
                                    $query_select_user = mysqli_query($conn,$sql_select_user);
                                    $result_user = mysqli_fetch_array($query_select_user,MYSQLI_ASSOC);
                                ?>
                                <div class="user_infomation--item">
                                    Khách hàng: <span class="user_infomation--item-content"><?=$result_user['kh_hoten']?></span>
                                </div>
                                <div class="user_infomation--item user_infomation--item--phone">
                                    <div>Số điện thoại: <span class="user_infomation--item-content"><?=$result_user['kh_sdt']?></span></div>
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
                                        <label for="location">Địa chỉ nhận hàng: </label></br>
                                            <?php
                                                include_once __DIR__ . '/../connect_db.php';
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
                                            ?>
                                            <div class="select_location--item">
                                                <select id="tinh">
                                                    <option value>Tỉnh/Thành</option>
                                                    <?php foreach($data_tinh as $val_tinh):?>
                                                        <option value="<?=$val_tinh['id_tinh']?>"><?=$val_tinh['ten_tinh']?></option>
                                                    <?php endforeach;?>
                                                </select>
                                                <select id="quan_huyen">
                                                    <option value>Quận/Huyện</option>
                                                </select>
                                            </div>
                                            <div class="select_location--item">
                                                <select id="xa_phuong">
                                                    <option value>Xã/Phường</option>
                                                </select>
                                                <input type="text" placeholder="Số nhà, tên đường" id="diachi_nha">
                                            </div>
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
                                                                $("#xa_phuong").html('<option value>Xã/Phường</option>')
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
                                <div class="user_infomation--item">
                                    <?php  
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
                                    ?>
                                    <label for="httt">Hình thức thanh toán:</label></br>
                                    <select id="httt">
                                        <option value="0">Chọn hình thức thanh toán</option>
                                        <?php foreach($data_httt as $val_httt):?>
                                            <option value="<?=$val_httt['httt_id']?>"><?=$val_httt['httt_ten']?></option>
                                        <?php endforeach;?>
                                    </select>
                                    <div class="error_cart" id="result_error_httt"></div>
                                </div>
                                <div class="user_infomation--item">
                                    <label class=" discount_code" for="check_discount">
                                        <i class="fas fa-tags"></i> Dùng mã giảm giá <i class="fas fa-caret-down"></i> 
                                    </label>
                                    <input type="checkbox" id="check_discount" hidden>
                                    <div class="discount_code--content">
                                        <div class="discount_code--content--item">
                                            <input type="text" id="discount_code" placeholder="Nhập mã giảm giá">
                                        </div>
                                        <button class="btn_discount_code">Áp dụng</button>
                                    </div>
                                </div>
                                <script>
                                    $(document).ready(function(){
                                        $(".discount_code").click(function(){
                                            if($("#check_discount").prop("checked")==false){
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
                                <div class="user_infomation--item">
                                    <div class="buy_product--cart--all">
                                        <div class="price_all--title">
                                            Tổng thanh toán đơn hàng
                                        </div>
                                        <div class="price_all"><?=number_format($sum_price,0,',','.')?>đ</div>
                                    </div>
                                    <div class="order_button">
                                        <button class="order_button--content order_btn">ĐẶT HÀNG</button>
                                    </div>
                                    <div class="sublite">
                                        Quý khách vui lòng kiểm tra lại thông tin trước khi đặt hàng. KITI xin cảm ơn
                                    </div>
                                    <script>
                                        $(document).ready(function(){
                                            var check = 0;
                                            var hinhthucnhanhang;
                                            var diachi; 
                                            $(".hinhthuc_nhanhang").click(function(){
                                                check=1;
                                                hinhthucnhanhang = $(this).val();
                                                $("#xyz").remove();
                                            });
                                            $("#phone_more").click(function(){
                                                $("#123").remove();
                                            });
                                            $("#httt").click(function(){
                                                $("#567").remove();
                                            });
                                            $("#xa_phuong").click(function(){
                                                var val = $(this).val();
                                                if(val != ""){
                                                    $("#abc").remove();
                                                }
                                            });
                                            $(".order_btn").click(function(){
                                                var error=0;
                                                var tinh  = $("#tinh").val();
                                                var huyen = $("#quan_huyen").val();
                                                var xa = $("#xa_phuong").val();
                                                var diachi_nha = $("#diachi_nha").val();
                                                var taicuahang = $(".check_taicuahang").text();
                                                // alert(taicuahang);
                                                alert(val);
                                                if(check == 0){
                                                    $("#result_error_htnh").html('<span id="xyz">Quý khách vui lòng chọn hình thức nhận hàng</span>');
                                                    error=1;
                                                }
                                                if(hinhthucnhanhang == 1){
                                                    if(tinh == "" || huyen == "" || xa == ""){
                                                        $("#result_error_location").html('<span id="abc">Quý khách vui lòng nhập địa chỉ nhận hàng</span>')
                                                        error=1;
                                                    }
                                                }else if(hinhthucnhanhang == 0){
                                                    diachi = $(".check_taicuahang").text();
                                                }
                                                var httt = $("#httt").val();
                                                if(httt == 0){
                                                    $('#result_error_httt').html('<span id="567">Quý khách vui lòng chọn hình thức thanh toán</span>')
                                                    error=1;
                                                }
                                                var discount_code = $("#discount_code").val();
                                                if(error == 0){
                                                    $.ajax({
                                                        url:'ajax_buy_product.php',
                                                        type:'get',
                                                        dataType:'json',
                                                        data:{
                                                            val,httt,discount_code,tinh,huyen,xa,diachi_nha
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
                                </div>
                            </div>
                        </div>
                </div> -->
            </div>
            <div class="related_products">
                <?php 
                    include_once __DIR__ . '/../connect_db.php';
                    $data_select_product=[];
                    if(isset($_SESSION['cart']) && !empty($_SESSION['cart'])){
                        $sql_select_product ="
                            SELECT * FROM san_pham sp JOIN chitiet_sanpham ctsp ON sp.sp_id = ctsp.sp_id WHERE sp.sp_id NOT IN('".implode("','",$data_product_in_cart)."') ORDER BY RAND() LIMIT 5
                        ";
                    }else{
                        $sql_select_product ="
                            SELECT * FROM san_pham sp JOIN chitiet_sanpham ctsp ON sp.sp_id = ctsp.sp_id ORDER BY RAND() LIMIT 5
                        "; 
                    }
                    $query_select = mysqli_query($conn,$sql_select_product);
                    while($result_sp= mysqli_fetch_array($query_select,MYSQLI_ASSOC)){
                        $data_select_product[]=array(
                            'sp_id' => $result_sp['sp_id'],
                            'sp_ten' => $result_sp['sp_ten'],
                            'sp_gia' => $result_sp['sp_gia'],
                            'file_anh' => $result_sp['file_anh'],
                            'man_hinh' => $result_sp['man_hinh'],
                            'he_dieu_hanh' => $result_sp['he_dieu_hanh'],
                            'camera_sau' => $result_sp['camera_sau'],
                            'camera_truoc' => $result_sp['camera_truoc'],
                            'chip'=> $result_sp['chip'],
                            'ram' => $result_sp['ram'],
                            'bo_nho_trong' => $result_sp['bo_nho_trong'],
                            'pin_sac' => $result_sp['pin_sac'],
                            'sim' => $result_sp['sim']
                        );
                    }
                ?>
                <div class="related_products--item--header">
                    <i class="fas fa-mobile-alt"></i> Sản phẩm bạn có thể thích
                </div>
                <div class="related_products__content">
                    <?php foreach($data_select_product as $val_product):?>
                        <a class="related_product" href="/../KitiStore/product/?phone=<?=$val_product['sp_ten']?>">
                            <div class="related_products--item">
                                <img src="/../KitiStore/assets/uploads/<?=$val_product['sp_ten']?>/<?=$val_product['file_anh']?>" width="100%">
                                <div class="related_products--item--all related_products--item--name"><?=$val_product['sp_ten']?></div>
                                <div class="related_products--item--all related_products--item--price"><?=number_format($val_product['sp_gia'],0,',','.')?>đ</div>
                                <div class="related_products--item--all related_products--item--content">
                                    <span>Màn hình: <?=$val_product['man_hinh']?></span></br>
                                    <span>RAM: <?=$val_product['ram']?> - ROM: <?=$val_product['bo_nho_trong']?></span></br>
                                    <span>Camera sau: <?=$val_product['camera_sau']?></span></br>
                                    <span>Camera trước: <?=$val_product['camera_truoc']?></span>
                                </div>
                            </div>     
                        </a>
                    <?php endforeach;?>
                </div>
            </div>
        </div>
    </div>
    <div>
        <?php include_once __DIR__ . '/../Layouts/Partials/footer.php'?>
    </div>
</body>
</html>