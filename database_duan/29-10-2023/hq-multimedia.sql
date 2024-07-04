-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 29, 2023 lúc 08:24 AM
-- Phiên bản máy phục vụ: 10.4.24-MariaDB
-- Phiên bản PHP: 7.4.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `hq-multimedia`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `data`
--

CREATE TABLE `data` (
  `data_id` int(11) NOT NULL,
  `data_name` varchar(255) COLLATE utf8_vietnamese_ci NOT NULL,
  `data_tags` text COLLATE utf8_vietnamese_ci NOT NULL,
  `data_status` int(11) NOT NULL,
  `category_name` text COLLATE utf8_vietnamese_ci NOT NULL,
  `data_img` text COLLATE utf8_vietnamese_ci NOT NULL,
  `data_img_thumb` text COLLATE utf8_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `data`
--

INSERT INTO `data` (`data_id`, `data_name`, `data_tags`, `data_status`, `category_name`, `data_img`, `data_img_thumb`) VALUES
(25, 'Web-color-01', 'web,black,classic', 1, 'Bảng màu web classic', 'http://localhost/2023-HQ-Multimedia-WebBackend/Add-update-delete/SourceData/data/12.jpg', 'http://localhost/2023-HQ-Multimedia-WebBackend/Add-update-delete/SourceData/data/12_thumb.jpg'),
(30, 'data-test', 'cute', 1, 'Bảng màu web classic', 'http://localhost/2023-HQ-Multimedia-WebBackend/Add-update-delete/SourceData/data/366316353_3336491596642430_3312553931880283071_n.jpg', 'http://localhost/2023-HQ-Multimedia-WebBackend/Add-update-delete/SourceData/data/366316353_3336491596642430_3312553931880283071_n_thumb.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `data_category`
--

CREATE TABLE `data_category` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(255) COLLATE utf8_vietnamese_ci NOT NULL,
  `category_img` text COLLATE utf8_vietnamese_ci NOT NULL,
  `category_img_thumb` text COLLATE utf8_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `data_category`
--

INSERT INTO `data_category` (`category_id`, `category_name`, `category_img`, `category_img_thumb`) VALUES
(90, 'Bảng màu web classic', 'http://localhost/2023-HQ-Multimedia-WebBackend/Add-update-delete/SourceData/category/366341863_3336491523309104_3322939213646265137_n.jpg', 'http://localhost/2023-HQ-Multimedia-WebBackend/Add-update-delete/SourceData/category/366341863_3336491523309104_3322939213646265137_n_thumb.jpg'),
(91, 'category 1', 'http://localhost/2023-HQ-Multimedia-WebBackend/Add-update-delete/SourceData/category/366330368_3336492709975652_3552843479240895865_n.jpg', 'http://localhost/2023-HQ-Multimedia-WebBackend/Add-update-delete/SourceData/category/366330368_3336492709975652_3552843479240895865_n_thumb.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `email` varchar(255) COLLATE utf8_vietnamese_ci NOT NULL,
  `password` text COLLATE utf8_vietnamese_ci NOT NULL,
  `avatar` text COLLATE utf8_vietnamese_ci NOT NULL,
  `avatar_thumb` text COLLATE utf8_vietnamese_ci NOT NULL,
  `level` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`id_user`, `email`, `password`, `avatar`, `avatar_thumb`, `level`) VALUES
(9, 'Test@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 'http://localhost/2023-HQ-Multimedia-WebBackend/Login-Register/SourceData/avatar_basic.jpg', 'http://localhost/2023-HQ-Multimedia-WebBackend/Login-Register/SourceData/avatar_basic.jpg', 1),
(10, 'nguyenhaiquandh@gmail.com', 'c51cd8e64b0aeb778364765013df9ebe', 'http://localhost/2023-HQ-Multimedia-WebBackend/Login-Register/SourceData/avatar_basic.jpg', 'http://localhost/2023-HQ-Multimedia-WebBackend/Login-Register/SourceData/avatar_basic.jpg', 1),
(11, 'Test-2@gmail.com', 'c51cd8e64b0aeb778364765013df9ebe', 'http://localhost/2023-HQ-Multimedia-WebBackend/Add-update-delete/SourceData/avatar_basic.jpg', 'http://localhost/2023-HQ-Multimedia-WebBackend/Add-update-delete/SourceData/avatar_basic.jpg', 1);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `data`
--
ALTER TABLE `data`
  ADD PRIMARY KEY (`data_id`);

--
-- Chỉ mục cho bảng `data_category`
--
ALTER TABLE `data_category`
  ADD PRIMARY KEY (`category_id`);

--
-- Chỉ mục cho bảng `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `data`
--
ALTER TABLE `data`
  MODIFY `data_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT cho bảng `data_category`
--
ALTER TABLE `data_category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- AUTO_INCREMENT cho bảng `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
