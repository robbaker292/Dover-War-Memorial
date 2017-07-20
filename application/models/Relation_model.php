<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Relation_model extends CI_Model {

	public function __construct()
	{
		// Call the CI_Model constructor
		parent::__construct();
	}

	/**
	*      List all Relations
	*/
	public function getAll() {
		$sql = "SELECT * FROM relation c;";
		$query = $this->db->query($sql);
		return $query->result();  
	}


	/**
	*      List all Relations
	*/
	public function getRelation($id) {
		$sql = "SELECT * FROM relation w WHERE w.id=?;";
		$query = $this->db->query($sql, array($id));
		return $query->result();  
	}

	/**
    *  Updates an Relation
    */
    public function editRelation($basicForm) {

        $sql = "UPDATE relation SET name=? WHERE id=?";
        $result = $this->db->query($sql, array($basicForm['name'], $basicForm['id']));

        if($result) {
            return array('area' => 'main', 'type'=>'success', 'message'=>'Save completed');
        } else {
            return array('area' => 'main', 'type'=>'failure', 'message'=>'Database error');     
        }
    }

    /**
    *       Inserts an Relation
    */
    public function addRelation($basicForm) {

        $sql = "INSERT INTO relation (name) VALUES(?)";
        $result = $this->db->query($sql, array($basicForm['name']));

        if($result) {
            return array('area' => 'main', 'type'=>'success', 'message'=>'Save completed');
        } else {
            return array('area' => 'main', 'type'=>'failure', 'message'=>'Database error');     
        }
    }

    /**
    *   Deletes a Relation
    */
    public function deleteRelation($id) {
        $sql = "DELETE FROM relation WHERE id = ?;";
        $result = $this->db->query($sql, array($id));
        if($result) {
            return array('area' => 'main', 'type'=>'success', 'message'=>'Delete completed');
        } else {
            return array('area' => 'main', 'type'=>'failure', 'message'=>'Database error');     
        }
    }

}