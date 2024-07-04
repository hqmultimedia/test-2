<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class NotificatonModel extends CI_Model {

	public $variable;

	public function __construct()
	{
		parent::__construct();
		
	}
	public function get_notification_rom()
    {
        $this->db->select('*');
        $dl=$this->db->get('notification-rom')->result_array();
        foreach ($dl as $key => $value) {
            # code...
            $dl_notification_posts=$value['notification-posts'];
            return($dl_notification_posts);
        }
        // return($dl);
    }

    public function reset_notification_posts($id_notification_rom)
    {
        $this->db->where('notification-rom-id', $id_notification_rom);
           $dulieu = array(
            'notification-posts' => '[]' 
            );
           $this->db->update('notification-rom', $dulieu);
           return $dulieu;  
    }
	public function test_get_data_posts_for( $data_id)
    {

       $this->db->select('*');
        // $this->db->order_by('data_id', 'asc');
       $this->db->where('data_id', $data_id);
        $dl=$this->db->get('data');
        $dl=$dl->result_array();
        return $dl;
    }

}

/* End of file NotificatonModel.php */
/* Location: ./application/models/NotificatonModel.php */