<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class AngularUploadFileController extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		//Load Dependencies

	}


	public function locdautiengviet($string)
	{
		if(!$string) return false;
		$unicode = array(
			'a'=>'á|Á|à|À|ả|Ả|ã|Ã|ạ|Ạ|ă|Ă|ắ|Ắ|ặ|Ặ|ằ|Ằ|ẳ|Ẳ|ẵ|Ẵ|â|Â|ấ|Ấ|ầ|Ầ|ẩ|Ẩ|ẫ|Ẫ|ậ|Ậ',
			'd'=>'đ|Đ',
			'e'=>'é|É|è|È|ẻ|Ẻ|ẽ|Ẽ|ẹ|Ẹ|ê|Ê|ế|Ế|ề|Ề|ể|Ể|ễ|Ễ|ệ|Ệ',
			'i'=>'í|Í|ì|Ì|ỉ|Ỉ|ĩ|Ĩ|ị|Ị',
			'o'=>'ó|Ó|ò|Ò|ỏ|Ỏ|õ|Õ|ọ|Ọ|ô|Ô|ố|Ố|ồ|Ồ|ổ|Ổ|ỗ|Ỗ|ộ|Ộ|ơ|Ơ|ớ|Ớ|ờ|Ờ|ở|Ở|ỡ|Ỡ|ợ|Ợ',
			'u'=>'ú|Ú|ù|Ù|ủ|Ủ|ũ|Ũ|ụ|Ụ|ư|Ư|ứ|Ứ|ừ|Ừ|ử|Ử|ữ|Ữ|ự|Ự',
			'y'=>'ý|Ý|ỳ|Ỳ|ỷ|Ỷ|ỹ|Ỹ|ỵ|Ỵ',
		);
		foreach($unicode as $nonUnicode=>$uni)
		{
			$string = preg_replace("/($uni)/i",$nonUnicode,$string);
		}
		return $string;
	}
	
	
	public function uploadFileSingle($thamso)
	{
		

		$check = basename($_FILES["source_file"]["name"]);

		if ($check)
		{
			// Bước 1 gọi đến hàm upload sẵn có trong codeigniter phím tắt : upload
			// hàm upload ảnh
			$config['upload_path'] = './SourceData/'.$thamso;
			$config['allowed_types'] = 'gif|jpg|jpeg|png|mp4|zip|rar';
			$config['max_size']  = '1000000';
			$this->load->library('upload', $config);

			// nếu tồn tại lỗi thì thực thi		
			if ( ! $this->upload->do_upload('source_file'))
			{

				$error = array('error' => $this->upload->display_errors());
				$this->session->set_flashdata('message-act-file','------định dạng file upload không phù hợp ! ');



			}
				// không tồn tại lỗi thì
			else
			{
				$dulieuanh=$this->upload->data();

				// bước 2: phan resize anh
				$config['image_library'] = 'gd2';
				$config['source_image'] = 'SourceData/'.$thamso.'/'.$dulieuanh['file_name'];
				$config['create_thumb'] = TRUE;
				// True là giữ nguyên tỷ lệ ảnh
				$config['maintain_ratio'] = TRUE;
				$config['width']         = 600;
				$config['height']       = 800;
				$config['master_dim']       = 'width'; // kiểm soát theo chiều cao
				$this->load->library('image_lib', $config);
				$this->image_lib->initialize($config);
				$this->image_lib->resize();
				$img=base_url().'SourceData/'.$thamso.'/'.$dulieuanh['file_name'];
				$img_thumb=base_url().'SourceData/'.$thamso.'/'.$dulieuanh['raw_name']."_thumb".$dulieuanh['file_ext'];
						}
					// kết thúc hàm upload





			}// End Bước 2.1.1


			// Bước 2.1.2 ( Không upload ảnh )
			// VỚI ANGULAR BƯỚC NÀY PHẢI SET BÊN FUNCTION ADD KIỂM SOÁT ĐẦU VÀO DỮ LIỆU

			// else


			// {

			// 		$img= base_url()."upload/avatar_basic.jpg";
			// 		$img_thumb= base_url()."upload/avatar_basic.jpg";
			// }

			

			$response = array(

				'img' => $img,
				'img_thumb' => $img_thumb
				

			);




			echo json_encode($response); 

		}

	public function uploadFileAngularJs($thamso)
	{
		if (!empty($_FILES['source_file']['name']) && count(array_filter($_FILES['source_file']['name'])) > 0)
		{
			$filesCount = count($_FILES['source_file']['name']); 

			for($i = 0; $i < $filesCount; $i++)
			{ 
				$_FILES['file']['name']     = $_FILES['source_file']['name'][$i]; 
				$_FILES['file']['type']     = $_FILES['source_file']['type'][$i]; 
				$_FILES['file']['tmp_name'] = $_FILES['source_file']['tmp_name'][$i]; 
				$_FILES['file']['error']     = $_FILES['source_file']['error'][$i]; 
				$_FILES['file']['size']     = $_FILES['source_file']['size'][$i]; 

				// set điều kiện
				date_default_timezone_set("Asia/Ho_Chi_Minh");
				// $check_data_type=$_FILES['file']['type'];

				//01.Set điều kiện khi file là hình ảnh

				// hàm upload ảnh
				$config['upload_path'] = './SourceData/'.$thamso;
				$config['allowed_types'] = 'gif|jpg|jpeg|png|mp4|zip|rar';
				$config['max_size']  = '1000000000';
				// Load and initialize upload library 
				$this->load->library('upload', $config); 
				$this->upload->initialize($config); 

				// Upload file to server 
				if($this->upload->do_upload('file'))
				{ 
					$fileData = $this->upload->data(); 

					// lấy thông số dựa trên $fileData
					$uploadDataImage[$i]['file_name'] = $fileData['file_name'];
					$uploadDataImage[$i]['url'] = base_url().'SourceData/'.$thamso.'/'.$fileData['file_name']; 
					$uploadDataImage[$i]['uploaded_on'] = date("Y-m-d H:i:s"); 
					// $uploadDataImage[$i]['data_type'] = $_FILES['file']['type'] ;
					// bước 2: phan resize anh
					$config['image_library'] = 'gd2';
					$config['source_image'] = 'SourceData/'.$thamso.'/'.$fileData['file_name'];
					$config['create_thumb'] = TRUE;
					// True là giữ nguyên tỷ lệ ảnh
					$config['maintain_ratio'] = TRUE;
					$config['width']         = 450;
					$config['height']       = 800;
					$config['master_dim']       = 'width'; // kiểm soát theo chiều cao
					$this->load->library('image_lib', $config);
					$this->image_lib->initialize($config);
					$this->image_lib->resize();
					

					// set url img  
					$img=base_url().'SourceData/'.$thamso.'/'.$fileData['file_name'];
					$img_thumb=base_url().'SourceData/'.$thamso.'/'.$fileData['raw_name']."_thumb".$fileData['file_ext'];

				}// End upload file		

			}	// kết thúc vòng lặp for

			$response = array(

			'img' => $img,
			'img_thumb' => $img_thumb


			);
		
		

		
			echo json_encode($response); 


		}


	}


	public function uploadFileJson($thamso)
	{
		// $taikhoan=$this->input->post('taikhoan');
	    // A.UPLOAD FILE
		if (!empty($_FILES['source_file']['name']) && count(array_filter($_FILES['source_file']['name'])) > 0)
		{



	    	# code...
			$filesCount = count($_FILES['source_file']['name']); 

			
			for($i = 0; $i < $filesCount; $i++)
			{ 
				$_FILES['file']['name']     = $_FILES['source_file']['name'][$i]; 
				$_FILES['file']['type']     = $_FILES['source_file']['type'][$i]; 
				$_FILES['file']['tmp_name'] = $_FILES['source_file']['tmp_name'][$i]; 
				$_FILES['file']['error']     = $_FILES['source_file']['error'][$i]; 
				$_FILES['file']['size']     = $_FILES['source_file']['size'][$i]; 

				// // set điều kiện
				date_default_timezone_set("Asia/Ho_Chi_Minh");
				// $check_data_type=$_FILES['file']['type'];

				//01.Set điều kiện khi file là hình ảnh
				
					// hàm upload ảnh
				$config['upload_path'] = './SourceData/data_attached/'.$thamso;
				$config['allowed_types'] = 'gif|jpg|jpeg|png|mp4|zip|rar';
				$config['max_size']  = '1000000000';
					// Load and initialize upload library 
				$this->load->library('upload', $config); 
				$this->upload->initialize($config); 

					// Upload file to server 
				if($this->upload->do_upload('file'))
				{ 
					$fileData = $this->upload->data(); 

						// lấy tên file 
					$file_name_img_convert=strtolower($this->locdautiengviet($fileData['file_name']));
	 				// $uploadDataImage[$i]['file_name'] = $fileData['file_name']; 
					$uploadDataImage[$i]['file_name_view'] = $fileData['file_name'];
					$uploadDataImage[$i]['file_name'] = $file_name_img_convert;
					$uploadDataImage[$i]['url'] = base_url().'SourceData/gallery/'.$fileData['file_name']; 
					$uploadDataImage[$i]['uploaded_on'] = date("Y-m-d H:i:s"); 
						// $uploadDataImage[$i]['data_type'] = $_FILES['file']['type'] ; 

					}// End upload file		

			}	// kết thúc vòng lặp for

		} // END A.UPLOAD FILE

		// B.PUSH JSON 
		// 01.Image
		if (!empty ($uploadDataImage)) 
		{

			// $uploadDataImage=$uploadDataImage;

			// Json
			$data_attached_image_json = array();

			foreach ($uploadDataImage as $key => $one_item_image) {
					# code...
				array_push($data_attached_image_json , $one_item_image);

			}

			// $mahoa_data_attached_image_json=json_encode($data_attached_image_json);

		}
		else 
		{
			$data_attached_image_json='';

		}
		// END B.PUSH JSON

		var_dump( json_encode($data_attached_image_json) );
		// json_encode($data_attached_image_json) ;
	}
}

/* End of file AngularUploadFileController.php */
/* Location: ./application/controllers/admin/AngularUploadFileController.php */
