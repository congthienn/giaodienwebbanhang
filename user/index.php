<?php 
    if(session_id()===""){
        session_start();
    }
?>
<?php if(isset($_SESSION['user_name']) && !empty($_SESSION['user_name'])):?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>KITI</title>
</head>
<?php include_once __DIR__ . '/../Layouts/Library/library.php'?>
<link rel="stylesheet" href="style_user.css">
<body>
    <div>
        <?php include_once __DIR__ . '/../Layouts/Partials/header.php'?>
    </div>
    <div class="main_user">
        <div class="grid wide">
            <div class="navigation_bar">
                <a href="/../KitiStore/">Trang chủ</a> <i class="fas fa-angle-right"></i> Thông tin tài khoản
            </div>
            <div class="row">
                <div class="col l-3 c-12">
                    <?php
                        include_once __DIR__ . '/../connect_db.php';
                        $user_id = $_SESSION['user_id'];
                        $sql_select_user = <<<EOT
                            SELECT * FROM khach_hang WHERE kh_maso = '$user_id';
                        EOT;
                        $query_select_user = mysqli_query($conn,$sql_select_user);
                        $result_select_user = mysqli_fetch_array($query_select_user,MYSQLI_ASSOC);
                    ?>
                    <div class="user__name-title user_avatar" id="result_user">
                        <?php if(empty($result_select_user['kh_avatar'])):?>
                            <i class="fas fa-user-circle"></i> <span style="margin-left: 8px;"><?=$_SESSION['user_name']?></span>
                        <?php else:?>
                            <div class="user_avatar_img">
                                <img src="/../KitiStore/assets/uploads/User_avatar/<?=$result_select_user['kh_avatar']?>">
                            </div>
                            <?=$_SESSION['user_name']?>
                        <?php endif;?> 
                    </div>
                    <div>
                        <ul>
                            <li class="navigation_bar--item" data-id="account_information"><i class="fas fa-user"></i> Thông tin tài khoản</li>
                            <li class="navigation_bar--item  click" data-id="user_order"><i class="fas fa-list-alt"></i> Danh sách đơn hàng</li>
                        </ul>
                        <script>
                            $(document).ready(function(){
                                $(".navigation_bar--item").click(function(){
                                    $(".navigation_bar--item ").removeClass("click");
                                    $(this).addClass("click");
                                    var content_id = $(this).data("id");
                                    $(".content--item").removeClass("show_content--item");
                                    $("#"+content_id).addClass("show_content--item");
                                });
                            });
                        </script>
                    </div>
                </div>
                <div class="col l-9 c-12"> 
                    <div class="account_information content--item " id="account_information">
                        <div class="user__name-title">
                            Thông tin tài khoản
                        </div>
                        <div class="account_information--container">
                            <div class="account_information--content">
                                <div class="account_information--img account_information--img--mobile">
                                    <?php 
                                        if(empty($result_select_user['kh_avatar'])):
                                            $result_select_user['kh_avatar'] = 'avatar.png';
                                        endif;
                                    ?>
                                    <img src="/../KitiStore/assets/uploads/User_avatar/<?=$result_select_user['kh_avatar']?>" id="preview_mobile">
                                    <div>
                                        <label for="avatar_mobile" class="upload_btn">Cập nhật ảnh đại diện</label><input type="file" id="avatar_mobile" hidden>
                                        <div id="result_error_img_mobile"></div>
                                    </div>
                                        <script>
                                            const reader = new FileReader();
                                            const fileInput = document.getElementById("avatar_mobile");
                                            const img = document.getElementById("preview_mobile");
                                            reader.onload = e => {
                                                img.src = e.target.result;
                                            }
                                            fileInput.addEventListener('change', e => {
                                                const f = e.target.files[0];
                                            reader.readAsDataURL(f);
                                            });
                                                $("#avatar_mobile").change(function(){
                                                $('#result_error_img_mobile').children().remove();
                                                var img = $('#avatar_mobile').prop('files')[0];
                                                var form_data = new FormData();
                                                form_data.append('file',img);
                                                $.ajax({
                                                    url:'ajax_upload_avatar.php',
                                                    dataType:'json',
                                                    type:'post',
                                                    data:form_data,
                                                    contentType:false,
                                                    processData:false,
                                                    success:function(result_upload){
                                                        if(Number(result_upload)==2){
                                                            $('#result_error_img_mobile').html('<span>File ảnh không đúng định dạng</span>');
                                                        }else if(Number(result_upload)==3){
                                                            $('#result_error_img_mobile').html('<span>Kích thước file ảnh tối đa 1MB</span>');
                                                        }else{
                                                            $(".user_avatar").html(result_upload);
                                                            swal({
                                                                title:"Cập nhật thành công",
                                                                icon:"success"
                                                            });
                                                        }
                                                    }
                                                });
                                            });
                                        </script>
                                        
                                </div>
                                <div class="account_information--item">
                                    <label for="user_name" class="label">Tên đăng nhập</label><input type="text" id="user_name" value="<?=$result_select_user['kh_hoten']?>">
                                </div>
                                <div class="account_information--item">
                                    <label for="user_phone" class="label">Số điện thoại</label><input type="text" id="user_phone" value="<?=$result_select_user['kh_sdt']?>">
                                </div>
                                <div class="account_information--item">
                                    <label for="user_email" class="label">Email</label><input type="text" id="user_email" value="<?=$result_select_user['kh_email']?>">
                                </div>
                                <div class="account_information--item">
                                    <label class="label">Giới tính</label>
                                    <?php
                                        if(empty($result_select_user['kh_gioitinh'])){
                                            $result_select_user['kh_gioitinh']=2;
                                        }
                                    ?>
                                    <div class="select_sex">
                                        <label for="men">Nam</label><input type="radio" id="men" name="sex" value="1">
                                        <label for="women">Nữ</label><input type="radio" id="women" name="sex" value="0">
                                    </div>
                                    <script>
                                        var sex = <?=$result_select_user['kh_gioitinh']?>;
                                        if(sex==1){
                                            $("#men").prop("checked",true);
                                        }else{
                                            $("#women").prop("checked",true);
                                        }
                                    </script>
                                </div>
                                <div class="account_information--item">
                                    <label class="label">Ngày sinh</label>
                                    <?php if(empty($result_select_user['kh_ngay_sinh'])):?>
                                        <div>
                                            <select id="day">
                                                <option value="">Ngày</option>
                                            </select>
                                            <select id="month">
                                                <option value="">Tháng</option>
                                            </select>
                                            <select id="year">
                                                <option value="">Năm</option>
                                            </select>
                                        </div>
                                    <?php else:?>
                                        <div>
                                            <select id="day">
                                                <?php $day = date("j",strtotime($result_select_user['kh_ngay_sinh']));?>
                                                <option value="<?=$day?>"><?=$day?></option>
                                            </select>
                                            <select id="month">
                                                <?php $month = date("n",strtotime($result_select_user['kh_ngay_sinh']));?>
                                                <option value="<?=$month?>"><?=$month?></option>
                                            </select>
                                            <select id="year">
                                                <?php $year = date("Y",strtotime($result_select_user['kh_ngay_sinh']))?>
                                                <option value="<?=$year?>"><?=$year?></option>
                                            </select>
                                        </div>
                                    <?php endif;?>
                                        <script>
                                            var day = <?=$day?>;
                                             for(i=1;i<=31;i++){
                                                if(i!=day){
                                                     $("#day").append('<option value="'+i+'">'+i+'</option>');
                                                }   
                                            }
                                            var month = <?=$month?>;
                                            for(i=1;i<=12;i++){
                                                if(i!=month){
                                                    $("#month").append('<option value="'+i+'">'+i+'</option>');
                                                }
                                            }
                                            var year = <?=$year?>;
                                            var today = new Date();
                                            for(i=today.getFullYear();i >= 1970;i--){
                                                if(i!=year){
                                                    $("#year").append('<option value="'+i+'">'+i+'</option>');
                                                }  
                                            }
                                            $("#month , #year").change(function(){
                                                var month = $("#month").val();
                                                var year = $("#year").val();
                                                var day_old = $("#day").val();
                                                var day = new Date(year,month,0).getDate();
                                                if(day_old > day || day_old==""){
                                                    $("#day option").remove();
                                                    $("#day").append('<option value="">Ngày</option>');
                                                    for(i=1;i<=day;i++){
                                                        $("#day").append('<option value="'+i+'">'+i+'</option>');
                                                    }
                                                }else{
                                                    var length = $("#day option").length;
                                                    if(length <= day){
                                                        for(i=length;i<=day;i++){
                                                            $("#day").append('<option value="'+i+'">'+i+'</option>');
                                                        }
                                                    }else if(length > day){
                                                        for(i=length;i > day;i--){
                                                            $("#day option").eq(i).remove();
                                                        }
                                                    }
                                                }
                                            });
                                            $("#day").change(function(){
                                                var month = $("#month").val();
                                                var year = $("#year").val();
                                                var day_old = $("#day").val();
                                                var day = new Date(year,month,0).getDate();
                                                if(day_old > day){
                                                    $("#month option").remove();
                                                    $("#month").append('<option value="">Tháng</option>');
                                                    for(i=1;i<=12;i++){                                          
                                                        $("#month").append('<option value="'+i+'">'+i+'</option>');
                                                    }
                                                }
                                            });
                                        </script>            
                                </div>
                                <div class="account_information--item account_information--location">
                                    <label class="label">Địa chỉ </label>
                                    <?php
                                        $sql_select_tinh  = <<<EOT
                                            SELECT * FROM vn_tinh 
                                        EOT;
                                        $query_select_tinh  = mysqli_query($conn,$sql_select_tinh);
                                        $data_tinh=[];
                                        while($result_select_tinh = mysqli_fetch_array($query_select_tinh,MYSQLI_ASSOC)){
                                            $data_tinh[]=array(
                                                'ma_tinh' => $result_select_tinh['provinceid'],
                                                'ten_tinh' => $result_select_tinh['name']
                                            );
                                        }
                                    ?>
                                    <div class="account_information--location--content">
                                        <?php
                                            $ma_tinh = $result_select_user['ma_tinh'];
                                            $ma_huyen = $result_select_user['ma_huyen'];
                                            $ma_xa = $result_select_user['ma_xa'];
                                            $dia_chi_nha = $result_select_user['kh_dia_chi'];
                                        ?>
                                        <?php if(empty($ma_tinh) && empty($ma_huyen) && empty($ma_xa)):?>
                                            <div class="account_information--location--item">
                                                <select id="tinh" class="select_location">
                                                    <option value="">Tỉnh/Thành phố</option>
                                                    <?php foreach($data_tinh as $val_tinh):?>
                                                        <option value="<?=$val_tinh['ma_tinh']?>"><?=$val_tinh['ten_tinh']?></option>
                                                    <?php endforeach;?>
                                                </select>
                                                <select id="quan_huyen" class="select_location">
                                                    <option value="">Quận/Huyện</option>
                                                </select>
                                            </div>
                                            <div class="account_information--location--item">
                                                <select id="xa_phuong" class="select_location">
                                                    <option value="">Xã/Phường</option>
                                                </select>
                                                <input type="text" class="select_location" placeholder="Số nhà, tên đường" id="dia_chi_nha">
                                            </div>
                                        <?php else:?>
                                            <?php 
                                                $sql_select_location = <<<EOT
                                                    SELECT tinh.name ten_tinh,huyen.name ten_huyen,xa_phuong.name ten_xa FROM vn_tinh tinh
                                                    JOIN vn_quan_huyen huyen ON tinh.provinceid = huyen.provinceid
                                                    JOIN vn_xa_phuong xa_phuong ON huyen.districtid = xa_phuong.districtid WHERE xa_phuong.wardid='$ma_xa';
                                                EOT;    
                                                $query_select_location = mysqli_query($conn,$sql_select_location);
                                                $result_select_location = mysqli_fetch_array($query_select_location,MYSQLI_ASSOC);
                                            ?>
                                            <div class="account_information--location--item">
                                                <select id="tinh" class="select_location">
                                                    <option value="<?=$ma_tinh?>"><?=$result_select_location['ten_tinh']?></option>
                                                    <?php foreach($data_tinh as $val_tinh):?>
                                                        <?php if($val_tinh['ma_tinh']!=$ma_tinh):?>
                                                            <option value="<?=$val_tinh['ma_tinh']?>"><?=$val_tinh['ten_tinh']?></option>
                                                        <?php endif;?>
                                                    <?php endforeach;?>
                                                </select>
                                                <?php
                                                    $sql_select_huyen = <<<EOT
                                                        SELECT huyen.districtid ma_huyen,huyen.name ten_huyen FROM vn_tinh tinh 
                                                        JOIN vn_quan_huyen huyen ON tinh.provinceid = huyen.provinceid WHERE tinh.provinceid = '$ma_tinh';
                                                    EOT;
                                                    $query_select_huyen = mysqli_query($conn,$sql_select_huyen);
                                                    $data_huyen=[];
                                                    while($result_select_huyen = mysqli_fetch_array($query_select_huyen,MYSQLI_ASSOC)){
                                                        $data_huyen[]=array(
                                                            'ma_huyen' => $result_select_huyen['ma_huyen'],
                                                            'ten_huyen' => $result_select_huyen['ten_huyen']
                                                        );
                                                    }
                                                ?>
                                                <select id="quan_huyen" class="select_location">
                                                    <option value="<?=$ma_huyen?>"><?=$result_select_location['ten_huyen']?></option>
                                                    <?php foreach($data_huyen as $val_huyen):?>
                                                        <?php if($val_huyen['ma_huyen']!=$ma_huyen):?>
                                                            <option value="<?=$val_huyen['ma_huyen']?>"><?=$val_huyen['ten_huyen']?></option>
                                                        <?php endif;?>
                                                    <?php endforeach;?>
                                                </select>
                                            </div>
                                            <div class="account_information--location--item">
                                                <?php
                                                    $sql_select_xa = <<<EOT
                                                        SELECT xa_phuong.wardid ma_xa, xa_phuong.name ten_xa FROM vn_xa_phuong xa_phuong
                                                        JOIN vn_quan_huyen huyen ON xa_phuong.districtid = huyen.districtid WHERE huyen.districtid='$ma_huyen';
                                                    EOT;
                                                    $query_select_xa = mysqli_query($conn,$sql_select_xa);
                                                    $data_xa=[];
                                                    while($reuslt_select_xa = mysqli_fetch_array($query_select_xa,MYSQLI_ASSOC)){
                                                        $data_xa[]=array(
                                                            'ma_xa' => $reuslt_select_xa['ma_xa'],
                                                            'ten_xa' => $reuslt_select_xa['ten_xa']
                                                        );
                                                    }
                                                ?>
                                                <select id="xa_phuong" class="select_location">
                                                    <option value="<?=$ma_xa?>"><?=$result_select_location['ten_xa']?></option>
                                                    <?php foreach($data_xa as $val_xa):?>
                                                        <?php if($val_xa['ma_xa']!=$ma_xa):?>
                                                            <option value="<?=$val_xa['ma_xa']?>"><?=$val_xa['ten_xa']?></option>
                                                        <?php endif;?>
                                                    <?php endforeach;?>
                                                </select>
                                                <?php 
                                                    if(empty($result_select_user['kh_dia_chi'])):
                                                        $result_select_user['kh_dia_chi']="";
                                                    endif;
                                                ?>
                                                <input type="text" class="select_location" placeholder="Số nhà, tên đường" id="dia_chi_nha" value="<?=$result_select_user['kh_dia_chi']?>">
                                            </div>
                                        <?php endif;?>
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
                                                                $("#xa_phuong").html('<option value="">Xã/Phường</option>')
                                                                $("#quan_huyen").html(result);
                                                            }
                                                        });
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
                                            </script>
                                </div>
                                <div class="account_information--item account_information--register--account">
                                    <label class="label checked_register" for="check_register_account">Đổi mật khẩu <i class="fas fa-caret-down"></i></label>
                                    <input type="checkbox" id="check_register_account" hidden>
                                    <div class="register_account_user_information">
                                        <div class="register_account_user--item">
                                            <input type="password" placeholder="Mật khẩu hiện tại" id="old_password">
                                            <label class="show_hide_password" for="checked_old_password">
                                                <i class="fas fa-eye-slash"></i>
                                            </label>
                                            <input type="checkbox" id="checked_old_password" hidden>
                                        </div>
                                        <div class="register_account_user--item">
                                            <input type="password" placeholder="Mật khẩu mới (tối thiểu 10 kí tự)" id="new_password">
                                            <label class="show_hide_password" for="checked_new_password">
                                                <i class="fas fa-eye-slash"></i>
                                            </label>
                                            <input type="checkbox" id="checked_new_password" hidden>
                                        </div>
                                        <div class="register_account_user--item">
                                            <input type="password" placeholder="Xác nhận lại mật khẩu" id="check_new_password">
                                            <label class="show_hide_password" for="checked_password">
                                                <i class="fas fa-eye-slash"></i>
                                            </label>
                                            <input type="checkbox" id="checked_password" hidden>
                                        </div>
                                    </div>
                                    <script>
                                        $(document).ready(function(){
                                            $(".checked_register").click(function(){
                                                var checked = $('#check_register_account').prop("checked");
                                                if(checked == false){
                                                    $(".checked_register .fas").removeClass("fa-caret-down");
                                                    $(".checked_register .fas").addClass("fa-caret-up");
                                                    $(".register_account_user_information").addClass("show_register_account");
                                                }else{
                                                    $(".checked_register .fas").removeClass("fa-caret-up");
                                                    $(".checked_register .fas").addClass("fa-caret-down");
                                                    $(".register_account_user_information").removeClass("show_register_account");
                                                }
                                            });
                                            $(".show_hide_password").click(function(){
                                                var check = $("#"+$(this).attr("for")).prop("checked");
                                                var input_show = $("#"+$(this).attr("for")).parent().children().first().attr("id");
                                                console.log(input_show);
                                                if(check==false){
                                                    $(this).children().removeClass("fa-eye-slash");
                                                    $(this).children().addClass("fa-eye");
                                                    $("#"+input_show).attr("type","text");
                                                }else{
                                                    $(this).children().removeClass("fa-eye");
                                                    $(this).children().addClass("fa-eye-slash");
                                                    $("#"+input_show).attr("type","password");
                                                }
                                               
                                            });
                                        });
                                    </script>
                                </div>
                                <div class="error_update"></div>
                                <div class="account_information--item account_information--item--btn">
                                    <button class="btn_update">CẬP NHẬT</button>
                                </div>
                            </div>
                            <div class="account_information--img">
                                <div>
                                    <img src="/../KitiStore/assets/uploads/User_avatar/<?=$result_select_user['kh_avatar']?>" id="preview">
                                </div>
                                <div>
                                        <label for="avatar" class="upload_btn">Cập nhật ảnh đại diện</label><input type="file" id="avatar" hidden accept=".jpg,.png,.jpeg">
                                        <div id="result_error_img"></div>
                                    <script>
                                        $(document).ready(function(){
                                            const reader = new FileReader();
                                            const fileInput = document.getElementById("avatar");
                                            const img = document.getElementById("preview");
                                            reader.onload = e => {
                                                img.src = e.target.result;
                                            }
                                            fileInput.addEventListener('change', e => {
                                                const f = e.target.files[0];
                                            reader.readAsDataURL(f);
                                            });
                                        });
                                    </script>
                                </div>    
                            </div>
                        </div>
                    </div>
                    <script>
                        $(document).ready(function(){
                            $('.btn_update').click(function(){
                                var user_name = $("#user_name").val();
                                var user_phone_new = $("#user_phone").val();
                                var user_email_new = $("#user_email").val();
                                var sex = $("#men").prop("checked") ? 1 : 0;
                                var day = $("#day").val();
                                var month = $("#month").val();
                                var year = $("#year").val();
                                var tinh = $("#tinh").val();
                                var quan_huyen = $("#quan_huyen").val();
                                var xa_phuong = $("#xa_phuong").val();
                                var dia_chi_nha = $("#dia_chi_nha").val();
                                var check_register_account = $("#check_register_account").prop("checked");
                                var old_password = $("#old_password").val();
                                var new_password = $("#new_password").val();
                                var check_new_password = $("#check_new_password").val();
                                $.ajax({
                                    url:"ajax_update_user_information.php",
                                    type:"get",
                                    dataType:"json",
                                    data:{
                                        user_name,user_email_new,user_phone_new,sex,day,month,year,
                                        tinh,quan_huyen,xa_phuong,dia_chi_nha,check_register_account,old_password,new_password,check_new_password
                                    },
                                    success:function(result){
                                        if(Number(result)!=1){
                                            $(".error_update").html(result);
                                            success_update_information = 0;
                                        }else{
                                            swal({
                                                title:"Cập nhật thành công",
                                                icon:"success"
                                            })
                                            .then((ok)=>{
                                                location.reload();
                                            });
                                        }
                                    }
                                }); 
                            });
                            $("#avatar").change(function(){
                                $('#result_error_img').children().remove();
                                var img = $('#avatar').prop('files')[0];
                                var form_data = new FormData();
                                form_data.append('file',img);
                                $.ajax({
                                    url:'ajax_upload_avatar.php',
                                    dataType:'json',
                                    type:'post',
                                    data:form_data,
                                    contentType:false,
                                    processData:false,
                                    success:function(result_upload){
                                        if(Number(result_upload)==2){
                                            $('#result_error_img').html('<span>File ảnh không đúng định dạng</span>');
                                        }else if(Number(result_upload)==3){
                                            $('#result_error_img').html('<span>Kích thước file ảnh tối đa 1MB</span>');
                                        }else{
                                            $(".user_avatar").html(result_upload);
                                            swal({
                                                title:"Cập nhật thành công",
                                                icon:"success"
                                            });
                                        }
                                    }
                                });
                            });
                        }); 
                    </script>
                    <div class="user_order content--item show_content--item" id="user_order">
                        <div class="user__name-title">
                            Đơn hàng của bạn
                        </div>
                        <div>
                            <?php
                                $sql_select_dh = <<<EOT
                                    SELECT * FROM don_hang dh 
                                    JOIN khach_hang kh ON dh.kh_id = kh.kh_id
                                    JOIN httt ON dh.httt_id=httt.httt_id WHERE kh_maso ='$user_id' ORDER BY dh_ngaynhap DESC;
                                EOT;
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
                            ?>
                            <?php if(empty($data_dh)):?>
                                <div class="user_order--container">
                                    <div class="user_order--empty">
                                        <div class="user_order--empty--item user_order--empty--icon">
                                            <i class="far fa-clipboard"></i>
                                        </div>
                                        <div class="user_order--empty--item">
                                        Bạn chưa có đơn hàng nào
                                        </div>
                                        <div class="user_order--empty--item user_order--empty--btn">
                                        <a href="/../KitiStore/" class="user_order--empty--item--btn">MUA HÀNG NGAY</a>
                                        </div>
                                    </div>
                                </div>
                            <?php else:?>
                                <div class="user_order--navbar">
                                    <div class="user_order--navbar--item active" data-dh_tt="4">Tất cả</div>
                                    <div class="user_order--navbar--item" data-dh_tt="0">Đang xử lý</div>
                                    <div class="user_order--navbar--item" data-dh_tt="1">Đang giao</div>
                                    <div class="user_order--navbar--item" data-dh_tt="2">Đã giao</div>
                                    <div class="user_order--navbar--item" data-dh_tt="3">Đã hủy</div>
                                    <div class="user_order--navbar--active"></div>
                                    <script>
                                        var dh_tt = 4;
                                        $(document).ready(function(){
                                            $(".user_order--navbar--item").click(function(){
                                                $(".user_order--navbar--item").removeClass("active");
                                                $(this).addClass("active");
                                                var offset_left = $(this).offset().left;
                                                $(".user_order--navbar--active").offset({left:offset_left});
                                                dh_tt = $(this).data("dh_tt");
                                                $.ajax({
                                                    url:"ajax_select_order.php",
                                                    type:"get",
                                                    dataType:"json",
                                                    data:{
                                                        dh_tt
                                                    },
                                                    success:function(result){
                                                        $("#result_cancel--order").html(result);
                                                    }
                                                });
                                            });
                                        });
                                    </script>
                                </div>
                                <div class="user_order--content" id="result_cancel--order">
                                    <?php foreach($data_dh as $val_dh):?>
                                        <div class="user_order--item">
                                            <div class="user_order--item--content">
                                                <div class="user_order--item--title">
                                                    <div class="order_id">Mã đơn: <span class="user_order--important"><?=$val_dh['dh_ma']?></span></div>
                                                    <div class="order_time">Ngày đặt: <span class="user_order--important"><?=date("H:i:s d-m-Y",strtotime($val_dh['dh_ngaynhap']));?></span></div>
                                                    <?php if($val_dh['dh_tt'] == '1'):?>
                                                        <div class="time_receive--container"> Ngày nhận: <span class="time_receive"><?=date("d-m-Y",strtotime($val_dh['dh_ngaygiao']));?></span></div>
                                                    <?php endif;?>
                                                </div>
                                                <div class="order_status">
                                                    <?php if($val_dh['dh_tt'] == '0'):?>
                                                        <div class="order_status--item  btn__cancel" data-id_dh="<?=$val_dh['dh_ma']?>">HỦY ĐƠN HÀNG</div>
                                                        <div class="order_status--item order_status--processing">ĐANG XỬ LÝ</div>
                                                    <?php else:?>
                                                        <?php if($val_dh['dh_tt'] == '1'):?>
                                                            <div class="order_status--item order_status--delivery">ĐANG GIAO</div>
                                                        <?php else:?>
                                                            <?php if($val_dh['dh_tt'] == '2'):?>
                                                                <div class="order_status--item order_status--delivered">ĐÃ GIAO</div>
                                                            <?php else:?>
                                                                <div class="order_status--item btn__cancel btn__order" data-id_dh="<?=$val_dh['dh_ma']?>">MUA LẠI</div>
                                                                <div class="order_status--item order_status--cancel">ĐÃ HỦY</div>
                                                            <?php endif;?>
                                                        <?php endif;?>
                                                    <?php endif;?>
                                                        <script>
                                                            $(document).ready(function(){
                                                                $(".btn__cancel").click(function(){
                                                                    var id_dh = $(this).data("id_dh");
                                                                    var cancel = 1;
                                                                    swal({
                                                                        title:"Bạn muốn hủy đơn hàng",
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
                                                                                        title:"Hủy đơn hàng thành công",
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
                                                                            title:"Bạn muốn mua lại đơn hàng",
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
                                                                                            title:"Đặt hàng thành công",
                                                                                            icon:"success",
                                                                                            text:"Đơn hàng của bạn đang được xử lý"
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
                                                        </script>
                                                </div>
                                            </div>
                                            <div class="user_order--item--details">
                                                <?php
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
                                                ?>
                                                <?php $sum = 0;?>
                                                <?php foreach($data_ctdh as $val_ctdh):?>
                                                    <div class="user_order--item--details--item">
                                                        <img src="/../KitiStore/assets/uploads/<?=$val_ctdh['sp_ten']?>/<?=$val_ctdh['sp_ten_mau']?>/<?=$val_ctdh['hinh_anh']?>">
                                                        <div>
                                                            <span class="details">Điện thoại <?=$val_ctdh['sp_ten']?></span></br>
                                                            <span>Màu: <?=$val_ctdh['sp_ten_mau']?></span></br>
                                                            <span>Giá bán: <?=number_format($val_ctdh['sp_gia'],0,',','.')?>đ</span></br>
                                                            <span class="details details-red">x<?=$val_ctdh['soluong']?> sản phẩm</span>
                                                        </div>
                                                        <?php $sum = $sum + $val_ctdh['soluong']*$val_ctdh['sp_gia'];?>
                                                    </div>
                                                <?php endforeach;?>
                                            </div>
                                            <div>
                                                <div class="text-primary">Người nhận: <?=$val_dh['kh_hoten']?> - <?=$val_dh['kh_sdt']?></div>
                                                <div>Địa chỉ nhận hàng: <i class="fas fa-map-marker-alt"></i> <?=$val_dh['dh_noigiao']?></div>
                                                <div class="container_sum">Tổng đơn hàng: <span class="sum"><?=number_format($sum,0,',','.')?>đ</span></div>
                                            </div>
                                        </div>
                                    <?php endforeach;?>
                                </div>
                            <?php endif;?>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div>
        <?php include_once __DIR__ . '/../Layouts/Partials/footer.php'?>
    </div>
</body>
</html>
<?php else: ?>
    <script>
        location.replace("/../KitiStore/");
    </script>
<?php endif;?>