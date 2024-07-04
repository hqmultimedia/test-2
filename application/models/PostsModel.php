<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class PostsModel extends CI_Model {

	public $variable;

	public function __construct()
	{
		parent::__construct();
		
	}
	public function data_posts($id)
	{
	    $this->db->select('*');
	    $this->db->where('data_id', $id);
        $dulieu=$this->db->get('data')->result_array();
        return($dulieu);
	}

}

/* End of file PostsModel.php */
/* Location: ./application/models/PostsModel.php */