<?php if (!defined('BASEPATH')) exit('No direct script access allowed');

class CrudMenuModel extends CI_Model {

    /**
     * @name string TABLE_NAME Holds the name of the table in use by this model
     */
    const TABLE_NAME = 'menu';

    /**
     * @name string PRI_INDEX Holds the name of the tables' primary index used in this model
     */
    const PRI_INDEX = 'menu_id';

    /**
     * Retrieves record(s) from the database
     *
     * @param mixed $where Optional. Retrieves only the records matching given criteria, or all records if not given.
     *                      If associative array is given, it should fit field_name=>value pattern.
     *                      If string, value will be used to match against PRI_INDEX
     * @return mixed Single record if ID is given, or array of results
     */
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
    public function get_all_data()
    {
       $this->db->select('*');
       $this->db->order_by('id');
       $this->db->where('level', 0);
       $dl=$this->db->get('menu');
       $dl=$dl->result_array();
       return $dl;
   } 
   public function get_data_by_ctv()
    {
       $this->db->select('*');
       $this->db->order_by('id');
       $this->db->where('level', 0);
       $this->db->where('menu_status',0);
       $dl=$this->db->get('menu');
       $dl=$dl->result_array();
       return $dl;
   }
    /**
     * Inserts new data into database
     *
     * @param Array $data Associative array with field_name=>value pattern to be inserted into database
     * @return mixed Inserted row ID, or false if error occured
     */
    // public function insert(Array $data)
    // {
    //      // code của crud model
    //         if ($this->db->insert(self::TABLE_NAME, $data)) {
    //             return $this->db->insert_id();
    //         } else {
    //             return false;
    //         }
    //     // end code crud model
    // }
    public function insert(Array $data) 
    {
        $name=$data['name'];
        
        // kiểm tra dữ liệu nhập vào
        $dl= $this->db->where('name', $name)->get('menu'); 
        $dl=$dl->result();
        if ($dl == NULL) 
        {

        // code của crud model
            if ($this->db->insert(self::TABLE_NAME, $data)) {
                return $this->db->insert_id();
            } else {
                return false;
            }
        // end code crud model
        }

    }

    /**
     * Updates selected record in the database
     *
     * @param Array $data Associative array field_name=>value to be updated
     * @param Array $where Optional. Associative array field_name=>value, for where condition. If specified, $id is not used
     * @return int Number of affected rows by the update query
     */

    public function get_data_menu_by_id($id)
    {
        $this->db->select('*');
        $this->db->order_by('id');
        $this->db->where('id', $id);
        $dl=$this->db->get('menu');
        $dl=$dl->result_array();
        return $dl;
    }
    public function update(Array $data, $where = array()) 
    {
        $name=$data['name'];
        $img=$data['img'];
      


        // kiểm tra dữ liệu nhập vào
        $this->db->where('name', $name); 
        $name_check=$this->db->get('menu');
        $name_check=$name_check->result();
        // kiểm tra dữ liệu nhập vào
        $this->db->where('img', $img); 
        $img_check=$this->db->get('menu');
        $img_check=$img_check->result();
        
        if (($name_check == NULL) or ($name_check !=NULL && $img_check==NULL)) 
        {
            # code...
            if (!is_array($where)) 
            {
                $where = array(self::PRI_INDEX => $where);
            }
            $this->db->update(self::TABLE_NAME, $data, $where);
            return $this->db->affected_rows();
        }
    }

    /**
     * Deletes specified record from the database
     *
     * @param Array $where Optional. Associative array field_name=>value, for where condition. If specified, $id is not used
     * @return int Number of rows affected by the delete query
     */
     public function get_data_delete($id)
    {

       $this->db->select('*');
       $this->db->where('level', $id);

       $dulieu=$this->db->get('menu');
       $dulieu=$dulieu->result_array();
       if ($dulieu == NULL) {
           $ketqua= "Dữ liệu menu con rỗng";
       }
       else{
        $ketqua= "Dữ liệu menu con đầy";
       }
       
       return $ketqua;
      

       

   }
     public function delete($where = array()) {
        if (!is_array($where)) {
            $where = array(self::PRI_INDEX => $where);
        }
        $this->db->delete(self::TABLE_NAME, $where);
        return $this->db->affected_rows();
    }


    // show-hidden
    public function hidden_show($id,$thamso)
    {

        $data_update = array(
            'status'=>$thamso

        );
        
        $this->db->where('id', $id);
        return $this->db->update('menu', $data_update);
    }



}
?>