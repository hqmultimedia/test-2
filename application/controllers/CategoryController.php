<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class CategoryController extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		$this->load->model('CategoryModel');
		$this->load->model('MenuFooterModel');
	}

	public function index($id)
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
		//02.LOAD DATA CATEGORY
		$data_category=$this-> CategoryModel->data_category($id);
		//02.END LOAD DATA CATEGORY
		//03.lOAD TITTLE CATEGORY
		$title_category=$this-> CategoryModel->title_category($id);
		$count_category=count($data_category);
		
		//03.END lOAD TITTLE CATEGORY

		// 


		 $mangdl = array(
			'menu' =>$menu,
			'menu_thu_cap'=>$array_menu_thu_cap,
			'data_category'=>$data_category,
			'title_category'=>$title_category,
			'count_category'=>$count_category
			
		);
		$this->load->view('frontend/page/List-data-by-category-angularjs', $mangdl, FALSE);
	}
	public function load_data_category_angularJs()
	{
	   $id=$this->input->post('id');
	   $data_category=$this-> CategoryModel->data_category($id);
	   $data_category=json_encode($data_category);
	   echo($data_category);

	}

}

/* End of file CategoryController.php */
/* Location: ./application/controllers/CategoryController.php */