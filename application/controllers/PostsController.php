<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class PostsController extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		$this->load->model('PostsModel');
		$this->load->model('HomeFrontEndModel');
		$this->load->model('MenuFooterModel');
	}

	public function index($thamso_url,$id)
	{
		
		//01.LOAD MENU
		$thamso=0;
		$menu=$this-> MenuFooterModel->data_menu($thamso);
		$array_menu_thu_cap = array();
		
		if ($menu) 
		{
			# code...
			foreach ($menu as $key => $value) 
			{
				$thamso=$value['id'];
				# code...
				$menu_thu_cap=$this-> MenuFooterModel->data_menu($thamso);
				array_push($array_menu_thu_cap, $menu_thu_cap);
					
			}
		}
		//01.END LOAD MENU

		 $data_posts=$this-> PostsModel->data_posts($id);

		 // lấy ra dữ liệu json của data attached và chuyển về mảng array
		 foreach ($data_posts as $key => $value) {
		 	# code...

		 	$image_attached=$value['image_galery'];
		 	$video_attached=$value['video_galery'];
		 	$file_attached=$value['file_galery'];

		 	// chuyển về mảng
		 	// thêm true để là array còn dòng trên là object
			$image_attached=json_decode($image_attached,true);
			$video_attached=json_decode($video_attached,true);
			$file_attached=json_decode($file_attached,true);



		 	
		 }
		 	// echo "<pre>";
		 	// var_dump($image_attached);
		 	// echo "</pre>";
		 	// echo "<pre>";
		 	// var_dump($video_attached);
		 	// echo "</pre>";
		 	// echo "<pre>";
		 	// var_dump($file_attached);
		 	// echo "</pre>";

		 // die();
		 $mangdl = array(
			'menu' =>$menu,
			'menu_thu_cap'=>$array_menu_thu_cap,
			'data_posts'=>$data_posts,
			'image_attached'=>$image_attached,
			'video_attached'=>$video_attached,
			'file_attached'=>$file_attached
			
		);

		 $this->load->view('frontend/page/posts', $mangdl, FALSE);

	}

	public function get_banner_qc($thamso)
	{

	    $dl=$this-> HomeFrontEndModel->get_banner_qc($thamso); 
	    foreach ($dl as $key => $value) {
	    	# code...
	    	$data_banner=$value['data_module'];
	    	
	    }
	    // chuyển từ json về mảng
		$data_banner=json_decode($data_banner,true);
		// dùng vòng lặp foreach để tìm các banner trùng khớp yêu cầu
		$data_banner_by_location = array( );
		foreach ($data_banner as $key => $value) {
		 	# code...
		 	// location bằng 1 tương ứng trang chủ
		 	if ($value['location']== 2) 
		 	{
		 		array_push($data_banner_by_location, $value);
		 	}

		 } // end foreach
		
		echo json_encode($data_banner_by_location);
		
	}


}

/* End of file PostsController.php */
/* Location: ./application/controllers/PostsController.php */