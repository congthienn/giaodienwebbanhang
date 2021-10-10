<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <?php $product = $_GET['phone']?>
    <title><?=$product?></title>
    <link rel="stylesheet" href="style_product.css">
    <?php include_once __DIR__ . '/../Layouts/Library/library.php'?>
    <?php
        // SELECT sản phẩm
        include_once __DIR__ . '/../connect_db.php';
        $sql_select_sp = <<<EOT
            SELECT * FROM san_pham sp
            JOIN nha_san_xuat nsx ON sp.nsx_id = nsx.nsx_id WHERE sp_ten = '$product';
        EOT;
        $query_select_sp = mysqli_query($conn,$sql_select_sp);
        $result_select_sp = mysqli_fetch_array($query_select_sp,MYSQLI_ASSOC);
        $id_product = $result_select_sp['sp_id'];
        $id_nsx = $result_select_sp['nsx_id'];
    ?>
    <?php
        //SELECT màu sắc sản phẩm
        $sql_select_mau = <<<EOT
            SELECT * FROM sp_mau_sac WHERE sp_id = '$id_product' ORDER BY id ASC
        EOT;
        $data_mau=[];
        $query_select_mau = mysqli_query($conn,$sql_select_mau);
        while($result_mau = mysqli_fetch_array($query_select_mau,MYSQLI_ASSOC)){
            $data_mau[]=array(
                'id' => $result_mau['id'],
                'sp_ten_mau' => $result_mau['sp_ten_mau'],
                'hinh_anh' => $result_mau['hinh_anh']
            );
        }
    ?>
    <?php
        // SELECT Hình tổng quan
        $sql_select_htq = <<<EOT
            SELECT * FROM sp_hinh_tongquan WHERE sp_id = '$id_product'
        EOT;
        $query_select_htq = mysqli_query($conn,$sql_select_htq);
        $data_htq = [];
        while($result_htq = mysqli_fetch_array($query_select_htq,MYSQLI_ASSOC)){
            $data_htq[]=array(
                'ten_file' => $result_htq['ten_file']
            );
        }
    ?>
    <?php
        // SELECT Tổng quan sản phẩm
        $sql_select_tongquan_sp = <<<EOT
            SELECT * FROM chitiet_sanpham WHERE sp_id = '$id_product'
        EOT;
        $query_tongquan_sp = mysqli_query($conn,$sql_select_tongquan_sp);
        $result_tongquan_sp = mysqli_fetch_array($query_tongquan_sp,MYSQLI_ASSOC);
    ?>
    <?php
        // SELECT Chi tiết sản phẩm
        $sql_select_cauhinh_chitiet = <<<EOT
            SELECT * FROM san_pham sp 
            JOIN sp_bo_nho bn ON sp.sp_id = bn.sp_id
            JOIN sp_camera_sau cms ON sp.sp_id = cms.sp_id
            JOIN sp_camera_truoc cmt ON sp.sp_id = cmt.sp_id
            JOIN sp_hdh hdh ON sp.sp_id = hdh.sp_id
            JOIN sp_ket_noi kn ON sp.sp_id = kn.sp_id
            JOIN sp_manhinh mh ON sp.sp_id = mh.sp_id
            JOIN sp_pin pin ON sp.sp_id = pin.sp_id
            JOIN sp_thongtinchung ttc ON sp.sp_id = ttc.sp_id
            JOIN sp_tienich ti ON sp.sp_id = ti.sp_id WHERE sp.sp_id='$id_product';
        EOT;
        $query_cauhinh_chitiet = mysqli_query($conn,$sql_select_cauhinh_chitiet);
        $result_chitiet = mysqli_fetch_array($query_cauhinh_chitiet,MYSQLI_ASSOC);
    ?>
</head>
<body>
    <div><?php include_once __DIR__ . '/../Layouts/Partials/header.php'?></div>
    <div class="main">
        <div class="grid wide">
            <div class="main_navbar">
                <a href="/../KitiStore/">Điện thoại</a> <i class="fas fa-angle-right"></i> <a href="/../KitiStore/producer/?producer=<?=$result_select_sp['nsx_ten']?>"><?=$result_select_sp['nsx_ten']?></a> <span  class="main_navbar_product"><i class="fas fa-angle-right"></i> <span><?=$product?></span></span>
            </div>
            <div class="row main_product">
                <div class="col l-7 c-12">
                    <div class="product_content row">
                        <div class="col l-12 c-12">
                            <div id="demo" class="carousel slide" data-ride="carousel">
                                <?php $i=0;?>
                                <div class="carousel-inner" id="result_img">
                                    <?php foreach($data_htq as $val_htq):?>
                                        <?php $i++;?>
                                        <?php if($i==1):?>
                                            <div class="carousel-item active">
                                                <img src="/../KitiStore/assets/uploads/<?=$product?>/Đặc điểm nổi bật/<?=$val_htq['ten_file']?>" width="100%">
                                            </div>
                                        <?php else:?>
                                            <div class="carousel-item">
                                                <img src="/../KitiStore/assets/uploads/<?=$product?>/Đặc điểm nổi bật/<?=$val_htq['ten_file']?>" width="100%">
                                            </div>
                                        <?php endif?>
                                    <?php endforeach;?> 
                                </div>
                                <div>
                                    <a class="carousel-control-prev" href="#demo" data-slide="prev">
                                    </a>
                                    <a class="carousel-control-next" href="#demo" data-slide="next">
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="product_color">
                        <div class="product_color-item">
                            <div class="item-highlights btn_click btn--content" data-id_color=""><i class="fas fa-medal"></i> Điểm nổi bật </div>
                        </div>
                        <?php foreach($data_mau as $val_mau):?>
                            <div class="product_color-item">
                                <img src="/../KitiStore/assets/uploads/<?=$product?>/<?=$val_mau['sp_ten_mau']?>/<?=$val_mau['hinh_anh']?>" class="btn--content btn_color_product" data-id_color="<?=$val_mau['id']?>">
                            </div>
                        <?php endforeach;?>
                        <script>
                            $(document).ready(function(){
                                $(".btn--content").click(function(){
                                    $(".btn--content").removeClass("btn_click");
                                    $(this).addClass("btn_click");
                                    var id_color = $(this).data("id_color");
                                    var id_product = <?=$id_product?>;
                                    $.ajax({
                                        url:'ajax_img_color.php',
                                        type:'get',
                                        dataType:'json',
                                        data:{
                                            id_color,id_product
                                        },
                                        success:function(result_img){
                                            $("#result_img").html(result_img);
                                        }
                                    });
                                });
                            });
                        </script>
                    </div>
                    <div class="product_promotion">
                        <div class="product_promotion--item">Khuyến mãi lên đến 500.000đ khi mua sản phẩm</div>
                        <ul>
                            <li>Mua online thêm quà: Tặng Phiếu mua hàng Gia dụng trị giá 300,000đ cho Khách hàng tại các tỉnh thành áp dụng chỉ thị 16</li>
                            <li>Tặng Phiếu mua hàng 100,000đ áp dụng mua thẻ cào, thẻ game</li>
                            <li>Nhập mã TGDD100 giảm giảm 3% tối đa 100.000đ khi thanh toán quét QRcode qua App của ngân hàng</li>
                        </ul>
                    </div>
                </div>
                <div class="col l-5 c-12">
                    <div class="row">
                        <div class="col l-5 c-3 i-3">
                            <div class="img_product">
                                <img src="/../KitiStore/assets/uploads/<?=$product?>/<?=$result_select_sp['file_anh']?>">
                            </div>
                        </div>
                        <div class="col l-7 c-9 i-9">
                            <div class="product_introduce">
                                <div class="product_introduce-item product--name">
                                    <span><?=$product?></span>    
                                </div>
                                <div class="product_introduce-item product--price">
                                    <span><?=number_format($result_select_sp['sp_gia'],0,',','.')?>đ</span>
                                </div>
                                <div class="product_introduce-item product--star">
                                    <?php
                                        $sp_id=$result_select_sp['sp_id'];
                                        $sql_select_star = <<<EOT
                                            SELECT SUM(sao) sum , COUNT(sao) quantity FROM danhgia_sanpham WHERE sp_id = '$sp_id';
                                        EOT;
                                        $query_select_star = mysqli_query($conn,$sql_select_star);
                                        $result_star = mysqli_fetch_array($query_select_star,MYSQLI_ASSOC);
                                        if($result_star['quantity']==0){
                                            $avg_star = 0;
                                        }else{
                                            $avg_star = $result_star['sum'] / $result_star['quantity'];
                                        }
                                    ?>
                                    <?php for($i=0;$i<5;$i++):?>
                                        <?php if($i < $avg_star):?>
                                            <i class="fas fa-star"></i>
                                        <?php else:?>
                                            <i class="far fa-star"></i>
                                        <?php endif;?>
                                    <?php endfor;?>
                                </div>
                            </div>
                        </div>
                        <div class="col l-12 i-12 c-12">
                            <div class="buy_product">
                                <button class="btn_buy_product btn_buy">MUA HÀNG</button>
                            </div>
                            <div class="buy_product_mobile">
                                <div>
                                    <button class="btn_buy_product_mobile btn_buy">MUA HÀNG</button>
                                </div>
                            </div>
                            <div class="content_buy">
                                <div class="container_buy_product"></div>
                                <div class="content_buy_product">
                                    <div class="content_buy_product--item content_buy_product--header">
                                        <div>
                                            <div class="content_buy_product--tile">Điện thoại <?=$product?></div>
                                            <div class="content_buy_product--price">Giá bán: <?=number_format($result_select_sp['sp_gia'],0,',','.')?>đ</div>
                                        </div>
                                        <div>
                                            <div class="exit-buy-product">
                                                <i class="fas fa-times"></i>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="content_buy_product--item">
                                        <?php foreach($data_mau as $val_mau):?>
                                            <img src="/../KitiStore/assets/uploads/<?=$product?>/<?=$val_mau['sp_ten_mau']?>/<?=$val_mau['hinh_anh']?>" class="click_buy_product" data-id_mau="<?=$val_mau['id']?>" data-name_color="<?=$val_mau['sp_ten_mau']?>">
                                        <?php endforeach;?>
                                    </div>
                                    <div class="content_buy_product--item">
                                        <span class="quantity_buy_product-title">Chọn số lượng: </span>
                                        <input type="button" value="-" readonly class="quantity_buy_product null btn_reduce">
                                        <input type="text" value="1" readonly class="quantity_buy_product" id="quantity_product_val">
                                        <input type="button" value="+" readonly class="quantity_buy_product btn_increased">
                                        <div id="result_check_buy_product"></div>
                                    </div>
                                    <script>
                                        var id_color=0;
                                        var val_quantity = $("#quantity_product_val").prop("value");
                                        $(document).ready(function(){
                                            $(".click_buy_product").click(function(){
                                                id_color= $(this).data("id_mau");
                                                var name_color = $(this).data("name_color");
                                                $(".content_buy_product--item img.click_buy").removeClass("click_buy");
                                                $(this).addClass("click_buy");
                                                $("#result_error").remove();
                                            });
                                            $(".btn_increased").click(function(){
                                                if(val_quantity <=4 ){
                                                    val_quantity++;
                                                    $("#quantity_product_val").val(val_quantity);
                                                    if(val_quantity==5){
                                                        $(this).addClass("null");
                                                    }
                                                    if(val_quantity > 1){
                                                        $(".btn_reduce").removeClass("null");
                                                    }
                                                }
                                            });
                                            $(".btn_reduce").click(function(){
                                                if(val_quantity  >= 2){
                                                    val_quantity--;
                                                    $("#quantity_product_val").val(val_quantity);
                                                    if(val_quantity==1){
                                                        $(this).addClass("null");
                                                    }
                                                    if(val_quantity < 5){
                                                        $(".btn_increased").removeClass("null");
                                                    }
                                                }
                                            });
                                        });
                                    </script>
                                    <div class="content_buy_product--item content_buy_product--btn">
                                        <button class="btn_add_cart btn_buy_cart">THÊM VÀO GIỎ HÀNG</button>
                                    </div>
                                    <div class="content_buy_product--item">
                                        <ul>
                                            <li>Mua online thêm quà: Tặng Phiếu mua hàng Gia dụng trị giá 300,000đ cho Khách hàng tại các tỉnh thành áp dụng chỉ thị 16</li>
                                            <li>Tặng Phiếu mua hàng 100,000đ áp dụng mua thẻ cào, thẻ game</li>
                                            <li>Nhập mã KITI100 giảm giảm 3% tối đa 100.000đ khi thanh toán quét QRcode qua App của ngân hàng</li>
                                        </ul>
                                    </div>
                                    <div class="content_buy_product--item content_buy_product--btn">
                                        <button class="btn_add_cart_mobile btn_buy_cart">THÊM VÀO GIỎ HÀNG</button>
                                    </div>
                                    <script>
                                        $(".btn_buy_cart").click(function(){
                                            var id_product = <?=$id_product?>;
                                            if(id_color==0){
                                                $("#result_check_buy_product").html('<span id="result_error"><i class="fas fa-exclamation-circle"></i> Vui lòng chọn màu sản phẩm</span>');
                                            }else{
                                                $.ajax({
                                                    url:"ajax_cart.php",
                                                    type:"get",
                                                    dataType:"json",
                                                    data:{
                                                        id_product,id_color,val_quantity
                                                    },
                                                    success:function(reuslt){
                                                        if(reuslt=="success"){
                                                            swal({
                                                                icon:"success",
                                                                text:"Thêm vào giỏ hàng thành công"
                                                            })
                                                            .then((ok)=>{
                                                                location.reload();
                                                            }); 
                                                        }else if(reuslt !=="success"){
                                                            swal({
                                                                icon:"error",
                                                                text:"Giỏ hàng của bạn đang có "+ reuslt+" sản phẩm"
                                                            });
                                                        }
                                                    }
                                                });
                                            }
                                        });
                                    </script>       
                                </div>
                            </div>
                            <script>
                                $(document).ready(function(){
                                    $(".btn_buy").click(function(){
                                        $(".content_buy").addClass("show");
                                    });
                                    $(".exit-buy-product").click(function(){
                                        $(".content_buy").removeClass("show");
                                    });
                                    $(".container_buy_product").click(function(){
                                        $(".content_buy").removeClass("show");
                                    });
                                });
                            </script>         
                        </div>
                    </div>
                   <div class="row">
                        <div class="col l-12">
                            <div class="phone_configuration">
                                <div class="phone_configuration--title">
                                    Cấu hình điện thoại <?=$product?>
                                </div>
                                <div class="phone_configuration--item">
                                    <span class="configuration_title">Màn hình:</span><span class="configuration_content"><?=$result_tongquan_sp['man_hinh']?></span>
                                </div>
                                <div class="phone_configuration--item">
                                    <span class="configuration_title">Hệ điều hành:</span><span class="configuration_content"><?=$result_tongquan_sp['he_dieu_hanh']?></span>
                                </div>
                                <div class="phone_configuration--item">
                                    <span class="configuration_title">Camera sau:</span><span class="configuration_content"><?=$result_tongquan_sp['camera_sau']?></span>
                                </div>
                                <div class="phone_configuration--item">
                                    <span class="configuration_title">Camera trước:</span><span class="configuration_content"><?=$result_tongquan_sp['camera_truoc']?></span>
                                </div>
                                <div class="phone_configuration--item">
                                    <span class="configuration_title">Chip:</span><span class="configuration_content"><?=$result_tongquan_sp['chip']?></span>
                                </div>
                                <div class="phone_configuration--item">
                                    <span class="configuration_title">Ram:</span><span class="configuration_content"><?=$result_tongquan_sp['ram']?></span>
                                </div>
                                <div class="phone_configuration--item">
                                    <span class="configuration_title">Bộ nhớ trong:</span><span class="configuration_content"><?=$result_tongquan_sp['bo_nho_trong']?></span>
                                </div>
                                <div class="phone_configuration--item">
                                    <span class="configuration_title">Sim:</span><span class="configuration_content"><?=$result_tongquan_sp['sim']?></span>
                                </div>
                                <div class="phone_configuration--item">
                                    <span class="configuration_title">Pin sạc:</span><span class="configuration_content"><?=$result_tongquan_sp['pin_sac']?></span>
                                </div>
                            </div>
                            <div class="phone_configuration--more">
                                <label for="check_configuration" class="btn-configuration--more">Xem thêm cấu hình chi tiết <i class="fas fa-caret-right"></i></label>
                            </div>
                            <input type="checkbox" id="check_configuration" hidden>
                            <div class="configuration--more">
                                <label for="check_configuration" class="configuration"></label>
                                <div class="configuration--content">
                                    <div class="configuration--content_sublite">
                                        <div>Thông tin cấu hình chi tiết</div>
                                        <div><label for="check_configuration"><i class="fas fa-times"></i></label></div>
                                    </div>
                                    <table class="details-content">
                                        <tr class="img_configuration">
                                            <td colspan="2">
                                                <img src="/../KitiStore/assets/uploads/<?=$product?>/<?=$result_tongquan_sp['ten_file']?>" width="100%">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td colspan="2" class="font-weight-bolder">Màn hình</td>
                                        </tr>
                                        <tr class="configuration-item">
                                            <td class="details-content-item">Công nghệ màn hình:</td>
                                            <td><?=$result_chitiet['cong_nghe'];?></td>
                                        </tr>
                                        <tr class="configuration-item">
                                            <td class="details-content-item">Độ phân giải:</td>
                                            <td><?=$result_chitiet['do_phan_giai'];?></td>
                                        </tr>
                                        <tr class="configuration-item">
                                            <td class="details-content-item">Màn hình rộng:</td>
                                            <td><?=$result_chitiet['man_hinh_rong'];?></td>
                                        </tr>
                                        <tr class="configuration-item">
                                            <td class="details-content-item">Độ sáng tối đa:</td>
                                            <td><?=$result_chitiet['do_sang'];?></td>
                                        </tr>
                                        <tr class="configuration-item">
                                            <td class="details-content-item">Mặt kính cảm ứng:</td>
                                            <td><?=$result_chitiet['mat_kinh'];?></td>
                                        </tr>
                                        <tr>
                                            <td colspan="2" class="font-weight-bolder">Camera sau</td>
                                        </tr>
                                        <tr class="configuration-item">
                                            <td class="details-content-item">Độ phân giải:</td>
                                            <td><?=$result_chitiet['do_phan_giai']?></td>
                                        </tr>
                                        <tr class="configuration-item">
                                            <td  class="details-content-item">Quay phim:</td>
                                            <td><?=$result_chitiet['quay_phim']?></td>
                                        </tr>
                                        <tr class="configuration-item">
                                            <td class="details-content-item">Đèn flash:</td>
                                            <td><?=$result_chitiet['den_flash']?></td>
                                        </tr>
                                        <tr class="configuration-item">
                                            <td  class="details-content-item">Tính năng:</td>
                                            <td><?=$result_chitiet['tinh_nang']?></td>
                                        </tr>
                                        <tr>
                                            <td colspan="2" class="font-weight-bolder">Camera trước</td>
                                        </tr>
                                        <tr class="configuration-item">
                                            <td class="details-content-item">Độ phân giải:</td>
                                            <td><?=$result_chitiet['do_phan_giai']?></td>
                                        </tr>
                                        <tr class="configuration-item">
                                            <td class="details-content-item">Tính năng:</td>
                                            <td><?=$result_chitiet['tinh_nang']?></td>
                                        </tr>
                                        <tr>
                                            <td colspan="2" class="font-weight-bolder">Hệ điều hành</td>
                                        </tr>
                                        <tr class="configuration-item">
                                            <td class="details-content-item" width="40%">Hệ điều hành:</td>
                                            <td><?=$result_chitiet['hdh']?></td>
                                        </tr>
                                        <tr class="configuration-item">
                                            <td class="details-content-item">Chip xử lý:</td>
                                            <td><?=$result_chitiet['chip_xu_ly']?></td>
                                        </tr>
                                        <tr class="configuration-item">
                                            <td class="details-content-item">Chip đồ họa:</td>
                                            <td><?=$result_chitiet['chip_do_hoa']?></td>
                                        </tr>
                                        <tr class="configuration-item">
                                            <td class="details-content-item">Tốc độ CPU:</td>
                                            <td><?=$result_chitiet['toc_do_cpu']?></td>
                                        </tr>
                                        <tr>
                                            <td colspan="2" class="font-weight-bolder">Bộ nhớ & lưu trữ</td>
                                        </tr>
                                        <tr class="configuration-item">
                                            <td class="details-content-item" width="40%">Ram:</td>
                                            <td><?=$result_chitiet['ram']?></td>
                                        </tr>
                                        <tr class="configuration-item">
                                            <td class="details-content-item">Bộ nhớ trong:</td>
                                            <td><?=$result_chitiet['bo_nho_trong']?></td>
                                        </tr>
                                        <tr class="configuration-item">
                                            <td class="details-content-item">Bộ nhớ còn lại:</td>
                                            <td><?=$result_chitiet['bo_nho_con_lai']?></td>
                                        </tr>
                                        <tr class="configuration-item">
                                            <td class="details-content-item">Thẻ nhớ:</td>
                                            <td><?=$result_chitiet['the_nho']?></td>
                                        </tr>
                                        <tr class="configuration-item">
                                            <td class="details-content-item">Danh bạ:</td>
                                            <td><?=$result_chitiet['danh_ba']?></td>
                                        </tr>
                                        <tr>
                                            <td colspan="2" class="font-weight-bolder">Kết nối</td>
                                        </tr>  
                                        <tr class="configuration-item">
                                            <td class="details-content-item" width="40%">Mạng di động:</td>
                                            <td><?=$result_chitiet['mang_di_dong']?></td>
                                        </tr>
                                        <tr class="configuration-item">
                                            <td class="details-content-item">Sim:</td>
                                            <td><?=$result_chitiet['sim']?></td>
                                        </tr>
                                        <tr class="configuration-item">
                                            <td class="details-content-item">Wifi:</td>
                                            <td><?=$result_chitiet['wifi']?></td>
                                        </tr>
                                        <tr class="configuration-item">
                                            <td class="details-content-item">GPS:</td>
                                            <td><?=$result_chitiet['gps']?></td>
                                        </tr>
                                        <tr class="configuration-item">
                                            <td class="details-content-item">Bluetooth:</td>
                                            <td><?=$result_chitiet['bluetooth']?></td>
                                        </tr>
                                        <tr>
                                            <td colspan="2" class="font-weight-bolder">Pin sạc</td>
                                        </tr>
                                        <tr class="configuration-item">
                                            <td class="details-content-item">Dung lượng:</td>
                                        <td><?=$result_chitiet['dung_luong']?></td>
                                        </tr>
                                        <tr class="configuration-item">
                                            <td class="details-content-item">Loại:</td>
                                            <td><?=$result_chitiet['loai']?></td>
                                        </tr>
                                        <tr class="configuration-item">
                                            <td class="details-content-item">Công nghệ pin:</td>
                                            <td><?=$result_chitiet['cong_nghe_pin']?></td>
                                        </tr>
                                        <tr>
                                            <td colspan="2" class="font-weight-bolder">Tiện ích</td>
                                        </tr>
                                        <tr class="configuration-item">
                                            <td class="details-content-item" width="38%">Bảo mật nâng cao:</td>
                                            <td><?=$result_chitiet['bao_mat']?></td>
                                        </tr>
                                        <tr class="configuration-item">
                                            <td class="details-content-item">Tính năng đặc biệt:</td>
                                            <td><?=$result_chitiet['tinh_nang_db']?></td>
                                        </tr>
                                        <tr>
                                            <td colspan="2" class="font-weight-bolder">Thông tin chung</td>
                                        </tr>
                                        <tr class="configuration-item">
                                            <td class="details-content-item" width="38%">Thiết kế:</td>
                                            <td><?=$result_chitiet['thiet_ke']?></td>
                                        </tr>
                                        <tr class="configuration-item">
                                            <td class="details-content-item">Chất liệu:</td>
                                            <td><?=$result_chitiet['chat_lieu']?></td>
                                        </tr>
                                        <tr class="configuration-item">
                                            <td class="details-content-item">Kích thước, khối lượng:</td>
                                            <td><?=$result_chitiet['kt_kl']?></td>
                                        </tr>
                                        <tr class="configuration-item">
                                            <td class="details-content-item">Thời điểm ra mắt:</td>
                                            <td><?=$result_chitiet['thoi_diem_ra_mat']?></td>
                                        </tr>
                                        <tr></tr>
                                        <tr></tr>
                                    </table>
                                </div>
                            </div>
                        </div>
                   </div>
                </div>
            </div>
            <div class="main_assess">
                <div class="row">
                    <div class="col l-7 c-12">
                        <div class="sale">
                            <div><i class="fas fa-redo-alt"></i> <span>Hoàn đổi sản phẩm trong 30 ngày đối với sản phẩm lỗi</span></div>
                            <div><i class="fas fa-shield-alt"></i> <span>Bảo hành chính hãng trong thời gian 18 tháng</span></div>
                            <div><i class="fas fa-box-open"></i> <span>Bộ sản phẩm gồm: Hộp, Sách hướng dẫn, Cây lấy sim, Cáp Type C, Củ sạc rời đầu Type A</span></div>
                        </div>
                        <div class="assess-item">
                            <div class="assess-item--img">
                                <div class="assess-item--title"><i class="fas fa-cube"></i> Thông số kỹ thuật</div>
                                <img src="/../KitiStore/assets/uploads/<?=$product?>/<?=$result_tongquan_sp['ten_file']?>" width="100%">
                            </div>
                            <div class="assess-item--title"><i class="fas fa-comment"></i> Bài biết đánh giá</div>
                            <div class="assess-item--content">
                                <?=$result_select_sp['sp_gioithieu']?>
                            </div>
                        </div>
                        <div class="comment_products">
                            <div class="assess-item--title"><i class="fas fa-comments"></i> Đánh giá điện thoại <?=$product?></div>
                            <?php
                                $sql_select_danh_gia = <<<EOT
                                    SELECT * FROM danhgia_sanpham WHERE sp_id = '$id_product'
                                EOT;
                                $query_select_danh_gia = mysqli_query($conn,$sql_select_danh_gia);
                                $data_comments=[];
                                $quantity_comments=0;
                                $sum_star=0;
                                $data_sao['1']=$data_sao['2']=$data_sao['3']=$data_sao['4']=$data_sao['5']=0;
                                while($result_comments = mysqli_fetch_array($query_select_danh_gia,MYSQLI_ASSOC)){
                                    $quantity_comments++;
                                    $sum_star=$sum_star+$result_comments['sao'];
                                    $data_comments[]=array(
                                        'danh_gia' => $result_comments['danh_gia'],
                                        'kh_hoten' => $result_comments['kh_hoten'],
                                        'sao' => $result_comments['sao']
                                    );
                                    switch($result_comments['sao']){
                                        case 1:
                                            $data_sao['1']++;
                                            break;
                                        case 2:
                                            $data_sao['2']++;
                                            break;
                                        case 3:
                                            $data_sao['3']++;
                                            break;
                                        case 4:
                                            $data_sao['4']++;
                                            break;
                                        case 5:
                                            $data_sao['5']++;
                                            break;
                                        default:
                                            break;
                                    }
                                }
                                if($quantity_comments!=0){
                                     $avg_star = $sum_star / $quantity_comments;
                                }else{
                                    $avg_star=0;
                                }
                            ?>
                            <div class="row">
                                <div class="col l-4 i-4 c-12">
                                    <div class="comment_overview">
                                        <div class="comment_overview--avg"><?=number_format($avg_star,1,'.',',')?></div>
                                        <?php for($i=1;$i<=5;$i++):?>
                                            <?php if($i < $avg_star):?>
                                                <i class="fas fa-star" style="color: orange;"></i>
                                            <?php else:?>
                                                <i class="far fa-star" style="color: orange;"></i>
                                            <?php endif;?>
                                        <?php endfor;?>
                                        <div class="comment_overview_sum">(<?=$quantity_comments?> đánh giá)</div>
                                    </div>
                                </div>
                                <div class="col l-8 i-8 c-12">
                                    <div class="comment_overview">
                                        <?php for($j=1; $j<=5;$j++):?> 
                                            <div class="comment_overview--content">
                                                <div>
                                                    <?php for($i=1;$i<=5;$i++):?>
                                                        <?php if($j >= $i):?>
                                                            <i class="fas fa-star" style="color: orange;"></i>
                                                        <?php else:?>
                                                            <i class="far fa-star" style="color: orange;"></i>
                                                        <?php endif;?>
                                                    <?php endfor;?>
                                                </div>
                                                <?php if($quantity_comments!=0):?>
                                                    <div class="progress precent" style="height: 12px;">
                                                        <div class="progress-bar precent_color" style="width:<?=number_format(($data_sao["$j"]/$quantity_comments)*100,'0','.',',')?>%"><?=number_format(($data_sao["$j"]/$quantity_comments)*100,'2','.',',')?>%</div>
                                                    </div>
                                                <?php else:?>
                                                    <div class="progress precent" style="height: 12px;">
                                                        <div class="progress-bar precent_color" style="width:0%">0%</div>
                                                    </div>
                                                <?php endif;?>
                                            </div>
                                        <?php endfor;?>
                                    </div>
                                </div>
                                <div class="col l-12">
                                    <div class="comments_user">
                                        <?php $x=0;?>
                                        <?php foreach($data_comments as $val_comments):?>
                                            <?php $x++;?>
                                            <?php if($x <= 3):?>
                                                <div class="comments__item">
                                                    <div class="comments__item--user">
                                                        <?=$val_comments['kh_hoten']?>
                                                    </div>
                                                    <div class="comments__item--star">
                                                        <?php for($i=1;$i<=5;$i++):?>
                                                            <?php if($i<=$val_comments['sao']):?>
                                                                <i class="fas fa-star" style="color: orange;"></i>
                                                            <?php else:?>
                                                                <i class="far fa-star" style="color: orange;"></i>
                                                            <?php endif;?>
                                                        <?php endfor;?>
                                                    </div>
                                                    <div class="comments__item--comment">
                                                        <?=$val_comments['danh_gia']?>
                                                    </div>
                                                </div>
                                            <?php else:?>
                                                <div class="comments__item hide">
                                                    <div class="comments__item--user">
                                                        <?=$val_comments['kh_hoten']?>
                                                    </div>
                                                    <div class="comments__item--star">
                                                        <?php for($i=1;$i<=5;$i++):?>
                                                            <?php if($i<=$val_comments['sao']):?>
                                                                <i class="fas fa-star" style="color: orange;"></i>
                                                            <?php else:?>
                                                                <i class="far fa-star" style="color: orange;"></i>
                                                            <?php endif;?>
                                                        <?php endfor;?>
                                                    </div>
                                                    <div class="comments__item--comment">
                                                        <?=$val_comments['danh_gia']?>
                                                    </div>
                                                </div>
                                            <?php endif?>
                                        <?php endforeach;?>
                                    </div>
                                </div>
                                <div class="col l-12 i-12 c-12">
                                    <div class="btn_comment">
                                        <?php if($x > 3):?>
                                            <button class="btn_comment-item btn_more-comment">Xem tất cả đánh giá</button>
                                            <script>
                                                $(document).ready(function(){
                                                    $(".btn_more-comment").click(function(){
                                                        $(".comments__item").removeClass("hide");
                                                        $(".btn_more-comment").remove();
                                                    });
                                                });
                                            </script>
                                        <?php endif;?>
                                        <button class="btn_comment-item btn_add-comment">Viết đánh giá</button>
                                        <script>
                                            $(document).ready(function(){
                                                $(".btn_add-comment").click(function(){
                                                    $(".add_comment").addClass("show");
                                                });
                                                $(".add_comment-container").click(function(){
                                                    $(".add_comment").removeClass("show");
                                                });
                                                $(".add_comment-content--title .fa-times").click(function(){
                                                    $(".add_comment").removeClass("show");
                                                });
                                            });
                                        </script>
                                        <div class="add_comment">
                                            <div class="add_comment-container"></div>
                                            <div class="add_comment-content">
                                                <div class="add_comment-content-item add_comment-content--title">
                                                    <span><i class="fas fa-edit"></i> Đánh giá sản phẩm <?=$product?></span>
                                                    <span style="margin-left: 10px;"><i class="fas fa-times"></i></span>
                                                </div>
                                                <div class="add_comment-content-item add_comment-content--content">
                                                    <textarea id="comment" rows="6" placeholder="Mong bạn chia sẻ một số cảm nhận để công ty có thể biết thêm về sản phẩm và có thể thay đổi kịp thời..."></textarea>
                                                </div>
                                                <div class="add_comment-content-item">
                                                    <div class="row">
                                                        <div class="col l-5 c-12">
                                                            <div class="comment_star_title">Quý khách cảm thấy thế nào về sản phẩm? </div>
                                                        </div>
                                                        <div class="col- l-7 c-12">
                                                            <div class="comment_star">
                                                                <div>
                                                                    <input type="radio" class="star" name="star" id="star1" value="5">
                                                                    <label for="star1"><i class="fas fa-star"></i></label>
                                                                    <input type="radio" class="star" name="star" id="star2" value="4">
                                                                    <label for="star2" ><i class="fas fa-star"></i></label>
                                                                    <input type="radio" class="star" name="star" id="star3" value="3">
                                                                    <label for="star3" ><i class="fas fa-star"></i></label>
                                                                    <input type="radio" class="star" name="star" id="star4" value="2">
                                                                    <label for="star4"><i class="fas fa-star"></i></label>
                                                                    <input type="radio" class="star" name="star" id="star5" value="1">
                                                                    <label for="star5" ><i class="fas fa-star"></i></label>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="add_comment-content-item information_user">
                                                    <div class="row">
                                                        <?php
                                                            $user_id_comment="";
                                                            if(isset($_SESSION['user_id']) && !empty($_SESSION['user_id'])){
                                                                $user_id_comment=$_SESSION['user_id'];
                                                            }
                                                            $sql_select_infomation_user = <<<EOT
                                                                SELECT * FROM khach_hang WHERE kh_maso = '$user_id_comment';
                                                            EOT;
                                                            $query_infomation_user = mysqli_query($conn,$sql_select_infomation_user);
                                                            $result_infomation_user = mysqli_fetch_array($query_infomation_user,MYSQLI_ASSOC);
                                                            if($result_infomation_user==0){
                                                                $result_infomation_user['kh_hoten'] = $result_infomation_user['kh_sdt'] = $result_infomation_user['kh_email'] = "";
                                                            }
                                                        ?>
                                                        <div class="col l-5 i-12 c-12">
                                                            <div class="information_user-name information-item">
                                                                <input type="text" placeholder="Họ và tên khách hàng (*)" id="user_name" value="<?=$result_infomation_user['kh_hoten']?>">
                                                            </div>
                                                        </div>
                                                        <div class="col l-3 i-12 c-12">
                                                            <div class="information_user-phone information-item">
                                                                <input type="tel" placeholder="Số điện thoại (*)" id="user_phone"value="<?=$result_infomation_user['kh_sdt']?>">
                                                            </div>
                                                        </div>
                                                        <div class="col l-4 i-12 c-12">
                                                            <div class="information_user-email information-item">
                                                                <input type="text" placeholder="Địa chỉ email" id="user_email" value="<?=$result_infomation_user['kh_email']?>">
                                                            </div>
                                                        </div>
                                                        <div class="col l-12 i-12 c-12">
                                                            <div id="result_error_comment"></div>
                                                        </div>
                                                        <div class="col l-12 i-12 c-12">
                                                            <div class="xyz">Mong quý khách để lại thông tin để công ty chúng tôi có thể liên lạc, KITI xin chân thành cảm ơn !</div>
                                                        </div>
                                                        <div class="col l-12 i-12 c-12">
                                                            <div class="container_btn">
                                                                <button class="btn_add_comment btn_submit_comment">Gửi đánh giá</button>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <script>
                                                    $(document).ready(function(){
                                                        var star=0;
                                                        $(".star").click(function(){
                                                            star = $(this).val();
                                                        });
                                                        $(".btn_submit_comment").click(function(){
                                                            var comment = $("#comment").val();
                                                            var user_name = $("#user_name").val();
                                                            var user_phone = $("#user_phone").val();
                                                            var user_email = $("#user_email").val();
                                                            var id_product = <?=$id_product?>;
                                                            if(comment==""){
                                                                $("#result_error_comment").html('<i class="fas fa-exclamation-circle"></i> Quý khách vui lòng nhập đánh giá cho sản phẩm');
                                                            }else if(star==0){
                                                                $("#result_error_comment").html('<i class="fas fa-exclamation-circle"></i> Quý khách vui lòng đánh giá sao cho sản phẩm');
                                                            }else if((user_name=="") || (user_phone=="")){
                                                                $("#result_error_comment").html('<i class="fas fa-exclamation-circle"></i> Quý khách vui lòng nhập thông tin cá nhân');
                                                            }else if(user_phone.length != 10 || !Number(user_phone)){
                                                                $("#result_error_comment").html('<i class="fas fa-exclamation-circle"></i> Số điện thoại không hợp lệ');
                                                            }else{
                                                                $(".container_btn").html('<button class="btn_add_comment"><span class="spinner-border spinner-border-sm loading_comment"></span> Gửi đánh giá</button>');
                                                                $.ajax({
                                                                    url:"ajax_comments.php",
                                                                    type:'get',
                                                                    dataType:'json',
                                                                    data:{
                                                                        id_product,user_name,user_phone,user_email,star,comment
                                                                    },
                                                                    success:function(result){
                                                                        if(result==1){
                                                                            swal({
                                                                                title:"Đánh giá thành công",
                                                                                icon:"success",
                                                                                text:"Cảm ơn quý khách đã đánh giá góp ý!"
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
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="related_products">
                <div class="assess-item--title">
                    <i class="fas fa-mobile-alt"></i> Sản phẩm liên quan
                </div>
                <div class="related_products_item--content">
                    <?php
                        $sql_select_sp_lienquan = <<<EOT
                            SELECT * FROM san_pham sp 
                            JOIN nha_san_xuat nsx ON sp.nsx_id = nsx.nsx_id 
                            JOIN chitiet_sanpham ctsp ON sp.sp_id = ctsp.sp_id
                            WHERE nsx.nsx_id = '$id_nsx' AND sp.sp_id != '$id_product'
                        EOT;
                        $data_sp=[];
                        $query_sp_lienquan = mysqli_query($conn,$sql_select_sp_lienquan);
                        $i=0;
                        while($result_sp = mysqli_fetch_array($query_sp_lienquan,MYSQLI_ASSOC)){
                            if($i==5){
                                break;
                            }
                            $i++;
                            $data_sp[]=array(
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
                    <?php foreach($data_sp as $val_sp):?>
                            <a class="related_products-item" href="/../KitiStore/product/?phone=<?=$val_sp['sp_ten']?>">
                                <div class="related_products-content">
                                    <img src="/../KitiStore/assets/uploads/<?=$val_sp['sp_ten']?>/<?=$val_sp['file_anh']?>" width="100%">
                                    <div class="related__item">
                                        <div class="related__item--name-product"><?=$val_sp['sp_ten']?></div>
                                    </div>
                                    <div class="related__item">
                                        <span class="related__item--price-product"><?=number_format($val_sp['sp_gia'],0,',','.')?>đ</span>
                                    </div>
                                    <div class="related__item related__item_content">
                                        <span>Màn hình: <?=$val_sp['man_hinh']?></span></br>
                                        <span>RAM: <?=$val_sp['ram']?> - ROM: <?=$val_sp['bo_nho_trong']?></span></br>
                                        <span>Camera sau: <?=$val_sp['camera_sau']?></span></br>
                                        <span>Camera trước: <?=$val_sp['camera_truoc']?></span></br>
                                    </div>
                                </div>
                            </a>
                    <?php endforeach;?>
                </div>
            </div>
        </div>
    </div>
    <div><?php include_once __DIR__ . '/../Layouts/Partials/footer.php'?></div>
</body>
</html>