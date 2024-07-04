<?php if (!defined('BASEPATH')) exit('No direct script access allowed');

class UserModel extends CI_Model {

    /**
     * @name string TABLE_NAME Holds the name of the table in use by this model
     */
    const TABLE_NAME = 'user';

    /**
     * @name string PRI_INDEX Holds the name of the tables' primary index used in this model
     */
    const PRI_INDEX = 'id';

    /**
     * Retrieves record(s) from the database
     *
     * @param mixed $where Optional. Retrieves only the records matching given criteria, or all records if not given.
     *                      If associative array is given, it should fit field_name=>value pattern.
     *                      If string, value will be used to match against PRI_INDEX
     * @return mixed Single record if ID is given, or array of results
     */

    // function get_all_user áp dụng khi muốn lấy tất cả dữ liệu về trong 1 lần tải

   public function get_all_data()
   {
       $this->db->select('*');
        $this->db->order_by('id');
        $dl=$this->db->get('user');
        $dl=$dl->result_array();
        return $dl;
   }
    public function getTotalData()
    {
    	$this->db->select('*');
    	$this->db->order_by('id');
    	$dl=$this->db->get('user');
    	$dl=$dl->result_array();
    	return $dl;
    }

    public function load_data_by_page($number_current_page,$number_data_of_page)
    {

        $this->db->select('*');
        $this->db->order_by('id', 'desc');

        $vitri=($number_current_page-1)* $number_data_of_page;

        // Lấy data dựa trên thông số trang hiện tại ($number_current_page)
        $data_of_page=$this->db->get('user', $number_data_of_page , $vitri);
        
        $data=$data_of_page->result_array();

        // Lấy tổng số data
        $all_data=$this->db->get('user');
        $all_data=$all_data->result_array();
        // Tính tổng số data
        $total_number_data= count($all_data);
        // Tính số trang (tổng số tin chia cho số tin trong 1 trang nhận từ controller)
        $number_page=ceil($total_number_data/$number_data_of_page);

        // Gửi dữ liệu sang Controller
        $dulieu = array(
            'data' => $data,
            'number_page' => $number_page 
            
        );
        return $dulieu;

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
    public function update_act($id_nhan_tu_controller,$user_name,$content)
    {
        $data_update = array(
            'id' => $id_nhan_tu_controller,
            'user_name'=>$user_name,
            'content'=>$content
            
        );
        $this->db->where('id', $id_nhan_tu_controller);
        $this->db->update('user', $data_update);
        if ($this->db->affected_rows()>0)
        {
        # code...
            echo("thanhcong");
        }
        else{
            echo("thatbai");
        }
    }
    public function destroy_avatar_old_act($id)
    {
        $this->db->select('*');
        $this->db->where('id', $id);
        $dl=$this->db->get('user');
        $dl=$dl->result_array();
        return $dl;
    }

    /**
     * Inserts new data into database
     *
     * @param Array $data Associative array with field_name=>value pattern to be inserted into database
     * @return mixed Inserted row ID, or false if error occured
     */
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
    public function update(Array $data, $where = array()) {
    	if (!is_array($where)) {
    		$where = array(self::PRI_INDEX => $where);
    	}
    	$this->db->update(self::TABLE_NAME, $data, $where);
    	return $this->db->affected_rows();
    }

    // show-hidden
    public function hidden_show($id,$thamso)
    {

        $data_update = array(
            'user_status'=>$thamso

        );
        
        $this->db->where('id', $id);
        return $this->db->update('user', $data_update);
    }
    public function change_level_act($id,$level)
    {

        $data_update = array(
            'level'=>$level

        );
        
        $this->db->where('id', $id);
        return $this->db->update('user', $data_update);
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