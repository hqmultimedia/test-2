<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class CategoryModel extends CI_Model {

	public $variable;

	public function __construct()
	{
		parent::__construct();
		
	}
	public function data_category($id)
	{
	    $this->db->select('*');
	    $this->db->where('menu_id', $id);
	    $this->db->where('data_status',1);
        $dulieu=$this->db->get('data')->result_array();
        return($dulieu);
	}
	public function title_category($id)
	{
	    $this->db->select('*');
	    $this->db->where('id', $id);
        $dulieu=$this->db->get('menu')->result_array();
        
        return($dulieu);
	}

}

/* End of file CategoryModel.php */
/* Location: ./application/models/CategoryModel.php */