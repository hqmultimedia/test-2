<?php if (!defined('BASEPATH')) exit('No direct script access allowed');

class CrudPostsModel extends CI_Model {

    /**
     * @name string TABLE_NAME Holds the name of the table in use by this model
     */
    const TABLE_NAME = 'data';

    /**
     * @name string PRI_INDEX Holds the name of the tables' primary index used in this model
     */
    const PRI_INDEX = 'data_id';

    /**
     * Retrieves record(s) from the database
     *
     * @param mixed $where Optional. Retrieves only the records matching given criteria, or all records if not given.
     *                      If associative array is given, it should fit field_name=>value pattern.
     *                      If string, value will be used to match against PRI_INDEX
     * @return mixed Single record if ID is given, or array of results
     */
    
    public function test_get_data_posts_for( $data_id)
    {

       $this->db->select('*');
        // $this->db->order_by('data_id', 'asc');
       $this->db->where('data_id', $data_id);
        $dl=$this->db->get('data');
        $dl=$dl->result_array();
        return $dl;
    }










    public function get_posts_unactive()
    {
        $this->db->select('*');
        $this->db->where('data_status',0);
        $dl=$this->db->get('data');
        $dl=$dl->result_array();
        return $dl;
    }
    
    public function preview_posts($data_id)
    {
        $this->db->select('*');
        $this->db->where('data_id',$data_id);
        $dl=$this->db->get('data');
        $dl=$dl->result_array();
        return $dl;
    }
    public function get_all_data()
    {

       $this->db->select('*');
        $this->db->where('data_status <', 3);
        $dl=$this->db->get('data');
        $dl=$dl->result_array();
        return $dl;
    }
    public function get_data_user($user_id)
    {
    // get dat user 
    $this->db->select('*');
    $this->db->where('id', $user_id);
    $dl=$this->db->get('user');
    $dl=$dl->result_array();
    // end get data user

    foreach ($dl as $key => $value) {
        # code...
        $user_name=$value['user_name'];
    }
    

    
    return $user_name;

    }
    public function get_data_by_ctv($user_name)
    {
        $this->db->select('*');
        $this->db->where('user', $user_name);
        $this->db->where('data_status <', 3);
        $dl=$this->db->get('data');
        $dl=$dl->result_array();
        return $dl;
    }
    public function get_data_box_trash()
    {
        $this->db->select('*');
        $this->db->where('data_status', 3);
        $dl=$this->db->get('data');
        $dl=$dl->result_array();
        return $dl;
    }
    public function get($where = NULL) {
        $this->db->select('*');
        $this->db->from(self::TABLE_NAME);
        if ($where !== NULL) {
            if (is_array($where)) {
                foreach ($where as $field=>$value) {
                    $this->db->where($field, $value);
                }
            } else {
                $this->db->where(self::PRI_INDEX, $where);
            }
        }
        $result = $this->db->get()->result();
        if ($result) {
            if ($where !== NULL) {
                return array_shift($result);
            } else {
                return $result;
            }
        } else {
            return false;
        }
    }

    public function get_data_attached($posts_id)
    {
        $this->db->select('*');
        $this->db->where('data_id', $posts_id);
        $dl=$this->db->get('data');
        $dl=$dl->result_array();
        return $dl;
    }
    public function get_data_attached_on_posts($id)
    {
        $this->db->select('*');
        $this->db->where('data_id', $id);
        $dl=$this->db->get('data');
        $dl=$dl->result_array();

        foreach ($dl as $key => $value) {
            # code...
            $image_galery=$value['image_galery'];
            $video_galery=$value['video_galery'];
            $file_galery=$value['file_galery'];
        }
        // Gửi dữ liệu sang Controller
        $dulieu = array(
            'image_galery' => $image_galery,
            'video_galery' => $video_galery, 
            'file_galery' => $file_galery 
            
        );
        return $dulieu;
    }
    /**
     * Inserts new data into database
     *
     * @param Array $data Associative array with field_name=>value pattern to be inserted into database
     * @return mixed Inserted row ID, or false if error occured
     */
    public function data_menu($thamso)
    {
         // lấy dữ liệu bảng menu
        $this->db->select('*');
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

    public function add_notification_posts($id_notification_rom,$dl_notification_posts)
    {
           $this->db->where('notification-rom-id', $id_notification_rom);
           $dulieu = array(
            'notification-posts' => $dl_notification_posts 
            );
           $this->db->update('notification-rom', $dulieu);
           return $dulieu;   

    }
     public function data_view_add_posts()
    {
     $this->db->select('*');
     $this->db->order_by('id');
     $this->db->where('level !=', 0);
     $dl=$this->db->get('menu');

     $dl=$dl->result_array();
     return $dl;
    }
    public function insert(Array $data) {
        if ($this->db->insert(self::TABLE_NAME, $data)) {
            return $this->db->insert_id();
        } else {
            return false;
        }
    }

    /**
     * Updates selected record in the database
     *
     * @param Array $data Associative array field_name=>value to be updated
     * @param Array $where Optional. Associative array field_name=>value, for where condition. If specified, $id is not used
     * @return int Number of affected rows by the update query
     */
    public function dl_update ($id_posts_update)
    {

        $this->db->select('*');
        $this->db->where('data_id', $id_posts_update);

        $dulieu=$this->db->get('data');
        $dulieu=$dulieu->result_array();
        return $dulieu;
    }
    public function dl_update_data_category()
    {
        $this->db->select('*');
       $this->db->where('level !=', 0);

        $dulieu=$this->db->get('menu');
        $dulieu=$dulieu->result_array();
        return $dulieu;
    }
    public function update(Array $data, $where = array()) {
            if (!is_array($where)) {
                $where = array(self::PRI_INDEX => $where);
            }
        $this->db->update(self::TABLE_NAME, $data, $where);
        return $this->db->affected_rows();
    }
    public function hidden_show($id,$thamso)
    {

        $data_update = array(
            'data_status'=>$thamso

        );
        
        $this->db->where('data_id', $id);
        return $this->db->update('data', $data_update);
    }
    /**
     * Deletes specified record from the database
     *
     * @param Array $where Optional. Associative array field_name=>value, for where condition. If specified, $id is not used
     * @return int Number of rows affected by the delete query
     */
    public function delete($where = array()) {
        if (!is_array($where)) {
            $where = array(self::PRI_INDEX => $where);
        }
        $this->db->delete(self::TABLE_NAME, $where);
        return $this->db->affected_rows();
    }













    
}
         ?>