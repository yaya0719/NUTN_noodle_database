const menuPrices = {
    "切仔麵": { "小": 35, "中": 45, "大": 70 },
    "米粉": { "小": 35, "中": 45, "大": 70 },
    "板條": { "小": 35, "中": 45, "大": 70 },
    "米苔目": { "小": 35, "中": 45, "大": 70 },
    "凸皮麵": { "小": 45, "中": 55, "大": 80 },
    "蚵仔麵": { "小": 65, "中": 75, "大": 100 },
    "肉燥飯": { "小": 35, "大": 45 },
    "豆腐湯": { "NULL": 10 },
    "凸皮湯": { "NULL": 10 },
    "貢丸湯": { "NULL": 20 },
    "粉腸湯": { "NULL": 30 },
    "肉湯": { "NULL": 10 },
    "肉類": { "小": 30, "大": 50 },
    "油豆腐": { "NULL": 10 },
    "滷蛋": { "NULL": 15 },
    "燙青菜": { "NULL": 30 }
};


// 切換顯示的區塊
function showSection(sectionId) {
    document.querySelectorAll("section").forEach((section) => {
        section.classList.add("hidden");
    });
    document.getElementById(sectionId).classList.remove("hidden");
}

function goBackToMenu() {
    document.getElementById("orderSummaryPage").classList.add("hidden");
    document.getElementById("itemDetailsPage").classList.add("hidden");
    document.getElementById("cartPage").classList.add("hidden");
    document.getElementById("menuPage").classList.remove("hidden");
}

// 顯示商品詳情
function showItemDetails(itemName) {
    document.getElementById("menuPage").classList.add("hidden");
    document.getElementById("itemDetailsPage").classList.remove("hidden");
    document.getElementById("itemTitle").textContent = itemName;

    // 取得菜品價格
    const itemPrices = menuPrices[itemName];
    const sizeSelect = document.getElementById("size");

    // 清空選項並重新添加大小選項
    sizeSelect.innerHTML = "";
    for (const size in itemPrices) {
        const option = document.createElement("option");
        option.value = size;
        option.textContent = size;
        sizeSelect.appendChild(option);
    }

    // 顯示第一個大小的價格
    updatePrice(itemName);

    // 當用戶改變選擇的大小時，更新價格
    sizeSelect.addEventListener("change", function() {
        updatePrice(itemName);
    });
}

// 更新價格顯示
function updatePrice(itemName) {
    const size = document.getElementById("size").value;
    const itemPrices = menuPrices[itemName];
    const price = itemPrices[size];

    // 更新價格顯示
    document.getElementById("price").textContent = `價格：${price} 元`;
}

// 購物車數據結構
let cart = [];

function addToCart() {
    //item屬性
    const itemName = document.getElementById("itemTitle").textContent;
    const quantity = parseInt(document.getElementById("quantity").value);
    const size = document.getElementById("size").value;
    const spicy = document.getElementById("spicy").checked ? "是" : "否";
    const coriander = document.getElementById("coriander").checked ? "是" : "否";

    const price = menuPrices[itemName][size];

    // 計算每個品項的 totalPrice
    const totalPrice = price * quantity;

    // 檢查是否已有相同項目，若有則更新數量和總金額
    // 用來返回符合條件的第一個元素。如果沒有符合條件的元素，則返回 undefined
    const existingItem = cart.find((item) => item.name === itemName && item.size === size);
    if (existingItem) {
        existingItem.quantity += quantity;
        existingItem.totalPrice += totalPrice; // 更新已存在項目的 totalPrice
    } else {
        cart.push({ name: itemName, quantity, size, price, spicy, coriander, totalPrice });
    }

    alert("已加入購物車！");
    goBackToMenu();
}


function showCart() {
    const cartPage = document.getElementById("cartPage");
    const cartItems = document.getElementById("cartItems");
    const cartTotalAmount = document.getElementById("cartTotalAmount");

    // 清空表格
    cartItems.innerHTML = "";

    let totalAmount = 0;

    // 填充購物車數據
    cart.forEach((item) => {
        const row = document.createElement("tr");
        row.innerHTML = `
            <td>${item.name}</td>
            <td>${item.quantity}</td>
            <td>${item.size}</td>
            <td>${item.spicy}</td>
            <td>${item.coriander}</td>
            <td>${item.totalPrice} 元</td>
        `;
        cartItems.appendChild(row);
        totalAmount += item.totalPrice; // 使用 item.totalPrice 而非 quantity * price
    });

    cartTotalAmount.textContent = `總金額：${totalAmount} 元`;

    document.getElementById("menuPage").classList.add("hidden");
    document.getElementById("itemDetailsPage").classList.add("hidden");
    cartPage.classList.remove("hidden");
}

//提交訂單並產生明細
function submitOrder() {
    if (cart.length === 0) {
        alert("購物車是空的！");
        return;
    }

    const orderDetailsTable = document.getElementById("orderDetails");
    let totalAmount = 0;

    // 清空表格
    orderDetailsTable.innerHTML = "";

    // 填充訂單明細到表格
    cart.forEach((item) => {
        const row = document.createElement("tr");
        row.innerHTML = `
            <td>${item.name}</td>
            <td>${item.quantity}</td>
            <td>${item.size}</td>
            <td>${item.spicy}</td>
            <td>${item.coriander}</td>
            <td>${item.totalPrice} 元</td>
        `;
        orderDetailsTable.appendChild(row);
        totalAmount += item.totalPrice; // 計算總金額
    });

    // 顯示總金額
    document.getElementById("totalAmount").textContent = `總金額：${totalAmount} 元`;

    // 隱藏其他頁面並顯示訂單明細頁
    document.getElementById("menuPage").classList.add("hidden");
    document.getElementById("cartPage").classList.add("hidden");
    document.getElementById("orderSummaryPage").classList.remove("hidden");

    // 清空購物車
    cart = [];
}

