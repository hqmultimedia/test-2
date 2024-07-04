<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Welcome extends CI_Controller {
	public function __construct()
	{
		parent::__construct();
		$this->load->model('HomeFrontEndModel');
		$this->load->model('MenuFooterModel');
		//Load Dependencies

	}

	/**
	 * Index Page for this controller.
	 *
	 * Maps to the following URL
	 * 		http://example.com/index.php/welcome
	 *	- or -
	 * 		http://example.com/index.php/welcome/index
	 *	- or -
	 * Since this controller is set as the default controller in
	 * config/routes.php, it's displayed at http://example.com/
	 *
	 * So any other public methods not prefixed with an underscore will
	 * map to /index.php/welcome/<method_name>
	 * @see https://codeigniter.com/user_guide/general/urls.html
	 */

	public function index()
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

		// 02.LOAD 1 DỮ LIỆU TIN MỚI NHẤT
		$new_one_data=$this-> HomeFrontEndModel->new_one_data();
		$new_two_data=$this-> HomeFrontEndModel->new_two_data();

		$new_six_data=$this-> HomeFrontEndModel->new_six_data();
		// dữ liệu lấy từ Model
		$dl_baiviet_theo_danhmuc_tranghome=$new_six_data['dl_baiviet_theo_danhmuc_tranghome'];
		$dl_menu=$new_six_data['dl_menu'];
		
		
		
		

		
		
		$mangdl = array(
			'menu' =>$menu,
			'menu_thu_cap'=>$array_menu_thu_cap,
			'new_one_data'=>$new_one_data,
			'new_two_data'=>$new_two_data,
			'dl_baiviet_theo_danhmuc_tranghome'=>$dl_baiviet_theo_danhmuc_tranghome,
			'dl_menu'=>$dl_menu
		);
		
	
		
		$this->load->view('frontend/page/Home', $mangdl, FALSE);
		
		
	}

	



	
}
