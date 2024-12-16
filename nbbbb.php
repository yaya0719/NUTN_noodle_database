<?php
session_start();
require_once 'db.php';
$cid=5;



// 初始化菜單價格
$menuPrices = [
    "切仔麵" => ["小" => 35, "中" => 45, "大" => 70],
    "米粉" => ["小" => 35, "中" => 45, "大" => 70],
    "板條" => ["小" => 35, "中" => 45, "大" => 70],
    "米苔目" => ["小" => 35, "中" => 45, "大" => 70],
    "凸皮麵" => ["小" => 45, "中" => 55, "大" => 80],
    "蚵仔麵" => ["小" => 65, "中" => 75, "大" => 100],
    "肉燥飯" => ["小" => 35, "大" => 45],
    "豆腐湯" => [ NULL => 10],
    "凸皮湯" => [ NULL => 10],
    "貢丸湯" => [ NULL => 20],
    "粉腸湯" => [NULL => 30],
    "肉湯" => [NULL => 10],
    "肉類" => ["小" => 30, "大" => 50],
    "油豆腐" => [NULL => 10],
    "滷蛋" => [NULL => 15],
    "燙青菜" => [NULL => 30]
];

// 初始化購物車
if (!isset($_SESSION['cart'])) {
    $_SESSION['cart'] = [];
}

// 頁面切換邏輯
$page = isset($_POST['page']) ? $_POST['page'] : 'menuPage';
$selectedCategory = isset($_POST['category']) ? $_POST['category'] : 'mainCourse';

$selectedItem = isset($_POST['item']) ? $_POST['item'] : null;

// 添加到購物車
if (isset($_POST['addToCart'])) {
    $item = $_POST['item'];
    $quantity = intval($_POST['quantity']);
    $size = $_POST['size'];
    $spicy = isset($_POST['spicy']) ? "是" : "否";
    $coriander = isset($_POST['coriander']) ? "是" : "否";
    $price = $menuPrices[$item][$size];
    $totalPrice = $price * $quantity;

    // 更新購物車
    $found = false;
    foreach ($_SESSION['cart'] as &$cartItem) {
        if ($cartItem['name'] === $item && $cartItem['size'] === $size) {
            $cartItem['quantity'] += $quantity;
            $cartItem['totalPrice'] += $totalPrice;
            $found = true;
            break;
        }
    }
    if (!$found) {
        $_SESSION['cart'][] = [
            'name' => $item,
            'quantity' => $quantity,
            'size' => $size,
            'spicy' => $spicy,
            'coriander' => $coriander,
            'price' => $price,
            'totalPrice' => $totalPrice
        ];
    }
}

// 清空購物車
if (isset($_POST['clearCart'])) {
    $_SESSION['cart'] = [];
}

// 提交訂單後清空購物車
if (isset($_POST['submitOrder'])) {
    
    
    $totalAmount = 0;
    foreach ($_SESSION['cart'] as $item) {
        $totalAmount += $item['totalPrice'];
    }

    // 獲取訂單時間
    $DateAndTime = date('Y-d-m h:i:s', time());

    // 使用資料庫的自增 ID
    $sql = "INSERT INTO `orderr` (`customerid`, `ordtime`, `totalprice`) VALUES ('$cid', '$DateAndTime', '$totalAmount')";

    $result = mysqli_query($link,$sql);

    // 如果有異動到資料庫數量(更新資料庫)
    if (mysqli_affected_rows($link)>0) {
    // 如果有一筆以上代表有更新
    // mysqli_insert_id可以抓到第一筆的id
    $orderId = mysqli_insert_id($link); // 獲取插入的訂單 ID
    $new_id= mysqli_insert_id ($link);
    echo "新增後的id為 {$new_id} ";
    }   
    elseif(mysqli_affected_rows($link)==0) {
        echo "無資料新增";
    }
    else {
        echo "{$sql} 語法執行失敗，錯誤訊息: " . mysqli_error($link);
    }
    
    foreach ($_SESSION['cart'] as $cartItem) {
        $itemName = $cartItem['name'];
        $quantity = $cartItem['quantity'];
        $spicy = $cartItem['spicy'];
        $coriander = $cartItem['coriander'];
        $size = $cartItem['size'];
        $price = $cartItem['price'];
        $totalPrice = $cartItem['totalPrice'];
        $datas = array();
        $pp=$price / $quantity;
// sql語法存在變數中
       /* $sql = "SELECT `mid` FROM `菜單` AS userData WHERE `name`= '$itemName' and `price`= '$price' ";


        $result = mysqli_query($link,$sql);

        if ($result) {
  
            if (mysqli_num_rows($result)>0) {
        
                while ($row = mysqli_fetch_assoc($result)) {
           
                 $datas[] = $row;
                }
            }
            mysqli_free_result($result);
   
        }
        if (!empty($datas)) {
            // 取第一筆 mid
            $ordish = $datas[0]['mid'];
        } else {
            echo "未能找到對應的 mid";
            continue; // 跳過該迴圈
        }*/
        
        // 假設 `ordish` 是商品的數量，`phonenumber` 可以是預設值或來自客戶資料
        $phoneNumber = '1234567890'; // 假設為測試用電話號碼
        $sqlOrderInform = "INSERT INTO `orderinform` ( `ordish`, `phonenumber`, `orderprice`, `oid`,`spicy`,`coriander`,`quantity`,`size`) 
                           VALUES ('$itemName', '$phoneNumber', '$totalPrice', '$orderId','$spicy','$coriander','$quantity','$size')";
        mysqli_query($link, $sqlOrderInform);
    }


    
    $_SESSION['cart'] = []; // 提交訂單後清空購物車
    $page = 'orderSummaryPage';
}

// 顯示購物車
if (isset($_POST['viewCart'])) {
    $page = 'cartPage';
}
?>

<!DOCTYPE html>
<html lang="zh-Hant">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>點餐系統 - 麵飯類</title>
    <link rel="stylesheet" href="styles.css">
    
</head>
<body>
    <h1>麵攤點餐系統</h1>
    
    <!-- 顯示菜單 -->
    <?php if ($page === 'menuPage'): ?>
        <form method="POST">
            <input type="hidden" name="page" value="menuPage">
            <div class="navbar">
            <button class="box1" name="category" value="mainCourse">主食</button>
            <button class="box2" name="category" value="soups">湯品</button>
            <button class="box3" name="category" value="sideDishes">小菜</button>
            </div>
            <button class="floating-button" name="viewCart" value="1">🛒</button>
        </form>
        
        <div class="container">
            <h2><?= $selectedCategory === 'mainCourse' ? '主食' : ($selectedCategory === 'soups' ? '湯品' : '小菜') ?></h2>
            <form method="POST">
                <input type="hidden" name="page" value="itemDetailsPage">
                <input type="hidden" name="category" value="<?= $selectedCategory ?>">
                <div class="menu-items">
                    <?php foreach ($menuPrices as $itemName => $prices): ?>
                        <?php if (($selectedCategory === 'mainCourse' && in_array($itemName, ['切仔麵', '米粉', '板條', '米苔目', '凸皮麵', '蚵仔麵', '肉燥飯'] ))
                            || ($selectedCategory === 'soups' && in_array($itemName, ['豆腐湯', '凸皮湯', '貢丸湯', '粉腸湯', '肉湯']))
                            || ($selectedCategory === 'sideDishes' && in_array($itemName, ['肉類', '滷豆腐', '油豆腐', '滷蛋', '燙青菜']))): ?>
                            <button class="menu-item" name="item" value="<?= $itemName ?>"><?= $itemName ?></button>
                        <?php endif; ?>
                    <?php endforeach; ?>
                </div>
            </form>
        </div>
    <?php endif; ?>

    <!-- 顯示商品詳情 -->
    <?php if ($page === 'itemDetailsPage' && $selectedItem): ?>
        <div class="container">
            <h2><?= $selectedItem ?></h2>
            <form method="POST">
                <input type="hidden" name="page" value="menuPage">
                <input type="hidden" name="addToCart" value="1">
                <input type="hidden" name="item" value="<?= $selectedItem ?>">
                <div class="item-details">
                    <label for="quantity">數量：</label>
                    <input type="number" name="quantity" id="quantity" min="1" value="1">
                </div>
                <div class="item-details">
                    <label for="size">選擇大小：</label>
                    <select name="size" id="size">
                        <?php foreach ($menuPrices[$selectedItem] as $size => $price): ?>
                            <option value="<?= $size ?>"><?= $size ?> (<?= $price ?> 元)</option>
                        <?php endforeach; ?>
                    </select>
                </div>
                <div class="item-details">
                    <label>
                        <input type="checkbox" name="spicy"> 辣
                    </label>
                    <label>
                        <input type="checkbox" name="coriander"> 香菜
                    </label>
                </div>
                <button type="submit">加入購物車</button>
            </form>
        </div>
    <?php endif; ?>

    <!-- 顯示購物車 -->
    <?php if ($page === 'cartPage'): ?>
        <div class="container">
            <h2>購物車</h2>
            <form method="POST">
                <table>
                    <thead>
                        <tr>
                            <th>商品名稱</th>
                            <th>數量</th>
                            <th>大小</th>
                            <th>辣</th>
                            <th>香菜</th>
                            <th>單項總金額</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php $totalAmount = 0; ?>
                        <?php foreach ($_SESSION['cart'] as $item): ?>
                            <tr>
                                <td><?= $item['name'] ?></td>
                                <td><?= $item['quantity'] ?></td>
                                <td><?= $item['size'] ?></td>
                                <td><?= $item['spicy'] ?></td>
                                <td><?= $item['coriander'] ?></td>
                                <td><?= $item['totalPrice'] ?> 元</td>
                            </tr>
                            <?php $totalAmount += $item['totalPrice']; ?>
                        <?php endforeach; ?>
                    </tbody>
                </table>
                <div class="total">
                    <strong>總金額：<?= $totalAmount ?> 元</strong>
                </div>
                <button name="page" value="menuPage">返回菜單</button>
                <button name="submitOrder" value="1">提交訂單</button>
                <button name="clearCart" value="1">清空購物車</button>
            </form>
        </div>
    <?php endif; ?>

    <!-- 顯示訂單明細 -->
    <?php if ($page === 'orderSummaryPage'): ?>
        <div class="container">
            <h2>感謝訂購</h2>
            <table>
            <thead>
                    
                    </thead>
                <tbody>
                    <?php
                    $totalAmount = 0;
                    foreach ($_SESSION['cart'] as $item):
                        $totalAmount += $item['totalPrice'];

                    ?>
                     
                        
                    <?php endforeach; ?>
                </tbody>
            </table>
            
            <form method="POST">
                <button name="page" value="menuPage">返回菜單</button>
            </form>
        </div>
    <?php endif; ?>
</body>
</html>


