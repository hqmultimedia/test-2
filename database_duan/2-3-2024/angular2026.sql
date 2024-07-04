-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th3 02, 2024 lúc 02:48 PM
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
-- Cấu trúc bảng cho bảng `data`
--

CREATE TABLE `data` (
  `data_id` int(11) NOT NULL,
  `data_name` varchar(255) COLLATE utf8_vietnamese_ci NOT NULL,
  `data_url` varchar(255) COLLATE utf8_vietnamese_ci NOT NULL,
  `menu_id` int(11) NOT NULL,
  `data_content` longtext COLLATE utf8_vietnamese_ci NOT NULL,
  `data_video` longtext COLLATE utf8_vietnamese_ci NOT NULL,
  `data_image` longtext COLLATE utf8_vietnamese_ci NOT NULL,
  `data_file` longtext COLLATE utf8_vietnamese_ci NOT NULL,
  `data_preview` longtext COLLATE utf8_vietnamese_ci NOT NULL,
  `data_tags` text COLLATE utf8_vietnamese_ci NOT NULL,
  `data_sort` int(11) NOT NULL,
  `data_img` text COLLATE utf8_vietnamese_ci NOT NULL,
  `data_img_thumb` text COLLATE utf8_vietnamese_ci NOT NULL,
  `image_galery` longtext COLLATE utf8_vietnamese_ci NOT NULL,
  `video_galery` longtext COLLATE utf8_vietnamese_ci NOT NULL,
  `file_galery` longtext COLLATE utf8_vietnamese_ci NOT NULL,
  `user` varchar(255) COLLATE utf8_vietnamese_ci NOT NULL,
  `data_date` varchar(255) COLLATE utf8_vietnamese_ci NOT NULL,
  `date_update` longtext COLLATE utf8_vietnamese_ci NOT NULL,
  `data_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `data`
--

INSERT INTO `data` (`data_id`, `data_name`, `data_url`, `menu_id`, `data_content`, `data_video`, `data_image`, `data_file`, `data_preview`, `data_tags`, `data_sort`, `data_img`, `data_img_thumb`, `image_galery`, `video_galery`, `file_galery`, `user`, `data_date`, `date_update`, `data_status`) VALUES
(163, 'Logic hiển thị dữ liệu đối với trang Home', 'logic-hien-thi-du-lieu-doi-voi-trang-home', 60, '<p><strong>I/ C&aacute;c kỹ thuật &aacute;p dụng :</strong></p>\r\n\r\n<p><span style=\"color:#f39c12\">-array_push</span></p>\r\n\r\n<p><span style=\"color:#f39c12\">-lấy dữ liệu theo điều kiện</span></p>\r\n\r\n<p><strong>Controller</strong></p>\r\n\r\n<p>1. Tạo fucntion gọi đến Model&nbsp;<span style=\"color:#f1c40f\">(A)</span></p>\r\n\r\n<p>2. Dữ liệu lấy từ Model<span style=\"color:#8e44ad\">(B)</span><span style=\"color:#f39c12\">&nbsp;</span></p>\r\n\r\n<p>3. Tạo mảng gửi liệu đ&atilde; lấy dc về View <span style=\"color:#e67e22\">(C)</span></p>\r\n\r\n<p><strong>Model</strong></p>\r\n\r\n<p>1. Tại Model&nbsp;<span style=\"color:#f39c12\">(A)</span> lấy tất cả id của category(với điều kiện level kh&aacute;c 0)</p>\r\n\r\n<p>2. Tạo mảng để chứa dữ liệu c&aacute;c b&agrave;i viết v&agrave; th&ocirc;ng tin menu con (category)</p>\r\n\r\n<p>3. Lấy dữ liệu posts dựa tr&ecirc;n id menu con(category) v&agrave; push v&agrave;o mảng</p>\r\n\r\n<p>4. Nếu id menu con đ&atilde; c&oacute; bằng với menu id của data posts th&igrave; tiến h&agrave;nh push v&agrave;o mảng</p>\r\n\r\n<p>5. Tạo mảng gửi dữ liệu sang Controller<span style=\"color:#8e44ad\">(B)</span></p>\r\n\r\n<p><strong>View</strong></p>\r\n\r\n<p>1. Nhận dữ liệu từ Controller <span style=\"color:#e67e22\">(C)</span></p>\r\n\r\n<p>2. d&ugrave;ng v&ograve;ng lặp foreach để lặp ra tất cả c&aacute;c row menu con(category) <span style=\"color:#2980b9\">(D)</span></p>\r\n\r\n<p>3. Trong v&ograve;ng lặp <span style=\"color:#3498db\">(D) </span>tiến h&agrave;nh d&ugrave;ng th&ecirc;m v&ograve;ng lặp foreach <span style=\"color:#16a085\">(E)</span> 2 lần&nbsp;để in ra tất cả dữ liệu thuộc menu con đ&oacute; (category)</p>\r\n\r\n<p>4. Sử dụng điều kiện if : nếu menu id của&nbsp;<span style=\"color:#2980b9\">(D)&nbsp;</span>bằng menu id của&nbsp;<span style=\"color:#2980b9\">&nbsp;</span><span style=\"color:#16a085\">(E) </span>th&igrave;&nbsp;in ra tất cả dữ liệu b&agrave;i viết của menu con đ&oacute;&nbsp;</p>\r\n\r\n<p>*Nghĩa l&agrave; nếu menu id trong dữ liệu category bằng với menu id trong dữ liệu b&agrave;i viết th&igrave; in ra tất cả b&agrave;i viết của menu đ&oacute;</p>\r\n', '', '', '', '', 'Frontend Home,Codeigniter 3', 1, 'https://res.cloudinary.com/upwork-cloud/image/upload/c_scale,w_1000/v1687650411/catalog/1672751750145650688/tnif3nbjwcninhougmsh.jpg', 'https://res.cloudinary.com/upwork-cloud/image/upload/c_scale,w_1000/v1687650411/catalog/1672751750145650688/tnif3nbjwcninhougmsh.jpg', '', '', '', 'ctv@gmail.com', '18/02/2024 08:47:16 PM', '', 1),
(165, 'Cách load menu Codeigniter theo phương thức đệ qui', 'cach-load-menu-codeigniter-theo-phuong-thuc-de-qui', 60, '<p>HQ Toast Messenger l&agrave; bộ code được t&iacute;ch sẵn trong HQ Css v&agrave; bộ code Angular JS bao gồm c&aacute;c file:</p>\n\n<p><span style=\"color:#27ae60\"><strong>-HQ-Toast-Messenger.js</strong></span></p>\n\n<p><span style=\"color:#27ae60\"><strong>-hqcss-ver-1.9.css</strong></span></p>\n\n<p>Bước 1 : li&ecirc;n kết c&aacute;c file css js&nbsp;<br />\nBước 2: cấu h&igrave;nh animation trong file&nbsp;<span style=\"color:#27ae60\"><strong>HQ-Toast-Messenger.js</strong></span> ( set thời gian ẩn hiện c&aacute;c hiệu ứng animate ... )</p>\n\n<p>&nbsp;</p>\n\n<p><strong>I/ Cơ chế hoạt động đối với&nbsp;HQ-Toast-Messenger.js Angular JS</strong></p>\n\n<p>Sau khi thực hiện 1 h&agrave;nh động n&agrave;o (th&ecirc;m sửa xo&aacute;...) trong fuction .then trực tiếp gọi đến h&agrave;m&nbsp;$scope.HQToast với c&aacute;c biến tham số như b&ecirc;n dưới:</p>\n\n<p>-Type sẽ 4 loại : error,warning,info,success<br />\n&nbsp;</p>\n\n<p><img alt=\"\" src=\"/Angular2026/library/ckeditor/ckfinder_upload/files/test.jpg\" style=\"width:100%\" /></p>\n\n<p>&nbsp;</p>\n\n<p><strong>***Lưu &yacute; khi d&ugrave;ng HQ-Toast đối với Angular JS:</strong><br />\n-Chỉ hoạt động trong v&ugrave;ng chỉ định của ng-controller<strong>&nbsp;NotificationController</strong><br />\n-Mức ưu ti&ecirc;n n&ecirc;n để ở cấp 1 (element parent)</p>\n\n<p>&nbsp;</p>\n', '', '', '', '', 'menu,codeigniter-3', 2, 'http://localhost/Angular2026/SourceData/data/Huyền_Bali.JPG', 'http://localhost/Angular2026/SourceData/data/Huyền_Bali_thumb.JPG', '', '', '', 'ctv@gmail.com', '19/02/2024 11:44:13 AM', '01-03-2024 06:26:44', 0),
(171, 'Cấu trúc HQ Toast Messenger với Angular', 'cau-truc-hq-toast-messenger-voi-angular', 189, '<p>HQ Toast Messenger l&agrave; bộ code được t&iacute;ch sẵn trong HQ Css v&agrave; bộ code Angular JS bao gồm c&aacute;c file:</p>\n\n<p><span style=\"color:#27ae60\"><strong>-HQ-Toast-Messenger.js</strong></span></p>\n\n<p><span style=\"color:#27ae60\"><strong>-hqcss-ver-1.9.css</strong></span></p>\n\n<p>Bước 1 : li&ecirc;n kết c&aacute;c file css js&nbsp;<br />\nBước 2: cấu h&igrave;nh animation trong file&nbsp;<span style=\"color:#27ae60\"><strong>HQ-Toast-Messenger.js</strong></span> ( set thời gian ẩn hiện c&aacute;c hiệu ứng animate ... )</p>\n\n<p>&nbsp;</p>\n\n<p><strong>I/ Cơ chế hoạt động đối với&nbsp;HQ-Toast-Messenger.js Angular JS</strong></p>\n\n<p>Sau khi thực hiện 1 h&agrave;nh động n&agrave;o (th&ecirc;m sửa xo&aacute;...) trong fuction .then trực tiếp gọi đến h&agrave;m&nbsp;$scope.HQToast với c&aacute;c biến tham số như b&ecirc;n dưới:</p>\n\n<p>-Type sẽ 4 loại : error,warning,info,success<br />\n&nbsp;</p>\n\n<p><img alt=\"\" src=\"/Angular2026/library/ckeditor/ckfinder_upload/files/test.jpg\" style=\"width:100%\" /></p>\n\n<p>&nbsp;</p>\n\n<p><strong>***Lưu &yacute; khi d&ugrave;ng HQ-Toast đối với Angular JS:</strong><br />\n-Chỉ hoạt động trong v&ugrave;ng chỉ định của ng-controller<strong>&nbsp;NotificationController</strong><br />\n-Mức ưu ti&ecirc;n n&ecirc;n để ở cấp 1 (element parent)</p>\n\n<p>&nbsp;</p>\n\n<p>&nbsp;</p>\n', '', '', '', '', 'toast,angular js', 2, 'http://localhost/Angular2026/SourceData/data/toast-notification-01.png', 'http://localhost/Angular2026/SourceData/data/toast-notification-01_thumb.png', '', '', '', 'ctv@gmail.com', '23/02/2024 11:19:37 AM', '29-02-2024 08:53:58', 0),
(198, 'posts update', 'posts-update', 60, '<p>test</p>\n', '', '', '', '', 'dwdwdw', 1, 'http://localhost/Angular2026/SourceData/update.jpg', 'http://localhost/Angular2026/SourceData/update.jpg', '', '', '', 'ctv@gmail.com', '01/03/2024 09:34:17 PM', '', 0),
(199, 'posts update', 'posts-update', 60, '<p>dwqdfw</p>\n', '', '', '', '', 'dwdw', 1, 'http://localhost/Angular2026/SourceData/data/02.jpg', 'http://localhost/Angular2026/SourceData/data/02_thumb.jpg', '[{\"file_name\":\"02.jpg\",\"url\":\"http:\\/\\/localhost\\/Angular2026\\/SourceData\\/data_attached\\/image\\/02.jpg\",\"uploaded_on\":\"2024-03-02 20:35:00\"},{\"file_name\":\"2.jpg\",\"url\":\"http:\\/\\/localhost\\/Angular2026\\/SourceData\\/data_attached\\/image\\/2.jpg\",\"uploaded_on\":\"2024-03-02 20:35:00\"},[{\"file_name\":\"79.jpg\",\"url\":\"http:\\/\\/localhost\\/Angular2026\\/SourceData\\/data_attached\\/image\\/79.jpg\",\"uploaded_on\":\"2024-03-02 20:47:48\"},{\"file_name\":\"99.jpg\",\"url\":\"http:\\/\\/localhost\\/Angular2026\\/SourceData\\/data_attached\\/image\\/99.jpg\",\"uploaded_on\":\"2024-03-02 20:47:48\"}]]', '[{\"file_name\":\"binh_luan_(1)1.mp4\",\"url\":\"http:\\/\\/localhost\\/Angular2026\\/SourceData\\/data_attached\\/video\\/B\\u00ecnh_lu\\u1eadn_(1)1.mp4\",\"uploaded_on\":\"2024-03-02 15:07:54\"}]', '[{\"file_name\":\"asm-tainguyen-angular2.rar\",\"url\":\"http:\\/\\/localhost\\/Angular2026\\/SourceData\\/data_attached\\/file\\/Asm-TaiNguyen-angular2.rar\",\"uploaded_on\":\"2024-03-02 15:10:45\"},{\"file_name\":\"fluid-player-master2.zip\",\"url\":\"http:\\/\\/localhost\\/Angular2026\\/SourceData\\/data_attached\\/file\\/fluid-player-master2.zip\",\"uploaded_on\":\"2024-03-02 15:10:45\"}]', 'ctv@gmail.com', '02/03/2024 03:31:18 AM', '', 0),
(200, 'So sánh máy tính HP với Sony', 'so-sanh-may-tinh-hp-voi-sony', 189, '<p><strong>Đ&aacute;nh gi&aacute; HP Stream 13 &ndash; thế hệ laptop gi&aacute; rẻ của HP</strong></p>\n\n<p>Nguyễn Minh T&igrave;nh</p>\n\n<p><strong>v&agrave;o ng&agrave;y 24/12/2014&nbsp;<a href=\"https://fptshop.com.vn/tin-tuc/thong-tin-tham-khao/danh-gia-hp-stream-13-the-he-laptop-gia-re-cua-hp-9960#root-comment\">16Hỏi &amp; Đ&aacute;p</a></strong></p>\n\n<h2>&nbsp;</h2>\n\n<ul>\n	<li>\n	<h3><strong><a href=\"https://fptshop.com.vn/tin-tuc/thong-tin-tham-khao/so-sanh-thiet-ke-man-hinh-tren-hp-15-r042tu-va-asus-x454la-vx193b-30813\">So s&aacute;nh thiết kế, m&agrave;n h&igrave;nh tr&ecirc;n HP 15-r042TU v&agrave; Asus X454LA-VX193B</a></strong></h3>\n	</li>\n	<li>\n	<h3><strong><a href=\"https://fptshop.com.vn/tin-tuc/thong-tin-tham-khao/so-sanh-hp-15-r042tu-va-asus-x554la-xx10077d-can-tai-can-suc-phan-2-29115\">So s&aacute;nh HP 15-r042TU v&agrave; Asus X554LA-XX10077D &ndash; C&acirc;n t&agrave;i c&acirc;n sức (Phần 2)</a></strong></h3>\n	</li>\n</ul>\n\n<p>Sự ra mắt<strong>&nbsp;HP Stream 13</strong>&nbsp;đ&atilde; đập tan suy nghĩ Chromebook l&agrave; laptop duy nhất dừng ở mức gi&aacute; dưới $300.&nbsp;<a href=\"https://fptshop.com.vn/may-tinh-xach-tay\" target=\"_blank\">Laptop</a>&nbsp;n&agrave;y đến tay người d&ugrave;ng với mức gi&aacute; khởi điểm l&agrave; khoảng $200 (4,2 triệu đồng). C&ugrave;ng điểm qua những đặc điểm của chiếc laptop thuộc thế hệ&nbsp;<a href=\"https://fptshop.com.vn/may-tinh-xach-tay\" target=\"_blank\">laptop gi&aacute; rẻ</a>&nbsp;n&agrave;y.</p>\n\n<p>&nbsp;</p>\n\n<p><strong>Kiểu d&aacute;ng thiết kế</strong></p>\n\n<p>&nbsp;</p>\n\n<p><img alt=\"Hình ảnh HP Stream 13\" src=\"https://images.fpt.shop/unsafe/filters:quality(90)/fptshop.com.vn/uploads/images/image001(478).png\" /></p>\n\n<p>&nbsp;</p>\n\n<p><em>H&igrave;nh ảnh HP Stream 13</em></p>\n\n<p><strong>HP Stream 13</strong>&nbsp;được thiết kế với gam m&agrave;u s&aacute;ng rất bắt mắt người d&ugrave;ng. Thiết kế n&agrave;y đ&atilde; tho&aacute;t ra khỏi m&agrave;u bạc v&agrave; đen truyền thống của laptop, người d&ugrave;ng c&oacute; thể lựa chọn m&agrave;u xanh hoặc m&agrave;u đỏ.</p>\n\n<p>Lật nắp m&aacute;y l&ecirc;n sẽ thấy một lớp sơn m&agrave;u xanh s&aacute;ng b&oacute;ng ở phần bản lề v&agrave; nhạt dần về ph&iacute;a b&agrave;n ph&iacute;m. K&iacute;ch thước m&aacute;y tương đương với đối thủ cạnh tranh&nbsp;<strong>Chromebook</strong>&nbsp;13.1 x 9 x 0.77 inch. Sự kh&aacute;c biệt đ&oacute; ch&iacute;nh l&agrave; trọng lượng 3.4 pounds, nặng hơn so với Toshiba Chromebook 2 (k&iacute;ch thước 12.6 x 8.4 x 0.76; trọng lượng 2.05 pounds) v&agrave; Acer Chromebook 13 (12.8 x 8.9 x 0.71; trọng lượng 3.1 pounds).</p>\n\n<p>&nbsp;</p>\n\n<h3><strong>B&agrave;n ph&iacute;m v&agrave; touchpad</strong></h3>\n\n<p>&nbsp;</p>\n\n<p><img alt=\"Bàn phím và touchpad HP Stream 13\" src=\"https://images.fpt.shop/unsafe/filters:quality(90)/fptshop.com.vn/uploads/images/image003(2137).jpg\" /></p>\n\n<p><em>B&agrave;n ph&iacute;m v&agrave; touchpad HP Stream 13</em></p>\n\n<p><strong>HP Stream 13</strong>&nbsp;được thiết kế b&agrave;n ph&iacute;m dạng chiclet với c&aacute;c ph&iacute;m bấm t&aacute;ch rời nhau tr&ecirc;n t&ocirc;ng m&agrave;u trắng kh&aacute; sang trọng. Đ&acirc;y l&agrave;&nbsp;<a href=\"https://fptshop.com.vn/phu-kien/ban-phim\" target=\"_blank\">b&agrave;n ph&iacute;m laptop</a>&nbsp;tương đối chuẩn 1,6 mm với trọng lượng dẫn động 55g. Người d&ugrave;ng c&oacute; thể đ&aacute;nh trung b&igrave;nh 75 từ mỗi ph&uacute;t (đ&atilde; thử nghiệm đ&aacute;nh m&aacute;y tr&ecirc;n trang web TenFastFingers.com).</p>\n\n<p><strong>Touchpad</strong>&nbsp;c&oacute; k&iacute;ch cỡ kh&aacute; lớn 3.75 x 2.5-inch nhưng vẫn nhỏ hơn k&iacute;ch thước của Toshiba Chromebook 2 (4 x 2,8-inch) v&agrave; Acer Chromebook 13 (4.1 x 2.4-inch).</p>\n\n<p>&nbsp;</p>\n\n<h3><strong>M&agrave;n h&igrave;nh</strong></h3>\n\n<p>&nbsp;</p>\n\n<p>M&agrave;n h&igrave;nh l&agrave; điểm cốt yếu mang đến danh hiệu &ldquo;laptop b&igrave;nh d&acirc;n&rdquo; cho&nbsp;<strong>HP Stream 13</strong>. Sản phẩm trang bị m&agrave;n h&igrave;nh 13-inch, k&iacute;ch thước 1366 x 768 c&oacute; g&oacute;c nh&igrave;n kh&aacute; hạn chế g&acirc;y l&oacute;a hoặc đen khi nghi&ecirc;ng một g&oacute;c 10 độ về ph&iacute;a trước hoặc ph&iacute;a sau. Tuy nhi&ecirc;n g&oacute;c nh&igrave;n ngang th&igrave; ổn hơn một ch&uacute;t.</p>\n\n<p><img alt=\"Màn hình hiển thị của Stream 13\" src=\"https://images.fpt.shop/unsafe/filters:quality(90)/fptshop.com.vn/uploads/images/image005(268).png\" /></p>\n\n<p><em>M&agrave;n h&igrave;nh hiển thị của Stream 13</em></p>\n\n<p>Độ s&aacute;ng m&agrave;n h&igrave;nh đạt khoảng 166 nits, thấp hơn so với độ s&aacute;ng của laptop si&ecirc;u di động l&agrave; 254 nits v&agrave;&nbsp;<a href=\"https://fptshop.com.vn/tin-tuc/thong-tin-tham-khao/danh-gia-laptop-toshiba-chromebook\" target=\"_blank\">Toshiba Chromebook</a>&nbsp;2 (339 nits) and the Acer Chromebook 13 (222 nits).</p>\n\n<p>M&agrave;n h&igrave;nh laptop hiển thị kh&aacute; tốt c&aacute;c gam m&agrave;u với t&aacute;i tạo m&agrave;u chỉ đạt 79,2% quang phổ sRGB. &nbsp;X&eacute;t về độ ch&iacute;nh x&aacute;c về m&agrave;u sắc, chiếc laptop n&agrave;y hiện thị tốt hơn so với mức trung b&igrave;nh 6,5, th&acirc;n gập h&igrave;nh nhữ V Delta-E của mẫu n&agrave;y l&agrave; 3.6 (c&agrave;ng gần 0 c&agrave;ng tốt).</p>\n\n<p>&nbsp;</p>\n\n<h3><strong>&Acirc;m thanh</strong></h3>\n\n<p>&nbsp;</p>\n\n<p><img alt=\"Trình điều chỉnh âm thanh\" src=\"https://images.fpt.shop/unsafe/filters:quality(90)/fptshop.com.vn/uploads/images/image007(194).png\" /></p>\n\n<p><em>Tr&igrave;nh điều chỉnh &acirc;m thanh</em></p>\n\n<p>Một trong những t&iacute;nh năng nổi bật của&nbsp;<strong>HP Stream 13</strong>&nbsp;đ&oacute; l&agrave; quy tụ loa c&ocirc;ng nghệ &acirc;m thanh Digital Theatre System (DTS) Studio Sound. Theo c&aacute;c kiểm tra của Laptop Mag, loa ở đ&aacute;y m&aacute;y b&ecirc;n phải được sản xuất kh&aacute; ổn với &acirc;m lượng đạt 91 decibel, hiệu suất bass mạnh mẽ khi ph&aacute;t nhạc. Người d&ugrave;ng c&oacute; thể điều chỉnh &acirc;m thanh th&ocirc;ng qua c&aacute;c ứng dụng &acirc;m thanh DTS gồm EQ t&ugrave;y chỉnh hoặc tr&igrave;nh c&agrave;i đặt b&agrave;i h&aacute;t muốn ph&aacute;t.</p>\n\n<p>&nbsp;</p>\n\n<h3><strong>Tản nhiệt</strong></h3>\n\n<p>&nbsp;</p>\n\n<p>Trong b&agrave;i kiểm tra độ n&oacute;ng từ LaptopMag, khi cho laptop lướt video từ Hulu li&ecirc;n tục trong 15 ph&uacute;t th&igrave; m&aacute;y c&oacute; dấu hiệu n&oacute;ng l&ecirc;n. Mặt dưới c&oacute; nhiệt độ khoảng 38,8 độ C, bộ phận touchpad đạt 25,5 độ C v&agrave; nhiệt độ giữa ph&iacute;m G v&agrave; H duy tr&igrave; ở mức 35 độ C.</p>\n\n<p>&nbsp;</p>\n\n<h3><strong>Cổng kết nối v&agrave; Webcam</strong></h3>\n\n<p>&nbsp;</p>\n\n<p><img alt=\"Cổng kết nối USB\" src=\"https://images.fpt.shop/unsafe/filters:quality(90)/fptshop.com.vn/uploads/images/image009(437).jpg\" /></p>\n\n<p><em>Cổng kết nối USB</em></p>\n\n<p>HP trang bị cho&nbsp;<strong>Stream 13</strong>&nbsp;ba cổng USB: một cổng đơn USB 3.0 ở cạnh tr&aacute;i kết hợp với khe cắm tai nghe/microphone v&agrave; cổng đọc thẻ microSD. Hai cổng USB 2.0 cạnh phải trong đ&oacute; c&oacute; 1 cổng nguồn.</p>\n\n<p>Laptop cũng được trang bị với webcam 720p cho cả ảnh v&agrave; video. H&igrave;nh ảnh kh&aacute; sắc n&eacute;t nhưng c&oacute; kh&aacute; nhiều hạt khi nh&igrave;n một c&aacute;ch chi tiết.</p>\n\n<h3>&nbsp;</h3>\n\n<h3><strong>Hiệu năng</strong></h3>\n\n<p>&nbsp;</p>\n\n<p><strong>Stream 13</strong>&nbsp;được trang bị chip Intel Celeron &ndash; N2840 tốc độ xử l&yacute; 2.16GHz c&ugrave;ng với RAM 2GB v&agrave; lưu trữ flash eMMC 32 GB. Laptop &ldquo;b&igrave;nh d&acirc;n&rdquo; của HP kh&ocirc;ng được thiết kế như một m&aacute;y t&iacute;nh cấu h&igrave;nh mạnh nhưng người d&ugrave;ng c&oacute; thể xem video 1080p tr&ecirc;n YouTube kh&aacute; mượt.</p>\n\n<p>Khi thực hiện b&agrave;i kiểm tra SunSpider JavaScript, phần mềm kiểm tra tốc độ lướt Web,&nbsp;<strong>Stream 13</strong>&nbsp;ho&agrave;n th&agrave;nh trong 522,3 ngh&igrave;n gi&acirc;y, đứng trước đối thủ Toshiba Chromebook 2 (564,6) v&agrave; Acer Chromebook 13 (625,5).</p>\n\n<p>&nbsp;</p>\n\n<h3><strong>Đồ họa</strong></h3>\n\n<p>&nbsp;</p>\n\n<p>Đồ họa t&iacute;ch hợp&nbsp;<strong>Intel HD</strong>&nbsp;kh&ocirc;ng đủ để người d&ugrave;ng chơi c&aacute;c tr&ograve; chơi đồ họa mạnh mẽ như League of Legends. Bạn chỉ c&oacute; thể chơi c&aacute;c game đơn giản từ Windows Store như Star Wars Commander.</p>\n\n<p><img alt=\"Mặt sau Stream 13\" src=\"https://images.fpt.shop/unsafe/filters:quality(90)/fptshop.com.vn/uploads/images/image011(47).png\" /></p>\n\n<p><em>Mặt sau Stream 13</em></p>\n\n<p>Hiệu năng đồ họa tr&ecirc;n<strong>&nbsp;Stream 13</strong>&nbsp;khi tải WebGL Cubes khiến 150,000 khối xoay quanh 3 đ&egrave;n. Đồ họa trung b&igrave;nh của sản phẩm n&agrave;y đạt 13 khung h&igrave;nh mỗi gi&acirc;y, cao hơn so với Toshiba Chromebook 2 (11) nhưng &iacute;t hơn so với Acer Chromebook 13 (20).</p>\n\n<p>&nbsp;</p>\n\n<h3><strong>Thời lượng pin</strong></h3>\n\n<p>&nbsp;</p>\n\n<p><img alt=\"Thời lượng pin\" src=\"https://images.fpt.shop/unsafe/filters:quality(90)/fptshop.com.vn/uploads/images/image013(139).jpg\" /></p>\n\n<p><em>Thời lượng pin</em></p>\n\n<p>Kết quả kiểm tra th&ocirc;ng qua phần mềm&nbsp;<strong>Laptop Battery Test</strong>&nbsp;cho thấy thời lượng pin của laptop chỉ đạt 6 giờ v&agrave; 26 ph&uacute;t, ngắn hơn so với thời lượng pin của c&aacute;c m&aacute;y t&iacute;nh x&aacute;ch tay si&ecirc;u di động (7 giờ 57ph&uacute;t).</p>\n\n<p>&nbsp;</p>\n\n<h3><strong>Phần mềm</strong></h3>\n\n<p>&nbsp;</p>\n\n<p><strong>HP Stream 13</strong>&nbsp;đi k&egrave;m với một thu&ecirc; bao một năm của&nbsp;<a href=\"https://fptshop.com.vn/mtxt-phan-mem/phan-mem-microsoft-office-365-home-premium\" target=\"_blank\">Office 365</a>, v&igrave; vậy bạn c&oacute; thể sử dụng Word, PowerPoint, Excel v&agrave; OneNote offline. Ngo&agrave;i ra bạn sẽ được khuyến m&atilde;i một năm d&ugrave;ng thử OneDrive gồm 1 TB lưu trữ đ&aacute;m m&acirc;y. Nếu người d&ugrave;ng muốn gia hạn phần mềm n&agrave;y trong tương lai th&igrave; sẽ chỉ phải trả $ 6,99 cho cả OneDrive v&agrave; Office 365, thấp hơn so với mức gi&aacute; th&ocirc;ng thường $ 9,99 (chỉ mới t&iacute;nh Office 365).</p>\n\n<p>Ngo&agrave;i ra, người mua sẽ nhận một năm bảo h&agrave;nh phần cứng, hỗ trợ kỹ thuật miễn ph&iacute; v&agrave; 90 ng&agrave;y miễn ph&iacute; hỗ trợ phần mềm.</p>\n\n<p>&nbsp;</p>\n\n<h3><strong>Kết luận</strong></h3>\n\n<p>&nbsp;</p>\n\n<p>Đối với những người th&iacute;ch<strong>&nbsp;hệ điều h&agrave;nh Windows</strong>, HP Stream 13<strong>&nbsp;</strong>cung cấp c&aacute;c phần mềm kh&aacute; linh hoạt so hơn Chromebook. Với mức gi&aacute; kh&aacute; &ldquo;b&igrave;nh d&acirc;n&rdquo;, bạn sẽ c&oacute; được th&ecirc;m nhiều ứng dụng chất lượng cao, c&oacute; thể chạy offline, cộng với một b&agrave;n ph&iacute;m thoải m&aacute;i, loa mạnh mẽ v&agrave; hiệu suất kh&aacute; trơn tru trong một thiết kế th&uacute; vị.</p>\n\n<p>&nbsp;</p>\n\n<p><strong>Ưu điểm</strong></p>\n\n<ul>\n	<li>Mức gi&aacute; hợp l&yacute;</li>\n	<li>Thiết kế thu h&uacute;t, đầy m&agrave;u sắc</li>\n	<li>Loa chất lượng tốt</li>\n</ul>\n\n<h3><strong>Nhược điểm</strong></h3>\n\n<ul>\n	<li>M&agrave;n h&igrave;nh mờ</li>\n	<li>Pin dưới mức trung b&igrave;nh</li>\n	<li>Tản nhiệt đ&aacute;y m&aacute;y k&eacute;m</li>\n</ul>\n\n<p>&nbsp;</p>\n\n<h2><strong>Xem video mở hộp HP Stream 13</strong></h2>\n\n<p>&nbsp;</p>\n\n<p><iframe frameborder=\"0\" height=\"360\" src=\"https://www.youtube.com/embed/HTdj2-JkPtY\" width=\"640\"></iframe></p>\n\n<p><em>*** Mời c&aacute;c bạn xem th&ecirc;m mẫu sản phẩm mới của h&atilde;ng l&agrave;&nbsp;<strong><a href=\"https://fptshop.com.vn/may-tinh-xach-tay/hp-pavilion-x2\">HP Pavilion X2</a></strong>&nbsp;với cực nhiều t&iacute;nh năng độc đ&aacute;o, hiện đang thu h&uacute;t được rất nhiều sự quan t&acirc;m của c&aacute;c t&iacute;n đồ c&ocirc;ng nghệ.</em></p>\n\n<p><strong>Tham khảo :&nbsp;</strong></p>\n\n<p>Hiện nay Laptop l&agrave; c&ocirc;ng cụ hỗ trợ kh&ocirc;ng thể thiếu của mỗi con người, phục vụ cho c&ocirc;ng việc v&agrave; giải tr&iacute;. C&oacute; nhiều d&ograve;ng Laptop đang thịnh h&agrave;nh tr&ecirc;n thị trường hiện nay, như&nbsp;<a href=\"https://fptshop.com.vn/may-tinh-xach-tay/asus\" target=\"_blank\">laptop asus ch&iacute;nh h&atilde;ng</a>, lenovo ch&iacute;nh h&atilde;ng,...Bạn c&oacute; nhu cầu sử dụng th&igrave; c&ugrave;ng tham khảo chương tr&igrave;nh&nbsp;<a href=\"https://fptshop.com.vn/khuyen-mai\" target=\"_blank\">khuyến mại giảm gi&aacute;</a>&nbsp;tại FPTShop để c&oacute; cơ hội mua&nbsp;<a href=\"https://fptshop.com.vn/san-khuyen-mai\" target=\"_blank\">Laptop khuyến m&atilde;i</a>&nbsp;với mức gi&aacute; tốt nhất.&nbsp;</p>\n\n<p><strong>Ngọc Ng&agrave; (CTV)</strong></p>\n\n<p><em>Nguồn:&nbsp;<a href=\"http://www.laptopmag.com/reviews/laptops/hp-stream-13\" rel=\"nofollow\" target=\"_blank\">laptopmag</a></em></p>\n', '', '', '', '', 'test', 1, 'http://localhost/Angular2026/SourceData/data/79.jpg', 'http://localhost/Angular2026/SourceData/data/79_thumb.jpg', '', '', '', 'ctv@gmail.com', '02/03/2024 04:04:15 PM', '02-03-2024 19:58:14', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `menu`
--

CREATE TABLE `menu` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_vietnamese_ci NOT NULL,
  `url` varchar(255) COLLATE utf8_vietnamese_ci NOT NULL,
  `level` int(11) NOT NULL,
  `content` longtext COLLATE utf8_vietnamese_ci NOT NULL,
  `img` text COLLATE utf8_vietnamese_ci NOT NULL,
  `img_thumb` text COLLATE utf8_vietnamese_ci NOT NULL,
  `date` varchar(255) COLLATE utf8_vietnamese_ci NOT NULL,
  `date_update` varchar(255) COLLATE utf8_vietnamese_ci NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `menu`
--

INSERT INTO `menu` (`id`, `name`, `url`, `level`, `content`, `img`, `img_thumb`, `date`, `date_update`, `status`) VALUES
(55, 'Thiết kế Web', 'thiet-ke-web', 0, '<p>Update</p>\n', 'http://localhost/Angular2026/SourceData/menu/006.jpg', 'http://localhost/Angular2026/SourceData/menu/006_thumb.jpg', ' 01-02-2024 03:28:54\n', '15-02-2024 08:47:12', 1),
(60, 'Codeigniter 3x', 'codeigniter-3x', 55, '<p>tes</p>\n', 'http://localhost/Angular2026/SourceData/category/tien-kiem-ky-hiep-6-ky-kim-trieu-6.jpg', 'http://localhost/Angular2026/SourceData/category/tien-kiem-ky-hiep-6-ky-kim-trieu-6_thumb.jpg', ' 01-02-2024 03:28:54\n', '16-02-2024 10:32:20', 1),
(98, 'Tạp chí', 'tap-chi', 0, '<p>test</p>\n', 'http://localhost/Angular2026/SourceData/menu/00043.jpg', 'http://localhost/Angular2026/SourceData/menu/00043_thumb.jpg', ' 01-02-2024 03:28:59\n', '15-02-2024 08:46:43', 1),
(100, 'Tài nguyên', 'tai-nguyen', 0, '<p>t&agrave;i nguy&ecirc;n</p>\n', 'http://localhost/Angular2026/SourceData/menu/9494.jpg', 'http://localhost/Angular2026/SourceData/menu/9494_thumb.jpg', ' 01-02-2024 06:28:54\n\n', '15-02-2024 08:48:07', 1),
(164, 'Poster', 'poster', 0, '<p>poster</p>\n', 'http://localhost/Angular2026/SourceData/menu/190746789_3974351246005559_3111302000075118898_n.jpg', 'http://localhost/Angular2026/SourceData/menu/190746789_3974351246005559_3111302000075118898_n_thumb.jpg', '15-02-2024 08:49:02', '15-02-2024 08:49:20', 1),
(166, 'dựng phim', 'dung-phim', 0, '<p>dựng phim</p>\n', 'http://localhost/Angular2026/SourceData/menu/79.jpg', 'http://localhost/Angular2026/SourceData/menu/79_thumb.jpg', '15-02-2024 08:51:12', '', 0),
(189, 'Angular Js', 'angular-js', 55, '', 'http://localhost/Angular2026/SourceData/update.jpg', 'http://localhost/Angular2026/SourceData/update.jpg', '22-02-2024 15:50:31', '', 1),
(198, 'Premiere', 'premiere', 166, '', 'http://localhost/Angular2026/SourceData/category/242728590_400039005079239_98797391708357002_n.jpg', 'http://localhost/Angular2026/SourceData/category/242728590_400039005079239_98797391708357002_n_thumb.jpg', '02-03-2024 03:33:15', '', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `notification-rom`
--

CREATE TABLE `notification-rom` (
  `notification-rom-id` int(11) NOT NULL,
  `notification-posts` longtext COLLATE utf8_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `notification-rom`
--

INSERT INTO `notification-rom` (`notification-rom-id`, `notification-posts`) VALUES
(1, '[]');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `user_name` varchar(255) COLLATE utf8_vietnamese_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_vietnamese_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_vietnamese_ci NOT NULL,
  `content` longtext COLLATE utf8_vietnamese_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8_vietnamese_ci NOT NULL,
  `img_thumb` varchar(255) COLLATE utf8_vietnamese_ci NOT NULL,
  `img_json` longtext COLLATE utf8_vietnamese_ci NOT NULL,
  `user_status` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  `ngaytao` text COLLATE utf8_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`id`, `user_name`, `name`, `password`, `content`, `avatar`, `img_thumb`, `img_json`, `user_status`, `level`, `ngaytao`) VALUES
(591, 'ctv@gmail.com', 'Nhật Minh', 'e10adc3949ba59abbe56e057f20f883e', '', 'http://localhost/Angular2026/SourceData/user/9494.jpg', 'http://localhost/Angular2026/SourceData/user/9494_thumb.jpg', '', 1, 2, ''),
(595, 'Admin@gmail.com', 'Tuyết Nguyệt', 'e10adc3949ba59abbe56e057f20f883e', '', 'http://localhost/Angular2026/SourceData/user/409176374_673732188287552_8126001560456753206_n.jpg', 'http://localhost/Angular2026/SourceData/user/409176374_673732188287552_8126001560456753206_n_thumb.jpg', '', 1, 1, ''),
(596, 'ctv2@gmail.com', 'Thiên Cầm', 'e10adc3949ba59abbe56e057f20f883e', '', 'http://localhost/Angular2026/SourceData/user/IMG_4555.JPG', 'http://localhost/Angular2026/SourceData/user/IMG_4555_thumb.JPG', '', 1, 2, ''),
(597, 'admin2@gmail.com', '', 'e10adc3949ba59abbe56e057f20f883e', '', 'http://localhost/Angular2026/SourceData/user/tien-kiem-ky-hiep-6-ky-kim-trieu-6.jpg', 'http://localhost/Angular2026/SourceData/user/tien-kiem-ky-hiep-6-ky-kim-trieu-6_thumb.jpg', '', 1, 1, ''),
(602, 'kiemduyet@gmail.com', 'Thiên Âm', 'e10adc3949ba59abbe56e057f20f883e', '', 'http://localhost/Angular2026/SourceData/user/hq720.jpg', 'http://localhost/Angular2026/SourceData/user/hq720_thumb.jpg', '', 1, 3, ''),
(603, 'nguoidung@gmail.com', 'Thiên Âm', 'e10adc3949ba59abbe56e057f20f883e', '', 'http://localhost/Angular2026/SourceData/user/hq720.jpg', 'http://localhost/Angular2026/SourceData/user/hq720_thumb.jpg', '', 1, 4, '');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `data`
--
ALTER TABLE `data`
  ADD PRIMARY KEY (`data_id`);

--
-- Chỉ mục cho bảng `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `notification-rom`
--
ALTER TABLE `notification-rom`
  ADD PRIMARY KEY (`notification-rom-id`);

--
-- Chỉ mục cho bảng `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `data`
--
ALTER TABLE `data`
  MODIFY `data_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=201;

--
-- AUTO_INCREMENT cho bảng `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=212;

--
-- AUTO_INCREMENT cho bảng `notification-rom`
--
ALTER TABLE `notification-rom`
  MODIFY `notification-rom-id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=604;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
