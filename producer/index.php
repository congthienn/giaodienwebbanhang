<!DOCTYPE html>
<html lang="en">
<head>
    <?php $producer = $_GET['producer']?>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title><?=$producer?></title>
</head>
<link rel="stylesheet" href="/../KitiStore/style_index.css">
<link rel="stylesheet" href="/../KitiStore/style_index_responsive.css">
<?php include_once __DIR__ . "/../Layouts/Library/library.php"?>
<body>
    <div>
        <?php include_once __DIR__ . '/../Layouts/Partials/header.php'?>
    </div>
    <div class="main">
        <div class="grid wide">
            <div class="row">
                <div class="col l-8 m-12 c-12">
                    <div id="demo" class="carousel slide img-poster" data-ride="carousel">
                        <a class="prev" href="#demo" data-slide="next">
                            <span><i class="fas fa-chevron-left"></i></span>
                        </a>
                        <div class="carousel-inner">
                            <div class="carousel-item active">
                                <img src="/../KitiStore/assets/uploads/Poster/1.png" width="100%">
                            </div>
                            <div class="carousel-item">
                                <img src="/../KitiStore/assets/uploads/Poster/2.png"  width="100%">
                            </div>
                            <div class="carousel-item">
                                <img src="/../KitiStore/assets/uploads/Poster/3.png"  width="100%">
                            </div>
                            <div class="carousel-item">
                                <img src="/../KitiStore/assets/uploads/Poster/4.png"  width="100%">
                            </div>
                            <div class="carousel-item">
                                <img src="/../KitiStore/assets/uploads/Poster/5.png"  width="100%">
                            </div>
                            <div class="carousel-item">
                                <img src="/../KitiStore/assets/uploads/Poster/6.png"  width="100%">
                            </div>
                        </div>
                        <a class="next" href="#demo" data-slide="prev">
                            <span><i class="fas fa-chevron-right"></i></span>
                        </a>
                    </div>
                </div>
                <div class="col l-4 m-12 c-12">
                    <div class="grid">
                        <div class="row no-gutters poster_mobile">
                            <div class="col l-12 c-6"><img src="/../KitiStore/assets/uploads/Poster/7.png" class="poster_phu" width="100%"></div>
                            <div class="col l-12 c-6"><img src="/../KitiStore/assets/uploads/Poster/8.png" width="100%"></div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="navbar_producer">
                <a href="/../KitiStore/">Điện thoại</a> <i class="fas fa-angle-right"></i> <a href="/../KitiStore/producer/?producer=<?=$producer?>"><?=$producer?></a>
            </div>
        </div>
        <div class="select_sp">
            <?php
                include_once __DIR__ . '/../connect_db.php';
                $sql_select_sp = <<<EOT
                    SELECT * FROM san_pham sp 
                    JOIN nha_san_xuat nsx ON sp.nsx_id = nsx.nsx_id
                    JOIN chitiet_sanpham ctsp ON sp.sp_id=ctsp.sp_id WHERE nsx_ten='$producer'
                EOT;
                $data_sp=[];
                $query_select_sp = mysqli_query($conn,$sql_select_sp);
                while($result_sp = mysqli_fetch_array($query_select_sp,MYSQLI_ASSOC)){
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
                };
            ?>
            <div class="grid wide product">
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
            </div>
        </div>
    </div>
    <div>
        <?php include_once __DIR__ . '/../Layouts/Partials/footer.php'?>
    </div>
</body>
</html>