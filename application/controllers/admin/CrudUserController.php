<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class CrudUserController extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		$this->load->model('admin/UserModel');
		//Load Dependencies

	}

	// List all your items
	public function index( $offset = 0 )
	{

	}

	// Add a new item
	public function add ()
	{
		$username=$this->input->post('user_name');
		$password=$this->input->post('password');
		$password=md5($password);
		$level=$this->input->post('level');
		$avatar=$this->input->post('avatar');
		$img_thumb=$this->input->post('img_thumb');
		$img_json=$this->input->post('img_json');

		// KIỂM TRA CÓ NHẬN ĐƯỢC DỮ LIỆU IMG HAY KHÔNG ?
		if ($avatar == NULL) {
			# code...
			$avatar=base_url()."SourceData/avatar_basic.jpg";
			$img_thumb=base_url()."SourceData/avatar_basic.jpg";
		}
	
		// Xoá các ký tự nằm trước [
		$img_json =strstr($img_json, '[');
		$chuoi_tim=']"';
		$chuoi_thaythe="]";
		// xoá ký tự " ở cuối chuỗi
		$img_json=str_replace( $chuoi_tim, $chuoi_thaythe, $img_json );
		
		
	
		$mangdulieu = array(

			'user_name' => $username,
			'password' => $password ,
			'level' => $level,
			'avatar' => $avatar,
			'img_thumb' => $img_thumb,
			'img_json' => $img_json

		);

		$dl=$this->UserModel->insert($mangdulieu);

		echo json_decode($dl);
		
	}
	// function get_all_user áp dụng khi muốn lấy tất cả dữ liệu về trong 1 lần tải
	public function get_all_user()
	{
	    $dl=$this->UserModel->get_all_data(); 
		
		// chuyen thanh json
		$dl=json_encode($dl);
		echo($dl);
	}
	// function totalData + dataByPage áp dụng khi muốn chỉ lấy tất cả dữ liệu theo mỗi lần thao tác
	public function totalData()
	{	
		
		$dl=$this->UserModel->getTotalData(); 
		$dl=count($dl);
		// chuyen thanh json
		$dl=json_encode($dl);
		echo($dl);


	}
	public function dataByPage()
	{
		
		$number_current_page=$this->input->post('Page');
		$PageSize=$this->input->post('PageSize');
		//01.Set điều kiện để ngăn ng dùng nhập $number_current_page bằng 0
		if ($number_current_page == 0) 
		{
			redirect(base_url('404-not-found'));
		}

		// 02.Set số data trong 1 trang
		$number_data_of_page=$PageSize;
		$this ->sotintrong1trang = $number_data_of_page;

		// 03.Gọi sang model
		$dulieu=$this-> UserModel->load_data_by_page ($number_current_page,$number_data_of_page);
		
		// 04.Dữ liệu nhận từ model
		$data=$dulieu['data'];
		$data=json_encode($data);
		echo($data);

		

	}
	
	
	public function update ()
	{	

		$id=$this->input->post('id');
		$username=$this->input->post('user_name');
		$content=$this->input->post('content');

		$this->UserModel->update_act($id,$username,$content) ;

	}
	public function destroy_avatar_old()
	{
		// lấy dữ liệu từ angularjs
		$id=$this->input->post('id_user');
		$avatar_update=$this->input->post('avatar_update');
		$img_thumb_update=$this->input->post('img_thumb_update');

		

		
	   	if ($dl=$this-> UserModel->destroy_avatar_old_act($id)) 
	   	{
	   		# code...
	   		foreach ($dl as $key => $value) {
	   			# code...
	   			$avatar=$value['avatar'];
	   			$img_thumb=$value['img_thumb'];
	   			$name=$value['user_name'];
	   			$level=$value['level'];
	   		}
	   		$session = array(
				'username' => $name,
				'avatar' => $avatar_update,
				'level' => $level
				);
			$this->session->set_userdata($session);
	   		
			$avatar_unlink=str_replace(base_url(), '', $avatar);
			$img_thumb_unlink=str_replace(base_url(), '', $img_thumb);

			
			$img_basic="SourceData/avatar_basic.jpg";

			if ($avatar_unlink != $img_basic && $img_thumb_unlink != $img_basic)
			{
				$file_unlink=unlink($avatar_unlink) & unlink($img_thumb_unlink);
			}
	   	}

   		// Bước 2.3 :Tạo mảng dữ liệu gửi sang model
		$where = array('id' => $id);
		$data = array
		(
			
			'avatar'=> $avatar_update,
			'img_thumb'=> $img_thumb_update
		);
		if ($this-> UserModel->update($data,$where)) {
			# code...
			echo "update thành công";
		}
		// end tạo mảng
	}
	public function delete()
	{
		$id=$this->input->post('id');
		$avatar_old=$this->input->post('avatar');
		$img_thumb_old=$this->input->post('img_thumb');

		// loại bỏ đường dẫn base_url
		$avatar_unlink=ltrim($avatar_old,base_url());
		$img_thumb_unlink=  ltrim($img_thumb_old,base_url());


		$where = array('id' => $id );


		// $this->UserModel->delete($where) ;

		
		if ($this->UserModel->delete($where)) 
		{
			echo "delete user thành công";
			$img_basic="SourceData/avatar_basic.jpg";

			if ($avatar_unlink != $img_basic && $img_thumb_unlink != $img_basic)
			{
				$file_unlink=unlink($avatar_unlink) & unlink($img_thumb_unlink);
			}

			
		}else{
			echo "delete user thất bại";
		}


	}

	public function show_hidden()
	{
		$id=$this->input->post('id');

		$trangthai=$this->input->post('trangthai');

		if ($trangthai == 1) {
			# code...
			$trangthai = 0;
		}else
		{
			$trangthai=1;
		}
		
		
	  	$this->UserModel->hidden_show($id,$trangthai);
	}
	public function change_level()
	{
	 	$id=$this->input->post('id');
		$level=$this->input->post('level');   
		$this->UserModel->change_level_act($id,$level);
	}


	
}

/* End of file CrudUserController.php */
/* Location: ./application/controllers/admin/CrudUserController.php */
