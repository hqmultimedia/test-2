<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class LoginRegisterController extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		$this->load->model('admin/LoginRegisterModel');
		//Load Dependencies

	}

	public function login()
	{
		
	// Lấy dữ liệu đăng nhập từ view
		$user =  $this->input->post('user_name');
		$password= $this->input->post('password');
		$password=md5($password);
		$DataUser=$this-> LoginRegisterModel->check_user($user ,$password);
	// Kiểm tra dữ liệu từ view với dữ liệu trong CSDL
		

		if ( $DataUser )
		{
			$status=$DataUser[0]['user_status'];
			$level=$DataUser[0]['level'];
			$avatar=$DataUser[0]['avatar'];
			$id=$DataUser[0]['id'];

			if ($status==1) 
			{
				# code...phần cho set session cho các trang php
				$session = array(
				'username' => $user,
				'avatar' => $avatar,
				'id' => $id,
				'level' => $level
				);
				$this->session->set_userdata($session);
				// phần cho set dữ liệu hiển thị dữ liệu cho thông tin login
				$dulieu = array(
					'name' =>$user ,
					'level' =>$level ,
					'avatar' =>$avatar, 
					'id' =>$id 
				);

				echo json_encode($dulieu);
			}
			else {
				# code...
				echo 'tài khoản đã bị khoá';
			}
			
				


		}
		
		else{
			echo 'Không có dữ liệu trùng khớp';
		}




		

	}






	// logout dành cho phần session của php
	public function logout_remove_session_php()
	{
		$this->session->unset_userdata('username');
		$this->session->unset_userdata('level');


	}











	
	
}

/* End of file LoginRegisterController.php */
/* Location: ./application/controllers/admin/LoginRegisterController.php */
