<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class CrudDataController extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		$this->load->model('admin/CrudPostsModel');
		date_default_timezone_set("Asia/Ho_Chi_Minh");
		//Load Dependencies

	}
	public function check_login_user()
	{
		if ( $this->session->has_userdata('username')
			&& $this->session->has_userdata('level')) {
			
		}else{
			// $this->session->set_flashdata('message-flase','Vui lòng đăng nhập để có quyền truy cập !');
			redirect(base_url('admin-panel/login'));
		}
	}
	// public function view_notification_add($id_add)
	// {
	// 	$this->load->view('admin/view-notification/view-notification-add',$id_add, FALSE);
		
	// }
	// public function view_notification_update()
	// {
	// 	$this->load->view('admin/view-notification/view-notification-update');
	// }

	public function locdautiengviet($string)
	{
		if(!$string) return false;
		$unicode = array(
			'a'=>'á|Á|à|À|ả|Ả|ã|Ã|ạ|Ạ|ă|Ă|ắ|Ắ|ặ|Ặ|ằ|Ằ|ẳ|Ẳ|ẵ|Ẵ|â|Â|ấ|Ấ|ầ|Ầ|ẩ|Ẩ|ẫ|Ẫ|ậ|Ậ',
			'd'=>'đ|Đ',
			'e'=>'é|É|è|È|ẻ|Ẻ|ẽ|Ẽ|ẹ|Ẹ|ê|Ê|ế|Ế|ề|Ề|ể|Ể|ễ|Ễ|ệ|Ệ',
			'i'=>'í|Í|ì|Ì|ỉ|Ỉ|ĩ|Ĩ|ị|Ị',
			'o'=>'ó|Ó|ò|Ò|ỏ|Ỏ|õ|Õ|ọ|Ọ|ô|Ô|ố|Ố|ồ|Ồ|ổ|Ổ|ỗ|Ỗ|ộ|Ộ|ơ|Ơ|ớ|Ớ|ờ|Ờ|ở|Ở|ỡ|Ỡ|ợ|Ợ',
			'u'=>'ú|Ú|ù|Ù|ủ|Ủ|ũ|Ũ|ụ|Ụ|ư|Ư|ứ|Ứ|ừ|Ừ|ử|Ử|ữ|Ữ|ự|Ự',
			'y'=>'ý|Ý|ỳ|Ỳ|ỷ|Ỷ|ỹ|Ỹ|ỵ|Ỵ',
		);
		foreach($unicode as $nonUnicode=>$uni)
		{
			$string = preg_replace("/($uni)/i",$nonUnicode,$string);
		}
		return $string;
	}
	// List all your items
	public function index( $offset = 0 )
	{

	}
	// function get_all_user áp dụng khi muốn lấy tất cả dữ liệu về trong 1 lần tải
	public function get_posts_unactive()
	{
		$dl=$this-> CrudPostsModel->get_posts_unactive();
		$dl=json_encode($dl);
		echo($dl);
	}
	public function ConfirmPosts_Active()
	{
		$id_posts=$this->input->post('id_posts');
		$where = array('data_id' => $id_posts);
		$mangdulieu = array(

			'data_status' => 1


		);

		if ($this-> CrudPostsModel->update($mangdulieu,$where)) {
			echo "Active thành công";
		}
		

	}
	public function ConfirmPosts_UnActive()
	{
		$id_posts=$this->input->post('id_posts');
		$where = array('data_id' => $id_posts);
		$mangdulieu = array(

			'data_status' => 0


		);
		$this-> CrudPostsModel->update($mangdulieu,$where);



	}
	public function ConfirmPosts_Redress()
	{
		$id_posts=$this->input->post('id_posts');
		$where = array('data_id' => $id_posts);
		$mangdulieu = array(

			'data_status' => 2


		);
		$this-> CrudPostsModel->update($mangdulieu,$where);

	}
	public function preview_posts()
	{
		$data_id=$this->input->post('id');
		$preview_posts=$this-> CrudPostsModel->preview_posts($data_id);
		$preview_posts=json_encode($preview_posts);
		echo($preview_posts);
	}
	public function get_all()
	{

		$user_level=$this->session->userdata('level');
		$user_id=$this->session->userdata('id');
		// lấy dữ liệu của user 
		$user_name=$this-> CrudPostsModel->get_data_user($user_id);
		
		// End lấy dữ liệu của user

		if ($user_level == 3 or $user_level == 1) 
		{
			# code...
			$dl=$this-> CrudPostsModel->get_all_data(); 
		}else
		{
			$dl=$this-> CrudPostsModel->get_data_by_ctv($user_name);
		}

		// chuyen thanh json
		$dl=json_encode($dl);
		echo($dl);

	}
	public function get_data_box_trash()
	{
	    $dl=$this-> CrudPostsModel->get_data_box_trash();
	    $dl=json_encode($dl);
		echo($dl);
	}
	// Add a new item
	public function get_data_view_add_posts()
	{
		$dl=$this-> CrudPostsModel->data_view_add_posts();
	   // chuyen thanh json
		$dl=json_encode($dl);
		echo($dl);
	}
	

	public function test_get_json()
	{
		$test=$this-> CrudPostsModel->get_notification_rom();
		$test=json_decode($test,true);
		$count=count($test);
		$dulieu = array();
		for($i = 0; $i < $count; $i++)
		{	
	    	// lấy id qua vòng lặp for
			$data_id=$test[$i];
	   		// get dữ liệu từ id 

			$data_posts=$this-> CrudPostsModel->test_get_data_posts_for($data_id);
	    	// qua mỗi lần lặp sẽ push dữ liệu vào mảng
			array_push($dulieu, $data_posts);





		}

		foreach ($dulieu as $key => $value) {
	   	    	# code...
			foreach ($value as $key => $value_2) {
	   	    		# code...
				echo $value_2['data_id'];
			}
		}

	}


	public function add()
	{
		$name=$this->input->post('posts_name');
		$category_id=$this->input->post('category_id');
		$tags=$this->input->post('posts_tags');
		$sort=$this->input->post('posts_sort');
		$content=$this->input->post('posts_content');

		// $content=$this->input->post('posts_content');
		$user_id=$this->session->userdata('id');
		$img=$this->input->post('posts_img');
		$img_thumb=$this->input->post('posts_img_thumb');
		
		if ($img == NULL) {
			$img= base_url()."SourceData/update.jpg";
			$img_thumb= base_url()."SourceData/update.jpg";
			
		}
		// get user_name
		$user_name=$this-> CrudPostsModel->get_data_user($user_id);
		// end get user_name

		// hàm xử lý chuỗi thành chuỗi không dấu
		$url_convert=strtolower($this->locdautiengviet($name));
		// tách chuỗi thành mảng
		$url_convert = explode(' ', $url_convert);

		// nối lại các ký tự trong mảng
		$url_convert=implode('-', $url_convert);



		// End hàm xử lý chuỗi thành chuỗi không dấu


		$time= date("d/m/Y h:i:s A");



				// tạo mảng dữ liệu gửi qua crud model
		$mangdulieu = array
		(
			'data_name' => $name,
			'data_url' => $url_convert,
			'data_img' => $img,
			'data_img_thumb'=>$img_thumb,
			'menu_id'=>$category_id,
			'data_tags'=>$tags,
			'data_status'=>'0',
			'data_sort'=> $sort,
			'data_content'=>$content,
			'data_date'=>$time,
			'user'=>$user_name

		);
		if ($this-> CrudPostsModel->insert($mangdulieu)) {
			# code...
			echo "thêm thành công";
		}

	}
	// public function add2()
	// {
		

		
		
	// 	// $check dùng để kiểm tra có button upload file có được submit hay ko ?
	// 	$check = basename($_FILES["source_file"]["name"]);
	// 		// empty($this->input->post('source_file'))

	// 			// Bước 2.1.1 ( có chọn upload ảnh)
	// 	if ($check){
	// 				// Bước 1 gọi đến hàm upload sẵn có trong codeigniter phím tắt : upload
	// 				// hàm upload ảnh
	// 		$config['upload_path'] = './SourceData/data/';
	// 		$config['allowed_types'] = 'gif|jpg|jpeg|png|mp4|rar';
	// 		$config['max_size']  = '1000000';
	// 		$this->load->library('upload', $config);

	// 				// nếu tồn tại lỗi thì thực thi
	// 		if ( ! $this->upload->do_upload('source_file')){

	// 			$error = array('error' => $this->upload->display_errors());
	// 			$this->session->set_flashdata('message-act-file','------định dạng file upload không phù hợp ! ');

	// 			redirect('admin/add-data','refresh');

	// 		}
	// 				// không tồn tại lỗi thì
	// 		else{
	// 			$dulieuanh=$this->upload->data();
	// 				// bước 2: phan resize anh
	// 			$config['image_library'] = 'gd2';
	// 			$config['source_image'] = 'SourceData/data/'.$dulieuanh['file_name'];
	// 			$config['create_thumb'] = TRUE;
	// 					// True là giữ nguyên tỷ lệ ảnh
	// 			$config['maintain_ratio'] = TRUE;
	// 			$config['width']         = 600;
	// 			$config['height']       = 800;
	// 					$config['master_dim']       = 'width'; // kiểm soát theo chiều cao
	// 					$this->load->library('image_lib', $config);
	// 					$this->image_lib->initialize($config);
	// 					$this->image_lib->resize();
	// 					$img=base_url().'SourceData/data/'.$dulieuanh['file_name'];
	// 					$img_thumb=base_url().'SourceData/data/'.$dulieuanh['raw_name']."_thumb".$dulieuanh['file_ext'];
	// 				}
	// 					// kết thúc hàm upload



	// 			}// End Bước 2.1.1

				
	// 			// Bước 2.1.2 ( Không upload ảnh )
				
	// 			else


	// 			{
	// 				$img= base_url()."SourceData/update.jpg";
	// 				$img_thumb= base_url()."SourceData/update.jpg";
	// 			}
	// 			// bước 2.2 :Lấy dữ liệu từ view insert
	// 			$posts_name=$this->input->post('posts_name');
				
	// 			$category_id=$this->input->post('category_id');
	// 			$data_tags=$this->input->post('data_tags');
	// 			$data_sort=$this->input->post('data_sort');
	// 			$data_content=$this->input->post('content');
	// 			$user_id=$this->session->userdata('id');
				
	// 			// get user_name
	// 			$user_name=$this-> CrudPostsModel->get_data_user($user_id);
	// 			// end get user_name

	// 			// hàm xử lý chuỗi thành chuỗi không dấu
	// 			$posts_url_convert=strtolower($this->locdautiengviet($posts_name));
	// 			// tách chuỗi thành mảng
	// 			$posts_url_convert = explode(' ', $posts_url_convert);

	// 			// nối lại các ký tự trong mảng
	// 			$posts_url_convert=implode('-', $posts_url_convert);

				
				
	// 			// End hàm xử lý chuỗi thành chuỗi không dấu
				

	// 			$date_time= date("d/m/Y h:i:s A");

				

	// 			// tạo mảng dữ liệu gửi qua crud model
	// 			$mangdulieu = array
	// 			(
	// 				'data_name' => $posts_name,
	// 				'data_url' => $posts_url_convert,
	// 				'data_img' => $img,
	// 				'data_img_thumb'=>$img_thumb,
	// 				'menu_id'=>$category_id,
	// 				'data_tags'=>$data_tags,
	// 				'data_status'=>'0',
	// 				'data_sort'=> $data_sort,
	// 				'data_content'=>$data_content,
	// 				'data_date'=>$date_time,
	// 				'user'=>$user_name

	// 			);

	// 			// hàm insert sẽ trả về id mới thêm
	// 			$new_id=$this-> CrudPostsModel->insert($mangdulieu);


	// 			// $$dl_notification_rom có thể chứa dữ của notification-posts hoặc bất kỳ notification nào tuỳ theo foreach trả về
	// 			$dl_notification_posts=$this-> CrudPostsModel-> get_notification_rom();
	// 			// If là TH ko có dữ liệu hoặc đã reset dữ liệu  
	// 			if ($dl_notification_posts == NULL) {
	// 			# code...
	// 				$dl_notification_posts = array();
	// 				$dl_notification_posts=json_encode($dl_notification_posts);
	// 			}
	// 			// else là TH đã có dữ liệu thì phải chuyển từ json về lại mảng để push
	// 			else
	// 			{
	// 				$dl_notification_posts=json_decode($dl_notification_posts,true);
	// 			}

	// 			if ($new_id) {
	// 				# code...
	// 				// push id mới thêm vào bảng notification-rom -> dòng notification-posts	
	// 				array_push($dl_notification_posts, $new_id);
	// 				// chuyển từ mảng về json để thêm vào CSDL
	// 				$dl_notification_posts=json_encode($dl_notification_posts);
	// 				// thêm vào CSDL id này mặc định ko xoá và sẽ luôn tồn tại
	// 				$id_notification_rom='1';
	// 				$this-> CrudPostsModel-> add_notification_posts($id_notification_rom,$dl_notification_posts);

	// 			}
				

	// 			// bước 2.3 :Truyền dữ liệu sang model
	// 			if ($new_id) {
					
	// 				// array_push($data_new_posts, $id_add);
	// 				// var_dump($data_new_posts);
	// 				// $count=count($data_new_posts);
	// 				// echo $count;
	// 				// die();
	// 				$this->session->set_flashdata('message-true','Insert thành công !');
	// 				redirect(base_url('admin/notification-add/'.$new_id));
					
	// 			}
	// 			else
	// 			{
	// 				$this->session->set_flashdata('message-flase','Data đã tồn tại !');
	// 				redirect(base_url('admin/notification-add/'));
	// 				$this->return();
	// 			}

	// 		}	








		// 	public function view_update_posts($id_posts)
		// 	{
		// 		$dl_update = $this->CrudPostsModel -> dl_update ($id_posts);
		// // data menu con (category);
		// 		$dl_update_data_category = $this->CrudPostsModel -> dl_update_data_category ();

		// 		$mangdl = array(
		// 			'data_update' =>$dl_update,
		// 			'dl_update_data_category' =>$dl_update_data_category

		// 		);
		// 		$this->load->view('admin/view-update/view-update-posts',$mangdl);
		// 	}
	//Update one item
	
	public function update2( $id = NULL )
	{
				$img_old=$this->input->post('posts_img_old');
				$img_thumb_old=$this->input->post('posts_img_thumb_old');
			// $check dùng để kiểm tra có button upload file có được submit hay ko ?
				$check = basename($_FILES["source_file"]["name"]);

			// Bước 2.1.1 ( có chọn upload ảnh)
				if ($check)
				{
			// unlink img_old
					$img_old_unlink=  ltrim($img_old,base_url());
					$img_old_thumb_unlink=  ltrim($img_thumb_old,base_url());
					$img_basic="SourceData/update.jpg";

					if ($img_old_unlink != $img_basic && $img_old_thumb_unlink != $img_basic)
					{
						$file_unlink=unlink($img_old_unlink) & unlink($img_old_thumb_unlink);
					}
			// Bước 1 gọi đến hàm upload sẵn có trong codeigniter phím tắt : upload
			// hàm upload ảnh
					$config['upload_path'] = './SourceData/data/';
					$config['allowed_types'] = 'gif|jpg|jpeg|png|mp4|rar';
					$config['max_size']  = '1000000';
					$this->load->library('upload', $config);

			// nếu tồn tại lỗi thì thực thi
					if ( ! $this->upload->do_upload('source_file')){

						$error = array('error' => $this->upload->display_errors());
						$this->session->set_flashdata('message-act-file','------định dạng file upload không phù hợp ! ');

						redirect('admin/add-data','refresh');

					}
					// không tồn tại lỗi thì
					else{
						$dulieuanh=$this->upload->data();
					// bước 2: phan resize anh
						$config['image_library'] = 'gd2';
						$config['source_image'] = 'SourceData/data/'.$dulieuanh['file_name'];
						$config['create_thumb'] = TRUE;
						// True là giữ nguyên tỷ lệ ảnh
						$config['maintain_ratio'] = TRUE;
						$config['width']         = 600;
						$config['height']       = 800;
						$config['master_dim']       = 'width'; // kiểm soát theo chiều cao
						$this->load->library('image_lib', $config);
						$this->image_lib->initialize($config);
						$this->image_lib->resize();
						$img=base_url().'SourceData/data/'.$dulieuanh['file_name'];
						$img_thumb=base_url().'SourceData/data/'.$dulieuanh['raw_name']."_thumb".$dulieuanh['file_ext'];
					}
						// kết thúc hàm upload

		}// End Bước 2.1.1


				// Bước 2.1.2 ( Không upload ảnh )

		else
		{
			$img= $img_old;
			$img_thumb= $img_thumb_old;
		}
		// bước 2.2 :Lấy dữ liệu từ view insert
		$posts_id=$this->input->post('posts_id');
		$posts_name=$this->input->post('posts_name');
				// hàm xử lý chuỗi thành chuỗi không dấu
		$posts_url_convert=strtolower($this->locdautiengviet($posts_name));
				// tách chuỗi thành mảng
		$posts_url_convert = explode(' ', $posts_url_convert);

				// nối lại các ký tự trong mảng
		$posts_url_convert=implode('-', $posts_url_convert);



				// End hàm xử lý chuỗi thành chuỗi không dấu

		$category_id=$this->input->post('category_id');
		$data_tags=$this->input->post('data_tags');
		$data_sort=$this->input->post('data_sort');
		$data_content=$this->input->post('content');
		$user_id=$this->session->userdata('id');

		$where = array('data_id' => $posts_id);
		$mangdulieu = array(

			'data_content' => $data_content,
			'menu_id' => $category_id,
			'data_tags' => $data_tags,
			'data_name' => $posts_name,
			'data_url' => $posts_url_convert,
			'data_img' => $img,
			'data_img_thumb' => $img_thumb,
			'data_status' => 0,
			'date_update' =>date("d-m-Y H:i:s")

		);
		if ($this-> CrudPostsModel->update($mangdulieu,$where)) {
					# code...
			$this->session->set_flashdata('message-true','Update thành công !');
			redirect(base_url('admin/notification-update'));
		}


				// echo $posts_name;
				// echo "<br>";
				// echo $category_id;
				// echo "<br>";
				// echo $data_tags;
				// echo "<br>";
				// echo $data_sort;
				// echo "<br>";
				// echo $data_content;
				// echo "<br>";
				// echo $user_id;
				// echo "<br>";
				// die();
	}
	public function update()
	{
		// id posts update
		$id=$this->input->post('posts_id');

	    $name=$this->input->post('posts_name');
		$category_id=$this->input->post('category_id');
		$tags=$this->input->post('posts_tags');
		$sort=$this->input->post('posts_sort');

		$content=$this->input->post('posts_content');


		// $content=$this->input->post('posts_content');
		$user_id=$this->session->userdata('id');
		$img=$this->input->post('posts_img');
		$img_thumb=$this->input->post('posts_img_thumb');

		// img old
		$img_old=$this->input->post('posts_img_old');
		$img_thumb_old=$this->input->post('posts_img_thumb_old');

		if ($img == NULL) {
			$img= $img_old;
			$img_thumb= $img_thumb_old;
			
		}else
		{
			$img_old_unlink= ltrim($img_old,base_url());
			$img_old_thumb_unlink=  ltrim($img_thumb_old,base_url());
			$img_basic="SourceData/update.jpg";
				
			if ($img_old_unlink != $img_basic && $img_old_thumb_unlink != $img_basic)
			{
				$file_unlink=unlink($img_old_unlink) & unlink($img_old_thumb_unlink);
			}
		}
		// hàm xử lý chuỗi thành chuỗi không dấu
		$url_convert=strtolower($this->locdautiengviet($name));
		// tách chuỗi thành mảng
		$url_convert = explode(' ', $url_convert);

		// nối lại các ký tự trong mảng
		$url_convert=implode('-', $url_convert);



		// End hàm xử lý chuỗi thành chuỗi không dấu

		$where = array('data_id' => $id);
		$mangdulieu = array(

			'data_content' => $content,
			'menu_id' => $category_id,
			'data_sort' => $sort,
			'data_tags' => $tags,
			'data_name' => $name,
			'data_url' => $url_convert,
			'data_img' => $img,
			'data_img_thumb' => $img_thumb,
			'data_status' => 0,
			'date_update' =>date("d-m-Y H:i:s")

		);

		if ($this-> CrudPostsModel->update($mangdulieu,$where)) {
			# code...
			echo 'update thành công';

		}
	}
	//Delete one item
	public function delete( $id = NULL )
	{
		// lấy mảng data cần xoá

		$data=$this->input->post('data');

		// dùng vòng lặp foreach để lấy dữ liệu
		foreach ($data as $key => $value) 
		{
			# code...
			$data_id= $value['data_id'];
			$img_old=$value['data_img'];
			$img_thumb_old=$value['data_img_thumb'];
			
			// loại bỏ đường dẫn base_url
			$img_unlink=ltrim($img_old,base_url());
			$img_thumb_unlink=  ltrim($img_thumb_old,base_url());
			
			// kiểm tra có data attached không ?
			// nếu có thì unlink file item

			$image_galery=$value['image_galery'];
			$video_galery=$value['video_galery'];
			$file_galery=$value['file_galery'];
			// image
			if ($image_galery !=NULL) 
			{
				# code...
				$image_galery=json_decode($image_galery,true);
				// dùng foreach xoá item trùng khớp
				foreach ($image_galery as $key => $value) 
				{
					# code...		
					$item_unlink=  ltrim($value['url'],base_url());					
					unlink($item_unlink);
					
				}
			}
			// video
			if ($video_galery !=NULL) 
			{
				# code...
				$video_galery=json_decode($video_galery,true);
				// dùng foreach xoá item trùng khớp
				foreach ($video_galery as $key => $value) 
				{
					# code...		
					$item_unlink=  ltrim($value['url'],base_url());					
					unlink($item_unlink);
					
				}
			}
			// file
			if ($file_galery !=NULL) 
			{
				# code...
				$file_galery=json_decode($file_galery,true);
				// dùng foreach xoá item trùng khớp
				foreach ($file_galery as $key => $value) 
				{
					# code...		
					$item_unlink=  ltrim($value['url'],base_url());					
					unlink($item_unlink);
					
				}
			}





			// delete data

			$where = array('data_id' => $data_id);

			
			if ($this-> CrudPostsModel->delete($where)) {
				# code...
				// unlink img và img thumb
				$img_basic="SourceData/update.jpg";

				if ($img_unlink != $img_basic && $img_thumb_unlink != $img_basic)
				{
					$file_unlink=unlink($img_unlink) & unlink($img_thumb_unlink);
				}

			}
			
			

			
			
		}
		
		

		
	}
	// public function delete( $id = NULL )
	// {
		
	// 	$id=$this->input->post('id');
	// 	$img_old=$this->input->post('img');
	// 	$img_thumb_old=$this->input->post('img_thumb');
		
	// 	// loại bỏ đường dẫn base_url
	// 	$img_unlink=ltrim($img_old,base_url());
	// 	$img_thumb_unlink=  ltrim($img_thumb_old,base_url());


	// 	// kiểm tra có data attached không ?
	// 	// nếu có thì unlink file item
	// 	$dl=$this-> CrudPostsModel->get_data_attached_on_posts($id); 

	// 	$image_galery=$dl['image_galery'];
	// 	$video_galery=$dl['video_galery'];
	// 	$file_galery=$dl['file_galery'];
	// 	// image
	// 	if ($image_galery !=NULL) 
	// 	{
	// 		# code...
	// 		$image_galery=json_decode($image_galery,true);
	// 		// dùng foreach xoá item trùng khớp
	// 		foreach ($image_galery as $key => $value) 
	// 		{
	// 			# code...		
	// 			$item_unlink=  ltrim($value['url'],base_url());					
	// 			unlink($item_unlink);
				
	// 		}
	// 	}
	// 	// video
	// 	if ($video_galery !=NULL) 
	// 	{
	// 		# code...
	// 		$video_galery=json_decode($video_galery,true);
	// 		// dùng foreach xoá item trùng khớp
	// 		foreach ($video_galery as $key => $value) 
	// 		{
	// 			# code...		
	// 			$item_unlink=  ltrim($value['url'],base_url());					
	// 			unlink($item_unlink);
				
	// 		}
	// 	}
	// 	// file
	// 	if ($file_galery !=NULL) 
	// 	{
	// 		# code...
	// 		$file_galery=json_decode($file_galery,true);
	// 		// dùng foreach xoá item trùng khớp
	// 		foreach ($file_galery as $key => $value) 
	// 		{
	// 			# code...		
	// 			$item_unlink=  ltrim($value['url'],base_url());					
	// 			unlink($item_unlink);
				
	// 		}
	// 	}

		
	// 	// delete posts


	// 	$where = array('data_id' => $id );

	// 	if ($this-> CrudPostsModel->delete($where)) 
	// 	{

	// 		$img_basic="SourceData/update.jpg";

	// 		if ($img_unlink != $img_basic && $img_thumb_unlink != $img_basic)
	// 		{
	// 			$file_unlink=unlink($img_unlink) & unlink($img_thumb_unlink);
	// 		}
			
	// 	}
		


			

	// }
	public function move_item_to_trash()
	{

	    $data=$this->input->post('data');
	    if ($data) 
	    {
	    	# code...
	    	foreach ($data as $key => $value) 
			{
				# code...
				$data_id=$value['data_id'];
				$data_status=$value['data_status'];
				if ($data_status == 1) 
				{
				# code...
				$data_status = 0;
				}
				
				$this-> CrudPostsModel->hidden_show($data_id,$data_status);
			}
	    }
	    else
	    {
	    	echo "vui lòng chọn data";
	    }
		$data=$this->input->post('data');
	    if ($data) 
	    {
	    	# code...
	    	foreach ($data as $key => $value) 
			{
				# code...
				$data_id=$value['data_id'];
				
			
				$data_status = 3;
				
				
				$this-> CrudPostsModel->hidden_show($data_id,$data_status);
			}
	    }
	    else
	    {
	    	echo "vui lòng chọn data";
	    }
	}
	public function hidden_items()
	{

	    $data=$this->input->post('data');
	    if ($data) 
	    {
	    	# code...
	    	foreach ($data as $key => $value) 
			{
				# code...
				$data_id=$value['data_id'];
				$data_status=$value['data_status'];
				if ($data_status == 3 or $data_status == 1 ) 
				{
				# code...
				$data_status = 0;
				}
				
				$this-> CrudPostsModel->hidden_show($data_id,$data_status);
			}
	    }
	    else
	    {
	    	echo "vui lòng chọn data";
	    }
		
	}
	public function show_items()
	{
	    $data=$this->input->post('data');
		foreach ($data as $key => $value) 
		{
			# code...
			$data_id=$value['data_id'];
			$data_status=$value['data_status'];
			if ($data_status == 0 or $data_status == 3) 
			{
			# code...
			$data_status = 1;
			}
			
			$this-> CrudPostsModel->hidden_show($data_id,$data_status);
		}
	}
	public function show_hidden()
	{
		$data=$this->input->post('data');
		foreach ($data as $key => $value) 
		{
			# code...
			$data_id=$value['data_id'];
			$data_status=$value['data_status'];
			if ($data_status == 1) 
			{
			# code...
			$data_status = 0;
			}
			else
			{
				$data_status=1;
			}
			$this-> CrudPostsModel->hidden_show($data_id,$data_status);
		}

		// $id=$this->input->post('id');
		// $trangthai=$this->input->post('trangthai');

		// if ($trangthai == 1) {
		// 	# code...
		// 	$trangthai = 0;
		// }
		// else
		// {
		// 	$trangthai=1;
		// }
		// $this-> CrudPostsModel->hidden_show($id,$trangthai);
	}
	
}

/* End of file CrudDataController.php */
/* Location: ./application/controllers/admin/CrudDataController.php */
