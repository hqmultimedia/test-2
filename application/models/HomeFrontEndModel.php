<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class HomeFrontEndModel extends CI_Model {

	public $variable;

	public function __construct()
	{
		parent::__construct();
		
	}
	
	
	public function new_one_data()
	{
		$this->db->select('*');
		$this->db->order_by('data_id', 'desc');
		$dulieu=$this->db->get('data',1,0)->result_array();
		return($dulieu);
	}
	public function new_two_data()
	{
		$this->db->select('*');
		$this->db->order_by('data_id', 'desc');
		$dulieu=$this->db->get('data',2,1)->result_array();
		return($dulieu);
	}

	public function new_six_data()
	{
		// Lấy tất cả id menu con(category)
		$this->db->select('*');
		$this->db->where('level !=', 0);
		$this->db->where('status', 1);
		$dl=$this->db->get('menu')->result_array();
		// Tạo mảng để chứa dữ liệu
		$dl_baiviet_theo_danhmuc_tranghome = array();
		$dl_menu = array();

		// Lấy dữ liệu posts dựa trên id menu con(category)
		if ($dl !=NULL) 
		{
			# bắt đầu vòng lặp foreach
			foreach ($dl as $key => $value) 
			{
	        	# code...
	        	// lấy data posts dựa trên id
				$this->db->select('*');
				$this->db->where('menu_id', $value['id']);
				$this->db->where('data_status', 1);
				$this->db->order_by('data_id', 'desc');
				$dulieu=$this->db->get('data',6,0)->result_array();

				array_push($dl_baiviet_theo_danhmuc_tranghome, $dulieu);
				// End lấy data posts dựa trên id


				// Xét điều kiện 
				// Nếu id menu con đã có bằng với menu id của data posts thì tiến hành push vào mảng
				// if 2
				if ($dulieu !=NULL) 
				{
					# code...
					foreach ($dulieu as $key => $value_posts) 
					{
					# code...
					//trung gian dùng để lấy ra tất cả id 

					}
					if ($value_posts['menu_id'] == $value['id']) 
					{
						$data = array(
							'menu_name' =>$value['name'] ,
							'menu_id' =>$value['id'] 
						);
						array_push($dl_menu, $data);
					}
				}
				// kết thúc if 2

				// End xét điều kiện 
				
			}# Kết thúc vòng lặp foreach
		}# kết thúc if 1

		// Tạo mảng gửi dữ liệu sang Controller
		$dulieu = array(
			'dl_baiviet_theo_danhmuc_tranghome' => $dl_baiviet_theo_danhmuc_tranghome,
			'dl_menu' => $dl_menu


		);
		return $dulieu;   

	}
// public function new_six_data()
// 	{
// 		// tính xem có bao nhiêu category ?
// 		$this->db->select('*');
// 		$this->db->where('level !=', 0);
// 		$this->db->where('status', 1);
// 		$dl=$this->db->get('menu')->result_array();
// 		$dl_baiviet_theo_danhmuc_tranghome = array();
// 		$dl_menu_id_cua_baiviet = array();
		
// 		$dl_menu = array();

// 		foreach ($dl as $key => $value) {
//         	# code...
//         	// lấy data posts dựa trên id
// 			$this->db->select('*');
// 			$this->db->where('menu_id', $value['id']);
// 			$this->db->where('data_status', 1);
// 			$this->db->order_by('data_id', 'desc');
// 			$dulieu=$this->db->get('data')->result_array();

// 			// echo $value['id'];
			
			
// 			array_push($dl_baiviet_theo_danhmuc_tranghome, $dulieu);

//         	// tạo mảng lấy menu id có chứa dữ liệu
//         	$data = array(
//         		'menu_name' =>$value['name'] ,
//         		'menu_id' =>$value['id'] 
//         		);
//         	array_push($dl_menu, $data);

        	
// 		}
// 		// die();		
// 		// Tạo mảng gửi dữ liệu sang Controller
//     	$dulieu = array(
//     		'dl_baiviet_theo_danhmuc_tranghome' => $dl_baiviet_theo_danhmuc_tranghome,
//             'dl_menu' => $dl_menu
            

//     	);
//     	return $dulieu;   

// 	}


	public function get_all_data_posts_by_category()
	{
	    $this->db->select('*');
		$this->db->where('level !=', 0);
		$this->db->where('status', 1);
		$dl=$this->db->get('menu')->result_array();
		return $dl; 
	}


}

/* End of file HomeFrontEndModel.php */
/* Location: ./application/models/HomeFrontEndModel.php */