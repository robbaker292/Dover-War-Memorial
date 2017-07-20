<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Meta_model extends CI_Model {

    public function __construct()
    {
        // Call the CI_Model constructor
        parent::__construct();
    }


    /**
    *   Gets the details of a meta page
    */
    public function getMeta($id) {
        $sql = "SELECT * FROM meta m WHERE m.id = ?";
        $query = $this->db->query($sql, array($id));
        return $query->result();
    }

    /**
    *   Gets the details of a meta page
    */
    public function getMetaContent($id) {
        $sql = "SELECT content FROM meta m WHERE m.id = ?";
        $query = $this->db->query($sql, array($id));
        return $query->result()[0]->content;
    }

    /**
    *  Updates or adds a meta page
    */
    public function editMeta($basicForm) {
        $sql = "INSERT INTO meta (id, title, content, whereUsed) VALUES (?,?,?,?) ON DUPLICATE KEY UPDATE title=?, content=?, whereUsed=?";

        $result = $this->db->query($sql, array($basicForm['id'], $basicForm['title'], $basicForm['content'], $basicForm['whereUsed'],$basicForm['title'], $basicForm['content'], $basicForm['whereUsed']));

        if($result) {
            return array('area' => 'main', 'type'=>'success', 'message'=>'Save completed');
        } else {
            return array('area' => 'main', 'type'=>'failure', 'message'=>'Database error');     
        }
    }

    /**
    *   Lists all meta pages
    */
    public function listMeta() {
        $sql = "SELECT * FROM meta m";
        $query = $this->db->query($sql);
        return $query->result();
    }

    /**
    *   Adds to change log
    */
    public function addToChangeLog($data) {
        $sql = "INSERT INTO change_log (change_type, item_id, description, date) VALUES(?,?,?, NOW())";
        $result = $this->db->query($sql, array($data["type"],$data["id"],$data["reason"]));
        if($result) {
            return array('area' => 'main', 'type'=>'success', 'message'=>'Save completed');
        } else {
            return array('area' => 'main', 'type'=>'failure', 'message'=>'Database error');     
        }
    }

}