<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class BannerController extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		//Load Dependencies
		$this->load->model('admin/CrudBannerModel');

	}

	// List all your items
	public function index( $offset = 0 )
	{

	}
	public function get_banner_qc($thamso)
	{
		// echo $thamso;
		// die();

	    $dl=$this-> CrudBannerModel->get_banner_qc(); 
	    foreach ($dl as $key => $value) {
	    	# code...
	    	$data_banner=$value['data_module'];
	    	
	    }
	    // chuyển từ json về mảng
		$data_banner=json_decode($data_banner,true);
		// dùng vòng lặp foreach để tìm các banner trùng khớp yêu cầu
		$data_banner_by_location = array( );
		foreach ($data_banner as $key => $value) 
		{
		 	# code...
		 	// location bằng 1 tương ứng trang chủ
		 	if ($thamso=='home') 
		 	{
		 		# code...
		 		// location value từ json thành mảng
		 		$data_location=$value['location'];
		 		$data_location=json_decode($data_location,true);
		 		// dùng vòng lặp
		 		foreach ($data_location as $key => $value_location) 
		 		{
		 			# code...
		 			// var_dump($value_location);
		 			if ($value_location['value']== 1) 
		 			{
		 				# code...
		 				// echo "banner trang home";
		 				array_push($data_banner_by_location, $value);
		 			}
		 		}
		 		// end vòng lặp
		 		
		 	}





		 	if ($thamso=='posts') 
		 	{
		 		# code...
		 		// location value từ json thành mảng
		 		$data_location=$value['location'];
		 		$data_location=json_decode($data_location,true);
		 		// dùng vòng lặp
		 		foreach ($data_location as $key => $value_location) 
		 		{
		 			# code...
		 			// var_dump($value_location);
		 			if ($value_location['value']== 2) 
		 			{
		 				# code...
		 				// echo "banner trang posts";
		 				array_push($data_banner_by_location, $value);
		 			}
		 		}
		 	}
		 	if ($thamso=='search') 
		 	{
		 		$data_location=$value['location'];
		 		$data_location=json_decode($data_location,true);
		 		// dùng vòng lặp
		 		foreach ($data_location as $key => $value_location) 
		 		{
		 			if ($value_location['value']== 3) 
		 			{
		 				array_push($data_banner_by_location, $value);
		 			}
		 		}
		 	}

		 } // end foreach
		
		echo json_encode($data_banner_by_location);
		
	}
	


	// Add a new item
	public function add()
	{

	}

	//Update one item
	public function update( $id = NULL )
	{

	}

	//Delete one item
	public function delete( $id = NULL )
	{

	}
}

/* End of file BannerController.php */
/* Location: ./application/controllers/BannerController.php */
