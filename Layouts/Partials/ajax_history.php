<?php
    include_once __DIR__ . '/../../connect_db.php';
    if(isset($_COOKIE['search']) && !empty($_COOKIE['search'])){
        $history = array_reverse(json_decode($_COOKIE['search'],true));
        $result ='
            <div class="header__search--suggestions" id="search__history">
                <div class="suggestions__title">
                    <div><i class="fas fa-history"></i> Lịch sử tìm kiếm</div>
                    <div class="delete_history"><i class="far fa-times-circle"></i> Xóa lịch sử</div>
                </div>';
                for($i=0;$i<count($history);$i++):
                    $result .='<a class="history--item" href="/../KitiStore/search/?key='.$history[$i].'">
                                    '.$history[$i].'
                                </a>';
                endfor;
    $result .='
            </div>';
    $result .='
                <script>
                    $(document).ready(function(){
                        $(".delete_history").click(function(event){
                            event.stopPropagation();
                            $.ajax({
                                url:"/KitiStore/Layouts/Partials/ajax_delete_history.php",
                                type:"get",
                                dataType:"json",
                                success:function(result){
                                    $("#result__history").html(result);
                                }
                            });
                        });
                    });
                </script>
    ';
    }else{
        $result ='';
    }
    echo json_encode($result);
?>