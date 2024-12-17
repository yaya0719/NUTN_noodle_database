# NUTN Noodle Database 🍜

## 📌 項目簡介
這是 **國立台南大學大三上資料庫期末專題**，旨在提供一套基本的 **餐飲點餐系統**，包括 **前端網頁** 和 **後端管理系統**。

---

## 📂 專案檔案結構
| 檔案名稱             | 描述                           |
|----------------------|--------------------------------|
| `frontend_noodle.php`| 前端網頁，點餐功能介面         |
| `frontend_noodle.css`| 前端網頁樣式表                 |
| `nbbbb.php`          | 前端點餐邏輯與處理             |
| `noodledata.sql`     | 資料庫設定檔案                 |
| `backend_noodle.php` | 後端資料管理頁面               |
| `backend_noodle.css` | 後端樣式設定                   |
| `db.php`             | 資料庫連接檔案                 |
| `noodleweb.html`     | 舊版點餐網頁(未與資料庫連結)    |
| `styles.css`         | 舊版點餐網頁樣式設定           |
---

## 🚀 功能說明

1. **點餐系統 (前端)**
   - 提供餐點選擇、數量調整、加入購物車等功能。
   - 支援商品分類 (主食、湯品、小菜)。

2. **後端管理系統**
   - 員工管理、顧客資料、菜單資料與訂單管理。
   - 提供新增、刪除、查詢、編輯功能。

3. **資料庫設計**
   - 設計完整的資料表，儲存餐點、顧客及訂單資料。

---

## 🛠️ 系統需求
- **PHP**: 版本 7.4 以上
- **MySQL**: 版本 5.7 以上
- **瀏覽器**: 支援現代網頁標準 (如 Chrome、Edge)

---

## 🔧 安裝步驟

1. **複製專案**
   ```bash
   git clone https://github.com/yaya0719/NUTN_noodle_database.git
2. **匯入資料庫**
   使用 noodledata.sql 匯入至 MySQL。
3. **啟動本地伺服器**
  放置專案於 XAMPP 或 WAMP 的 htdocs 目錄下。
  啟動 Apache 和 MySQL。
4. **訪問專案**
  開啟瀏覽器並輸入：
  http://localhost/noodleweb.html
