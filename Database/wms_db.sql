SET SQL_MODE='NO_AUTO_VALUE_ON_ZERO';
SET time_zone = '+00:00';

CREATE DATABASE IF NOT EXISTS `wms_db`;
USE `wms_db`;

-- --------------------------------------------------------
-- Table structure for table `admin`
-- --------------------------------------------------------
CREATE TABLE `admin` (
  `admin_user` varchar(25) NOT NULL,
  `admin_pass` varchar(50) NOT NULL,
  `admin_nama` varchar(30) NOT NULL,
  `admin_alamat` varchar(250) NOT NULL,
  `admin_email` varchar(100) NOT NULL,
  `admin_telepon` varchar(15) NOT NULL,
  `admin_ip` varchar(12) NOT NULL,
  `admin_online` int(10) NOT NULL,
  `admin_level_kode` int(3) NOT NULL,
  `admin_status` varchar(100) NOT NULL,
  `admin_created` datetime NOT NULL DEFAULT current_timestamp(),
  `admin_updated` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`admin_user`),
  KEY `admin_level_kode` (`admin_level_kode`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `admin` (`admin_user`, `admin_pass`, `admin_nama`, `admin_alamat`, `admin_email`, `admin_telepon`, `admin_ip`, `admin_online`, `admin_level_kode`, `admin_status`, `admin_created`, `admin_updated`) VALUES
('admin', '0192023a7bbd73250516f069df18b500', 'Shreyas-Shreyans', 'Here St. Over There, Anywhere, 2306', 'admin@mail.com', '9564897544', '', 0, 1, 'A', '2025-10-29 22:19:14', '2025-10-30 13:13:42'),
('staff1', 'ab4c31c66f9fe6485aefd34c3c9c88a1', 'Shreyas', 'Sample Address', '', '4569872', '', 0, 2, 'A', '2025-10-30 09:34:04', '2025-10-30 09:42:46'),
('staff2', '2bf4351232ec393d2a436d73dcb69dcf', 'Shreyans', 'Sample Address', '', '7864321', '', 0, 3, 'A', '2025-10-30 09:34:26', '2025-10-31 09:43:46');

-- --------------------------------------------------------
-- Table structure for table `admin_level`
-- --------------------------------------------------------
CREATE TABLE `admin_level` (
  `admin_level_kode` int(3) NOT NULL,
  `admin_level_nama` varchar(30) NOT NULL,
  `admin_level_status` char(1) NOT NULL,
  `admin_level_created` datetime NOT NULL DEFAULT current_timestamp(),
  `admin_level_updated` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`admin_level_kode`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `admin_level` (`admin_level_kode`, `admin_level_nama`, `admin_level_status`, `admin_level_created`, `admin_level_updated`) VALUES
(1, 'Administrator', 'A', '2025-10-29 22:31:41', '2025-10-29 22:31:41'),
(2, 'Staff Supplier', 'A', '2025-10-30 22:31:41', '2025-10-30 16:45:27'),
(3, 'Staff Customer', 'A', '2025-10-31 16:45:45', '2025-10-31 16:45:45');

-- --------------------------------------------------------
-- Table structure for table `customer`
-- --------------------------------------------------------
CREATE TABLE `customer` (
  `id_customer` int(11) NOT NULL,
  `nama_customer` varchar(100) NOT NULL,
  `alamat_customer` varchar(100) NOT NULL,
  `notelp_customer` varchar(12) NOT NULL,
  `customer_created` datetime NOT NULL DEFAULT current_timestamp(),
  `customer_updated` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id_customer`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `customer` (`id_customer`, `nama_customer`, `alamat_customer`, `notelp_customer`, `customer_created`, `customer_updated`) VALUES
(1, 'John Watson', '855 Rosemary St', '46552000', '2025-10-29 18:40:10', '2025-10-29 18:40:10'),
(2, 'Jack Stuart', '854 Louis St', '04522260', '2025-10-29 10:59:12', '2025-10-30 10:59:12'),
(3, 'Douglas Stover', '17 Lake Forest Drive', '06665210', '2025-10-29 17:13:24', '2025-10-29 17:13:24'),
(4, 'Curtis Maury', '1342 Wayside Lane', '10458600', '2025-10-30 17:14:03', '2025-10-31 17:14:03'),
(5, 'Betty Wright', '1205 Cardinal Lane', '01478000', '2025-10-31 17:14:23', '2025-10-31 17:14:23'),
(6, 'George', '19 Gerald Bates Drive', '03690005', '2025-10-30 17:14:54', '2025-10-31 17:14:54'),
(7, 'Richard', '469 Providence Lane', '01478005', '2025-10-30 17:15:25', '2025-10-30 17:15:25'),
(8, 'Casie Dixon', '361 Bassel St', '02580014', '2025-10-30 17:15:54', '2025-10-31 17:15:54'),
(9, 'Will Williams', '4569 Down St', '45654000', '2025-10-30 11:19:58', '2025-10-30 11:19:58'),
(10, 'Customer 101', 'Sample Address 101', '0931456789', '2025-10-31 09:15:59', '2025-10-31 09:15:59');

-- --------------------------------------------------------
-- Table structure for table `identitas`
-- --------------------------------------------------------
CREATE TABLE `identitas` (
  `identitas_id` int(3) NOT NULL,
  `identitas_website` varchar(250) NOT NULL,
  `identitas_deskripsi` text NOT NULL,
  `identitas_keyword` text NOT NULL,
  `identitas_alamat` varchar(250) NOT NULL,
  `identitas_notelp` char(20) NOT NULL,
  `identitas_fb` varchar(100) NOT NULL,
  `identitas_email` varchar(100) NOT NULL,
  `identitas_tw` varchar(100) NOT NULL,
  `identitas_gp` varchar(100) NOT NULL,
  `identitas_yb` varchar(100) NOT NULL,
  `identitas_favicon` varchar(250) NOT NULL,
  `identitas_author` varchar(100) NOT NULL,
  `identitas_created` datetime NOT NULL DEFAULT current_timestamp(),
  `identitas_updated` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`identitas_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `identitas` (`identitas_id`, `identitas_website`, `identitas_deskripsi`, `identitas_keyword`, `identitas_alamat`, `identitas_notelp`, `identitas_fb`, `identitas_email`, `identitas_tw`, `identitas_gp`, `identitas_yb`, `identitas_favicon`, `identitas_author`, `identitas_created`, `identitas_updated`) VALUES
(1, 'WMS', 'Warehouse Management System', 'Warehouse Management System ', 'PES University', '08123456789', 'https://www.facebook.com/wms', 'info@wmsmail.com', 'https://twitter.com/CIwms', 'http://wms.com/', 'https://www.youtube.com/wms', 'd5bf7e44b3331b3d4b0c0177e3d51f31.png', 'CI PHP - Project', '2025-10-29 22:19:42', '2025-10-30 11:40:18');

-- --------------------------------------------------------
-- Table structure for table `limitstock`
-- --------------------------------------------------------
CREATE TABLE `limitstock` (
  `limitstock_id` int(11) NOT NULL,
  `stock` int(11) NOT NULL,
  `limitstock_created` datetime DEFAULT current_timestamp(),
  `limitstock_updated` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`limitstock_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `limitstock` (`limitstock_id`, `stock`, `limitstock_created`, `limitstock_updated`) VALUES
(1, 50, '2025-10-30 23:33:38', '2025-10-31 11:33:29');

-- --------------------------------------------------------
-- Table structure for table `master_barang`
-- --------------------------------------------------------
CREATE TABLE `master_barang` (
  `id_barang` int(11) NOT NULL,
  `nama_barang` varchar(255) NOT NULL,
  `merek` varchar(255) NOT NULL,
  `stock` int(11) NOT NULL,
  `barang_created` datetime NOT NULL DEFAULT current_timestamp(),
  `barang_updated` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id_barang`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

INSERT INTO `master_barang` (`id_barang`, `nama_barang`, `merek`, `stock`, `barang_created`, `barang_updated`) VALUES
(13, 'Test Item', 'Test Brand', 80, '2025-10-29 18:40:31', '2025-10-29 18:42:20'),
(14, 'Item 01', 'B ONE', 1, '2025-10-29 10:58:26', '2025-10-30 17:48:11'),
(15, 'Item 02', 'B ONE', 192, '2025-10-29 17:41:44', '2025-10-30 10:59:24'),
(16, 'Item 03', 'B TWO', 111, '2025-10-29 17:42:01', '2025-10-30 17:59:26'),
(17, 'Item 04', 'B THREE', 80, '2025-10-30 10:58:40', '2025-10-30 11:26:36'),
(18, 'Item 05', 'B FOUR', 268, '2025-10-30 11:20:39', '2025-10-31 11:22:16'),
(19, 'Product 101', 'Brand 101', 70, '2025-10-30 09:13:45', '2025-10-30 11:33:17');

-- --------------------------------------------------------
-- Table structure for table `sessions`
-- --------------------------------------------------------
CREATE TABLE `sessions` (
  `session_id` varchar(40) NOT NULL DEFAULT '0',
  `ip_address` varchar(16) NOT NULL DEFAULT '0',
  `user_agent` varchar(120) NOT NULL,
  `last_activity` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `user_data` text NOT NULL,
  PRIMARY KEY (`session_id`),
  KEY `last_activity_idx` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `sessions` (`session_id`, `ip_address`, `user_agent`, `last_activity`, `user_data`) VALUES
('262ed206690c8ffa8c0880853ab67ce2', '0.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.101 Safari/537.36', 1504186814, ''),
('49e9e36170db732c7314cb317b3c899e', '0.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.101 Safari/537.36', 1504187151, ''),
('4b6baa8cbc478d7e38395c0d7a3fc212', '0.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', 1504186981, 'a:5:{s:9:\"user_data\";s:0:\"\";s:10:\"admin_nama\";s:13:\"Administrator\";s:10:\"admin_user\";s:5:\"admin\";s:11:\"admin_level\";s:1:\"1\";s:9:\"logged_in\";b:1;}'),
('648fe333a5f0d3d2515f2a2711e1751c', '0.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 1532611686, ''),
('8f90fd01811f1c4f981059b36f932233', '0.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', 1504186981, ''),
('9f4279bb252307cbf1d9f5d87bf88a9c', '0.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.101 Safari/537.36', 1504186691, ''),
('aa0a60fa0dba1e30487cce20443ba358', '0.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 1532679275, ''),
('aa8fa7618237d5f7cb131b5777a1e564', '0.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.101 Safari/537.36', 1504187079, ''),
('e3deff5ffd5e90e5ba3deef2c0681ff4', '0.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', 1504187005, 'a:2:{s:9:\"user_data\";s:0:\"\";s:10:\"admin_nama\";s:13:\"Administrator\";}'),
('f622232dd0c9c866affa9648415588ab', '0.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', 1504187039, '');

-- --------------------------------------------------------
-- Table structure for table `supplier`
-- --------------------------------------------------------
CREATE TABLE `supplier` (
  `id_supplier` int(11) NOT NULL,
  `nama_supplier` varchar(100) NOT NULL,
  `alamat_supplier` varchar(100) NOT NULL,
  `notelp_supplier` varchar(12) NOT NULL,
  `supplier_created` datetime NOT NULL DEFAULT current_timestamp(),
  `supplier_updated` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id_supplier`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `supplier` (`id_supplier`, `nama_supplier`, `alamat_supplier`, `notelp_supplier`, `supplier_created`, `supplier_updated`) VALUES
(1, 'XYZ Suppliers', '774 Black Street', '45478540', '2025-10-29 18:39:24', '2025-10-29 18:39:24'),
(2, 'Ultimate Suppliers', '550 Allace Avenue', '01478500', '2025-10-29 17:37:13', '2025-10-29 17:37:13'),
(3, 'Verion Supplies', '558 Black Street', '01478540', '2025-10-29 17:38:21', '2025-10-29 17:38:21'),
(4, 'Avant Suppliers', '440 Enim St', '04550010', '2025-10-30 17:39:31', '2025-10-30 17:39:31'),
(5, 'Pegasus Suppliers', '5514 Eros Avenue', '40145550', '2025-10-30 17:40:25', '2025-10-30 17:40:25'),
(6, 'QWER Suppliers', '7741 D Street', '41000140', '2025-10-30 11:19:15', '2025-10-30 11:19:15'),
(7, 'Supplier 101', 'Test supplier', '09123564789', '2025-10-30 09:14:41', '2025-10-31 09:14:41');

-- --------------------------------------------------------
-- Table structure for table `transaksi_barang`
-- --------------------------------------------------------
CREATE TABLE `transaksi_barang` (
  `id_transaksi` int(11) NOT NULL,
  `jumlah` int(11) DEFAULT NULL,
  `tanggal_transaksi` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `transaksi_updated` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `status_pergerakan` char(1) NOT NULL COMMENT 'pergerakan barang masuk = 1 atau keluar = 2',
  `id_barang` int(11) NOT NULL,
  `admin_user` varchar(119) NOT NULL,
  `id_supplier` int(11) NOT NULL,
  `id_customer` int(11) NOT NULL,
  PRIMARY KEY (`id_transaksi`),
  UNIQUE KEY `Tgl_transaksi` (`tanggal_transaksi`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

INSERT INTO `transaksi_barang` (`id_transaksi`, `jumlah`, `tanggal_transaksi`, `transaksi_updated`, `status_pergerakan`, `id_barang`, `admin_user`, `id_supplier`, `id_customer`) VALUES
(30, 112, '2025-10-29 12:56:57', '2025-10-29 18:41:57', '1', 13, 'admin', 1, 0),
(31, 32, '2025-10-29 12:57:20', '2025-10-29 18:42:20', '2', 13, 'admin', 0, 1),
(32, 56, '2025-10-30 05:13:43', '2025-10-30 10:58:43', '1', 14, 'admin', 1, 0),
(33, 251, '2025-10-30 12:01:20', '2025-10-30 17:46:20', '1', 15, 'admin', 1, 0),
(34, 55, '2025-10-30 12:03:11', '2025-10-30 17:48:11', '2', 14, 'admin', 0, 2),
(35, 111, '2025-10-30 12:14:26', '2025-10-30 17:59:26', '1', 16, 'admin', 5, 0),
(36, 59, '2025-10-30 05:14:24', '2025-10-30 10:59:24', '2', 15, 'admin', 0, 6),
(37, 336, '2025-10-30 05:36:27', '2025-10-30 11:21:27', '1', 18, 'admin', 6, 0),
(38, 68, '2025-10-30 05:37:16', '2025-10-30 11:22:16', '2', 18, 'admin', 0, 9),
(39, 80, '2025-10-30 05:41:36', '2025-10-30 11:26:36', '1', 17, 'admin', 4, 0),
(42, 100, '2025-10-30 01:31:10', '2025-10-30 09:31:10', '1', 19, 'admin', 7, 0),
(43, 55, '2025-10-30 01:31:31', '2025-10-30 09:31:31', '2', 19, 'admin', 0, 10),
(45, 20, '2025-10-30 03:32:59', '2025-10-30 11:32:59', '1', 19, 'admin', 7, 0),
(46, 30, '2025-10-30 03:33:17', '2025-10-30 11:33:17', '2', 19, 'admin', 0, 10);

-- --------------------------------------------------------
-- Indexes and AUTO_INCREMENT adjustments
-- --------------------------------------------------------
ALTER TABLE `admin_level`
  MODIFY `admin_level_kode` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

ALTER TABLE `customer`
  MODIFY `id_customer` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

ALTER TABLE `identitas`
  MODIFY `identitas_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

ALTER TABLE `limitstock`
  MODIFY `limitstock_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

ALTER TABLE `master_barang`
  MODIFY `id_barang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

ALTER TABLE `supplier`
  MODIFY `id_supplier` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

ALTER TABLE `transaksi_barang`
  MODIFY `id_transaksi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

-- --------------------------------------------------------
-- Create audit_event (must exist before triggers)
-- --------------------------------------------------------
CREATE TABLE `audit_event` (
  `event_id` INT NOT NULL AUTO_INCREMENT,
  `event_type` VARCHAR(50) NOT NULL,
  `event_detail` TEXT NOT NULL,
  `event_actor` VARCHAR(50) NOT NULL,
  `event_time` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`event_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------
-- Procedures, Functions and Triggers (safe, unique names)
-- --------------------------------------------------------
DELIMITER $$

CREATE PROCEDURE `record_inventory_action`(
    IN p_actor VARCHAR(50),
    IN p_type VARCHAR(50),
    IN p_detail TEXT
)
BEGIN
    INSERT INTO audit_event(event_type, event_detail, event_actor)
    VALUES(p_type, p_detail, p_actor);
END $$

CREATE FUNCTION `calc_restock_priority`(current_stock INT, min_limit INT)
RETURNS INT
DETERMINISTIC
BEGIN
    DECLARE priority INT;
    IF current_stock <= min_limit THEN
        SET priority = 1;
    ELSEIF current_stock <= (min_limit * 2) THEN
        SET priority = 2;
    ELSE
        SET priority = 3;
    END IF;
    RETURN priority;
END $$

CREATE FUNCTION `generate_reference_code`(prefix VARCHAR(10))
RETURNS VARCHAR(30)
DETERMINISTIC
BEGIN
    RETURN CONCAT(prefix, '-', DATE_FORMAT(NOW(), '%Y%m%d%H%i%s'));
END $$

CREATE PROCEDURE `archive_inactive_suppliers`()
BEGIN
    SELECT id_supplier, nama_supplier
    FROM supplier
    WHERE supplier_created < DATE_SUB(NOW(), INTERVAL 2 YEAR);
END $$

CREATE PROCEDURE `summarize_customer_activity`()
BEGIN
    SELECT c.id_customer, c.nama_customer, COUNT(t.id_transaksi) AS total_txn
    FROM customer c
    LEFT JOIN transaksi_barang t ON c.id_customer = t.id_customer
    GROUP BY c.id_customer;
END $$

CREATE PROCEDURE `adjust_stock_projection`(IN forecast_days INT)
BEGIN
    SELECT m.id_barang, m.nama_barang,
           (m.stock - (forecast_days * 2)) AS projected_stock
    FROM master_barang m;
END $$

CREATE PROCEDURE `generate_supplier_snapshot`(IN region VARCHAR(50))
BEGIN
    SELECT * FROM supplier
    WHERE alamat_supplier LIKE CONCAT('%', region, '%');
END $$

CREATE FUNCTION `compute_delivery_eta`(distance_km INT)
RETURNS INT
DETERMINISTIC
BEGIN
    DECLARE eta INT;
    SET eta = distance_km DIV 60; -- 1 hour per 60 km
    IF eta < 1 THEN
        SET eta = 1;
    END IF;
    RETURN eta;
END $$

CREATE FUNCTION `score_customer_reliability`(total_txn INT, last_txn_date DATETIME)
RETURNS DECIMAL(5,2)
DETERMINISTIC
BEGIN
    DECLARE score DECIMAL(5,2);
    IF total_txn >= 50 THEN
        SET score = 9.5;
    ELSEIF total_txn >= 20 THEN
        SET score = 7.0;
    ELSE
        SET score = 5.0;
    END IF;
    RETURN score;
END $$

CREATE FUNCTION `product_value_index`(stock INT, factor INT)
RETURNS DECIMAL(10,2)
DETERMINISTIC
BEGIN
    RETURN stock * factor * 1.25;
END $$

CREATE PROCEDURE `audit_stock_thresholds`()
BEGIN
    SELECT m.id_barang, m.nama_barang, m.stock, l.stock AS limit_stock
    FROM master_barang m, limitstock l
    WHERE m.stock < l.stock;
END $$

CREATE PROCEDURE `refresh_customer_cache`()
BEGIN
    UPDATE customer
    SET customer_updated = NOW()
    WHERE id_customer = 0; -- no-op
END $$

CREATE FUNCTION `estimate_restock_time`(supplier_level INT, stock_deficit INT)
RETURNS INT
DETERMINISTIC
BEGIN
    RETURN (supplier_level * 3) + (stock_deficit DIV 10);
END $$

-- Triggers on audit_event (safe; after_insert creates auto-summary but guarded)
CREATE TRIGGER `trg_audit_event_before_insert`
BEFORE INSERT ON `audit_event`
FOR EACH ROW
BEGIN
    IF NEW.event_actor = '' THEN
        SET NEW.event_actor = 'system';
    END IF;
END $$

CREATE TRIGGER `trg_audit_event_after_insert`
AFTER INSERT ON `audit_event`
FOR EACH ROW
BEGIN
    IF NEW.event_type <> 'auto-summary' THEN
        INSERT INTO audit_event(event_type, event_detail, event_actor)
        VALUES('auto-summary',
               CONCAT('Logged event ', NEW.event_id, ' of type ', NEW.event_type),
               'system');
    END IF;
END $$

-- Triggers on supplier/customer that only log into audit_event (safe)
CREATE TRIGGER `trg_supplier_after_insert`
AFTER INSERT ON `supplier`
FOR EACH ROW
BEGIN
    INSERT INTO audit_event(event_type, event_detail, event_actor)
    VALUES(
        'supplier-entry',
        CONCAT('New supplier added: ', NEW.nama_supplier, ' (ID: ', NEW.id_supplier, ')'),
        'system-audit'
    );
END $$

CREATE TRIGGER `trg_customer_after_update`
AFTER UPDATE ON `customer`
FOR EACH ROW
BEGIN
    IF NEW.nama_customer <> OLD.nama_customer
        OR NEW.alamat_customer <> OLD.alamat_customer
        OR NEW.notelp_customer <> OLD.notelp_customer THEN
        INSERT INTO audit_event(event_type, event_detail, event_actor)
        VALUES(
            'customer-update',
            CONCAT('Customer ', OLD.id_customer, ' updated details at ', NOW()),
            'system-audit'
        );
    END IF;
END $$

DELIMITER ;

-- End of SQL file
