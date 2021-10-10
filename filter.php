<link rel="stylesheet" href="/../KitiStore/style_filter.css">
<!-- Pc -->
<div class="grid wide filter">
    <label for="show_filter" class="filter_btn" data-toggle="collapse" href="#filter_content">
        <i class="fas fa-filter"></i> Bộ lọc <i class="fas fa-caret-down icon"></i> <i class="fas fa-caret-up icon hide_icon"></i>
    </label>
    <script>
        $(document).ready(function(){
            $(".filter_btn").click(function(){
                if($("#show_filter").prop("checked")==false){
                    $(".fa-caret-down").addClass("hide_icon");
                    $(".fa-caret-up").removeClass("hide_icon");
                }else{
                    $(".fa-caret-up").addClass("hide_icon");
                    $(".fa-caret-down").removeClass("hide_icon");
                }
            });
        });
    </script>
    <div class="row filter-content collapse" id="filter_content">
        <div class="col l-6 c-6 i-5">
            <div class="filter_nsx filter-content__item">
                <div class="filter_title">Nhà sản xuất</div>
                <div class="filter_nsx__item">
                    <?php foreach($data_nsx as $val_nsx):?>
                        <label for="<?=$val_nsx['nsx_id']?>"><img src="/../KitiStore/assets/uploads/Logo_nsx/<?=$val_nsx['nsx_ten']?>/<?=$val_nsx['ten_file']?>" class="nha_san_xuat btn_item filter_search" data-nsx_id="<?=$val_nsx['nsx_id']?>"></label>
                        <input type="checkbox" id="<?=$val_nsx['nsx_id']?>" hidden>    
                    <?php endforeach;?>
                </div>
                <script>
                    var data_nsx=[];
                    $(document).ready(function(){
                        $(".nha_san_xuat").click(function(){
                            var nsx_id=$(this).data('nsx_id');
                            var checked_nsx = $("#"+nsx_id).prop("checked");
                            if(checked_nsx == false){
                                $(this).addClass("btn_click");
                                data_nsx.push(nsx_id);
                            }else{
                                $(this).removeClass("btn_click");
                                data_nsx=data_nsx.filter(item=>item!==nsx_id);
                            }
                        });
                    });
                </script>
            </div>
            <div class="filter_price filter-content__item">
                <span class="filter_title">Tùy chọn mức giá phù hợp:</span><input type="range" value="35" min="3" max="35" id="price" class="filter_search">
                <div class="filter_price--result">
                    <span class="filter_title">Giá sản phẩm từ:</span> <span id="result_price"></span>
                    <script>
                        var slider = document.getElementById("price");
                        var output = document.getElementById("result_price");
                        output.innerHTML = "3.000.000đ --> "+slider.value+".000.000đ"; 
                        slider.oninput = function() {
                            output.innerHTML = "3.000.000đ --> "+this.value+".000.000đ";
                        }
                    </script>
                </div>
            </div>
        </div>
        <?php
            include_once __DIR__ . '/connect_db.php';
            $sql_select_bonho = <<<EOT
                SELECT DISTINCT ram FROM sp_bo_nho ORDER BY ram DESC  
            EOT;
            $bo_nho=[];
            $query_ram = mysqli_query($conn,$sql_select_bonho);
            while($result_ram = mysqli_fetch_array($query_ram,MYSQLI_ASSOC)){
                $bo_nho[]=array(
                    'ram' => $result_ram['ram']
                );
            };
        ?>
        <?php
            $sql_select_bonhotrong = <<<EOT
                SELECT DISTINCT bo_nho_trong FROM sp_bo_nho ORDER BY bo_nho_trong DESC  
            EOT;
            $bo_nho_trong=[];
            $query_bnt = mysqli_query($conn,$sql_select_bonhotrong);
            while($result_btn = mysqli_fetch_array($query_bnt,MYSQLI_ASSOC)){
                $bo_nho_trong[]=array(
                    'bo_nho_trong' => $result_btn['bo_nho_trong']
                );
            };
        ?>
        <div class="col l-6 c-6 i-7">
            <div class="row">
                <!-- RAM - Bo nho trong-->
                <div class="col l-5 c-12 i-5">
                    <div class="filter-content__item">
                        <div class="filter_title">RAM</div>
                        <div class="row">
                            <?php $i=0;?>
                            <?php foreach($bo_nho as $val_bn):?>
                                <?php $i++?>
                                <div class="col l-6 c-3 i-6">
                                    <label for="<?=$i.'ram'?>" class="btn_item ram filter_search" data-ram="<?=$val_bn['ram']?>" data-ram_i="<?=$i.'ram'?>"><?=$val_bn['ram']?></label>
                                    <input type="checkbox" id="<?=$i.'ram'?>" hidden> 
                                </div>
                            <?php endforeach;?>
                            <script> 
                                var data_ram = [];
                                $(document).ready(function(){
                                    $(".ram").click(function(){
                                        var ram = $(this).data('ram');
                                        var ram_i = $(this).data('ram_i');
                                        var checked_ram = $("#"+ram_i).prop("checked");
                                        if(checked_ram == false){
                                            $(this).addClass("btn_click");
                                            data_ram.push(ram);
                                        }else{
                                            $(this).removeClass("btn_click");
                                            data_ram = data_ram.filter(item=>item!==ram);
                                        }
                                    });
                                });
                            </script>
                        </div>
                    </div>
                    <div class="filter-content__item--bnt">
                        <div class="filter_title">Bộ nhớ trong</div>
                        <div class="row">
                            <?php $i=1;?>
                                <div class="col l-6 c-3 i-6">
                                    <label for="<?=$i.'bnt'?>" class="btn_item bonho_trong filter_search" data-bonhotrong="32 GB"  data-bnt_i="<?=$i.'bnt'?>">32 GB</label>
                                    <input type="checkbox" id="<?=$i.'bnt'?>" hidden>
                                </div>
                            <?php foreach($bo_nho_trong as $val_bnt):?>
                                <?php $i++ ?>
                                <div class="col l-6 c-3 i-6">
                                    <label  for="<?=$i.'bnt'?>" class="btn_item bonho_trong filter_search" data-bonhotrong="<?=$val_bnt['bo_nho_trong']?>" data-bnt_i="<?=$i.'bnt'?>"><?=$val_bnt['bo_nho_trong']?></label>
                                    <input type="checkbox" id="<?=$i.'bnt'?>" hidden>
                                </div>
                            <?php endforeach?>
                            <script> 
                                var data_bnt=[];
                                $(document).ready(function(){
                                    $(".bonho_trong").click(function(){
                                        var bnt = $(this).data("bonhotrong");
                                        var bnt_i = $(this).data("bnt_i");
                                        var checked_bnt = $("#"+bnt_i).prop("checked");
                                        if(checked_bnt == false){
                                            $(this).addClass("btn_click");
                                            data_bnt.push(bnt);
                                        }else{
                                            $(this).removeClass("btn_click");
                                            data_bnt = data_bnt.filter(item=>item!==bnt);
                                        }
                                    });
                                });
                            </script>
                        </div>
                    </div>
                </div>
                <div class="col l-4 c-12 i-3">
                    <?php
                        $sql_select_mdd = <<<EOT
                            SELECT DISTINCT mang_di_dong FROM sp_ket_noi ORDER BY mang_di_dong ASC
                        EOT;
                        $query_mdd = mysqli_query($conn,$sql_select_mdd);
                        $mdd=[];
                        while($result_mdd=mysqli_fetch_array($query_mdd,MYSQLI_ASSOC)){
                            $mdd[]=array(
                                'mang_di_dong' => $result_mdd['mang_di_dong']
                            );
                        }
                    ?>
                    <div class="filter-content__item ">
                        <div class="filter_title">Mạng di động</div>
                        <div class="row">
                            <?php $i=0;?>
                            <?php foreach($mdd as $val_mdd):?>
                                <?php $i++?>
                                <div class="col l-12 i-12">
                                    <label for="<?=$i.'mdd'?>" class="btn_item mang_di_dong filter_search" data-mdd="<?=$val_mdd['mang_di_dong']?>" data-mdd_i="<?=$i.'mdd'?>"><?=$val_mdd['mang_di_dong']?></label>
                                    <input type="checkbox" id="<?=$i.'mdd'?>" hidden>
                                </div>
                            <?php endforeach;?>
                            <script>
                                var data_mdd=[];
                                $(document).ready(function(){
                                    $(".mang_di_dong").click(function(){
                                        var mdd = $(this).data('mdd');
                                        var mdd_i = $(this).data('mdd_i');
                                        var checked_mdd=$("#"+mdd_i).prop("checked");
                                        if(checked_mdd==false){
                                            $(this).addClass("btn_click");
                                            data_mdd.push(mdd);
                                        }else{
                                            $(this).removeClass("btn_click");
                                            data_mdd=data_mdd.filter(item=>item!==mdd);
                                        }
                                        console.log(data_mdd);
                                    });
                                });
                            </script>
                        </div>
                    </div>
                </div>
                <div class="col l-3 c-12 i-4">
                    <?php
                        $sql_select_hdh = <<<EOT
                            SELECT DISTINCT hdh FROM sp_hdh ORDER BY hdh ASC
                        EOT;
                        $hdh=[];
                        $query_hdh = mysqli_query($conn,$sql_select_hdh);
                        while($result_hdh = mysqli_fetch_array($query_hdh,MYSQLI_ASSOC)){
                            $hdh[]=array(
                                'hdh' => $result_hdh['hdh']
                            );
                        }
                    ?>
                    <div class="filter-content__item">
                        <div class="filter_title">Hệ điều hành</div>
                        <div class="row">
                            <?php $i=0;?>
                            <?php foreach($hdh as $val_hdh):?>
                                <?php $i++ ?>
                                <div class="col l-12 i-12">
                                    <label for="<?=$i.'hdh'?>" class="btn_item hdh filter_search" data-hdh="<?=$val_hdh['hdh']?>" data-hdh_i="<?=$i.'hdh'?>"><?=$val_hdh['hdh']?></label>
                                    <input type="checkbox" id="<?=$i.'hdh'?>" hidden>
                                </div>
                            <?php endforeach;?>
                            <script>
                                var data_hdh=[];
                                $(document).ready(function(){
                                    $(".hdh").click(function(){
                                        var hdh =$(this).data('hdh');
                                        var hdh_i=$(this).data('hdh_i');
                                        var checked_hdh = $("#"+hdh_i).prop("checked");
                                        if(checked_hdh==false){
                                            $(this).addClass("btn_click");
                                            data_hdh.push(hdh);
                                        }
                                        else{
                                            $(this).removeClass("btn_click");
                                            data_hdh=data_hdh.filter(item=>item!==hdh);
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
<!-- Mobile -->
<input type="checkbox" id="show_filter" hidden>
<div class="filter_mobile">
    <label for="show_filter" class="filter_mobile--exit"><i class="fas fa-times"></i></label>
    <div class="filter_mobile-logo">KITI</div>
    <div class="filter_mobile__content">
        <div class="content__item">
            <div class="filter_title">Nhà sản xuất</div>
            <div class="item_mobile item_mobile_nsx">
                <?php foreach($data_nsx as $val_nsx):?>
                    <label for="<?=$val_nsx['nsx_id']?>"><img src="/../KitiStore/assets/uploads/Logo_nsx/<?=$val_nsx['nsx_ten']?>/<?=$val_nsx['ten_file']?>" class="nha_san_xuat btn_item_mobile" data-nsx_id="<?=$val_nsx['nsx_id']?>"></label>
                    <input type="checkbox" id="<?=$val_nsx['nsx_id']?>" hidden>    
                <?php endforeach;?>
            </div>
        </div>
        <div class="content__item">
            <div class="filter_title">Tùy chọn mức giá phù hợp</div>
            <div>
                <input type="range" value="35" min="3" max="35" id="price_mobile">
                <span class="filter_title">Giá sản phẩm từ</span> <span id="result_price_mobile"></span>
                <script>
                    var slider_mobile = document.getElementById("price_mobile");
                    var output_mobile = document.getElementById("result_price_mobile");
                    output_mobile.innerHTML = "3.000.000đ --> "+slider_mobile.value+".000.000đ"; 
                    slider_mobile.oninput = function() {
                        output_mobile.innerHTML = "3.000.000đ --> "+this.value+".000.000đ";
                    }
                </script>
            </div>
        </div>
        <div class="content__item">
            <div class="filter_title">RAM</div>
            <div class="item_mobile">
                <?php $i=0;?>
                <?php foreach($bo_nho as $val_bn):?>
                    <?php $i++?>
                    <label for="<?=$i.'ram'?>" class="btn_item_mobile ram" data-ram="<?=$val_bn['ram']?>" data-ram_i="<?=$i.'ram'?>"><?=$val_bn['ram']?></label>
                    <input type="checkbox" id="<?=$i.'ram'?>" hidden> 
                <?php endforeach;?>
            </div>
        </div>
        <div class="content__item">
            <div class="filter_title">Bộ nhớ trong</div>
            <div class="item_mobile">
                <?php $i=1;?>
                <label for="<?=$i.'bnt'?>" class="btn_item_mobile bonho_trong" data-bonhotrong="32 GB"  data-bnt_i="<?=$i.'bnt'?>">32 GB</label>
                <input type="checkbox" id="<?=$i.'bnt'?>" hidden>
                <?php foreach($bo_nho_trong as $val_bnt):?>
                        <?php $i++;?>
                        <label  for="<?=$i.'bnt'?>" class="btn_item_mobile bonho_trong" data-bonhotrong="<?=$val_bnt['bo_nho_trong']?>" data-bnt_i="<?=$i.'bnt'?>"><?=$val_bnt['bo_nho_trong']?></label>
                        <input type="checkbox" id="<?=$i.'bnt'?>" hidden>
                <?php endforeach?>
            </div>
        </div>
        <div class="content__item">
            <div class="filter_title">Mạng di động</div>
            <div class="item_mobile">
                <?php $i=0;?>
                <?php foreach($mdd as $val_mdd):?>
                    <?php $i++;?>
                    <label for="<?=$i.'mdd'?>" class="btn_item_mobile mang_di_dong" data-mdd="<?=$val_mdd['mang_di_dong']?>" data-mdd_i="<?=$i.'mdd'?>"><?=$val_mdd['mang_di_dong']?></label>
                    <input type="checkbox" id="<?=$i.'mdd'?>" hidden>      
                <?php endforeach;?>
            </div>
        </div>
        <div class="content__item">
            <div class="filter_title">Hệ điều hành</div>   
            <div class="item_mobile">
                <?php $i=0;?>
                <?php foreach($hdh as $val_hdh):?>
                    <?php $i++;?>
                    <label for="<?=$i.'hdh'?>" class="btn_item_mobile hdh" data-hdh="<?=$val_hdh['hdh']?>" data-hdh_i="<?=$i.'hdh'?>"><?=$val_hdh['hdh']?></label>
                    <input type="checkbox" id="<?=$i.'hdh'?>" hidden>
                <?php endforeach;?>
            </div>
        </div>
    </div>
    <div class="filter_mobile_btn">
        <label for="show_filter" class="btn_search_filter--mobile btn_search"><i class="fas fa-search"></i> Tìm kiếm</label>
    </div>
    <div class="filter_mobile--subtitle">
        Lựa chọn sản phẩm mà bạn mong muốn!
    </div>
</div>
<script>
    $(document).ready(function(){
        $(".filter_search").click(function(){
            var gia_sp = $("#price").val();
            $.ajax({
                url:'/KitiStore/ajax_filter.php',
                type:'get',
                dataType:'json',
                data:{
                    data_nsx,gia_sp,data_ram,data_mdd,data_hdh,data_bnt
                },
                success:function(result){
                    $("#result_filter").html(result);
                }
            });
        });
    });
</script>
<script>
    $(document).ready(function(){
        $(".btn_search").click(function(){
            var gia_sp = $("#price_mobile").val();
            $.ajax({
                url:'/KitiStore/ajax_filter.php',
                type:'get',
                dataType:'json',
                data:{
                    data_nsx,gia_sp,data_ram,data_mdd,data_hdh,data_bnt
                },
                success:function(result){
                    $("#result_filter").html(result);
                }
            });
        });
    });
</script>