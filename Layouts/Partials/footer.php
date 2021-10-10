<link rel="stylesheet" href="/../KitiStore/Layouts/Partials/style_footer.css">
<footer>
    <div class="grid wide">
        <div class="row footer_title">
            <div class="col l-6 c-12 i-6">
                <div class="cooperate">
                    <div class="title"><i class="fas fa-handshake"></i> Thương hiệu hợp tác</div>
                    <div class="cooperate--certification">
                        <img src="/../KitiStore/assets/uploads/Poster/dmca_protected_31_120.png" width="15%">
                        <img src="/../KitiStore//assets/uploads/Poster/logoSaleNoti.png" width="20%">
                    </div>
                    <div class="cooperate_nsx">
                        <?php foreach($data_nsx as $val_nsx):?>
                            <a href="/../KitiStore/producer/?producer=<?=$val_nsx['nsx_ten']?>"><img src="/../KitiStore/assets/uploads/Logo_nsx/<?=$val_nsx['nsx_ten']?>/<?=$val_nsx['ten_file']?>"></a>
                        <?php endforeach;?>
                    </div>
                </div>
            </div>
            <div class="col l-6 c-12 i-6">
                <div class="payment_support">
                    <div class="title"><i class="fas fa-university"></i> Hỗ trợ thanh toán</div>   
                    <img src="/../KitiStore/assets/uploads/Poster/momo.jpg">
                    <img src="/../KitiStore/assets/uploads/Poster/ocb.png" >
                    <img src="/../KitiStore/assets/uploads/Poster/zalo.png">
                    <img src="/../KitiStore/assets/uploads/Poster/tải xuống (1).png">
                </div>
            </div>
        </div>
        <div class="row footer_content">
            <div class="col l-6 c-12 i-6">
                <div class="title">
                    <div><i class="fas fa-dollar-sign"></i> <span class="title--item">Giá cả ưu đãi - chất lượng tốt</span></div>
                    <div><i class="fas fa-redo-alt"></i><span class="title--item">Hoàn tiền trong 30 ngày</span> </div>
                    <div><i class="fas fa-truck"></i> <span class="title--item">Miễn phí giao hàng trên toàn quốc</span></div>
                    
                </div>
            </div>
            <div class="col l-6 c-12 i-6">
                <div class="footer_content--introduce">
                    <div class="icon">
                        <i class="fab fa-facebook-square" style="color: blue;"></i>
                        <i class="fab fa-instagram" style="color: red;"></i>
                        <i class="fab fa-twitter" style="color:mediumturquoise;"></i>
                        <i class="fab fa-youtube" style="color: red;"></i>
                    </div>
                    <div>Hotline <i class="fas fa-phone-square"></i>: 0911440609 - 0964450859</div>
                    <div>
                        Địa chỉ <i class="fas fa-home"></i>: 19A - Mạc Thiên Tích - Xuân Khánh - Ninh Kiều - Cần Thơ
                    </div>
                </div>
            </div>
        </div>
        <div class="abcd">
            <span class="logo"><a href="/../KitiStore/">KITI</a></span> <span>Bán hàng uy tín chất lượng</span>
        </div>
    </div>
</footer>