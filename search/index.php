<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <?php  
        $key = isset($_GET['key']) && !empty($_GET['key']) ? $_GET['key']: ""; 
        if(empty($key)){
            echo "<script>window.location.replace('/../KitiStore/')</script>";
        }
    ?>
    <title>Kết quả tìm kiếm <?=$key?> | KITI STORE</title>
    <?php
        if(!empty($key)){
            if(isset($_COOKIE['search']) && !empty($_COOKIE['search'])){
                $data_history = [];
                $data_history = json_decode($_COOKIE['search'],true);
                if(!in_array($key,$data_history)){
                    $data_history[]=$key;
                }
                $data_temp=array_slice(array_reverse($data_history),0,5);
                $data_history = array_reverse($data_temp);
                setcookie("search",json_encode($data_history),time()+(24*30*3600),"/");
            }else{
                $data_history[]=$key;
                setcookie("search",json_encode($data_history),time()+(24*30*3600),"/");
            }
            // setcookie("search","1",time()-60,"/");
        }
    ?>
</head>
<?php include_once __DIR__ .'/../Layouts/Library/library.php'?>
<link rel="stylesheet" href="/../KitiStore/style_index.css">
<link rel="stylesheet" href="/../KitiStore/style_index_responsive.css">
<link rel="stylesheet" href="/../KitiStore/product/style_product.css">
<link rel="stylesheet" href="style_search.css">
<body>
    <div>
        <?php include_once __DIR__ . '/../Layouts/Partials/header.php'?>
    </div>
    <div class="main">
        <div class="grid wide">
            <div class="search__header">
                <a href="/../KitiStore/">Trang chủ</a> <i class="fas fa-angle-right"></i> Tìm kiếm
            </div>
            <div class="search__content">
                    <?php
                        include_once __DIR__ . '/../connect_db.php';
                        $sql_select_sp = <<<EOT
                            SELECT * FROM san_pham sp 
                            JOIN nha_san_xuat nsx ON sp.nsx_id = nsx.nsx_id
                            JOIN chitiet_sanpham ctsp ON sp.sp_id=ctsp.sp_id
                        EOT;
                        $data_sp=[];
                        $query_select_sp = mysqli_query($conn,$sql_select_sp);
                        while($result_sp = mysqli_fetch_array($query_select_sp,MYSQLI_ASSOC)){
                            if(is_numeric(strpos(strtolower($result_sp['sp_ten']),strtolower($key)))){
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
                        };
                    ?>
                    <div class="product">
                        <?php if(!empty($data_sp)):?>
                            <div class="search_product--header">
                                <i class="fas fa-search"></i> Tìm thấy <?=count($data_sp)?> sản phẩm phù hợp
                            </div>
                            <div class="row no-gutters" id="result_filter">
                                <?php foreach($data_sp as $val_sp):?>
                                    <a class="col l-3 c-6 i-4 product__item" href="/../KitiStore/product/?phone=<?=$val_sp['sp_ten']?>">
                                        <div class="product__item-img">
                                            <img src="/../KitiStore/assets/uploads/<?=$val_sp['sp_ten']?>/<?=$val_sp['file_anh']?>">
                                        </div>
                                        <div class="product__item-content">
                                            <div class="product__item-content--name"><?=$val_sp['sp_ten']?></div>
                                            <div class="product__item-content--price"><?=number_format($val_sp['sp_gia'],0,',','.')?>đ</div>
                                            <div class="product__item-content--overview">
                                                <span>Màn hình: <?=$val_sp['man_hinh']?></span></br>
                                                <span>RAM: <?=$val_sp['ram']?> - ROM: <?=$val_sp['bo_nho_trong']?></span></br>
                                                <span>Camera sau: <?=$val_sp['camera_sau']?></span></br>
                                                <span>Camera trước: <?=$val_sp['camera_truoc']?></span></br>
                                                <span>Chip xử lý: <?=$val_sp['chip']?></span></br>
                                                <span>Pin sạc: <?=$val_sp['pin_sac']?></span></br> 
                                            </div>
                                        </div>
                                    </a>
                                <?php endforeach;?>
                            </div>
                        <?php else:?>
                            <div>
                                <?php include_once __DIR__ . '/../filter.php'?>
                            </div>
                            <div class="select_sp">
                                <div class="row no-gutters" id="result_filter">
                                    <div class="col l-12">
                                        <div class="empty__search--content">
                                            <div class="empty__search--icon"><i class="fas fa-search"></i></div>
                                                Không tìm thấy sản phẩm phù hợp
                                        </div>
                                    </div>
                                </div>
                            </div>
                        <?php endif;?>
                    </div>
                            <div class="related_products">
                                <div class="assess-item--title">
                                    <i class="fas fa-mobile-alt"></i> Top sản phẩm bán chạy
                                </div>
                                <div class="related_products_item--content">
                                    <?php
                                        $sql_select_sp_banchay = <<<EOT
                                            SELECT sp_id, SUM(soluong) soluong_ban FROM sanpham_donhang GROUP BY (sp_id) ORDER BY soluong_ban DESC LIMIT 5
                                        EOT;
                                        $data_id_sp=[];
                                        $query_sp_banchay = mysqli_query($conn,$sql_select_sp_banchay);
                                        while($result_sp_banchay = mysqli_fetch_array($query_sp_banchay,MYSQLI_ASSOC)){
                                            $data_id_sp[]=$result_sp_banchay['sp_id'];
                                        }
                                        $sql_select_sp_lienquan = "
                                            SELECT * FROM san_pham sp 
                                            JOIN chitiet_sanpham ctsp ON sp.sp_id = ctsp.sp_id
                                            WHERE  sp.sp_id IN('".implode("','",$data_id_sp)."')";
                                        $data_sp=[];
                                        $query_sp_lienquan = mysqli_query($conn,$sql_select_sp_lienquan);
                                        $i=0;
                                        while($result_sp = mysqli_fetch_array($query_sp_lienquan,MYSQLI_ASSOC)){
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
        </div>
    <div>
        <?php include_once __DIR__ . '/../Layouts/Partials/footer.php'?>
    </div>
</body>
</html>