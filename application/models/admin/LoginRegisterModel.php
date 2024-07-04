<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class LoginRegisterModel extends CI_Model {

	public $variable;

	public function __construct()
	{
		parent::__construct();
		
	}
	public function check_user($user,$password)
	{
	    $dl= $this->db->where('user_name', $user)->where('password',$password)->get('user');
		$dl=$dl->result_array();

		return $dl;
	}

}

/* End of file LoginRegisterModel.php */
/* Location: ./application/models/LoginRegisterModel.php */