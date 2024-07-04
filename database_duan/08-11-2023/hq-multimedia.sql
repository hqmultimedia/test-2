-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 08, 2023 lúc 05:20 PM
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
  `data_sort` int(11) NOT NULL,
  `data_tags` text COLLATE utf8_vietnamese_ci NOT NULL,
  `data_status` int(11) NOT NULL,
  `category_name` text COLLATE utf8_vietnamese_ci NOT NULL,
  `data_img` text COLLATE utf8_vietnamese_ci NOT NULL,
  `data_content` longtext COLLATE utf8_vietnamese_ci NOT NULL,
  `data_img_thumb` text COLLATE utf8_vietnamese_ci NOT NULL,
  `data_time` text COLLATE utf8_vietnamese_ci NOT NULL,
  `writer` text COLLATE utf8_vietnamese_ci NOT NULL,
  `writer_edit` text COLLATE utf8_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `data`
--

INSERT INTO `data` (`data_id`, `data_name`, `data_sort`, `data_tags`, `data_status`, `category_name`, `data_img`, `data_content`, `data_img_thumb`, `data_time`, `writer`, `writer_edit`) VALUES
(40, '01.Cấu hình Ckeditor- CkFinder 3.3.0 vào Codeigniter', 1, 'CkEditor,CkFinder,plugin,codeigniter', 1, 'Plugin', 'http://localhost/HQMultimedia/SourceData/data/ogimage-ck4-1ea514a336.png', '<p><strong>1.Phần HTML</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\"><img alt=\"\" src=\"/duan1/plugin/ckfinder_upload/files/html.jpg\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>1.Phần JS</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong><img alt=\"\" src=\"/duan1/plugin/ckfinder_upload/files/js.jpg\" /></strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>3. Cấu h&igrave;nh file config.php trong thư mục ckfinder</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong><img alt=\"\" src=\"/duan1/plugin/ckfinder_upload/files/config.jpg\" /></strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>- Carck ckfinder tại trang web :&nbsp;https://ckfinder.sanvu88.net/</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong><img alt=\"\" src=\"/duan1/plugin/ckfinder_upload/files/crack.jpg\" /></strong></p>\r\n', 'http://localhost/HQMultimedia/SourceData/data/ogimage-ck4-1ea514a336_thumb.png', '03/11/2023 11:02:17 AM', 'nguyenhaiquandh@gmail.com', 'nguyenhaiquandh@gmail.com'),
(42, 'Phân trang Codeigniter', 2, 'phân trang,codeigniter,codeigniter-thực thi', 1, 'Codeigniter', 'http://localhost/HQMultimedia/SourceData/data/pagination1.png', '<p><span style=\"color:#f1c40f\"><strong>*Route</strong></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong><img alt=\"\" src=\"/HQMultimedia/plugin/ckfinder_upload/files/phantrang/route.jpg\" /></strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"color:#f1c40f\"><strong>*Controller</strong></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong><img alt=\"\" src=\"/HQMultimedia/plugin/ckfinder_upload/files/phantrang/controller.jpg\" /></strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"color:#f1c40f\"><strong>*Model</strong></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong><img alt=\"\" src=\"/HQMultimedia/plugin/ckfinder_upload/files/phantrang/model.jpg\" /></strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"color:#ffffff\"><strong><span style=\"background-color:#000000\">*Ph&acirc;n t&iacute;ch logic Route-Controller-Model</span></strong></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>-Để ph&acirc;n được trang dữ liệu ta cần c&aacute;c th&ocirc;ng số sau:</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ol style=\"margin-left:40px\">\r\n	<li style=\"text-align:justify\">Trang hiện tại ($number_current_page)</li>\r\n	<li style=\"text-align:justify\">Số tin trong 1 trang ($number_data_of_page)</li>\r\n</ol>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p>-Từ số tin trong 1 trang ta lấy tất cả&nbsp;dữ liệu trong 1 trang dưới t&ecirc;n biến l&agrave;&nbsp;$data_of_page</p>\r\n\r\n<p>-Lấy tất cả dữ liệu của tin v&agrave; d&ugrave;ng h&agrave;m <strong>count </strong>để đếm dữ liệu ($total_number_data)</p>\r\n\r\n<p>-c&ocirc;ng thức t&iacute;nh&nbsp;số trang($number_page) :</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p style=\"margin-left:40px\"><strong>$number_page=ceil($total_number_data/$number_data_of_page);</strong></p>\r\n\r\n<p style=\"margin-left:40px\">&nbsp;</p>\r\n\r\n<p>-Tạo mảng v&agrave; gửi dữ liệu về controller</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"color:#f1c40f\"><strong>*View</strong></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong><span style=\"color:#ffffff\"><span style=\"background-color:#000000\">-Set tham số cho Pagination</span></span></strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ul style=\"margin-left:40px\">\r\n</ul>\r\n\r\n<p><strong><span style=\"color:#2ecc71\">+Trang view : Gọi đến Pagination Template</span></strong></p>\r\n\r\n<ul style=\"margin-left:40px\">\r\n	<li>\r\n	<p><strong>$trangindex :</strong> chuỗi set theo route (data,category...)</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>$thamso_link:</strong> chuỗi set theo route (data,category...)</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>$thamso_key_filter: d&agrave;nh cho trang filter cũng l&agrave;&nbsp;</strong>chuỗi set theo route (data,category...)</p>\r\n	</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong><span style=\"color:#2ecc71\">+Template Pagination :</span></strong></p>\r\n\r\n<ul style=\"margin-left:40px\">\r\n	<li>&nbsp;<strong>$tranghientai : </strong>l&agrave; vị tr&iacute; trang or 1 chuỗi k&iacute; tự</li>\r\n	<li><strong>$thamsoNextPrevious: 1</strong></li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong><span style=\"color:#ffffff\"><span style=\"background-color:#000000\">*Logic Pagination Template&nbsp;hoạt động</span></span></strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ol style=\"margin-left:40px\">\r\n	<li><strong>( IF ) </strong>Trường hợp&nbsp;kh&ocirc;ng c&oacute; dữ liệu hoặc $tranghientai bằng 1 (<strong> $data == Null &nbsp;or $number_page == 1</strong> ) : th&igrave; kh&ocirc;ng xuất ra pagination,ngược lại đi tới bước 2&nbsp;</li>\r\n	<li><strong>( ELSE )</strong> Xuất dữ liệu Pagination</li>\r\n</ol>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>-Xuất dữ liệu Pagination ( Bước 2 ) :</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ul>\r\n	<li><span style=\"color:#2ecc71\"><strong>-N&uacute;t Prev</strong></span></li>\r\n</ul>\r\n\r\n<ol style=\"margin-left:40px\">\r\n	<li><strong>( IF )</strong> $tranghientai bằng 1 hoặc $tranghientai bằng $trangindex (<strong>&nbsp;$tranghientai == 1 or $tranghientai == $trangindex</strong> ) : th&igrave; n&uacute;t Prev sẽ ở trạng th&aacute;i<strong>&nbsp;unactive</strong></li>\r\n	<li><strong>Ngược lại (ELSE)&nbsp;</strong>th&igrave; n&uacute;t Prev sẽ ở trạng th&aacute;i b&igrave;nh thường</li>\r\n</ol>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ul>\r\n	<li><span style=\"color:#2ecc71\"><strong>-Thẻ link</strong></span></li>\r\n	<li><strong>D&ugrave;ng v&ograve;ng lặp for :</strong>&nbsp;trong v&ograve;ng lặp set điều kiện sau</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ol style=\"margin-left:40px\">\r\n	<li>( IF ) $i+1 bằng với $tranghientai (<strong><!--?php if (($i+1) == $tranghientai   ): ?--></strong>) th&igrave; xuất ra thẻ link ở trạng th&aacute;i <strong>active</strong></li>\r\n	<li><strong>(ELSE) </strong>ta lại set 1 điều kiện IF-ELSE kh&aacute;c</li>\r\n	<li>( IF ) trang hiện tại bằng trang index (<strong>$tranghientai == $trangindex</strong>) th&igrave; xuất ra thẻ link với class <strong>edit</strong></li>\r\n	<li><strong>( ELSE)&nbsp;</strong>th&igrave; xuất ra thẻ link trạng th&aacute;i b&igrave;nh thường</li>\r\n</ol>\r\n\r\n<ul>\r\n	<li><span style=\"color:#2ecc71\"><strong>-N&uacute;t Next</strong></span></li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ol style=\"margin-left:40px\">\r\n	<li><strong>( IF )&nbsp;</strong>Trang hiện tại bằng tổng số trang-số trang lớn nhất&nbsp; ( <strong>$tranghientai == $number_page</strong> ) th&igrave; xuất ra n&uacute;t Next ở trạng th&aacute;i <strong>Unactive</strong></li>\r\n	<li><strong>(ELSE) </strong>ta lại set 1 điều kiện IF-ELSE kh&aacute;c</li>\r\n	<li><strong>( IF ) </strong>trang hiện tại bằng trang index (<strong>$tranghientai == $trangindex</strong>) th&igrave; khi nhất n&uacute;t Next sẽ&nbsp;cộng 2 đơn vị bỏ qua trang số 1&nbsp;($thamsoNextPrev)</li>\r\n	<li><strong>( ELSE)&nbsp;</strong>th&igrave; xuất ra n&uacute;t Next trạng&nbsp;th&aacute;i b&igrave;nh thường</li>\r\n</ol>\r\n', 'http://localhost/HQMultimedia/SourceData/data/pagination1_thumb.png', '03/11/2023 11:02:17 AM', 'nguyenhaiquandh@gmail.com', 'nguyenhaiquandh@gmail.com'),
(43, 'Thao tác với Json', 1, 'Json,Codeigniter,codeiginiter-basic', 1, 'Codeigniter', 'http://localhost/HQMultimedia/SourceData/data/json.png', '<p><span style=\"color:#f1c40f\"><strong>1.Th&ecirc;m Json</strong></span></p>\r\n\r\n<p><span style=\"color:#f1c40f\"><strong>A. Controller</strong></span></p>\r\n\r\n<div class=\"box-code-color margin-tb-15 padding-15\">\r\n<p>public function InsertJson($data_id)<br />\r\n&nbsp; &nbsp; {<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; <span style=\"color:#2dc26b\">// Nhận data từ c&aacute;c thẻ input,biến</span></p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; $data=$this-&gt;input-&gt;post(&#39;data&#39;);<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; $data2=$this-&gt;input-&gt;post(&#39;data2&#39;);<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; $data3=$this-&gt;input-&gt;post(&#39;data3&#39;);<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp;<span style=\"color:#2dc26b\"> // Tạo mảng chứa dữ liệu</span></p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; $data_item = array(<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &#39;KeyName&#39; =&gt;$data ,<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &#39;KeyName2&#39; =&gt;$data2 ,<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &#39;KeyName3&#39; =&gt;$data3&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; );</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; $data_items_json = array();</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; <span style=\"color:#2dc26b\">&nbsp; // push dữ liệu v&agrave;o json</span></p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; array_push($data_items_json, $data_item);</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp;<span style=\"color:#2dc26b\"> // m&atilde; ho&aacute; dữ liệu</span></p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; $mahoa_data_items_json=json_encode($data_items_json);</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; <span style=\"color:#2dc26b\">// Tạo mảng gửi qua model insert</span><br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; $where = array(&#39;data_id&#39; =&gt; $data_id);<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; $data = array<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; (</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<span style=\"color:#e67e23\"> &#39;ColumnJsonDatabase&#39;=&gt;$mahoa_data_items_json</span><br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; );</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; if ($this-&gt; CrudDataModel-&gt;insert($data,$where)) {</p>\r\n\r\n<p><br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; $this-&gt;session-&gt;set_flashdata(&#39;message-true&#39;,&#39;Thao t&aacute;c th&agrave;nh c&ocirc;ng !&#39;);<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; redirect(base_url(&#39;home&#39;)); &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;}<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; else{<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; $this-&gt;session-&gt;set_flashdata(&#39;message-flase&#39;,&#39;Thao t&aacute;c thất bại !&#39;);<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; redirect(base_url(&#39;home&#39;));<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; }</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; }</p>\r\n</div>\r\n\r\n<p><strong>*Model</strong></p>\r\n\r\n<p>-D&ugrave;ng function update gốc của CrudModel</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"/HQMultimedia/plugin/ckfinder_upload/files/model.jpg\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"color:#f1c40f\"><strong>2.Load&nbsp;data Json</strong></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>A.Controller</strong></p>\r\n\r\n<div class=\"box-code-color margin-tb-15 padding-15\">\r\n<p>public function data_by_page($id)<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; {<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<span style=\"color:#2dc26b\"> // 01.Gọi sang model</span><br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; $dulieu=$this-&gt; CategoryModel-&gt;load_data_by_page ($id);</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <span style=\"color:#2dc26b\">// 02.Dữ liệu nhận từ model</span><br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; $data=$dulieu[&#39;data&#39;];<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <span style=\"color:#2dc26b\">&nbsp; // 03. M&atilde; ho&aacute; lại dữ liệu</span><br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; $data_json=<span style=\"color:#e67e23\">json_decode</span>($data);<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <span style=\"color:#2dc26b\">// 04.Gửi dữ liệu đến view</span><br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; $mangdulieu = array(<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &#39;data_json&#39; =&gt;$data_json</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; );<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <span style=\"color:#2dc26b\">&nbsp; // 05. Gọi đến view&nbsp;</span> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;$this-&gt;load-&gt;view(&#39;frontend/viewLoad/data_category&#39;,$mangdulieu);</p>\r\n\r\n<p>}</p>\r\n\r\n<p>&nbsp;</p>\r\n</div>\r\n\r\n<p><strong>*Model</strong></p>\r\n\r\n<p>-Lấy dữ liệu dựa tr&ecirc;n id</p>\r\n\r\n<p>-Foreach để lấy dữ liệu</p>\r\n\r\n<p>-Tạo mảng gửi sang Controller</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"/HQMultimedia/plugin/ckfinder_upload/files/04_model-load-json.jpg\" /></p>\r\n', 'http://localhost/HQMultimedia/SourceData/data/json_thumb.png', '03/11/2023 11:02:17 AM', 'nguyenhaiquandh@gmail.com', 'nguyenhaiquandh@gmail.com'),
(45, 'Comment-Rating', 2, 'comment,rating,codeigniter,codeigniter-thực thi', 1, 'Codeigniter', 'http://localhost/HQMultimedia/SourceData/data/comment.png', '<p><strong>01.Controller&nbsp;</strong></p>\r\n\r\n<div class=\"color-10 padding-15\">\r\n<p>public function data_by_page($number_current_page)<br />\r\n&nbsp; &nbsp; {<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; //Bước 1: check login<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; $this-&gt;check_login_user();<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; //01.Set điều kiện để ngăn ng d&ugrave;ng nhập $number_current_page bằng 0<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; if ($number_current_page == 0)&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; {<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; redirect(base_url(&#39;404-not-found&#39;));<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; }</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; // 02.Set số data trong 1 trang<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; $number_data_of_page=3;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; $this -&gt;sotintrong1trang = $number_data_of_page;</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; // 03.Gọi sang model</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; $dulieu=$this-&gt; CrudDataModel-&gt;load_data_by_page ($number_current_page,$number_data_of_page);<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; // 04.Dữ liệu nhận từ model<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; $data=$dulieu[&#39;data&#39;];<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; $number_page=$dulieu[&#39;number_page&#39;];</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; // 05.Gửi dữ liệu đến view<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; $mangdulieu = array(<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &#39;data&#39; =&gt;$data,<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &#39;number_page&#39; =&gt;$number_page</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; );<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; $this-&gt;load-&gt;view(&#39;admin/viewLoad/view-all-data&#39;,$mangdulieu);</p>\r\n\r\n<p>&nbsp; &nbsp; }</p>\r\n\r\n<p>&nbsp;</p>\r\n</div>\r\n', 'http://localhost/HQMultimedia/SourceData/data/comment_thumb.png', '03/11/2023 11:02:17 AM', 'nguyenhaiquandh@gmail.com', 'nguyenhaiquandh@gmail.com'),
(46, 'Cách sử dụng tags input', 1, 'tags,plugin', 1, 'Plugin', 'http://localhost/HQMultimedia/SourceData/data/tags-input1.png', '<p>1.Link&nbsp;<strong>css js&nbsp;</strong>của tags input trong thư mục vendor</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"/HQMultimedia/plugin/ckfinder_upload/files/phantrang/Plugin/link.jpg\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>2.Tại html gọi đến&nbsp;<strong>data-role=&quot;tagsinput&quot;</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong><img alt=\"\" src=\"/HQMultimedia/plugin/ckfinder_upload/files/phantrang/Plugin/02.jpg\" /></strong></p>\r\n', 'http://localhost/HQMultimedia/SourceData/data/tags-input1_thumb.png', '03/11/2023 12:34:33 PM', 'nguyenhaiquandh@gmail.com', 'nguyenhaiquandh@gmail.com'),
(47, 'Thuộc tính download trong HTML5', 1, 'download,html', 1, 'HTML', 'http://localhost/HQMultimedia/SourceData/data/download.jpg', '<p>Tạo một li&ecirc;n kết tải về trong HTML th&igrave; đơn giản; th&ecirc;m một thẻ li&ecirc;n kết v&agrave; trỏ đến tập tin trong thuộc t&iacute;nh&nbsp;<code>href</code>. Tuy nhi&ecirc;n, một số loại tập tin, (chẳng hạn như h&igrave;nh ảnh, .pdf, .txt v&agrave; .doc) sẽ kh&ocirc;ng tải về được. Thay v&agrave;o đ&oacute;, ch&uacute;ng sẽ được mở ra trong tr&igrave;nh duyệt.</p>\r\n\r\n<p>Nếu bạn c&oacute; khả năng truy xuất đến m&aacute;y chủ chứa trang web của bạn th&igrave; c&oacute; một số giải ph&aacute;p m&agrave; bạn c&oacute; thể sử dụng, chẳng hạn như cấu h&igrave;nh&nbsp;<code>.htaccess</code>, để trực tiếp tải về c&aacute;c tập tin. Nếu trang web của bạn được lưu trữ với một dịch vụ miễn ph&iacute; như WordPress.com, Blogspot, hoặc c&oacute; thể Github Pages m&agrave; kh&ocirc;ng cho ph&eacute;p bạn l&agrave;m như vậy, th&igrave; h&atilde;y xem x&eacute;t sử dụng thuộc t&iacute;nh&nbsp;<code>download</code>.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Sử dụng thuộc t&iacute;nh &quot;Download&quot;</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Thuộc t&iacute;nh&nbsp;<code>download</code>&nbsp;l&agrave; một phần của HTML5 v&agrave; thể hiện một li&ecirc;n kết&nbsp;<em>tải về</em>&nbsp;chứ kh&ocirc;ng phải l&agrave; một li&ecirc;n kết&nbsp;<em>điều hướng</em>.</p>\r\n\r\n<p>Thuộc t&iacute;nh&nbsp;<code>download</code>&nbsp;cũng cho ph&eacute;p bạn đổi t&ecirc;n của tập tin sau khi tải về. Khi tập tin nằm tr&ecirc;n m&aacute;y chủ, đặc biệt l&agrave; nếu n&oacute; được tự động tạo ra, n&oacute; c&oacute; thể được đặt t&ecirc;n theo hệ thống v&agrave; dấu gạch ngang, v&iacute; dụ:&nbsp;<code>acme-doc-2.0.1.txt</code>. Sẽ tốt hơn nếu để cho người d&ugrave;ng nhận được c&aacute;c tập tin với một t&ecirc;n hợp l&yacute; hơn khi tải về, c&oacute; thể như:&nbsp;<code>Acme Documentation (ver.2.0.1).txt</code>&nbsp;(đừng qu&ecirc;n phần mở rộng tập tin).</p>\r\n\r\n<p>Cụ thể:</p>\r\n\r\n<div class=\"box-code-color margin-tb-15 padding-15\">\r\n<p>&lt;a download=&quot;Acme Documentation (ver. 2.0.1).txt&quot; href=&quot;download/acme-doc-2.0.1.txt&quot;&gt;Download Text&lt;/a&gt;</p>\r\n</div>\r\n', 'http://localhost/HQMultimedia/SourceData/data/download_thumb.jpg', '03/11/2023 12:40:18 PM', 'nguyenhaiquandh@gmail.com', 'nguyenhaiquandh@gmail.com'),
(49, 'Kiểm tra dữ liệu trước khi xoá', 2, 'Codeigniter,kiểm tra,codeigniter-thực thi', 1, 'Codeigniter', 'http://localhost/HQMultimedia/SourceData/data/delete.jpg', '<ul>\r\n	<li><strong>Kiểm tra dữ liệu trước khi xo&aacute;.</strong></li>\r\n</ul>\r\n\r\n<ol style=\"margin-left:40px\">\r\n	<li>Kiểm tra dữ liệu table con dựa tr&ecirc;n 1 column chung&nbsp;</li>\r\n	<li>Nếu table con kh&ocirc;ng c&oacute; dữ liệu mới cho delete</li>\r\n	<li>Ngược lại xuất ra th&ocirc;ng b&aacute;o&nbsp;flashdata thao t&aacute;c kh&ocirc;ng th&agrave;nh c&ocirc;ng.</li>\r\n</ol>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Controller</strong></p>\r\n\r\n<div class=\"color-10 margin-t-15 padding-15\">\r\n<p><span style=\"color:#ecf0f1\">public function delete( $id = NULL )</span><br />\r\n<span style=\"color:#ecf0f1\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; {</span></p>\r\n\r\n<p><span style=\"color:#ecf0f1\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; // Bước 1 : check login</span><br />\r\n<span style=\"color:#ecf0f1\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; $this-&gt;check_login_user();</span><br />\r\n<span style=\"color:#ecf0f1\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; // check dữ liệu của menu</span><br />\r\n<span style=\"color:#ecf0f1\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; // $dulieu_delete_check=$this-&gt; CrudMenuModel-&gt;get_data_delete($id)</span><br />\r\n<span style=\"color:#ecf0f1\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; // lấy dữ liệu img của data th&ocirc;ng qua id</span><br />\r\n<span style=\"color:#ecf0f1\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; if ($dulieu=$this-&gt; CrudMenuModel-&gt;get_data_delete($id))&nbsp;</span><br />\r\n<span style=\"color:#ecf0f1\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; {</span></p>\r\n\r\n<p><span style=\"color:#ecf0f1\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; // 04.D&ugrave;ng foeach để lấy dữ liệu nhận từ model</span></p>\r\n\r\n<p><span style=\"color:#ecf0f1\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; foreach ($dulieu as $key =&gt; $value)&nbsp;</span><br />\r\n<span style=\"color:#ecf0f1\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; {</span></p>\r\n\r\n<p><span style=\"color:#ecf0f1\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; $img_old = $value[&#39;menu_img&#39;]; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</span><br />\r\n<span style=\"color:#ecf0f1\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; $img_old_thumb = $value[&#39;menu_img_thumb&#39;];</span></p>\r\n\r\n<p><span style=\"color:#ecf0f1\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; // loại bỏ đường dẫn base_url</span><br />\r\n<span style=\"color:#ecf0f1\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; $img_old_unlink=ltrim($img_old,base_url());</span><br />\r\n<span style=\"color:#ecf0f1\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; $img_old_thumb_unlink= &nbsp;ltrim($img_old_thumb,base_url());</span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><br />\r\n<span style=\"color:#ecf0f1\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; }</span></p>\r\n\r\n<p><br />\r\n<span style=\"color:#ecf0f1\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; } &nbsp; &nbsp;</span></p>\r\n\r\n<p><span style=\"color:#ecf0f1\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; else {</span><br />\r\n<span style=\"color:#ecf0f1\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; $this-&gt;session-&gt;set_flashdata(&#39;message-flase&#39;,&#39;Kh&ocirc;ng thể delete khi table đang chứa dữ liệu ! Vui l&ograve;ng kiểm tra.&#39;);</span><br />\r\n<span style=\"color:#ecf0f1\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; redirect(base_url(&#39;admin/menu&#39;));</span><br />\r\n<span style=\"color:#ecf0f1\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; }</span></p>\r\n\r\n<p><br />\r\n<span style=\"color:#ecf0f1\">&nbsp; &nbsp; &nbsp; &nbsp; // Bước 3 : Gửi dữ liệu qua Model</span><br />\r\n<span style=\"color:#ecf0f1\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; $where = array(&#39;menu_id&#39; =&gt; $id );</span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><br />\r\n<span style=\"color:#ecf0f1\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; if ($this-&gt; CrudMenuModel-&gt;delete($where)) {</span></p>\r\n\r\n<p><span style=\"color:#ecf0f1\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; $img_basic=&quot;SourceData/update.jpg&quot;;</span></p>\r\n\r\n<p><span style=\"color:#ecf0f1\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; if ($img_old_unlink != $img_basic &amp;&amp; $img_old_thumb_unlink != $img_basic)</span><br />\r\n<span style=\"color:#ecf0f1\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; {</span><br />\r\n<span style=\"color:#ecf0f1\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; $file_unlink=unlink($img_old_unlink) &amp; unlink($img_old_thumb_unlink);</span><br />\r\n<span style=\"color:#ecf0f1\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; }</span></p>\r\n\r\n<p><span style=\"color:#ecf0f1\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; $this-&gt;session-&gt;set_flashdata(&#39;message-true&#39;,&#39;Delete th&agrave;nh c&ocirc;ng !&#39;);</span><br />\r\n<span style=\"color:#ecf0f1\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; redirect(base_url(&#39;admin/menu&#39;));</span><br />\r\n<span style=\"color:#ecf0f1\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; }</span><br />\r\n<span style=\"color:#ecf0f1\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; else {</span><br />\r\n<span style=\"color:#ecf0f1\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; $this-&gt;session-&gt;set_flashdata(&#39;message-flase&#39;,&#39;Delete thất bại !&#39;);</span><br />\r\n<span style=\"color:#ecf0f1\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; redirect(base_url(&#39;admin/menu&#39;));</span><br />\r\n<span style=\"color:#ecf0f1\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; }</span><br />\r\n<span style=\"color:#ecf0f1\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; }</span></p>\r\n</div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Model</strong></p>\r\n\r\n<div class=\"color-10 margin-t-15 padding-15\">\r\n<p><span style=\"color:#ecf0f1\">&nbsp; public function get_data_delete($id)</span><br />\r\n<span style=\"color:#ecf0f1\">&nbsp; &nbsp; {</span><br />\r\n<span style=\"color:#ecf0f1\">&nbsp; &nbsp; &nbsp; &nbsp;$this-&gt;db-&gt;select(&#39;*&#39;);</span><br />\r\n<span style=\"color:#ecf0f1\">&nbsp; &nbsp; &nbsp; &nbsp;$this-&gt;db-&gt;where(&#39;menu_id&#39;, $id);</span></p>\r\n\r\n<p><span style=\"color:#ecf0f1\">&nbsp; &nbsp; &nbsp; &nbsp;$dulieu=$this-&gt;db-&gt;get(&#39;menu&#39;);</span><br />\r\n<span style=\"color:#ecf0f1\">&nbsp; &nbsp; &nbsp; &nbsp;$dulieu=$dulieu-&gt;result_array();</span></p>\r\n\r\n<p><br />\r\n<span style=\"color:#ecf0f1\">&nbsp; &nbsp; &nbsp; &nbsp;foreach ($dulieu as $key =&gt; $value) {</span><br />\r\n<span style=\"color:#ecf0f1\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;# code...&nbsp;</span><br />\r\n<span style=\"color:#ecf0f1\">&nbsp; &nbsp; &nbsp; &nbsp; $menu_name=$value[&#39;menu_name&#39;];</span></p>\r\n\r\n<p><span style=\"color:#ecf0f1\">&nbsp; &nbsp; &nbsp; &nbsp;}</span><br />\r\n<span style=\"color:#ecf0f1\">&nbsp; &nbsp; &nbsp; &nbsp;</span><br />\r\n<span style=\"color:#fbeeb8\">&nbsp; &nbsp; &nbsp; &nbsp;// Kiểm tra table con của table menu</span><br />\r\n<span style=\"color:#ecf0f1\">&nbsp; &nbsp; &nbsp; &nbsp;$this-&gt;db-&gt;select(&#39;*&#39;);</span><br />\r\n<span style=\"color:#ecf0f1\">&nbsp; &nbsp; &nbsp; &nbsp;$this-&gt;db-&gt;where(&#39;menu_name&#39;, $menu_name);</span></p>\r\n\r\n<p><span style=\"color:#ecf0f1\">&nbsp; &nbsp; &nbsp; &nbsp;$dulieu_table_child=$this-&gt;db-&gt;get(&#39;data_category&#39;);</span><br />\r\n<span style=\"color:#ecf0f1\">&nbsp; &nbsp; &nbsp; &nbsp;$dulieu_table_child=$dulieu_table_child-&gt;result_array();</span></p>\r\n\r\n<p><span style=\"color:#ecf0f1\">&nbsp; &nbsp; &nbsp; &nbsp;</span><br />\r\n<span style=\"color:#ecf0f1\">&nbsp; &nbsp; &nbsp; &nbsp;if ($dulieu_table_child == NULL) {</span><br />\r\n<span style=\"color:#ecf0f1\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;# code...</span><br />\r\n<span style=\"color:#ecf0f1\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;return $dulieu;</span><br />\r\n<span style=\"color:#ecf0f1\">&nbsp; &nbsp; &nbsp; &nbsp;}</span></p>\r\n\r\n<p><span style=\"color:#ecf0f1\">&nbsp; &nbsp; &nbsp; &nbsp;</span></p>\r\n\r\n<p><span style=\"color:#ecf0f1\">&nbsp; &nbsp;}</span></p>\r\n</div>\r\n\r\n<p>&nbsp;</p>\r\n', 'http://localhost/HQMultimedia/SourceData/data/delete_thumb.jpg', '04/11/2023 02:54:57 PM', 'nguyenhaiquandh@gmail.com', 'nguyenhaiquandh@gmail.com'),
(50, 'Controller-Model basic', 1, 'source,codeigniter,controller-basic', 1, 'Codeigniter', 'http://localhost/HQMultimedia/SourceData/data/controller-model-view.jpg', '<ul>\r\n	<li><strong>Controller</strong></li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div class=\"color-10 padding-15\">\r\n<p><span style=\"color:#ecf0f1\">&nbsp; &nbsp; public function basic_source()</span><br />\r\n<span style=\"color:#ecf0f1\">&nbsp; &nbsp; {</span><br />\r\n<span style=\"color:#fbeeb8\">&nbsp; &nbsp; &nbsp; &nbsp; //Bước 1: check login</span><br />\r\n<span style=\"color:#ecf0f1\">&nbsp; &nbsp; &nbsp; &nbsp; $this-&gt;check_login_user();</span><br />\r\n<span style=\"color:#ecf0f1\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</span><br />\r\n<span style=\"color:#fbeeb8\">&nbsp; &nbsp; &nbsp; &nbsp; // 02.Gọi sang model</span></p>\r\n\r\n<p><span style=\"color:#ecf0f1\">&nbsp; &nbsp; &nbsp; &nbsp; $dulieu=$this-&gt; CrudDataModel-&gt;load_data_by_page ();</span><br />\r\n<span style=\"color:#ecf0f1\">&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</span><br />\r\n<span style=\"color:#fbeeb8\">&nbsp; &nbsp; &nbsp; &nbsp; // 03.Dữ liệu nhận từ model</span><br />\r\n<span style=\"color:#ecf0f1\">&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</span><br />\r\n<span style=\"color:#ecf0f1\">&nbsp; &nbsp; &nbsp; &nbsp; $data=$dulieu[&#39;data&#39;];</span><br />\r\n<span style=\"color:#ecf0f1\">&nbsp; &nbsp; &nbsp; &nbsp; $number_page=$dulieu[&#39;number_page&#39;];</span><br />\r\n<span style=\"color:#fbeeb8\">&nbsp; &nbsp; &nbsp; &nbsp; // foreach nếu cần</span></p>\r\n\r\n<p><span style=\"color:#fbeeb8\">&nbsp; &nbsp; &nbsp; &nbsp; // 04.Tạo mảng gửi dữ liệu đến view</span><br />\r\n<span style=\"color:#ecf0f1\">&nbsp; &nbsp; &nbsp; &nbsp; $mangdulieu = array(</span><br />\r\n<span style=\"color:#ecf0f1\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</span><br />\r\n<span style=\"color:#ecf0f1\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &#39;data&#39; =&gt;$data,</span><br />\r\n<span style=\"color:#ecf0f1\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &#39;number_page&#39; =&gt;$number_page</span></p>\r\n\r\n<p><span style=\"color:#ecf0f1\">&nbsp; &nbsp; &nbsp; &nbsp; );</span><br />\r\n<span style=\"color:#fbeeb8\">&nbsp; &nbsp; &nbsp; &nbsp; // 05.Load view k&egrave;m mảng dữ liệu</span><br />\r\n<span style=\"color:#ecf0f1\">&nbsp; &nbsp; &nbsp; &nbsp; $this-&gt;load-&gt;view(&#39;admin/viewLoad/view-all-data&#39;,$mangdulieu);</span><br />\r\n<span style=\"color:#ecf0f1\">&nbsp;}</span></p>\r\n</div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ul>\r\n	<li><strong>Model</strong></li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div class=\"color-10 padding-15\">\r\n<p><span style=\"color:#ecf0f1\">public function model_basic_source()</span><br />\r\n<span style=\"color:#ecf0f1\">&nbsp;{</span><br />\r\n<span style=\"color:#ecf0f1\">&nbsp; &nbsp; &nbsp;</span><br />\r\n<span style=\"color:#ecf0f1\">&nbsp; &nbsp; $this-&gt;db-&gt;select(&#39;*&#39;);</span><br />\r\n<span style=\"color:#ecf0f1\">&nbsp; &nbsp; $this-&gt;db-&gt;order_by(&#39;data_id&#39;, &#39;desc&#39;);</span><br />\r\n<span style=\"color:#ecf0f1\">&nbsp; &nbsp; $this-&gt;db-&gt;where(&#39;Field / comparison&#39;, $Value);</span><br />\r\n<span style=\"color:#ecf0f1\">&nbsp; &nbsp; $data=$this-&gt;db-&gt;get(&#39;data&#39;);</span></p>\r\n\r\n<p><span style=\"color:#ecf0f1\">&nbsp; &nbsp; $data=$data-&gt;result_array();</span></p>\r\n\r\n<p><span style=\"color:#fbeeb8\">&nbsp; &nbsp; // Tạo mảng gửi dữ liệu sang Controller</span><br />\r\n<span style=\"color:#ecf0f1\">&nbsp; &nbsp; $dulieu = array(</span><br />\r\n<span style=\"color:#ecf0f1\">&nbsp; &nbsp; &nbsp; &nbsp; &#39;data&#39; =&gt; $data</span></p>\r\n\r\n<p><span style=\"color:#ecf0f1\">&nbsp; &nbsp; );</span><br />\r\n<span style=\"color:#ecf0f1\">&nbsp; &nbsp; return $dulieu;</span><br />\r\n<span style=\"color:#ecf0f1\">&nbsp;}</span></p>\r\n</div>\r\n', 'http://localhost/HQMultimedia/SourceData/data/controller-model-view_thumb.jpg', '04/11/2023 03:38:38 PM', 'nguyenhaiquandh@gmail.com', 'nguyenhaiquandh@gmail.com');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `data_attached`
--

CREATE TABLE `data_attached` (
  `data_attached_id` int(11) NOT NULL,
  `data_id` int(11) NOT NULL,
  `data_attached_json` longtext COLLATE utf8_vietnamese_ci NOT NULL,
  `data_attached_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `data_attached`
--

INSERT INTO `data_attached` (`data_attached_id`, `data_id`, `data_attached_json`, `data_attached_status`) VALUES
(40, 50, '[{\"file_name\":\"1014.jpg\",\"url\":\"http:\\/\\/localhost\\/HQMultimedia\\/SourceData\\/data_attached\\/1014.jpg\",\"uploaded_on\":\"2023-11-08 23:17:48\",\"data_type\":\"image\\/jpeg\"},{\"file_name\":\"hqcss_github_io.rar\",\"url\":\"http:\\/\\/localhost\\/HQMultimedia\\/SourceData\\/data_attached\\/hqcss_github_io.rar\",\"uploaded_on\":\"2023-11-08 23:17:48\",\"data_type\":\"application\\/octet-stream\"}]', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `data_category`
--

CREATE TABLE `data_category` (
  `category_id` int(11) NOT NULL,
  `menu_name` varchar(255) COLLATE utf8_vietnamese_ci NOT NULL,
  `category_name` varchar(255) COLLATE utf8_vietnamese_ci NOT NULL,
  `category_status` int(11) NOT NULL,
  `category_img` text COLLATE utf8_vietnamese_ci NOT NULL,
  `category_img_thumb` text COLLATE utf8_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `data_category`
--

INSERT INTO `data_category` (`category_id`, `menu_name`, `category_name`, `category_status`, `category_img`, `category_img_thumb`) VALUES
(90, 'Template Color', 'Poster Color', 1, 'http://localhost/HQMultimedia/SourceData/category/366341863_3336491523309104_3322939213646265137_n.jpg', 'http://localhost/HQMultimedia/SourceData/category/366341863_3336491523309104_3322939213646265137_n_thumb.jpg'),
(91, 'Template Color', 'Web Color', 1, 'http://localhost/HQMultimedia/SourceData/category/363805404_972748457279198_3505406681834961281_n.jpg', 'http://localhost/HQMultimedia/SourceData/category/363805404_972748457279198_3505406681834961281_n_thumb.jpg'),
(98, 'Thiết kế web', 'CSS', 1, 'http://localhost/HQMultimedia/SourceData/category/362948234_670332465142104_4801475468638754525_n.jpg', 'http://localhost/HQMultimedia/SourceData/category/362948234_670332465142104_4801475468638754525_n_thumb.jpg'),
(99, 'Thiết kế web', 'Jquery', 1, 'http://localhost/HQMultimedia/SourceData/category/376490274_3564892323831615_4625406984313045885_n.jpg', 'http://localhost/HQMultimedia/SourceData/category/376490274_3564892323831615_4625406984313045885_n_thumb.jpg'),
(100, 'Thiết kế web', 'Codeigniter', 1, 'http://localhost/HQMultimedia/SourceData/category/07-27-38codeiginter-header-banner.jpg', 'http://localhost/HQMultimedia/SourceData/category/07-27-38codeiginter-header-banner_thumb.jpg'),
(101, 'Nguyên lý thiết kế', 'Bố cục thiết kế', 1, 'http://localhost/HQMultimedia/SourceData/category/366316353_3336491596642430_3312553931880283071_n.jpg', 'http://localhost/HQMultimedia/SourceData/category/366316353_3336491596642430_3312553931880283071_n_thumb.jpg'),
(105, 'Thiết kế web', 'Plugin', 1, 'http://localhost/HQMultimedia/SourceData/category/Untitled-1.png', 'http://localhost/HQMultimedia/SourceData/category/Untitled-1_thumb.png'),
(106, 'Thiết kế web', 'HTML', 1, 'http://localhost/HQMultimedia/SourceData/category/HTML-2.jpg', 'http://localhost/HQMultimedia/SourceData/category/HTML-2_thumb.jpg'),
(107, 'Thiết kế web', 'Angular', 1, 'http://localhost/HQMultimedia/SourceData/category/angular.png', 'http://localhost/HQMultimedia/SourceData/category/angular_thumb.png');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `menu`
--

CREATE TABLE `menu` (
  `menu_id` int(11) NOT NULL,
  `menu_name` varchar(255) COLLATE utf8_vietnamese_ci NOT NULL,
  `menu_status` int(11) NOT NULL,
  `menu_img` text COLLATE utf8_vietnamese_ci NOT NULL,
  `menu_img_thumb` text COLLATE utf8_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `menu`
--

INSERT INTO `menu` (`menu_id`, `menu_name`, `menu_status`, `menu_img`, `menu_img_thumb`) VALUES
(2, 'Template Color', 1, 'http://localhost/HQMultimedia/SourceData/menu/366316353_3336491596642430_3312553931880283071_n.jpg', 'http://localhost/HQMultimedia/SourceData/menu/366316353_3336491596642430_3312553931880283071_n_thumb.jpg'),
(3, 'Thiết kế web', 1, 'http://localhost/HQMultimedia/SourceData/menu/337501125_6498962106788754_7326652433016012834_n.jpg', 'http://localhost/HQMultimedia/SourceData/menu/337501125_6498962106788754_7326652433016012834_n_thumb.jpg'),
(5, 'Chỉnh sửa ảnh', 0, 'http://localhost/HQMultimedia/SourceData/menu/379.jpg', 'http://localhost/HQMultimedia/SourceData/menu/379_thumb.jpg'),
(10, 'Dựng Phim', 1, 'http://localhost/HQMultimedia/SourceData/update.jpg', 'http://localhost/HQMultimedia/SourceData/update.jpg'),
(11, 'Tạp chí', 1, 'http://localhost/HQMultimedia/SourceData/update.jpg', 'http://localhost/HQMultimedia/SourceData/update.jpg'),
(12, 'Poster', 1, 'http://localhost/HQMultimedia/SourceData/update.jpg', 'http://localhost/HQMultimedia/SourceData/update.jpg'),
(13, 'Nguyên lý thiết kế', 1, 'http://localhost/HQMultimedia/SourceData/update.jpg', 'http://localhost/HQMultimedia/SourceData/update.jpg'),
(19, 'Tài Nguyên', 1, 'http://localhost/HQMultimedia/SourceData/update.jpg', 'http://localhost/HQMultimedia/SourceData/update.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `rating_comment_data`
--

CREATE TABLE `rating_comment_data` (
  `rating_comment_id` int(11) NOT NULL,
  `data_id` int(11) NOT NULL,
  `user` varchar(255) COLLATE utf8_vietnamese_ci NOT NULL,
  `comment` longtext COLLATE utf8_vietnamese_ci NOT NULL,
  `rating` int(11) NOT NULL,
  `rating_comment_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `rating_comment_data`
--

INSERT INTO `rating_comment_data` (`rating_comment_id`, `data_id`, `user`, `comment`, `rating`, `rating_comment_status`) VALUES
(12, 47, 'nguyenhaiquandh@gmail.com', 'Test\r\n', 5, 0),
(13, 43, 'nguyenhaiquandh@gmail.com', 'Test comment !\r\n', 5, 0);

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
(10, 'nguyenhaiquandh@gmail.com', 'c51cd8e64b0aeb778364765013df9ebe', 'http://localhost/2023-HQ-Multimedia-WebBackend/Login-Register/SourceData/avatar_basic.jpg', 'http://localhost/2023-HQ-Multimedia-WebBackend/Login-Register/SourceData/avatar_basic.jpg', 1),
(12, 'phatdatmaimaisaunay@gmail.com', 'c51cd8e64b0aeb778364765013df9ebe', 'http://localhost/HQMultimedia/SourceData/avatar_basic.jpg', 'http://localhost/HQMultimedia/SourceData/avatar_basic.jpg', 1);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `data`
--
ALTER TABLE `data`
  ADD PRIMARY KEY (`data_id`);

--
-- Chỉ mục cho bảng `data_attached`
--
ALTER TABLE `data_attached`
  ADD PRIMARY KEY (`data_attached_id`);

--
-- Chỉ mục cho bảng `data_category`
--
ALTER TABLE `data_category`
  ADD PRIMARY KEY (`category_id`);

--
-- Chỉ mục cho bảng `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`menu_id`);

--
-- Chỉ mục cho bảng `rating_comment_data`
--
ALTER TABLE `rating_comment_data`
  ADD PRIMARY KEY (`rating_comment_id`),
  ADD KEY `data_id` (`data_id`);

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
  MODIFY `data_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT cho bảng `data_attached`
--
ALTER TABLE `data_attached`
  MODIFY `data_attached_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT cho bảng `data_category`
--
ALTER TABLE `data_category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111;

--
-- AUTO_INCREMENT cho bảng `menu`
--
ALTER TABLE `menu`
  MODIFY `menu_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT cho bảng `rating_comment_data`
--
ALTER TABLE `rating_comment_data`
  MODIFY `rating_comment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `rating_comment_data`
--
ALTER TABLE `rating_comment_data`
  ADD CONSTRAINT `rating_comment_data_ibfk_1` FOREIGN KEY (`data_id`) REFERENCES `data` (`data_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
