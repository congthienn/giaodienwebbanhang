<?php
    if(session_id()===""){
        session_start();
    }
    include_once __DIR__ . '/../connect_db.php';
    $id_product = $_GET['id_product'];
    $id_color = $_GET['id_color'];
    $quantity = $_GET['val_quantity'];
    $sql_select_sp = <<<EOT
        SELECT * FROM san_pham sp 
        JOIN sp_mau_sac spm ON sp.sp_id=spm.sp_id 
        JOIN sanpham_soluong spsl ON sp.sp_id = spsl.sp_id 
        WHERE sp.sp_id = '$id_product' AND spm.id = '$id_color' AND spsl.sp_mau ='$id_color'
    EOT;
    $query_sp = mysqli_query($conn,$sql_select_sp);
    $result_sp = mysqli_fetch_array($query_sp,MYSQLI_ASSOC);
    $product = $result_sp['sp_ten'];
    $color = $result_sp['sp_ten_mau'];
    $product_price = $result_sp['sp_gia'];
    $img = $result_sp['hinh_anh'];
    if(!isset($_SESSION['cart_product'])){
        $_SESSION['cart_product'] = 0;
    }
    $data_cart=[];
    if(!isset($_SESSION['cart'])){
        $data_cart["$product"]["$color"]=array(
            'sp_ten' => $product,
            'sp_id' => $id_product,
            'color' => $color,
            'color_id' => $id_color,
            'img' => $img,
            'price' => $product_price,
            'quantity' => $quantity
        );
        $_SESSION['cart_product'] = $_SESSION['cart_product'] + $quantity;
        $_SESSION['cart'] = $data_cart;
        setcookie("Cart",(json_encode($data_cart)),time()+(24*30*3600),'/');
        setcookie("Quantity", $_SESSION['cart_product'],time()+(24*30*3600),'/');
        die(json_encode("success"));
    }else if(isset($_SESSION['cart'])){
        $data_cart = $_SESSION['cart'];
        if(isset($data_cart["$product"]["$color"])){
            if($data_cart["$product"]["$color"]["quantity"] + $quantity > 5){
                die(json_encode($data_cart["$product"]["$color"]["quantity"]));
            }else{
                $data_cart["$product"]["$color"]["quantity"]= $data_cart["$product"]["$color"]["quantity"] + $quantity;
                $_SESSION['cart'] = $data_cart;
                $_SESSION['cart_product'] = $_SESSION['cart_product'] + $quantity;
                setcookie("Cart",(json_encode($data_cart)),time()+(24*30*3600),'/');
                setcookie("Quantity", $_SESSION['cart_product'],time()+(24*30*3600),'/');
                die(json_encode("success"));
            }  
        }else{
            $data_cart["$product"]["$color"]=array(
                'sp_ten' => $product,
                'sp_id' => $id_product,
                'color' => $color,
                'color_id' => $id_color,
                'img' => $img,
                'price' => $product_price,
                'quantity' => $quantity
            );
            $_SESSION['cart_product'] = $_SESSION['cart_product'] + $quantity;
            $_SESSION['cart'] = $data_cart;
            setcookie("Cart",(json_encode($data_cart)),time()+(24*30*3600),'/');
            setcookie("Quantity", $_SESSION['cart_product'],time()+(24*30*3600),'/');
            die(json_encode("success"));
        }  
    }
?>