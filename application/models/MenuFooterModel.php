<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class MenuFooterModel extends CI_Model {

	public $variable;

	public function __construct()
	{
		parent::__construct();
		
	}
	public function data_menu($thamso)
	{
	    // lấy dữ liệu bảng menu
        $this->db->select('*');
        $this->db->where('status',1);
        $menu=$this->db->get('menu')->result_array();
		$dulieu= array();

		foreach ($menu as $key => $value) {
			if ($value['level']== $thamso) {
				# code...
				
				array_push($dulieu, $value);
				
			}



		}
		
      
        return($dulieu);
	}

	

}

/* End of file MenuFooterModel.php */
/* Location: ./application/models/MenuFooterModel.php */