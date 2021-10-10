<link rel="stylesheet" href="/../KitiStore/Layouts/Partials/style_header.css">
<link rel="stylesheet" href="/../KitiStore/Layouts/Partials/style_header_mobile.css">
<?php include_once __DIR__ . '/../Library/library.php'?>
<?php
    if(session_id()===""){
        session_start();
    }
    if(isset($_COOKIE['User']) && isset($_COOKIE['ID'])){
        $_SESSION['user_name'] = $_COOKIE['User'];
        $_SESSION['user_id'] = $_COOKIE['ID'];
    }
   
    if(isset($_COOKIE['Cart'])){
        $_SESSION['cart'] = json_decode($_COOKIE['Cart'],true);
    }
    if(isset($_COOKIE['Quantity'])){
        $_SESSION['cart_product'] = $_COOKIE['Quantity'];
    }
?>
<script>
    $(window).on('load', function(event) {
        $('.loader').delay(500).fadeOut('fast');
    });
</script>
<header>
    <div class="loader">
        <div class="spinner-border text-secondary loading"></div>
    </div>
    <div class="nav-header grid-header">
            <ul class="nav-header-item">
               <li class="separate-border title">Chào mừng bạn đến với KITI-STORE</li>
               <li class="weight">KITI-STORE <a href="https://www.facebook.com/congthien1601" target="blank"><i class="fab fa-facebook"></i></a> <a href="https://www.instagram.com/ncthien_1601/?hl=vi" target="blank"><i class="fab fa-instagram"></i></a></li>
            </ul>
            <ul class="nav-header-item">
                <li class="nav-header-item__customer_care">
                    <i class="fab fa-creative-commons-by"></i> <span>Hỗ trợ</span>
                    <!-- <div class="customer_care">
                        <ul>
                            <li class="customer_care__item"><i class="far fa-user"></i><span class="customer_content">Trung tâm hỗ trợ</span></li>
                            <li class="customer_care__item"><i class="far fa-credit-card"></i><span class="customer_content">Đơn hàng và thanh toán</span></li>
                            <li class="customer_care__item"><i class="fas fa-truck"></i><span class="customer_content">Giao hàng và nhận hàng</span></li>
                            <li class="customer_care__item"><i class="fas fa-undo-alt"></i><span class="customer_content">Đổi trả và hoàn tiền</span></li>
                            <li class="customer_care__item"><i class="far fa-user"></i><span class="customer_content">Liên hệ với KitiStore</span></li>
                        </ul>
                    </div> -->
                </li>
                <li class="nav-header-item_map">
                    <i class="fas fa-map-marker-alt"></i> <span>Vị trí Store</span>
                </li>
                <?php if(isset($_SESSION['user_name']) && !empty('user_name')):?>
                    <?php
                        include_once __DIR__ . '/../../connect_db.php';
                        $user_id = $_SESSION['user_id'];
                        $sql_select_img_user = <<<EOT
                            SELECT kh_avatar FROM khach_hang WHERE kh_maso ='$user_id';
                        EOT;
                        $query_select_avatar = mysqli_query($conn,$sql_select_img_user);
                        $result_select_avatar = mysqli_fetch_array($query_select_avatar,MYSQLI_ASSOC);
                        
                    ?>
                    <?php if(empty($result_select_avatar['kh_avatar'])):?>
                        <li class="infomation_user"><a href="/../KitiStore/user/" style="display: flex;align-items: center;" class="user_avatar user_avatar_container"><i class="fas fa-user" style="margin-right: 5px;"></i> <?=$_SESSION['user_name']?></a>
                    <?php else:?>
                        <li class="infomation_user"><a href="/../KitiStore/user/" style="display: flex;" class="user_avatar user_avatar_container">
                        <div class="user_avatar_img">
                            <img src="/../KitiStore/assets/uploads/User_avatar/<?=$result_select_avatar['kh_avatar']?>">
                        </div> <?=$_SESSION['user_name']?></a>
                    <?php endif;?>
                    <div class="infomation_user--container">
                        <div class="infomation_user--content">
                            <a href="/../KitiStore/user/"><div class="infomation_user--item"><i class="fas fa-user-circle"></i> Thông tin tài khoản</div></a>
                            <div class="infomation_user--item btn_logout"><i class="fas fa-sign-out-alt"></i> Đăng xuất</div>
                        </div>
                        <script>
                            $(document).ready(function(){
                                $(".btn_logout").click(function(){
                                    if(confirm("Bạn có muốn đăng xuất?")==true){
                                        $.ajax({
                                            url:"/KitiStore/Layouts/Partials/ajax_logout.php",
                                            type:"get",
                                            dataType:'json',
                                            success:function(result){
                                                if(Number(result)==1){
                                                    location.reload();
                                                }
                                            }
                                        });
                                    }
                                });
                            });
                        </script>
                    </div>
                </li>
                <?php else:?>
                    <li class="btn_login"><i class="fas fa-sign-in-alt"></i> Đăng nhập</li>
                <?php endif;?>
                <script>
                    $(document).ready(function(){
                        $(".btn_login").click(function(){
                            $(".login_user").addClass("show");
                        });
                        $(".login_user--container").click(function(){
                            $(".login_user").removeClass("show");
                        });
                    });
                </script>
            </ul>
    </div>
    <div class="search_header grid-header">
        <div class="nav-header__logo">
                <a href="/../KitiStore/">KITI</a>
        </div>
        <div class="nav-header__menu header-item">
            Danh mục sản phẩm
            <?php
                include_once __DIR__ . '/../../connect_db.php';
                $data_nsx=[];
                $sql_select_nsx = <<<EOT
                    SELECT * FROM nha_san_xuat
                EOT;
                $query_nsx = mysqli_query($conn,$sql_select_nsx);
                while($row = mysqli_fetch_array($query_nsx,MYSQLI_ASSOC)){
                    $data_nsx[]=array(
                        'nsx_id' => $row['nsx_id'],
                        'nsx_ten' => $row['nsx_ten'],
                        'ten_file' => $row['ten_file']
                    );
                }
            ?>
            <ul class="select_nsx">
                <?php foreach($data_nsx as $val_nsx):?>
                    <li><a href="/../KitiStore/producer/?producer=<?=$val_nsx['nsx_ten']?>"><?=$val_nsx['nsx_ten']?></a></li>
                <?php endforeach;?>
            </ul>
        </div>
        <div class="nav-header__sale header-item">
            Khuyến mãi
        </div>
        <div class="nav-header__search">
            <?php $search = isset($_GET['key']) && !empty($_GET['key']) ? $_GET['key']: "";?>
            <input type="text" placeholder="Bạn cần tìm gì ..." id="search_product" name="search_product" value="<?=$search?>">
            <button id="header_search" name="header_search"><i class="fas fa-search"></i></button>
            <?php
                if(isset($_POST['header_search'])){
                    $key = $_POST['search_product'];
                    echo "<script>window.location.replace('/../../../KitiStore/search/?key=$key');</script>";
                }
            ?>
            <div id="result__suggestions"></div>
            <div id="result__history"></div>
                <script>
                    $(document).ready(function(){
                        $("#search_product").keyup(function(event){
                            var key = $(this).val();
                            $("#search__history").addClass("hide_suggestions");
                            if(event.keyCode == 13){
                                if(key.length > 0){
                                    window.location.replace("/KitiStore/search/?key="+key);
                                }
                            }else{
                                $.ajax({
                                    url:"/KitiStore/Layouts/Partials/ajax_search.php",
                                    type:"get",
                                    dataType:"json",
                                    data:{
                                        key
                                    },
                                    success:function(result){
                                        $("#result__suggestions").html(result);
                                    }
                                });
                            }
                        });
                        $(document).on("click",function(event){
                            $(".header__search--suggestions").addClass("hide_suggestions");
                        }); 
                        $("#search_product").click(function(event){
                            var key = $(this).val();
                            event.stopPropagation();
                            if(key.length==0){
                                // $("#search__history").removeClass("hide_suggestions");
                                $.ajax({
                                    url:"/KitiStore/Layouts/Partials/ajax_history.php",
                                    type:"get",
                                    dataType:"json",
                                    success:function(result){
                                        $("#result__history").html(result);
                                    }
                                });
                            }else{
                                $.ajax({
                                    url:"/KitiStore/Layouts/Partials/ajax_search.php",
                                    type:"get",
                                    dataType:"json",
                                    data:{
                                        key
                                    },
                                    success:function(result){
                                        $("#result__suggestions").html(result);
                                    }
                                });
                            }
                                
                        });
                        $("#header_search").click(function(){
                            var key = $("#search_product").val();
                            if(key.length > 0){
                                window.location.replace("/KitiStore/search/?key="+key);
                            }
                        });
                    });
                </script>
        </div>
        <div class="nav-header__card">
                <div class="cart--quantity">
                    <a href="/../KitiStore/cart/"><i class="fas fa-shopping-cart"></i></a>
                    <?php if(isset($_SESSION['cart_product']) && $_SESSION['cart_product']!=0):?>
                        <div class="cart--notice"><?=$_SESSION['cart_product']?></div>
                    <?php endif;?>
                </div>
                <div class="infomation_cart">
                    <?php if(!isset($_SESSION['cart']) || empty($_SESSION['cart'])):?>
                    <div class="empty_cart">
                        <div class="empty_cart__cart"> 
                            <i class="fas fa-cart-plus"></i>
                        </div>
                        <div class="empty_cart__item">
                            Không có sản phẩm nào trong giỏ hàng
                        </div>
                    </div>
                    <?php else:?>
                        <div>
                            <div class="cart--header">
                                <span>GIỎ HÀNG CỦA BẠN</span>
                            </div>
                            <?php 
                                $data_cart=$_SESSION['cart'];
                                $ij=0;   
                                $sum_quantity = 0;
                            ?>
                            <?php foreach($data_cart as $data_cart_product):?>
                                <?php foreach($data_cart_product as $val):?>
                                    <?php $ij++;?>
                                    <?php if($ij <= 5):?>
                                        <?php $sum_quantity = $sum_quantity + $val['quantity']?>
                                        <div class="cart--item">
                                            <img src="/../KitiStore/assets/uploads/<?=$val['sp_ten']?>/<?=$val['color']?>/<?=$val['img']?>" width="12%">
                                            <div class="product_infomation">
                                                <div class="product_infomation--name"><?=$val['sp_ten']?></div>
                                                <div><?=$val['color']?></div>
                                            </div>
                                            <div class="quantity_price">
                                                <div class="quantity_price--price"><?=number_format($val['quantity']*$val['price'],'0',',','.')?>đ</div>
                                                <div class="quantity_price--quantity"><?=$val['quantity']?> sản phẩm</div>
                                            </div>
                                        </div>
                                    <?php endif;?>
                                <?php endforeach;?>
                            <?php endforeach;?>
                            <div class="btn_view_cart">
                                <?php if($_SESSION['cart_product'] > $sum_quantity):?>
                                    <div class="cart_product--more">Xem thêm <?=$_SESSION['cart_product'] - $sum_quantity?> sản phẩm</div>
                                <?php else:?>
                                    <div></div>
                                <?php endif;?>
                                <div><a href="/../KitiStore/cart/" class="btn_view_cart--item">XEM GIỎ HÀNG</a></div>
                            </div>
                        </div>
                    <?php endif?>
                </div>
        </div>
        <label class="bars-mobile check_menu_mobile" for="check_menu_mobile">
            <span><i class="fas fa-bars"></i></span>
        </label>
    </div>
    <div>
        <div class="map" for="check_map">
            <div class="map__address">
                <div class="map_address--exit"><i class="fas fa-times"></i></div>
                <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1908.4978327780018!2d105.77307045662275!3d10.029881717206264!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31a08823b10c36df%3A0x35a32908b651ec36!2zMTlhIMSQLiBN4bqhYyBUaGnDqm4gVMOtY2gsIFh1w6JuIEtow6FuaCwgTmluaCBLaeG7gXUsIEPhuqduIFRoxqEsIFZp4buHdCBOYW0!5e0!3m2!1svi!2s!4v1629879282525!5m2!1svi!2s" style="border:0;" allowfullscreen="" loading="lazy">
                    <div class="map_address--exit"><i class="fas fa-times"></i></div>
                </iframe>
            </div>
        </div>
    </div>
    <div class="reponsive_mobile">
        <input type="checkbox" id="check_menu_mobile" hidden>
        <label class="header_mobile" for="check_menu_mobile"></label>
        <script>
            $(document).ready(function(){
                $(".check_menu_mobile").click(function(){
                    var val_check = $("#check_menu_mobile").prop("checked");
                    if(val_check == false){
                        $("html").css("overflow","hidden");
                    }else{
                        $("html").css("overflow","auto");
                    }
                });
            });
        </script>
        <div class="menu_mobile">
            <ul>
                <li class="menu_mobile-item--logo">
                    <?php if(isset($_SESSION['user_name']) && !empty($_SESSION['user_name'])):?>
                        <?php if(empty($result_select_avatar['kh_avatar'])):?>
                            <span class="mobile-item--user_name user_avatar">
                                <div class="user_avatar_img">
                                    <img src="/../KitiStore/assets/uploads/User_avatar/avatar.png">
                                </div> <?=$_SESSION['user_name']?>
                            </span>
                        <?php else:?>
                            <span class="mobile-item--user_name user_avatar">
                                <div class="user_avatar_img">
                                    <img src="/../KitiStore/assets/uploads/User_avatar/<?=$result_select_avatar['kh_avatar']?>">
                                </div> <?=$_SESSION['user_name']?>
                            </span>
                        <?php endif;?>
                        
                    <?php else:?>
                        KITI
                    <?php endif;?>
                    <div class="icon--logo">
                        <label for="check_menu_mobile" class="check_menu_mobile"><i class="fas fa-times"></i></label>
                    </div>
                </li>
                <script>
                    $(document).ready(function(){
                        $(".menu_mobile-item--notification").click(function(){
                            $(".notification_mobile").addClass("display_notification");
                        });
                        $(".exit-notification .fa-times").click(function(){
                            $(".notification_mobile").removeClass("display_notification");
                        });
                    });
                </script>
                <?php if(isset($_SESSION['user_name']) && !empty($_SESSION['user_name'])):?>
                    <a href="/../KitiStore/user/"><li class="menu_mobile-item"><i class="fas fa-user-circle icon"></i><span class="menu_mobile-item--content">Thông tin tài khoản</span></li></a>
                <?php else:?>
                    <li class="menu_mobile-item btn_login"><span><i class="fas fa-sign-in-alt icon"></i></span><span class="menu_mobile-item--content">Đăng nhập</span></li>    
                    <li class="menu_mobile-item btn_register"><span><i class="fas fa-user-plus icon"></i></span><span class="menu_mobile-item--content">Đăng kí</span></li>
                <?php endif;?>
                <!-- <li class="menu_mobile-item menu_mobile-item--notification"><span><i class="fas fa-bell icon"></i></span><span class="menu_mobile-item--content">Thông báo</span></li> -->
                <li class="menu_mobile-item check_map"><i class="fas fa-map-marker-alt icon"></i> <span class="menu_mobile-item--content">Vị trí Store</span></li>
                <li class="menu_mobile-item"><span><i class="fab fa-creative-commons-by icon"></i></span><span class="menu_mobile-item--content">Hỗ trợ khách hàng</span></li>
                <?php if(isset($_SESSION['user_name']) && !empty($_SESSION['user_name'])):?>
                    <li class="menu_mobile-item btn_logout"><span><i class="fas fa-sign-out-alt icon"></i><span class="menu_mobile-item--content">Đăng xuất</span></span></li>
                <?php endif;?>
                <script>
                    $(document).ready(function(){
                        $(".menu_mobile-item.check_map").click(function(){
                            $(".map").addClass("display_check_map");
                        });
                        $(".nav-header-item_map").click(function(){
                            $(".map").addClass("display_check_map");
                        });
                        $(".fa-times").click(function(){
                            $(".map").removeClass("display_check_map");
                        });
                        $(".map").click(function(){
                            $(".map").removeClass("display_check_map");
                        });
                    });
                </script>
            </ul>
        </div>
    </div>
    <div class="notification_mobile">
        <div class="exit-notification">
            <span class="exit-notification-content">Thông báo</span>
            <i class="fas fa-times"></i>
        </div>
        <div class="notification_mobile_content">
            <p>Bạn vừa thêm điện thoại iPhone 12 Pro max vào giỏ hàng của mình</p>
            <p>Bạn vừa thêm điện thoại Samsung Galaxy S12 vào giỏ hàng của mình</p>
            <p>Bạn vừa xóa điện thoại iPhone 12 Pro max ra khỏi giỏ hàng</p>  
        </div>       
    </div>
    <div class="login_user">
        <div class="login_user--container"></div>
        <div class="login_user--content">
            <div class="login_user--item login_user--header">
                <div class="login_user--header--logo">KITI</div>
                <div class="login_user--header--tile">ĐĂNG NHẬP TÀI KHOẢN</div>
            </div>
            <div class="login_user--item">
                <div class="label--login">
                    <label for="email"><i class="fas fa-envelope"></i> Email</label>
                </div>
                <div>
                    <input type="email" id="email">
                </div>
            </div>
            <div class="login_user--item">
                <div class="label--login">
                    <label for="password"><i class="fas fa-key"></i> Mật khẩu</label>
                </div>
                <div class="password">
                    <input type="password" id="password" class="hide_password">
                    <label for="checked_show_password" class="show_password"><i class="fas fa-eye-slash"></i></label>
                    <input type="checkbox" id="checked_show_password" hidden>
                </div>
                <script>
                    $(document).ready(function(){
                        $(".show_password").click(function(){
                            var checked = $("#checked_show_password").prop("checked");
                            if(checked == false){
                                $(".hide_password").attr("type","text");
                                $(".show_password .fas").removeClass("fa-eye-slash");
                                $(".show_password .fas").addClass("fa-eye");
                            }else{
                                $(".hide_password").attr("type","password");
                                $(".show_password .fas").removeClass("fa-eye");
                                $(".show_password .fas").addClass("fa-eye-slash");
                            }
                        });
                    });
                </script>
            </div>
            <div class="login_user--item" id="result_error"></div>
            <div class="remember_login">
                <div><input type="checkbox" id="remember_login" value="1"></div>
                <div><label for="remember_login">Ghi nhớ đăng nhập</label></div>    
            </div>
            <div class="login_user--item">
                <button class="btn_login_user">ĐĂNG NHẬP</button>
            </div>
            <div class="login_user--item">
                <div class="nav_sublite">
                    <span class="btn_forgot_passwd">Quên mật khẩu?</span>  <span class="btn_register">Đăng kí tài khoản</span>
                </div>
            </div>
            <script>
                $(document).ready(function(){
                    $(".btn_login_user").click(function(){
                        var email = $("#email").val();
                        var password = $("#password").val();
                        var remember = $("#remember_login").val();
                        if(email==""){
                            $("#result_error").html('<span><i class="fas fa-exclamation-circle"></i> Vui lòng nhập địa chỉ email</span>');
                        }else if(password==""){
                            $("#result_error").html('<span><i class="fas fa-exclamation-circle"></i> Vui lòng nhập mật khẩu</span>');
                        }else{
                            $.ajax({
                                url:"/KitiStore/Layouts/Partials/ajax_login.php",
                                type:'get',
                                dataType:'json',
                                data:{
                                    email,password,remember
                                },
                                success:function(result){
                                    if(Number(result)==1){
                                        $("#result_error").html('<span><i class="fas fa-exclamation-circle"></i> Địa chỉ email không hợp lệ</span>');
                                    }else if (Number(result)==2){
                                        $("#result_error").html('<span><i class="fas fa-exclamation-circle"></i> Địa chỉ email hoặc mật khẩu không đúng</span>');
                                    }else if(Number(result)==4){
                                        $("#result_error").html('<span><i class="fas fa-exclamation-circle"></i> Địa chỉ email chưa được đăng ký tài khoản</span>');
                                    }else{
                                        swal({
                                            title:"Đăng nhập thành công",
                                            icon:"success",
                                            text:"Xin chào "+result
                                        })
                                        .then((ok)=>{
                                            location.reload();
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
    <div class="register_account_user">
        <div class="register_account--container"></div>
        <div class="register_account">
            <div class="register_account--item register_account--header">
                <div class="register_account--header--logo">
                    KITI
                </div>
                <div class="register_account--header--sublite">
                   ĐĂNG KÍ TÀI KHOẢN
                </div>
            </div>
            <div class="register_account--item">
                <div class="label--login">
                    <label for="register_user_name"><i class="fas fa-user"></i> Tên đăng nhập</label>
                </div>
                <div>
                    <input type="text" id="register_user_name">
                </div>
            </div>
            <div class="register_account--item">
                <div class="label--login">
                    <label for="register_email"><i class="fas fa-envelope"></i> Email</label>
                </div>
                <div>
                    <input type="email" id="register_email">
                </div>
            </div>
            <div class="register_account--item">
                <div class="label--login">
                    <label for="register_phone"><i class="fas fa-mobile"></i> Số điện thoại</label>
                </div>
                <div>
                    <input type="tel" id="register_phone">
                </div>
            </div>
            <div class="register_account--item">
                <div class="label--login">
                    <label for="register_password"><i class="fas fa-lock"></i> Mật khẩu</label>
                </div>
                <div class="password">
                    <label for="password_new" class="show_password_register" data-password="register_password" data-checked="password_new"><i class="fas fa-eye-slash"></i></label>
                    <input type="checkbox" id="password_new" hidden>
                    <input type="password" id="register_password">
                </div>
            </div>
            <div class="register_account--item">
                <div class="label--login">
                    <label for="xn_register_password"><i class="fas fa-unlock"></i> Xác nhận mật khẩu</label>
                </div>
                <div class="password">
                    <label for="confirm_password_new" class="show_password_register" data-password="xn_register_password" data-checked="confirm_password_new"><i class="fas fa-eye-slash"></i></label>
                    <input type="checkbox" id="confirm_password_new" hidden>
                    <input type="password" id="xn_register_password">
                </div>
            </div>
            <script>
                $(document).ready(function(){
                    $(".show_password_register").click(function(){
                        var check_show = $(this).data("password");
                        var eyes = $(this).data("checked");
                        if($("#"+eyes).prop("checked")==false){
                            $("#"+check_show).attr("type","text");
                            $(this).children().removeClass("fa-eye-slash");
                            $(this).children().addClass("fa-eye");
                        }else{
                            $("#"+check_show).attr("type","password");
                            $(this).children().removeClass("fa-eye");
                            $(this).children().addClass("fa-eye-slash");
                        }
                    });
                });
            </script>
            <div class="register_account--item" id="result_error_register"></div>
            <div class="register_account--item">
                <button class="btn_register_account">
                    ĐĂNG KÍ
                </button>
            </div>
            <div class="register_account--item register_account--sublite--login">
                <span>Bạn đã có tài khoản? Đăng nhập</span>
            </div>
        </div>
        <script>
            $(document).ready(function(){
                $(".btn_register").click(function(){
                    $(".register_account_user").addClass("show");
                    $(".login_user").removeClass("show");
                });
                $(".exit_register_account").click(function(){
                    $(".register_account_user").removeClass("show");
                })
                $(".register_account--container").click(function(){
                    $(".register_account_user").removeClass("show");
                });
                $(".register_account--sublite--login").click(function(){
                    $(".register_account_user").removeClass("show");
                    $(".login_user").addClass("show");
                });
                $(".btn_register_account").click(function(){
                    var user_name = $("#register_user_name").val();
                    var register_email = $("#register_email").val();
                    var register_phone = $("#register_phone").val();
                    var register_password = $("#register_password").val();
                    var confirm_register_password = $("#xn_register_password").val();
                    $.ajax({
                        url:"/KitiStore/Layouts/Partials/ajax_register_account.php",
                        type:"get",
                        dataType:"json",
                        data:{
                            user_name,register_email,register_phone,register_password,confirm_register_password
                        },
                        success:function(result){
                            if(Number(result)==1){
                                
                                swal({
                                    title:"Đăng ký tài khoản thành công",
                                    icon:"success",
                                    text:"Hãy đăng nhập để mua hàng bạn nhé!"
                                })
                                .then((ok)=>{
                                    $(".register_account_user").removeClass("show");
                                    $(".login_user").addClass("show");
                                    $("#register_user_name").val("");
                                    $("#register_email").val("");
                                    $("#register_phone").val("");
                                    $("#register_password").val("");
                                    $("#xn_register_password").val("");
                                    $("#result_error_register").remove();
                                });
                            }else{
                                $("#result_error_register").html(result);
                            }
                        }
                    });
                });
            });
        </script>
    </div>
    <script>
        $(document).ready(function(){
            $(".btn_forgot_passwd").click(function(){
                $(".login_user").removeClass("show");
                $(".forgot_password").addClass("show");
            });
            $(".forgot_password--container").click(function(){
                $(".forgot_password").removeClass("show");
            });
        });
    </script>
    <div class="forgot_password">
        <div class="forgot_password--container"></div>
        <div class="forgot_password--content">
            <div class="register_account--item register_account--header">
                <div class="register_account--header--logo">
                    KITI
                </div>
                <div class="register_account--header--sublite">
                   QUÊN MẬT KHẨU
                </div>
            </div>
            <div class="register_account--item">
                <div class="label--login">
                    <label for="forgot_password_email"><i class="fas fa-envelope"></i> Email</label>
                </div>
                <div>
                    <input type="email" id="forgot_password_email">
                </div>
            </div>
            <div class="register_account--item">
                <div class="label--login">
                    <label for="forgot_password_phone"><i class="fas fa-mobile"></i> Số điện thoại</label>
                </div>
                <div>
                    <input type="tel" id="forgot_password_phone">
                </div>
            </div>
            <div class="register_account--item">
                <div class="label--login">
                    <label for="forgot_password_password"><i class="fas fa-lock"></i> Mật khẩu mới</label>
                </div>
                <div class="password">
                    <label for="password_new" class="show_password_register" data-password="forgot_password_password" data-checked="password_new"><i class="fas fa-eye-slash"></i></label>
                    <input type="checkbox" id="password_new" hidden>
                    <input type="password" id="forgot_password_password">
                </div>
            </div>
            <div class="register_account--item">
                <div class="label--login">
                    <label for="xn_forgot_password_password"><i class="fas fa-unlock"></i> Xác nhận mật khẩu</label>
                </div>
                <div class="password">
                    <label for="password_new_confirm" class="show_password_register" data-password="forgot_password_password_confirm" data-checked="password_new_confirm"><i class="fas fa-eye-slash"></i></label>
                    <input type="checkbox" id="password_new_confirm" hidden>
                    <input type="password" id="forgot_password_password_confirm">
                </div>
            </div>
            <div class="register_account--item" id="error_forgot_password">

            </div>
            <div class="register_account--item">
                <button class="btn_forgot_password">YÊU CẦU ĐẶT LẠI</button>
            </div>
            <script>
                $(document).ready(function(){
                    $(".btn_forgot_password").click(function(){
                        var email = $("#forgot_password_email").val();
                        var phone = $("#forgot_password_phone").val();
                        var passwd = $("#forgot_password_password").val();
                        var confirm_passwd = $("#forgot_password_password_confirm").val();
                        $.ajax({
                            url:"/KitiStore/Layouts/Partials/ajax_forgot_password.php",
                            type:"get",
                            dataType:"json",
                            data:{
                                email,phone,passwd,confirm_passwd
                            },
                            success:function(result){
                                if(Number(result)==1){
                                    swal({
                                        title:"Xác thực thành công",
                                        icon:"success",
                                        text:"Hãy nhanh chóng đăng nhập để mua hàng bạn nhé!"
                                    })
                                    .then((ok)=>{
                                        $(".forgot_password").removeClass("show");
                                        $(".login_user").addClass("show");
                                    });
                                }else{
                                    $("#error_forgot_password").html(result);
                                }
                            }
                        });
                    });
                });
            </script>
        </div>
    </div>
</header>   