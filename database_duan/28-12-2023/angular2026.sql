-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 28, 2023 lúc 09:27 AM
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
-- Cơ sở dữ liệu: `angular2026`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category`
--

CREATE TABLE `category` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(255) COLLATE utf8_vietnamese_ci NOT NULL,
  `category_img` text COLLATE utf8_vietnamese_ci NOT NULL,
  `category_img_thumb` text COLLATE utf8_vietnamese_ci NOT NULL,
  `category_date` varchar(255) COLLATE utf8_vietnamese_ci NOT NULL,
  `category_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `data`
--

CREATE TABLE `data` (
  `data_id` int(11) NOT NULL,
  `data_name` varchar(255) COLLATE utf8_vietnamese_ci NOT NULL,
  `category_id` int(11) NOT NULL,
  `data_content` longtext COLLATE utf8_vietnamese_ci NOT NULL,
  `data_img` text COLLATE utf8_vietnamese_ci NOT NULL,
  `data_img_thumb` text COLLATE utf8_vietnamese_ci NOT NULL,
  `user` varchar(255) COLLATE utf8_vietnamese_ci NOT NULL,
  `data_date` varchar(255) COLLATE utf8_vietnamese_ci NOT NULL,
  `data_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `data`
--

INSERT INTO `data` (`data_id`, `data_name`, `category_id`, `data_content`, `data_img`, `data_img_thumb`, `user`, `data_date`, `data_status`) VALUES
(1, 'Set trang 404-not-found khi user cố tình thao tác sai trên đường dẫn url\n', 1, '01. Khi cố tình nhập sai url sẽ dẫn đến trang 404\r\n\r\n+Nhập sai đường dẫn cố định trong routes ( menu ) mặc định sẽ dẫn đến views→ errors → html →error_404.php\r\n+Cố tình nhập các ký tự đặc biệt trên đường dẫn cố định mặc định sẽ dẫn đến views→ errors → html →error_general.php\r\n-cách xử lý để dẫn đến trang 404 của project\r\n+Bước 1: Vào Views→errors→html tìm đến 2 file : error-404.php,error_general.php thêm dòng code sau :\r\n+Bước 2 : vào application→routes.php tạo 1 route như sau để dẫn đến controller mặc định welcome\r\n02.Cố tình nhập sai id trên url mà không thông qua form dẫn đến không tồn tại biến $filter_quantity và giá trị $filter_quantity = 0 ( 0/0 sẽ dẫn đến lỗi như bên dưới )', 'https://vnn-imgs-a1.vgcloud.vn/icdn.dantri.com.vn/2022/03/13/hoi-gai-xinh-goi-cam-noi-gi-truoc-ap-luc-mac-sexy-la-hu-hongdocx-1647188022424.jpeg', 'https://shop.muoitamcong.vn/wp-content/uploads/2023/10/Anh-gai-dep-Tiktok-Trung-Quoc-2.jpg', '', '', 0),
(2, 'Set trang 404-not-found khi user cố tình thao tác sai trên đường dẫn url\r\n', 1, '01. Khi cố tình nhập sai url sẽ dẫn đến trang 404\r\n\r\n+Nhập sai đường dẫn cố định trong routes ( menu ) mặc định sẽ dẫn đến views→ errors → html →error_404.php\r\n+Cố tình nhập các ký tự đặc biệt trên đường dẫn cố định mặc định sẽ dẫn đến views→ errors → html →error_general.php\r\n-cách xử lý để dẫn đến trang 404 của project\r\n+Bước 1: Vào Views→errors→html tìm đến 2 file : error-404.php,error_general.php thêm dòng code sau :\r\n+Bước 2 : vào application→routes.php tạo 1 route như sau để dẫn đến controller mặc định welcome\r\n02.Cố tình nhập sai id trên url mà không thông qua form dẫn đến không tồn tại biến $filter_quantity và giá trị $filter_quantity = 0 ( 0/0 sẽ dẫn đến lỗi như bên dưới )', 'https://vnn-imgs-a1.vgcloud.vn/icdn.dantri.com.vn/2022/03/13/hoi-gai-xinh-goi-cam-noi-gi-truoc-ap-luc-mac-sexy-la-hu-hongdocx-1647188022424.jpeg', 'https://vnn-imgs-a1.vgcloud.vn/icdn.dantri.com.vn/2022/03/13/hoi-gai-xinh-goi-cam-noi-gi-truoc-ap-luc-mac-sexy-la-hu-hongdocx-1647188022424.jpeg', '', '', 0),
(3, 'Set trang 404-not-found khi user cố tình thao tác sai trên đường dẫn url\r\n', 1, '01. Khi cố tình nhập sai url sẽ dẫn đến trang 404\r\n\r\n+Nhập sai đường dẫn cố định trong routes ( menu ) mặc định sẽ dẫn đến views→ errors → html →error_404.php\r\n+Cố tình nhập các ký tự đặc biệt trên đường dẫn cố định mặc định sẽ dẫn đến views→ errors → html →error_general.php\r\n-cách xử lý để dẫn đến trang 404 của project\r\n+Bước 1: Vào Views→errors→html tìm đến 2 file : error-404.php,error_general.php thêm dòng code sau :\r\n+Bước 2 : vào application→routes.php tạo 1 route như sau để dẫn đến controller mặc định welcome\r\n02.Cố tình nhập sai id trên url mà không thông qua form dẫn đến không tồn tại biến $filter_quantity và giá trị $filter_quantity = 0 ( 0/0 sẽ dẫn đến lỗi như bên dưới )', 'https://vnn-imgs-a1.vgcloud.vn/icdn.dantri.com.vn/2022/03/13/hoi-gai-xinh-goi-cam-noi-gi-truoc-ap-luc-mac-sexy-la-hu-hongdocx-1647188022424.jpeg', 'https://vnn-imgs-a1.vgcloud.vn/icdn.dantri.com.vn/2022/03/13/hoi-gai-xinh-goi-cam-noi-gi-truoc-ap-luc-mac-sexy-la-hu-hongdocx-1647188022424.jpeg', '', '', 0),
(4, 'test-code', 1, '01. Khi cố tình nhập sai url sẽ dẫn đến trang 404\r\n\r\n+Nhập sai đường dẫn cố định trong routes ( menu ) mặc định sẽ dẫn đến views→ errors → html →error_404.php\r\n+Cố tình nhập các ký tự đặc biệt trên đường dẫn cố định mặc định sẽ dẫn đến views→ errors → html →error_general.php\r\n-cách xử lý để dẫn đến trang 404 của project\r\n+Bước 1: Vào Views→errors→html tìm đến 2 file : error-404.php,error_general.php thêm dòng code sau :\r\n+Bước 2 : vào application→routes.php tạo 1 route như sau để dẫn đến controller mặc định welcome\r\n02.Cố tình nhập sai id trên url mà không thông qua form dẫn đến không tồn tại biến $filter_quantity và giá trị $filter_quantity = 0 ( 0/0 sẽ dẫn đến lỗi như bên dưới )', 'https://vnn-imgs-a1.vgcloud.vn/icdn.dantri.com.vn/2022/03/13/hoi-gai-xinh-goi-cam-noi-gi-truoc-ap-luc-mac-sexy-la-hu-hongdocx-1647188022424.jpeg', 'https://vnn-imgs-a1.vgcloud.vn/icdn.dantri.com.vn/2022/03/13/hoi-gai-xinh-goi-cam-noi-gi-truoc-ap-luc-mac-sexy-la-hu-hongdocx-1647188022424.jpeg', '', '', 0),
(5, 'Set trang 404-not-found khi user cố tình thao tác sai trên đường dẫn url\r\n', 1, '01. Khi cố tình nhập sai url sẽ dẫn đến trang 404\r\n\r\n+Nhập sai đường dẫn cố định trong routes ( menu ) mặc định sẽ dẫn đến views→ errors → html →error_404.php\r\n+Cố tình nhập các ký tự đặc biệt trên đường dẫn cố định mặc định sẽ dẫn đến views→ errors → html →error_general.php\r\n-cách xử lý để dẫn đến trang 404 của project\r\n+Bước 1: Vào Views→errors→html tìm đến 2 file : error-404.php,error_general.php thêm dòng code sau :\r\n+Bước 2 : vào application→routes.php tạo 1 route như sau để dẫn đến controller mặc định welcome\r\n02.Cố tình nhập sai id trên url mà không thông qua form dẫn đến không tồn tại biến $filter_quantity và giá trị $filter_quantity = 0 ( 0/0 sẽ dẫn đến lỗi như bên dưới )', 'https://vnn-imgs-a1.vgcloud.vn/icdn.dantri.com.vn/2022/03/13/hoi-gai-xinh-goi-cam-noi-gi-truoc-ap-luc-mac-sexy-la-hu-hongdocx-1647188022424.jpeg', 'https://shop.muoitamcong.vn/wp-content/uploads/2023/10/Anh-gai-dep-Tiktok-Trung-Quoc-2.jpg', '', '', 0),
(6, 'Set trang 404-not-found khi user cố tình thao tác sai trên đường dẫn url\r\n', 1, '01. Khi cố tình nhập sai url sẽ dẫn đến trang 404\r\n\r\n+Nhập sai đường dẫn cố định trong routes ( menu ) mặc định sẽ dẫn đến views→ errors → html →error_404.php\r\n+Cố tình nhập các ký tự đặc biệt trên đường dẫn cố định mặc định sẽ dẫn đến views→ errors → html →error_general.php\r\n-cách xử lý để dẫn đến trang 404 của project\r\n+Bước 1: Vào Views→errors→html tìm đến 2 file : error-404.php,error_general.php thêm dòng code sau :\r\n+Bước 2 : vào application→routes.php tạo 1 route như sau để dẫn đến controller mặc định welcome\r\n02.Cố tình nhập sai id trên url mà không thông qua form dẫn đến không tồn tại biến $filter_quantity và giá trị $filter_quantity = 0 ( 0/0 sẽ dẫn đến lỗi như bên dưới )', 'https://vnn-imgs-a1.vgcloud.vn/icdn.dantri.com.vn/2022/03/13/hoi-gai-xinh-goi-cam-noi-gi-truoc-ap-luc-mac-sexy-la-hu-hongdocx-1647188022424.jpeg', 'https://vnn-imgs-a1.vgcloud.vn/icdn.dantri.com.vn/2022/03/13/hoi-gai-xinh-goi-cam-noi-gi-truoc-ap-luc-mac-sexy-la-hu-hongdocx-1647188022424.jpeg', '', '', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `menu`
--

CREATE TABLE `menu` (
  `menu_id` int(11) NOT NULL,
  `menu_name` varchar(255) COLLATE utf8_vietnamese_ci NOT NULL,
  `menu_img` text COLLATE utf8_vietnamese_ci NOT NULL,
  `menu_img_thumb` text COLLATE utf8_vietnamese_ci NOT NULL,
  `menu_date` varchar(255) COLLATE utf8_vietnamese_ci NOT NULL,
  `menu_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `user_name` varchar(255) COLLATE utf8_vietnamese_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_vietnamese_ci NOT NULL,
  `content` longtext COLLATE utf8_vietnamese_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8_vietnamese_ci NOT NULL,
  `img_thumb` varchar(255) COLLATE utf8_vietnamese_ci NOT NULL,
  `img_json` longtext COLLATE utf8_vietnamese_ci NOT NULL,
  `trangthai` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  `ngaytao` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`id`, `user_name`, `password`, `content`, `avatar`, `img_thumb`, `img_json`, `trangthai`, `level`, `ngaytao`) VALUES
(506, 'EmailTest04@gmail.com', 'ae0da1c13ba1b5133fdbede3dbc3950b', '', 'http://localhost/Angular2026/SourceData/user/242549297_400039025079237_6750817220789091844_n.jpg', 'http://localhost/Angular2026/SourceData/user/242549297_400039025079237_6750817220789091844_n_thumb.jpg', '', 0, 2, 0),
(508, 'EmailTest06@gmail.com', '3b6ccc387d45876ce8d5afe1f3767494', '', 'http://localhost/Angular2026/SourceData/user/106987308_2764327200340591_2416090537766665277_o.jpg', 'http://localhost/Angular2026/SourceData/user/106987308_2764327200340591_2416090537766665277_o_thumb.jpg', '', 0, 2, 0),
(510, 'EmailTest8@gmail.com', '1a71acf449fe0293c06909c2d7d8d92f', '', 'http://localhost/Angular2026/SourceData/user/021.jpg', 'http://localhost/Angular2026/SourceData/user/021_thumb.jpg', '', 0, 2, 0),
(512, 'EmailTest10@gmail.com', 'c2039de659426c3806b9c091a1b2afdd', '', 'http://localhost/Angular2026/SourceData/user/06.jpg', 'http://localhost/Angular2026/SourceData/user/06_thumb.jpg', '', 0, 2, 0),
(513, 'EmailTest11@gmail.com', '862942e7cdc35f07cb4cdcf2f30da144', '', 'http://localhost/Angular2026/SourceData/user/2.jpg', 'http://localhost/Angular2026/SourceData/user/2_thumb.jpg', '', 0, 2, 0),
(515, 'EmailTest@gmail.com', 'c2039de659426c3806b9c091a1b2afdd', '', 'http://localhost/Angular2026/SourceData/user/00041.jpg', 'http://localhost/Angular2026/SourceData/user/00041_thumb.jpg', '', 1, 2, 0),
(520, 'EmailTest@gmail.com', '873372a99bcb8f385aca5d159ea064ef', '', 'http://localhost/Angular2026/SourceData/user/023.jpg', 'http://localhost/Angular2026/SourceData/user/023_thumb.jpg', '', 0, 2, 0),
(523, 'EmailTest@gmail.com', '78de0aff9278a05e99d742fb638b1c30', '', 'http://localhost/Angular2026/SourceData/user/00042.jpg', 'http://localhost/Angular2026/SourceData/user/00042_thumb.jpg', '', 0, 2, 0),
(524, 'EmailTest100@gmail.com', 'f4edef6984bfca78c886c657d5e62832', '', 'http://localhost/Angular2026/SourceData/user/23.jpg', 'http://localhost/Angular2026/SourceData/user/23_thumb.jpg', '', 0, 2, 0),
(526, 'EmailTest@gmail.com', 'b95ab91a7fb3597ff390ad8a9fe9859e', '', 'http://localhost/Angular2026/SourceData/user/954.jpg', 'http://localhost/Angular2026/SourceData/user/954_thumb.jpg', '', 0, 2, 0),
(528, 'EmailTest@gmail.com', 'd07b9e53413435bc78d5ea8a91734c5c', '', 'http://localhost/Angular2026/SourceData/user/0004.jpg', 'http://localhost/Angular2026/SourceData/user/0004_thumb.jpg', '', 0, 2, 0),
(529, 'EmailTest191919@gmail.com', '729b0be2c180bfe4106e7fccb010f972', '', 'http://localhost/Angular2026/SourceData/user/061.jpg', 'http://localhost/Angular2026/SourceData/user/061_thumb.jpg', '', 1, 2, 0),
(530, 'EmailTestPagination@gmail.com', 'd5f94a30eb8a6c84f96f52c42083a17e', '', 'http://localhost/Angular2026/SourceData/user/9494.jpg', 'http://localhost/Angular2026/SourceData/user/9494_thumb.jpg', '', 1, 2, 0),
(531, 'EmailTestNew@gmail.com', 'd251fcbd7c60637d17d8f3946fc4adaa', '', 'http://localhost/Angular2026/SourceData/user/190993550_3974350939338923_4920863927726959048_n1.jpg', 'http://localhost/Angular2026/SourceData/user/190993550_3974350939338923_4920863927726959048_n1_thumb.jpg', '', 0, 2, 0),
(532, 'EmailTest@gmail.com', '5fa52966b62cdd37a47ef4c5d054ab26', '', 'http://localhost/Angular2026/SourceData/user/94494.jpg', 'http://localhost/Angular2026/SourceData/user/94494_thumb.jpg', '', 0, 2, 0),
(533, 'EmailTest@gmail.com', '914e787f684eadba9c1d8b87aa861b4e', '', 'http://localhost/Angular2026/SourceData/user/79.jpg', 'http://localhost/Angular2026/SourceData/user/79_thumb.jpg', '', 0, 2, 0),
(534, 'EmailTest@gmail.com', 'e53f798aece515115d43a0cfa3b96054', '', 'http://localhost/Angular2026/SourceData/user/118192731_943847336117743_7924691748002108075_o.jpg', 'http://localhost/Angular2026/SourceData/user/118192731_943847336117743_7924691748002108075_o_thumb.jpg', '', 0, 2, 0),
(535, 'EmailTest@gmail.com', 'b1702104108bac727d8aed9a70012148', '', 'http://localhost/Angular2026/SourceData/user/118221556_943847076117769_340406328617421748_o.jpg', 'http://localhost/Angular2026/SourceData/user/118221556_943847076117769_340406328617421748_o_thumb.jpg', '', 0, 2, 0);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`);

--
-- Chỉ mục cho bảng `data`
--
ALTER TABLE `data`
  ADD PRIMARY KEY (`data_id`);

--
-- Chỉ mục cho bảng `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`menu_id`);

--
-- Chỉ mục cho bảng `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `category`
--
ALTER TABLE `category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `data`
--
ALTER TABLE `data`
  MODIFY `data_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `menu`
--
ALTER TABLE `menu`
  MODIFY `menu_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=536;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
