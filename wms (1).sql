-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Mar 18, 2023 at 08:54 AM
-- Server version: 5.7.36
-- PHP Version: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wms`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
CREATE TABLE IF NOT EXISTS `customer` (
  `UID` varchar(20) NOT NULL,
  `CID` varchar(20) NOT NULL,
  `Cname` varchar(30) NOT NULL,
  `Email` varchar(30) NOT NULL,
  `NIC` varchar(12) NOT NULL,
  PRIMARY KEY (`CID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `customer_address`
--

DROP TABLE IF EXISTS `customer_address`;
CREATE TABLE IF NOT EXISTS `customer_address` (
  `CNO` varchar(20) NOT NULL,
  `City` varchar(30) NOT NULL,
  `Postalcode` varchar(10) NOT NULL,
  `Street_address` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `customer_contact_number`
--

DROP TABLE IF EXISTS `customer_contact_number`;
CREATE TABLE IF NOT EXISTS `customer_contact_number` (
  `CNO` varchar(20) NOT NULL,
  `Contact_number` int(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `customer_invoice`
--

DROP TABLE IF EXISTS `customer_invoice`;
CREATE TABLE IF NOT EXISTS `customer_invoice` (
  `SONO` varchar(20) NOT NULL,
  `CIID` varchar(20) NOT NULL,
  `Date` date NOT NULL,
  `Total_amount_payable` varchar(30) NOT NULL,
  PRIMARY KEY (`CIID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `delivery_note`
--

DROP TABLE IF EXISTS `delivery_note`;
CREATE TABLE IF NOT EXISTS `delivery_note` (
  `SONO` varchar(20) NOT NULL,
  `DNID` varchar(20) NOT NULL,
  `Date` date NOT NULL,
  PRIMARY KEY (`DNID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `finished_product`
--

DROP TABLE IF EXISTS `finished_product`;
CREATE TABLE IF NOT EXISTS `finished_product` (
  `EPID` varchar(20) NOT NULL,
  `Brand_name` varchar(20) NOT NULL,
  `FPname` varchar(30) NOT NULL,
  `Manufacture_date` date NOT NULL,
  `Expiry_date` date NOT NULL,
  `Description` varchar(100) NOT NULL,
  `Dosage_form` varchar(30) NOT NULL,
  PRIMARY KEY (`EPID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `finish_product_stock`
--

DROP TABLE IF EXISTS `finish_product_stock`;
CREATE TABLE IF NOT EXISTS `finish_product_stock` (
  `SID` varchar(20) NOT NULL,
  `Unit_price` varchar(30) NOT NULL,
  `Date` date NOT NULL,
  `Stock_quantity` varchar(30) NOT NULL,
  PRIMARY KEY (`SID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `good_recived_note`
--

DROP TABLE IF EXISTS `good_recived_note`;
CREATE TABLE IF NOT EXISTS `good_recived_note` (
  `GRNID` varchar(20) NOT NULL,
  `Date` date NOT NULL,
  `POID` varchar(20) NOT NULL,
  PRIMARY KEY (`GRNID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `purchase_order`
--

DROP TABLE IF EXISTS `purchase_order`;
CREATE TABLE IF NOT EXISTS `purchase_order` (
  `POID` varchar(20) NOT NULL,
  `Date` date NOT NULL,
  `SNO` varchar(20) NOT NULL,
  `UNO` varchar(20) NOT NULL,
  PRIMARY KEY (`POID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `purchase_order_shipaddress`
--

DROP TABLE IF EXISTS `purchase_order_shipaddress`;
CREATE TABLE IF NOT EXISTS `purchase_order_shipaddress` (
  `POID` varchar(20) NOT NULL,
  `Street_address` varchar(30) NOT NULL,
  `City` varchar(20) NOT NULL,
  `Postalcode` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `purchase_return`
--

DROP TABLE IF EXISTS `purchase_return`;
CREATE TABLE IF NOT EXISTS `purchase_return` (
  `PRID` varchar(20) NOT NULL,
  `Date` date NOT NULL,
  `PONO` varchar(20) NOT NULL,
  PRIMARY KEY (`PRID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `raw_material`
--

DROP TABLE IF EXISTS `raw_material`;
CREATE TABLE IF NOT EXISTS `raw_material` (
  `RMID` varchar(20) NOT NULL,
  `RMname` varchar(30) NOT NULL,
  `Status` varchar(20) NOT NULL,
  `Substance_type` varchar(20) NOT NULL,
  PRIMARY KEY (`RMID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `raw_material`
--

INSERT INTO `raw_material` (`RMID`, `RMname`, `Status`, `Substance_type`) VALUES
('0007', ' Penicillium mold', 'Bulk', 'asasasa'),
('0008', 'Ephedra sinica', 'Bulk', 'sadsadada');

-- --------------------------------------------------------

--
-- Table structure for table `raw_material_stock`
--

DROP TABLE IF EXISTS `raw_material_stock`;
CREATE TABLE IF NOT EXISTS `raw_material_stock` (
  `RMSID` varchar(20) NOT NULL,
  `Unit_price` varchar(30) NOT NULL,
  `Date` date NOT NULL,
  `Quantity` varchar(30) NOT NULL,
  PRIMARY KEY (`RMSID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `raw_material_stock`
--

INSERT INTO `raw_material_stock` (`RMSID`, `Unit_price`, `Date`, `Quantity`) VALUES
('0011', '20000', '2023-02-25', '20'),
('0012', '30000', '2023-02-24', '20');

-- --------------------------------------------------------

--
-- Table structure for table `sales_order`
--

DROP TABLE IF EXISTS `sales_order`;
CREATE TABLE IF NOT EXISTS `sales_order` (
  `UNO` varchar(20) NOT NULL,
  `SOID` varchar(20) NOT NULL,
  `Date_of_order` date NOT NULL,
  `CNO` varchar(20) NOT NULL,
  PRIMARY KEY (`SOID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sales_order_ship_address`
--

DROP TABLE IF EXISTS `sales_order_ship_address`;
CREATE TABLE IF NOT EXISTS `sales_order_ship_address` (
  `SONO` varchar(20) NOT NULL,
  `Postal_code` varchar(10) NOT NULL,
  `City` varchar(20) NOT NULL,
  `Street_address` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sales_return`
--

DROP TABLE IF EXISTS `sales_return`;
CREATE TABLE IF NOT EXISTS `sales_return` (
  `SONO` varchar(20) NOT NULL,
  `SRID` varchar(20) NOT NULL,
  `Date` date NOT NULL,
  `Returned_quantity` varchar(20) NOT NULL,
  PRIMARY KEY (`SRID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `storekeeper`
--

DROP TABLE IF EXISTS `storekeeper`;
CREATE TABLE IF NOT EXISTS `storekeeper` (
  `UNO` varchar(20) NOT NULL,
  `Level` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

DROP TABLE IF EXISTS `supplier`;
CREATE TABLE IF NOT EXISTS `supplier` (
  `SID` varchar(20) NOT NULL,
  `Sname` varchar(30) NOT NULL,
  `Email` varchar(20) NOT NULL,
  `Contact_number` varchar(10) NOT NULL,
  PRIMARY KEY (`SID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`SID`, `Sname`, `Email`, `Contact_number`) VALUES
('0005', 'John', 'shehan2015@gmail.com', '0762023248');

-- --------------------------------------------------------

--
-- Table structure for table `supplier_address`
--

DROP TABLE IF EXISTS `supplier_address`;
CREATE TABLE IF NOT EXISTS `supplier_address` (
  `SNO` varchar(20) NOT NULL,
  `Postal_code` varchar(10) NOT NULL,
  `City` varchar(20) NOT NULL,
  `Street_address` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `supplier_invoice`
--

DROP TABLE IF EXISTS `supplier_invoice`;
CREATE TABLE IF NOT EXISTS `supplier_invoice` (
  `SIID` varchar(20) NOT NULL,
  `Date` date NOT NULL,
  `Total_amount_payable` varchar(30) NOT NULL,
  `POID` varchar(20) NOT NULL,
  PRIMARY KEY (`SIID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `UID` varchar(20) NOT NULL,
  `User_name` varchar(30) NOT NULL,
  `Password` varchar(20) NOT NULL,
  `NIC` varchar(12) NOT NULL,
  `Email` varchar(30) NOT NULL,
  `First_name` varchar(30) NOT NULL,
  `Last_name` varchar(30) NOT NULL,
  `Status` varchar(20) NOT NULL,
  PRIMARY KEY (`UID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`UID`, `User_name`, `Password`, `NIC`, `Email`, `First_name`, `Last_name`, `Status`) VALUES
('0001', 'Admin', 'Admin123', '995380730V', 'ruwaniranasinghe2019@gmail.com', 'Ruwani', 'Ranasinghe', 'Internal'),
('0002', 'Shehan', 'Shehan123', '995380735V', 'shehan2013@gmail.com', 'Shehan', 'John', 'Intern'),
('0004', 'Ravishka', 'Ravishka123', '957363636V', 'ravishka2015@gmail.com', 'Ravishka', 'Galabada', 'Internal'),
('0003', 'Sanara', 'Sanara123', '9856356353V', 'sanara2013@gmail.com', 'Sanara', 'karunadasa', 'Internal');

-- --------------------------------------------------------

--
-- Table structure for table `user_address`
--

DROP TABLE IF EXISTS `user_address`;
CREATE TABLE IF NOT EXISTS `user_address` (
  `UNO` varchar(20) NOT NULL,
  `Street_address` varchar(30) NOT NULL,
  `City` varchar(20) NOT NULL,
  `Postalcode` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_contact_number`
--

DROP TABLE IF EXISTS `user_contact_number`;
CREATE TABLE IF NOT EXISTS `user_contact_number` (
  `UNO` varchar(20) NOT NULL,
  `Contact_number` int(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `warehouse_manager`
--

DROP TABLE IF EXISTS `warehouse_manager`;
CREATE TABLE IF NOT EXISTS `warehouse_manager` (
  `UNO` varchar(20) NOT NULL,
  `Type` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
