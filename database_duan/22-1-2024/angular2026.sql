-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th1 22, 2024 lúc 02:55 AM
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
  `data_tags` text COLLATE utf8_vietnamese_ci NOT NULL,
  `data_sort` int(11) NOT NULL,
  `data_img` text COLLATE utf8_vietnamese_ci NOT NULL,
  `data_img_thumb` text COLLATE utf8_vietnamese_ci NOT NULL,
  `user` varchar(255) COLLATE utf8_vietnamese_ci NOT NULL,
  `data_date` varchar(255) COLLATE utf8_vietnamese_ci NOT NULL,
  `data_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `data`
--

INSERT INTO `data` (`data_id`, `data_name`, `category_id`, `data_content`, `data_tags`, `data_sort`, `data_img`, `data_img_thumb`, `user`, `data_date`, `data_status`) VALUES
(1, 'hiển thị 2', 1, '01. Khi cố tình nhập sai url sẽ dẫn đến trang 404\r\n\r\n+Nhập sai đường dẫn cố định trong routes ( menu ) mặc định sẽ dẫn đến views→ errors → html →error_404.php\r\n+Cố tình nhập các ký tự đặc biệt trên đường dẫn cố định mặc định sẽ dẫn đến views→ errors → html →error_general.php\r\n-cách xử lý để dẫn đến trang 404 của project\r\n+Bước 1: Vào Views→errors→html tìm đến 2 file : error-404.php,error_general.php thêm dòng code sau :\r\n+Bước 2 : vào application→routes.php tạo 1 route như sau để dẫn đến controller mặc định welcome\r\n02.Cố tình nhập sai id trên url mà không thông qua form dẫn đến không tồn tại biến $filter_quantity và giá trị $filter_quantity = 0 ( 0/0 sẽ dẫn đến lỗi như bên dưới )', '', 0, 'https://vnn-imgs-a1.vgcloud.vn/icdn.dantri.com.vn/2022/03/13/hoi-gai-xinh-goi-cam-noi-gi-truoc-ap-luc-mac-sexy-la-hu-hongdocx-1647188022424.jpeg', 'https://shop.muoitamcong.vn/wp-content/uploads/2023/10/Anh-gai-dep-Tiktok-Trung-Quoc-2.jpg', '', '', 1),
(2, 'Set trang 404-not-found khi user cố tình thao tác sai trên đường dẫn url\r\n', 1, '01. Khi cố tình nhập sai url sẽ dẫn đến trang 404\r\n\r\n+Nhập sai đường dẫn cố định trong routes ( menu ) mặc định sẽ dẫn đến views→ errors → html →error_404.php\r\n+Cố tình nhập các ký tự đặc biệt trên đường dẫn cố định mặc định sẽ dẫn đến views→ errors → html →error_general.php\r\n-cách xử lý để dẫn đến trang 404 của project\r\n+Bước 1: Vào Views→errors→html tìm đến 2 file : error-404.php,error_general.php thêm dòng code sau :\r\n+Bước 2 : vào application→routes.php tạo 1 route như sau để dẫn đến controller mặc định welcome\r\n02.Cố tình nhập sai id trên url mà không thông qua form dẫn đến không tồn tại biến $filter_quantity và giá trị $filter_quantity = 0 ( 0/0 sẽ dẫn đến lỗi như bên dưới )', '', 0, 'https://vnn-imgs-a1.vgcloud.vn/icdn.dantri.com.vn/2022/03/13/hoi-gai-xinh-goi-cam-noi-gi-truoc-ap-luc-mac-sexy-la-hu-hongdocx-1647188022424.jpeg', 'https://vnn-imgs-a1.vgcloud.vn/icdn.dantri.com.vn/2022/03/13/hoi-gai-xinh-goi-cam-noi-gi-truoc-ap-luc-mac-sexy-la-hu-hongdocx-1647188022424.jpeg', '', '', 0),
(3, 'Set trang 404-not-found khi user cố tình thao tác sai trên đường dẫn url\r\n', 1, '01. Khi cố tình nhập sai url sẽ dẫn đến trang 404\r\n\r\n+Nhập sai đường dẫn cố định trong routes ( menu ) mặc định sẽ dẫn đến views→ errors → html →error_404.php\r\n+Cố tình nhập các ký tự đặc biệt trên đường dẫn cố định mặc định sẽ dẫn đến views→ errors → html →error_general.php\r\n-cách xử lý để dẫn đến trang 404 của project\r\n+Bước 1: Vào Views→errors→html tìm đến 2 file : error-404.php,error_general.php thêm dòng code sau :\r\n+Bước 2 : vào application→routes.php tạo 1 route như sau để dẫn đến controller mặc định welcome\r\n02.Cố tình nhập sai id trên url mà không thông qua form dẫn đến không tồn tại biến $filter_quantity và giá trị $filter_quantity = 0 ( 0/0 sẽ dẫn đến lỗi như bên dưới )', '', 0, 'https://vnn-imgs-a1.vgcloud.vn/icdn.dantri.com.vn/2022/03/13/hoi-gai-xinh-goi-cam-noi-gi-truoc-ap-luc-mac-sexy-la-hu-hongdocx-1647188022424.jpeg', 'https://vnn-imgs-a1.vgcloud.vn/icdn.dantri.com.vn/2022/03/13/hoi-gai-xinh-goi-cam-noi-gi-truoc-ap-luc-mac-sexy-la-hu-hongdocx-1647188022424.jpeg', '', '', 0),
(4, 'test-code', 1, '01. Khi cố tình nhập sai url sẽ dẫn đến trang 404\r\n\r\n+Nhập sai đường dẫn cố định trong routes ( menu ) mặc định sẽ dẫn đến views→ errors → html →error_404.php\r\n+Cố tình nhập các ký tự đặc biệt trên đường dẫn cố định mặc định sẽ dẫn đến views→ errors → html →error_general.php\r\n-cách xử lý để dẫn đến trang 404 của project\r\n+Bước 1: Vào Views→errors→html tìm đến 2 file : error-404.php,error_general.php thêm dòng code sau :\r\n+Bước 2 : vào application→routes.php tạo 1 route như sau để dẫn đến controller mặc định welcome\r\n02.Cố tình nhập sai id trên url mà không thông qua form dẫn đến không tồn tại biến $filter_quantity và giá trị $filter_quantity = 0 ( 0/0 sẽ dẫn đến lỗi như bên dưới )', '', 0, 'https://vnn-imgs-a1.vgcloud.vn/icdn.dantri.com.vn/2022/03/13/hoi-gai-xinh-goi-cam-noi-gi-truoc-ap-luc-mac-sexy-la-hu-hongdocx-1647188022424.jpeg', 'https://vnn-imgs-a1.vgcloud.vn/icdn.dantri.com.vn/2022/03/13/hoi-gai-xinh-goi-cam-noi-gi-truoc-ap-luc-mac-sexy-la-hu-hongdocx-1647188022424.jpeg', '', '', 0),
(5, 'hiển thị', 1, '01. Khi cố tình nhập sai url sẽ dẫn đến trang 404\r\n\r\n+Nhập sai đường dẫn cố định trong routes ( menu ) mặc định sẽ dẫn đến views→ errors → html →error_404.php\r\n+Cố tình nhập các ký tự đặc biệt trên đường dẫn cố định mặc định sẽ dẫn đến views→ errors → html →error_general.php\r\n-cách xử lý để dẫn đến trang 404 của project\r\n+Bước 1: Vào Views→errors→html tìm đến 2 file : error-404.php,error_general.php thêm dòng code sau :\r\n+Bước 2 : vào application→routes.php tạo 1 route như sau để dẫn đến controller mặc định welcome\r\n02.Cố tình nhập sai id trên url mà không thông qua form dẫn đến không tồn tại biến $filter_quantity và giá trị $filter_quantity = 0 ( 0/0 sẽ dẫn đến lỗi như bên dưới )', '', 0, 'https://vnn-imgs-a1.vgcloud.vn/icdn.dantri.com.vn/2022/03/13/hoi-gai-xinh-goi-cam-noi-gi-truoc-ap-luc-mac-sexy-la-hu-hongdocx-1647188022424.jpeg', 'https://shop.muoitamcong.vn/wp-content/uploads/2023/10/Anh-gai-dep-Tiktok-Trung-Quoc-2.jpg', '', '', 1),
(6, 'Set trang 404-not-found khi user cố tình thao tác sai trên đường dẫn url\r\n', 1, '01. Khi cố tình nhập sai url sẽ dẫn đến trang 404\r\n\r\n+Nhập sai đường dẫn cố định trong routes ( menu ) mặc định sẽ dẫn đến views→ errors → html →error_404.php\r\n+Cố tình nhập các ký tự đặc biệt trên đường dẫn cố định mặc định sẽ dẫn đến views→ errors → html →error_general.php\r\n-cách xử lý để dẫn đến trang 404 của project\r\n+Bước 1: Vào Views→errors→html tìm đến 2 file : error-404.php,error_general.php thêm dòng code sau :\r\n+Bước 2 : vào application→routes.php tạo 1 route như sau để dẫn đến controller mặc định welcome\r\n02.Cố tình nhập sai id trên url mà không thông qua form dẫn đến không tồn tại biến $filter_quantity và giá trị $filter_quantity = 0 ( 0/0 sẽ dẫn đến lỗi như bên dưới )', '', 0, 'https://vnn-imgs-a1.vgcloud.vn/icdn.dantri.com.vn/2022/03/13/hoi-gai-xinh-goi-cam-noi-gi-truoc-ap-luc-mac-sexy-la-hu-hongdocx-1647188022424.jpeg', 'https://vnn-imgs-a1.vgcloud.vn/icdn.dantri.com.vn/2022/03/13/hoi-gai-xinh-goi-cam-noi-gi-truoc-ap-luc-mac-sexy-la-hu-hongdocx-1647188022424.jpeg', '', '', 0),
(7, 'Test', 0, '<p>dwdwdwdwd</p>\r\n', 'dwdwdw', 1, 'http://localhost/Angular2026/SourceData/update.jpg', 'http://localhost/Angular2026/SourceData/update.jpg', '', '06/01/2024 05:50:58 PM', 1),
(38, 'Post_new', 1, '<p><img alt=\"\" src=\"/Angular2026/library/ckeditor/ckfinder_upload/files/407234061_714618960808958_6927441244536432834_n.jpg\" style=\"width:100%\" /></p>\r\n\r\n<p>H&Igrave;NH 2</p>\r\n\r\n<p><img alt=\"\" src=\"/Angular2026/library/ckeditor/ckfinder_upload/files/407905702_714619214142266_1030027216298678421_n.jpg\" style=\"width:100%\" /></p>\r\n', 'dwdwdw', 1, 'http://localhost/Angular2026/SourceData/update.jpg', 'http://localhost/Angular2026/SourceData/update.jpg', '', '14/01/2024 02:46:55 PM', 0),
(39, 'Post_new', 1, '<p>dwdwd</p>\r\n', 'wdwdw', 1, 'http://localhost/Angular2026/SourceData/update.jpg', 'http://localhost/Angular2026/SourceData/update.jpg', '', '14/01/2024 02:51:50 PM', 0),
(40, 'Post_new2', 1, '<p>dwdwdw</p>\r\n', 'dwdwdw', 1, 'http://localhost/Angular2026/SourceData/update.jpg', 'http://localhost/Angular2026/SourceData/update.jpg', '', '14/01/2024 02:54:57 PM', 0),
(41, 'Post_new', 1, '<p>wdwdw</p>\r\n', 'dwdwd', 1, 'http://localhost/Angular2026/SourceData/update.jpg', 'http://localhost/Angular2026/SourceData/update.jpg', '', '14/01/2024 02:58:43 PM', 0),
(42, 'Post_new', 1, '<p>dwdwdw</p>\r\n', 'dwdwd', 1, 'http://localhost/Angular2026/SourceData/update.jpg', 'http://localhost/Angular2026/SourceData/update.jpg', '', '14/01/2024 03:03:01 PM', 0),
(43, 'Post_new', 1, '<p>dwdwdwd</p>\r\n', 'dwdwd', 1, 'http://localhost/Angular2026/SourceData/update.jpg', 'http://localhost/Angular2026/SourceData/update.jpg', '', '14/01/2024 03:04:30 PM', 0),
(44, 'Post_new', 1, '<p>dwdwdwd</p>\r\n', 'dwdwdw', 1, 'http://localhost/Angular2026/SourceData/update.jpg', 'http://localhost/Angular2026/SourceData/update.jpg', '', '14/01/2024 03:05:49 PM', 0),
(45, 'Post_new', 1, '<p>dwdwdw</p>\r\n', 'dwdwdw', 1, 'http://localhost/Angular2026/SourceData/update.jpg', 'http://localhost/Angular2026/SourceData/update.jpg', '', '14/01/2024 03:06:05 PM', 0),
(46, 'Post_new_22222222222', 2, '<p><img alt=\"\" src=\"/Angular2026/library/ckeditor/ckfinder_upload/files/005F43cely1hlbtl36pq2j30u01hcnpd.jpg\" style=\"float:left; height:1200px; width:675px\" /></p>\n\n<p><img alt=\"\" src=\"/Angular2026/library/ckeditor/ckfinder_upload/files/006G0Hz8gy1hlboxq46hdj30u01hcnpd.jpg\" style=\"height:1200px; width:675px\" /></p>\n\n<p><img alt=\"\" src=\"/Angular2026/library/ckeditor/ckfinder_upload/files/0060srqvgy1hlbr73ekt8j30u01hcb29.jpg\" style=\"height:1200px; width:675px\" /></p>\n\n<p><img alt=\"\" src=\"/Angular2026/library/ckeditor/ckfinder_upload/files/008vl2aLly1hldgi1f0gcj30u01hc7wh.jpg\" style=\"height:1200px; width:675px\" /></p>\n', 'wdwdwd', 2, 'http://localhost/Angular2026/SourceData/update.jpg', 'http://localhost/Angular2026/SourceData/update.jpg', '', '14/01/2024 03:07:45 PM', 0),
(47, 'Post_new', 1, '<p>wdwdwd</p>\r\n', 'wdwdw', 2, 'http://localhost/Angular2026/SourceData/data/005F43cely1hlbtl36pq2j30u01hcnpd.jpg', 'http://localhost/Angular2026/SourceData/data/005F43cely1hlbtl36pq2j30u01hcnpd_thumb.jpg', '', '14/01/2024 03:08:27 PM', 0),
(48, 'Cách ', 1, '<p>cwswqwf`</p>\r\n', 'wdwdwqd', 1, 'http://localhost/Angular2026/SourceData/data/025.jpg', 'http://localhost/Angular2026/SourceData/data/025_thumb.jpg', '', '14/01/2024 03:39:14 PM', 0),
(49, 'Post_new', 2, '<p>sqsqqwerfvefwre</p>\r\n', 'sqsqsq', 2, 'http://localhost/Angular2026/SourceData/data/0060srqvgy1hlbr73ekt8j30u01hcb29.jpg', 'http://localhost/Angular2026/SourceData/data/0060srqvgy1hlbr73ekt8j30u01hcb29_thumb.jpg', '', '15/01/2024 08:11:21 AM', 0),
(50, 'Post_new_22222222222', 1, '<p>cscsccs</p>\r\n', 'dwdwdw', 1, 'http://localhost/Angular2026/SourceData/data/407234061_714618960808958_6927441244536432834_n1.jpg', 'http://localhost/Angular2026/SourceData/data/407234061_714618960808958_6927441244536432834_n1_thumb.jpg', '', '15/01/2024 08:12:01 AM', 0),
(51, 'Post_new', 1, '<p>dwdwdw</p>\r\n', 'dwdwdw', 1, 'http://localhost/Angular2026/SourceData/data/00042.jpg', 'http://localhost/Angular2026/SourceData/data/00042_thumb.jpg', '', '15/01/2024 10:29:30 PM', 0),
(52, 'Post_test_frontend', 1, '<p><img src=\"https://kenh14cdn.com/thumb_w/800/pr/2023/photo1702541555196-17025415554781425949336-63838169460110.jpg\" /></p>\r\n\r\n<h2>Đến Singapore m&ugrave;a lễ hội cuối năm, nhất định phải gh&eacute; thăm Orchard Road - khu phố hoa lệ, sầm uất bậc nhất Đảo quốc. Tại đ&acirc;y, bạn sẽ được tận hưởng mọi th&uacute; vui từ c&aacute;c qu&aacute;n bar, khu thể thao giải tr&iacute;, mua sắm, ẩm thực đến trải nghiệm kh&ocirc;ng kh&iacute; lễ hội tưng bừng chỉ xuất hiện 1 lần trong năm.</h2>\r\n\r\n<p><iframe id=\"adnzone_sponsor_525786\" scrolling=\"no\"></iframe></p>\r\n\r\n<p>Gi&aacute;ng sinh đ&atilde; tr&agrave;n ngập Singapore, từ s&acirc;n bay Changi đến mọi g&oacute;c đường, len lỏi trong từng ng&oacute;c ng&aacute;ch. Như mọi năm, Orchard Road tiếp tục l&agrave; một trong những t&acirc;m điểm của m&ugrave;a lễ hội. H&atilde;y kh&aacute;m ph&aacute; sự h&ograve;a quyện của văn h&oacute;a v&agrave; thương mại tại con phố nổi tiếng n&agrave;y qua những điểm đến nổi bật sau đ&acirc;y nh&eacute;!</p>\r\n\r\n<p><strong>B&ugrave;ng nổ kh&ocirc;ng kh&iacute; lễ hội đa sắc m&agrave;u với Christmas on A Great Street 2023</strong></p>\r\n\r\n<p>Christmas on A Great Street l&agrave; chương tr&igrave;nh lễ hội thường ni&ecirc;n tại khu phố Orchard Road. Sự kiện với những tr&ograve; chơi v&agrave; hoạt động vui nhộn, ph&ugrave; hợp cho kh&aacute;ch tham quan ở mọi lứa tuổi n&ecirc;n lu&ocirc;n thu h&uacute;t đ&ocirc;ng đảo du kh&aacute;ch v&agrave;o mỗi dịp Gi&aacute;ng Sinh.</p>\r\n\r\n<p>Được tổ chức từ 16/11/2023 đến 1/1/2024, Christmas on A Great Street lần thứ 40 sẽ biến đại lộ Orchard Road th&agrave;nh thi&ecirc;n đường rực rỡ, với h&agrave;ng loạt đ&egrave;n trang tr&iacute; huyền ảo, đa sắc, k&eacute;o d&agrave;i từ giao lộ Paterson đến Bideford. Sự kiện sẽ bao gồm c&aacute;c hoạt động tr&igrave;nh diễn &acirc;m nhạc, biểu diễn vũ đạo v&agrave; hội chợ Gi&aacute;ng Sinh.</p>\r\n\r\n<p><a href=\"https://channel.mediacdn.vn/428462621602512896/2023/12/14/photo-1-1702541417367668778135.jpg\" target=\"_blank\" title=\"Cổng chào rực rỡ ánh đèn mở ra không gian lễ hội diệu kỳ (Ảnh: Orchard Road Business Association)\"><img alt=\"Khám phá cung đường sầm uất và lộng lẫy bậc nhất Singapore mùa Giáng sinh: Orchard Road - Ảnh 1.\" id=\"img_659669306561572864\" src=\"https://channel.mediacdn.vn/428462621602512896/2023/12/14/photo-1-1702541417367668778135.jpg\" style=\"width:100%\" title=\"Khám phá cung đường sầm uất và lộng lẫy bậc nhất Singapore mùa Giáng sinh: Orchard Road - Ảnh 1.\" /></a></p>\r\n\r\n<p>Cổng ch&agrave;o rực rỡ &aacute;nh đ&egrave;n mở ra kh&ocirc;ng gian lễ hội diệu kỳ (Ảnh: Orchard Road Business Association)</p>\r\n\r\n<p>Ngo&agrave;i ra, Christmas on A Great Street 2023 c&ograve;n mở ra kh&ocirc;ng kh&iacute; lễ hội thần ti&ecirc;n với &quot;Ba ng&ocirc;i l&agrave;ng Gi&aacute;ng Sinh&quot; tại Ngee Ann City Civic Plaza, Plaza Singapura v&agrave; Shaw House Urban Plaza, mang đến trải nghiệm diệu kỳ cho du kh&aacute;ch.</p>\r\n\r\n<p><a href=\"https://channel.mediacdn.vn/428462621602512896/2023/12/14/photo-1-17025414194091400444854.jpg\" target=\"_blank\" title=\"Không gian thần tiên tại 1 trong 3 ngôi làng Giáng Sinh (Ảnh: Orchard Road Business Association)\"><img alt=\"Khám phá cung đường sầm uất và lộng lẫy bậc nhất Singapore mùa Giáng sinh: Orchard Road - Ảnh 2.\" id=\"img_659669313708666880\" src=\"https://channel.mediacdn.vn/428462621602512896/2023/12/14/photo-1-17025414194091400444854.jpg\" style=\"width:100%\" title=\"Khám phá cung đường sầm uất và lộng lẫy bậc nhất Singapore mùa Giáng sinh: Orchard Road - Ảnh 2.\" /></a></p>\r\n\r\n<p>Kh&ocirc;ng gian thần ti&ecirc;n tại 1 trong 3 ng&ocirc;i l&agrave;ng Gi&aacute;ng Sinh (Ảnh: Orchard Road Business Association)</p>\r\n\r\n<p><strong>Tận hưởng ẩm thực đa văn h&oacute;a tại Le Matin Patisserie v&agrave; Sushi Kimura</strong></p>\r\n\r\n<p>Trong khung cảnh lộng lẫy v&agrave; ấn tượng của lễ hội, đừng qu&ecirc;n &aacute;nh đ&egrave;n từ những nh&agrave; h&agrave;ng v&agrave; qu&aacute;n ăn nổi bật tr&ecirc;n khu phố sầm uất Orchard Road.</p>\r\n\r\n<p>Dưới b&agrave;n tay t&agrave;i năng của đầu bếp Mohamed Al Matin, Le Matin Patisserie l&agrave; địa chỉ l&yacute; tưởng cho những ai y&ecirc;u b&aacute;nh ngọt theo phong c&aacute;ch Paris hay c&aacute;c m&oacute;n brunch thơm ngon. Với kh&ocirc;ng gian trang nh&atilde; v&agrave; tinh tế, theo m&ocirc; h&igrave;nh casual dining, Le Matin Patisserie mang đến trải nghiệm ẩm thực độc đ&aacute;o. Ngo&agrave;i việc mua mang về, thực kh&aacute;ch c&oacute; thể d&ugrave;ng bữa trực tiếp tại Le Matin Patisserie từ thứ Tư đến Chủ Nhật.</p>\r\n\r\n<p><a href=\"https://channel.mediacdn.vn/428462621602512896/2023/12/14/photo-2-17025414199372042318599.jpg\" target=\"_blank\" title=\"Le Matin Patisserie là điểm đến lý tưởng cho các tín đồ mê bánh ngọt (Ảnh: Le Matin Patisserie)\"><img alt=\"Khám phá cung đường sầm uất và lộng lẫy bậc nhất Singapore mùa Giáng sinh: Orchard Road - Ảnh 3.\" id=\"img_659669315462995968\" src=\"https://channel.mediacdn.vn/428462621602512896/2023/12/14/photo-2-17025414199372042318599.jpg\" style=\"width:100%\" title=\"Khám phá cung đường sầm uất và lộng lẫy bậc nhất Singapore mùa Giáng sinh: Orchard Road - Ảnh 3.\" /></a></p>\r\n\r\n<p>Le Matin Patisserie l&agrave; điểm đến l&yacute; tưởng cho c&aacute;c t&iacute;n đồ m&ecirc; b&aacute;nh ngọt (Ảnh: Le Matin Patisserie)</p>\r\n\r\n<p>Website: https://lematinpatisserie.com/</p>\r\n\r\n<p>Địa chỉ: ION Orchard, 2 Orchard Turn, B2&ndash;49, Singapore 238801</p>\r\n\r\n<p>Mở cửa h&agrave;ng ng&agrave;y: 10:00 - 22:00</p>\r\n', '123456789', 1, 'http://localhost/Angular2026/SourceData/update.jpg', 'http://localhost/Angular2026/SourceData/update.jpg', '', '18/01/2024 09:33:49 PM', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `menu`
--

CREATE TABLE `menu` (
  `id` int(11) NOT NULL,
  `menu_name` varchar(255) COLLATE utf8_vietnamese_ci NOT NULL,
  `menu_content` longtext COLLATE utf8_vietnamese_ci NOT NULL,
  `menu_img` text COLLATE utf8_vietnamese_ci NOT NULL,
  `menu_img_thumb` text COLLATE utf8_vietnamese_ci NOT NULL,
  `menu_date` varchar(255) COLLATE utf8_vietnamese_ci NOT NULL,
  `menu_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `menu`
--

INSERT INTO `menu` (`id`, `menu_name`, `menu_content`, `menu_img`, `menu_img_thumb`, `menu_date`, `menu_status`) VALUES
(17, 'MenuA', '', 'http://localhost/Angular2026/SourceData/menu/98365826_2068554753291173_1077384849620205568_n.jpg', 'http://localhost/Angular2026/SourceData/menu/98365826_2068554753291173_1077384849620205568_n_thumb.jpg', '30-12-2023', 0),
(18, 'MenuB', '', 'http://localhost/Angular2026/SourceData/menu/97511428_2068554603291188_8530987321208602624_n.jpg', 'http://localhost/Angular2026/SourceData/menu/97511428_2068554603291188_8530987321208602624_n_thumb.jpg', '30-12-2023', 0),
(19, 'MEnuC', '', 'http://localhost/Angular2026/SourceData/menu/100470038_2072734289539886_576310823585054720_o.jpg', 'http://localhost/Angular2026/SourceData/menu/100470038_2072734289539886_576310823585054720_o_thumb.jpg', '30-12-2023', 0),
(20, 'menuA', '', 'http://localhost/Angular2026/SourceData/menu/98150430_2072719109541404_2553832982070689792_o.jpg', 'http://localhost/Angular2026/SourceData/menu/98150430_2072719109541404_2553832982070689792_o_thumb.jpg', '30-12-2023', 0),
(21, 'menuTest', '', 'http://localhost/Angular2026/SourceData/menu/102723710_2094999300646718_3235285857692945862_o.jpg', 'http://localhost/Angular2026/SourceData/menu/102723710_2094999300646718_3235285857692945862_o_thumb.jpg', '30-12-2023', 0),
(22, 'sddqdq', '', 'http://localhost/Angular2026/SourceData/menu/102925754_2094082257405089_3610515662498217933_n.jpg', 'http://localhost/Angular2026/SourceData/menu/102925754_2094082257405089_3610515662498217933_n_thumb.jpg', '30-12-2023', 0),
(23, 'dwdwdwdd', '', 'http://localhost/Angular2026/SourceData/update.jpg', 'http://localhost/Angular2026/SourceData/update.jpg', '30-12-2023', 0),
(24, 'dwdwdwdw', '', 'http://localhost/Angular2026/SourceData/update.jpg', 'http://localhost/Angular2026/SourceData/update.jpg', '30-12-2023', 0),
(25, 'dwdwdw', '', 'http://localhost/Angular2026/SourceData/menu/99157970_2072719059541409_8555107402276405248_o.jpg', 'http://localhost/Angular2026/SourceData/menu/99157970_2072719059541409_8555107402276405248_o_thumb.jpg', '30-12-2023', 0),
(26, 'dwdwdw', '', 'http://localhost/Angular2026/SourceData/menu/100049547_2072718962874752_1079886788329209856_o.jpg', 'http://localhost/Angular2026/SourceData/menu/100049547_2072718962874752_1079886788329209856_o_thumb.jpg', '30-12-2023', 0),
(27, 'qdwdedf', '', 'http://localhost/Angular2026/SourceData/update.jpg', 'http://localhost/Angular2026/SourceData/update.jpg', '30-12-2023', 0),
(28, 'Test Menu 102', '<p>M&ocirc; tả menu</p>\n', 'http://localhost/Angular2026/SourceData/update.jpg', 'http://localhost/Angular2026/SourceData/update.jpg', '30-12-2023', 0),
(29, 'vwvb vr', '<p>cscscscsc</p>\n', 'http://localhost/Angular2026/SourceData/update.jpg', 'http://localhost/Angular2026/SourceData/update.jpg', '30-12-2023', 0),
(30, 'Menu 102', '<p>M&ocirc; tả menu</p>\n', 'http://localhost/Angular2026/SourceData/menu/9494.jpg', 'http://localhost/Angular2026/SourceData/menu/9494_thumb.jpg', '30-12-2023', 0),
(31, 'test', '<p>dwedwefefewfe</p>\n', 'http://localhost/Angular2026/SourceData/menu/02.jpg', 'http://localhost/Angular2026/SourceData/menu/02_thumb.jpg', '30-12-2023', 0),
(32, 'Thiết kế web', '<p>Backend : Codeigniter..</p>\n\n<p>Frontend : Html,Css,AngularJS...</p>\n', 'http://localhost/Angular2026/SourceData/menu/79.jpg', 'http://localhost/Angular2026/SourceData/menu/79_thumb.jpg', '30-12-2023', 0),
(33, 'dwdwdw', '<p>fewfeffew</p>\n', 'http://localhost/Angular2026/SourceData/update.jpg', 'http://localhost/Angular2026/SourceData/update.jpg', '30-12-2023', 0),
(34, 'dwdwqdw123', '<p>dwqdweqdwqd</p>\n', 'http://localhost/Angular2026/SourceData/update.jpg', 'http://localhost/Angular2026/SourceData/update.jpg', '30-12-2023', 0),
(35, 'test102', '<p>qdcww</p>\n', 'http://localhost/Angular2026/SourceData/update.jpg', 'http://localhost/Angular2026/SourceData/update.jpg', '30-12-2023', 0),
(36, 'test102102', '<p>cdwdfeff</p>\n', 'http://localhost/Angular2026/SourceData/update.jpg', 'http://localhost/Angular2026/SourceData/update.jpg', '30-12-2023', 0),
(37, 'menu test', '<p>fcwefwefe</p>\n', 'http://localhost/Angular2026/SourceData/update.jpg', 'http://localhost/Angular2026/SourceData/update.jpg', '30-12-2023', 0),
(38, 'teswt', '<p>cfeffe</p>\n', 'http://localhost/Angular2026/SourceData/update.jpg', 'http://localhost/Angular2026/SourceData/update.jpg', '30-12-2023', 0),
(39, 'wqefwfewq', '<p>fewqfewfe</p>\n', 'http://localhost/Angular2026/SourceData/update.jpg', 'http://localhost/Angular2026/SourceData/update.jpg', '30-12-2023', 0),
(40, 'menu test 2', '<p>wefwefeffefefe</p>\n', 'http://localhost/Angular2026/SourceData/update.jpg', 'http://localhost/Angular2026/SourceData/update.jpg', '30-12-2023', 0),
(41, 'menu test 3', '<p>wfewfff</p>\n', 'http://localhost/Angular2026/SourceData/update.jpg', 'http://localhost/Angular2026/SourceData/update.jpg', '30-12-2023', 0),
(42, 'Category menu 102', '<p>wddqwdwd</p>\n', 'http://localhost/Angular2026/SourceData/update.jpg', 'http://localhost/Angular2026/SourceData/update.jpg', '30-12-2023', 0),
(43, 'menu test 20', '<p>wqdwd</p>\n', 'http://localhost/Angular2026/SourceData/menu/279487393_1051684782370722_6918918884336855589_n.jpg', 'http://localhost/Angular2026/SourceData/menu/279487393_1051684782370722_6918918884336855589_n_thumb.jpg', '30-12-2023', 0),
(44, 'menu test 200', '<p>wdwdw</p>\n', 'http://localhost/Angular2026/SourceData/update.jpg', 'http://localhost/Angular2026/SourceData/update.jpg', '30-12-2023', 0),
(45, 'vwvb vrewfwf', '<p>dwdwqdw</p>\n', 'http://localhost/Angular2026/SourceData/menu/021.jpg', 'http://localhost/Angular2026/SourceData/menu/021_thumb.jpg', '30-12-2023', 0),
(46, 'wcwcwcwcfewfewfewf', '<p>fwefewf</p>\n', 'http://localhost/Angular2026/SourceData/menu/791.jpg', 'http://localhost/Angular2026/SourceData/menu/791_thumb.jpg', '30-12-2023', 0),
(47, 'menu test 2197984', '<p>dwdwd</p>\n', 'http://localhost/Angular2026/SourceData/menu/06.jpg', 'http://localhost/Angular2026/SourceData/menu/06_thumb.jpg', '30-12-2023', 0),
(48, 'menu test 21', '<p>ewfefre</p>\n', 'http://localhost/Angular2026/SourceData/update.jpg', 'http://localhost/Angular2026/SourceData/update.jpg', '30-12-2023', 0),
(49, 'menu test 10000', '<p>ceceecvbtryt</p>\n', 'http://localhost/Angular2026/SourceData/update.jpg', 'http://localhost/Angular2026/SourceData/update.jpg', '30-12-2023', 0),
(50, 'menu test 2ef', '<p>fewfewf</p>\n', 'http://localhost/Angular2026/SourceData/update.jpg', 'http://localhost/Angular2026/SourceData/update.jpg', '30-12-2023', 0),
(51, 'menu test 2fewfe', '<p>wefefe</p>\n', 'http://localhost/Angular2026/SourceData/update.jpg', 'http://localhost/Angular2026/SourceData/update.jpg', '30-12-2023', 0),
(52, 'menu test 2errereer', '<p>grggr</p>\n', 'http://localhost/Angular2026/SourceData/update.jpg', 'http://localhost/Angular2026/SourceData/update.jpg', '30-12-2023', 0),
(53, 'menu test 211919', '<p>dwqreerwg</p>\n', 'http://localhost/Angular2026/SourceData/update.jpg', 'http://localhost/Angular2026/SourceData/update.jpg', '30-12-2023', 0),
(54, 'menu test 2dwdwd', '<p>wdwdwd</p>\n', 'http://localhost/Angular2026/SourceData/menu/04.jpg', 'http://localhost/Angular2026/SourceData/menu/04_thumb.jpg', '30-12-2023', 0);

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
  `ngaytao` text COLLATE utf8_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`id`, `user_name`, `password`, `content`, `avatar`, `img_thumb`, `img_json`, `trangthai`, `level`, `ngaytao`) VALUES
(591, 'ctv@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '', 'http://localhost/Angular2026/SourceData/user/MV5BNTJhM2UzOTEtZmNiZC00NDM3LWE2ZmMtYmY1NGM3ODVhMTMyXkEyXkFqcGdeQXVyNzI1NzMxNzM@__V1_.jpg', 'http://localhost/Angular2026/SourceData/user/MV5BNTJhM2UzOTEtZmNiZC00NDM3LWE2ZmMtYmY1NGM3ODVhMTMyXkEyXkFqcGdeQXVyNzI1NzMxNzM@__V1__thumb.jpg', '', 0, 2, ''),
(595, 'Admin@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '', 'http://localhost/Angular2026/SourceData/user/409176374_673732188287552_8126001560456753206_n.jpg', 'http://localhost/Angular2026/SourceData/user/409176374_673732188287552_8126001560456753206_n_thumb.jpg', '', 1, 1, ''),
(596, 'ctv2@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '', 'http://localhost/Angular2026/SourceData/user/IMG_4555.JPG', 'http://localhost/Angular2026/SourceData/user/IMG_4555_thumb.JPG', '', 1, 2, ''),
(597, 'admin2@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '', 'http://localhost/Angular2026/SourceData/user/005F43cely1hlbtl36pq2j30u01hcnpd.jpg', 'http://localhost/Angular2026/SourceData/user/005F43cely1hlbtl36pq2j30u01hcnpd_thumb.jpg', '', 1, 1, ''),
(598, 'nguoidung@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '', 'http://localhost/Angular2026/SourceData/user/0060srqvgy1hlbr73ekt8j30u01hcb29.jpg', 'http://localhost/Angular2026/SourceData/user/0060srqvgy1hlbr73ekt8j30u01hcb29_thumb.jpg', '', 0, 3, ''),
(599, 'nguoidung2@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '', 'http://localhost/Angular2026/SourceData/user/The-Yin-Yang-Master-Dream-of-Eternity-2020_1.jpg', 'http://localhost/Angular2026/SourceData/user/The-Yin-Yang-Master-Dream-of-Eternity-2020_1_thumb.jpg', '', 0, 3, ''),
(600, 'nguoidung3@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '', 'http://localhost/Angular2026/SourceData/user/rTUIm8rf_o.png', 'http://localhost/Angular2026/SourceData/user/rTUIm8rf_o_thumb.png', '', 0, 3, '');

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
  ADD PRIMARY KEY (`id`);

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
  MODIFY `data_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT cho bảng `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT cho bảng `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=602;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
