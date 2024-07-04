<?php
defined('BASEPATH') OR exit('No direct script access allowed');

/*
| -------------------------------------------------------------------------
| URI ROUTING
| -------------------------------------------------------------------------
| This file lets you re-map URI requests to specific controller functions.
|
| Typically there is a one-to-one relationship between a URL string
| and its corresponding controller class/method. The segments in a
| URL normally follow this pattern:
|
|	example.com/class/method/id/
|
| In some instances, however, you may want to remap this relationship
| so that a different class/function is called than the one
| corresponding to the URL.
|
| Please see the user guide for complete details:
|
|	https://codeigniter.com/user_guide/general/routing.html
|
| -------------------------------------------------------------------------
| RESERVED ROUTES
| -------------------------------------------------------------------------
|
| There are three reserved routes:
|
|	$route['default_controller'] = 'welcome';
|
| This route indicates which controller class should be loaded if the
| URI contains no data. In the above example, the "welcome" class
| would be loaded.
|
|	$route['404_override'] = 'errors/page_missing';
|
| This route will tell the Router which controller/method to use if those
| provided in the URL cannot be matched to a valid route.
|
|	$route['translate_uri_dashes'] = FALSE;
|
| This is not exactly a route, but allows you to automatically route
| controller and method names that contain dashes. '-' isn't a valid
| class or method name character, so it requires translation.
| When you set this option to TRUE, it will replace ALL dashes in the
| controller and method URI segments.
|
| Examples:	my-controller/index	-> my_controller/index
|		my-controller/my-method	-> my_controller/my_method
*/
// $route['404_override'] = '';
// $route['translate_uri_dashes'] = FALSE;

// ---------------------------------------------------------------------------------------- Admin

$route['admin/home'] = 'admin/Welcome';

// hàm thực thi ngầm

// ----------------------------------------------------------ANGULARJS-UPLOAD FILE
$route['admin/upload_file/(:any)'] = 'admin/AngularUploadFileController/uploadFileAngularJs/$1';



$route['admin/upload_file_json/(:any)'] = 'admin/CrudDataAttachedController/uploadFileJson/$1';

// Thêm mới
$route['admin/insert_data_attached/(:any)'] = 'admin/CrudDataAttachedController/insert_data_attached/$1';
// Cập nhật
$route['admin/update_data_attached/(:any)'] = 'admin/CrudDataAttachedController/update_data_attached/$1';


// get data attached
$route['admin/get_data_attached_image'] = 'admin/CrudDataAttachedController/get_data_attached_image';
$route['admin/get_data_attached_video'] = 'admin/CrudDataAttachedController/get_data_attached_video';
$route['admin/get_data_attached_file'] = 'admin/CrudDataAttachedController/get_data_attached_file';


// delete one item galery
$route['admin/delete_item_data_attached_image'] = 'admin/CrudDataAttachedController/delete_item_data_attached_image';

$route['admin/delete_item_data_attached_video'] = 'admin/CrudDataAttachedController/delete_item_data_attached_video';

$route['admin/delete_item_data_attached_file'] = 'admin/CrudDataAttachedController/delete_item_data_attached_file';




// delete all item galery
$route['admin/delete_all_data_attached_image'] = 'admin/CrudDataAttachedController/delete_all_data_attached_image';


$route['admin/delete_all_data_attached_video'] = 'admin/CrudDataAttachedController/delete_all_data_attached_video';


$route['admin/delete_all_data_attached_file'] = 'admin/CrudDataAttachedController/delete_all_data_attached_file';


// // Posts Add

// $route['admin/view-add-posts'] = 'admin/CrudDataController/view_add_posts';
// $route['admin/add-posts-act'] = 'admin/CrudDataController/add';
// $route['admin/notification-add/(:num)'] = 'admin/CrudDataController/view_notification_add/$1';


// // Posts Edit
// $route['admin/edit-posts/(:num)'] = 'admin/CrudDataController/view_update_posts/$1';
// $route['admin/update-posts-act'] = 'admin/CrudDataController/update';
// $route['admin/notification-update'] = 'admin/CrudDataController/view_notification_update';

// $route['admin/posts'] = 'admin/CrudDataController/get_all';
// $route['admin/thongbao'] = 'admin/CrudDataController/view_thongbao';





// User
// $route['admin/destroy_avatar_old'] = 'admin/CrudUserController/destroy_avatar_old';
















// ---------------------------------------------------------------------------------Front-end

// Trang home
$route['default_controller'] = 'welcome';
$route['home'] = 'welcome';

$route['get_banner_qc/(:any)'] = 'BannerController/get_banner_qc/$1';
$route['get_banner_qc_array/(:any)'] = 'BannerController/get_banner_qc_array/$1';






// Trang load data dựa trên menu con (category)
$route['category/(:num)/(:any)'] = 'CategoryController/index/$1/$2';
// Trang hiển thị dữ liệu bài viết
$route['(:any)-(:num)'] = 'PostsController/index/$1/$2';


