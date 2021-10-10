<?php
    include_once __DIR__ . '/../connect_db.php';
    if(session_id()===""){
        session_start();
    }
    $act = $_GET['act'];
    $data_cart = $_SESSION['cart'];
    if($act == 1){
        $product = $_GET['product'];
        $color = $_GET['color'];
        $data_cart[$product][$color]['quantity']++;
        $_SESSION['cart_product']++;
    }else if($act == 0){
        $product = $_GET['product'];
        $color = $_GET['color'];
        $data_cart[$product][$color]['quantity']--;
        $_SESSION['cart_product']--;
    }else if($act == 2){
        $product_name = $_GET['product_name'];
        $product_color_new = $_GET['product_color_new'];
        $product_color_old = $_GET['product_color_old'];
        $sql_select_color_new = <<<EOT
            SELECT hinh_anh FROM san_pham sp
            JOIN sp_mau_sac spm ON sp.sp_id = spm.sp_id WHERE sp_ten = '$product_name' AND sp_ten_mau = '$product_color_new';
        EOT;
        $query_select = mysqli_query($conn,$sql_select_color_new);
        $result_query = mysqli_fetch_array($query_select,MYSQLI_ASSOC);
        if(isset($data_cart[$product_name][$product_color_old])){
            $data_cart[$product_name][$product_color_new] = $data_cart[$product_name][$product_color_old];
            $data_cart[$product_name][$product_color_new]['color'] = $product_color_new;
            $data_cart[$product_name][$product_color_new]['img'] = $result_query['hinh_anh'];
            unset($data_cart[$product_name][$product_color_old]);
        }
        setcookie("Cart",(json_encode($data_cart)),time()+(24*30*3600),'/');
    }else if($act == 3){
        $product = $_GET['product'];
        $color = $_GET['color'];
        $_SESSION['cart_product'] = $_SESSION['cart_product'] - $data_cart[$product][$color]['quantity'];
        unset($data_cart["$product"]["$color"]);
        if(empty($data_cart["$product"])){
            unset($data_cart["$product"]);
        }
    }
    $_SESSION['cart'] = $data_cart;
    setcookie("Cart",(json_encode($data_cart)),time()+(24*30*3600),'/');
    setcookie("Quantity", $_SESSION['cart_product'],time()+(24*30*3600),'/');
    $ressult="";
    $sum_price=0;
    $data_product_in_cart=[];
    $xyz = 0;
    if(isset($_SESSION['cart']) && !empty($_SESSION['cart'])):
        $ressult .= '
            <div class="row cart">
                <div class="col l-8 c-12 i-12 container__cart">
        ';
        foreach($data_cart as $data_cart_product):
            foreach($data_cart_product as $val):
                $xyz++;
                $ressult .= '
                <div class="col l-12 c-12">
                    <div class="cart__item">
                        <img class="product_img" src="/../KitiStore/assets/uploads/'.$val['sp_ten'].'/'.$val['color'].'/'.$val['img'].'">
                        <div class="cart__item--infomation">
                            <div class="cart__item--product-name">Điện thoại '.$val['sp_ten'].'</div>
                            <div class="cart__item--color">Màu: '.$val['color'].'
                                <label for="product_'.$val['sp_id'].'_'.$val['color_id'].'">
                                    <i class="fas fa-caret-down btn_select_color" data-check_id="product_'.$val['sp_id'].'_'.$val['color_id'].'"></i>
                                </label>
                                <input type="checkbox" id="product_'.$val['sp_id'].'_'.$val['color_id'].'" hidden>
                                <div class="container_select_product_color"></div>
                                <div class="select_product_color">';
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
                                    foreach($data_color as $val_color):
                                        $color = $val_color['sp_ten_mau'];
                                        if(isset($data_cart[$product_name][$color])):
                                            if($data_cart[$product_name][$color]['color']==$val['color']):
                                                $ressult .='
                                                    <div class="select_product_color--content check">
                                                        <div><img src="/../KitiStore/assets/uploads/'.$product_name.'/'.$val_color['sp_ten_mau'].'/'.$val_color['hinh_anh'].'"></div>
                                                        <div>'.
                                                            $product_name.'</br>'.
                                                            $val_color['sp_ten_mau'].'
                                                        </div>
                                                    </div>';
                                            endif;
                                        else:
                                            $ressult .= '
                                                <div class="select_product_color--content no-check" data-product_name="'.$product_name.'" data-product_color_old="'.$val['color'].'" data-product_color_new="'.$val_color['sp_ten_mau'].'">
                                                <div><img src="/../KitiStore/assets/uploads/'.$product_name.'/'.$val_color['sp_ten_mau'].'/'.$val_color['hinh_anh'].'"></div>
                                                    <div>'.
                                                        $product_name.'</br>'.
                                                        $val_color['sp_ten_mau'].'
                                                    </div>
                                                </div>
                                            ';
                                        endif;
                                    endforeach;
                    $ressult .= '
                                </div>
                            </div>
                            <div class="cart__item-price">Giá bán: '.number_format($val['price'],0,',','.').'đ</div>';
                            $data_product_in_cart[] = $val['sp_id'];
                    $ressult .= '
                        </div> 
                        <div class="cart__item--price">
                            <div class="cart__item--quantity">';
                                if($val['quantity']==1):
                                    $ressult .= '<input readonly value="-" class="reduced_quantity quantity__null" data-id="product_'.$xyz.'">';
                                else:
                                    $ressult .= ' <input readonly value="-" class="reduced_quantity" data-id="product_'.$xyz.'">';
                                endif;
                                $ressult.= '<input type="text" value="'.$val['quantity'].'" readonly id="product_'.$xyz.'" data-product="'.$val['sp_ten'].'" data-color="'.$val['color'].'">';
                                if($val['quantity']==5):
                                    $ressult .='<input readonly value="+" class="increase_quantity quantity__null" data-id="product_'.$xyz.'">';
                                else:
                                    $ressult .='<input readonly value="+" class="increase_quantity" data-id="product_'.$xyz.'">';
                                endif;
                    $ressult .=' 
                            </div>
                            <div class="cart__item--provisional">';
                            $sum_price = $val['quantity']*$val['price'] + $sum_price;
                    $ressult.= '
                                Tạm tính: '.number_format($val['quantity']*$val['price'],0,',','.').'đ
                            </div>
                        </div>
                        <div class="delete__product" data-product="'.$val['sp_ten'].'" data-color="'.$val['color'].'">
                            <i class="far fa-times-circle"></i>
                        </div>
                    </div>
                </div>
            ';
            endforeach;
        endforeach;
        $ressult.=' </div>';
        $ressult.='
            <div class="col l-4 c-12 i-12">
                <div class="sum__price">
                    <div class="sum__price--header">
                        Tổng thanh toán đơn hàng
                    </div>
                    <div class="sum__price--quantity">
                        Số lượng: <span class="sum__price--quantity--item">'.$_SESSION['cart_product'].' sản phẩm</span>
                    </div>
                    <div class="sum_price--price">
                        Tổng tiền: <span class="sum_price--price--item">'.number_format($sum_price,0,',','.').'đ</span>
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
                            $(".buy_product--container").click(function(){
                                $(".buy_product").removeClass("show");
                            });
                            $(".exit_buy_product").click(function(){
                                $(".buy_product").removeClass("show");
                            });                         
                        });
                    </script>        
                </div>
            </div>';
        $ressult .= '
            <script>
                $(document).ready(function(){
                    if($(".container__cart").height() > 380){
                        $(".related_products--item--header").css("margin-top","100px");
                    }
                    $(".delete__product").click(function(){
                        var product= $(this).data("product");
                        var color = $(this).data("color");
                        var act =3;
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
            </script>';
        $ressult .= '</div>';
    else:
        $ressult .='
        <div class="cart__empty">
            <div class="cart__empty--icon"><i class="fas fa-shopping-cart"></i></div>
            <div>Không có sản phẩm nào trong giỏ hàng</div>
            <div class="cart__empty--btn">
                <a class="btn_cart_empty" href="/../KitiStore/">MUA HÀNG NGAY</a>
            </div>           
        </div>';
    endif;
    die(json_encode($ressult));
?>