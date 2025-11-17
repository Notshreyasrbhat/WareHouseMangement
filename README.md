```markdown
# 📦 Warehouse Management System (PHP + CodeIgniter)
A complete Warehouse Management System (WMS) built using **PHP**, **MySQL**, and **CodeIgniter**.  
This project helps manage products, suppliers, customers, transactions, audit logs, and stock levels efficiently.

This repository contains:
- Renamed & cleaned English database schema  
- Full DDL commands (tables, triggers, procedures, functions)  
- Frontend (HTML, CSS, JS)  
- Backend (PHP CodeIgniter)  
- Working WMS system with authentication & role control  

---

## 🚀 Features
### ✅ User & Role Management
- Admin, Staff, Supplier Staff, Customer Staff roles  
- Authentication & session tracking  

### ✅ Product Management
- Add, edit, delete products  
- Track product brand, stock, logs, timestamps  

### ✅ Supplier & Customer Management
- Maintain supplier/customer records  
- View transaction history per supplier/customer  

### ✅ Warehouse Operations
- Stock in & stock out records  
- Fully linked transactions  
- Movement type (1 = IN, 2 = OUT)  
- Auto stock updates (via triggers/procedures)  

### ✅ Stock Limits & Alerts
- Configure minimum stock  
- Automatic detection of low stock  

### ✅ Audit Logging
- Tracks:
  - Supplier creation  
  - Customer updates  
  - Transaction logs  
  - System-generated summary events  

### ✅ Reports
- Customer activity summary  
- Stock projection  
- Supplier region report  
- Restock priority scoring  

---

## 🗂 Database Structure 
### Main Tables:
- `users`  
- `user_roles`  
- `products`  
- `suppliers`  
- `customers`  
- `product_transactions`  
- `stock_limits`  
- `audit_events`  
- `site_identity`  
- `sessions`


## 📜 DDL Included
The project includes complete SQL:
- Table creation  
- Triggers  
- Stored procedures  
- Functions  
- Joins, nested queries, aggregates  
- Sample CRUD queries  

The SQL file is inside:  
```

database/wms_db.sql

````

---

## 🛠️ Tech Stack

### 🎨 Frontend
- HTML5  
- CSS3  
- Bootstrap  
- JavaScript  

### ⚙️ Backend
- PHP  
- CodeIgniter Framework  
- MySQL Database  
- Apache (XAMPP/WAMP/LAMP)

---

## 📥 Installation Guide

### 1️⃣ Clone the repository
```bash
git clone https://github.com/Notshreyasrbhat/WareHouseMangement.git
cd WareHouseMangement
````

### 2️⃣ Import the database

* Open **phpMyAdmin**
* Create database: `wms_db`
* Import:

```
database/wms_db.sql
```

### 3️⃣ Configure the application

Open:

```
application/config/database.php
```

Update:

```php
'username' => 'root',
'password' => '',
'database' => 'wms_db',
```

### 4️⃣ Run the project

Place the folder in:

```
htdocs/ (XAMPP)
www/ (WAMP)
```

Then visit:

```
http://localhost/WareHouseMangement/
```

---

## 🔐 Default Login 

```
username: admin
password: admin123
```

---

## 🧩 Project Structure

```
application/
    controllers/
    models/
    views/
    config/
    core/
assets/
database/
diagrams/
README.md
index.php
```
