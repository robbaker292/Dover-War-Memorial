<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Rank_model extends CI_Model {

	public function __construct()
	{
		// Call the CI_Model constructor
		parent::__construct();
	}

	/**
	*      List all Ranks
	*/
	public function getAll() {
		$sql = "SELECT * FROM Rank c;";
		$query = $this->db->query($sql);
		return $query->result();  
	}


	/**
	*      List all Ranks
	*/
	public function getRank($id) {
		$sql = "SELECT * FROM Rank w WHERE w.id=?;";
		$query = $this->db->query($sql, array($id));
		return $query->result();  
	}

	/**
    *  Updates an Rank
    */
    public function editRank($basicForm) {

        $sql = "UPDATE rank SET name=? WHERE id=?";
        $result = $this->db->query($sql, array($basicForm['name'], $basicForm['id']));

        if($result) {
            return array('area' => 'main', 'type'=>'success', 'message'=>'Save completed');
        } else {
            return array('area' => 'main', 'type'=>'failure', 'message'=>'Database error');     
        }
    }

    /**
    *       Inserts an Rank
    */
    public function addRank($basicForm) {

        $sql = "INSERT INTO rank (name) VALUES(?)";
        $result = $this->db->query($sql, array($basicForm['name']));

        if($result) {
            return array('area' => 'main', 'type'=>'success', 'message'=>'Save completed');
        } else {
            return array('area' => 'main', 'type'=>'failure', 'message'=>'Database error');     
        }
    }

    /**
    *   Deletes a Rank
    */
    public function deleteRank($id) {
        $sql = "DELETE FROM rank WHERE id = ?;";
        $result = $this->db->query($sql, array($id));
        if($result) {
            return array('area' => 'main', 'type'=>'success', 'message'=>'Delete completed');
        } else {
            return array('area' => 'main', 'type'=>'failure', 'message'=>'Database error');     
        }
    }

}