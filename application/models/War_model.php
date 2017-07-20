<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class War_model extends CI_Model {

	public function __construct()
	{
		// Call the CI_Model constructor
		parent::__construct();
	}

	/**
	*       Lists the casualties from a given war
	*/
	public function getCasualtiesFromWar($warId) {
		$sql = "SELECT c.id, c.given_name, c.family_name, c.date_of_death, w.name FROM casualty c
			LEFT JOIN war w ON c.war = w.id
			WHERE w.id = ?
			";
		$query = $this->db->query($sql, array($warId));
		return $query->result();
	}

	/**
	*      List all Wars
	*/
	public function getAll() {
		$sql = "SELECT * FROM war c;";
		$query = $this->db->query($sql);
		return $query->result();  
	}


	/**
	*      List all Wars
	*/
	public function getWar($id) {
		$sql = "SELECT * FROM war w WHERE w.id=?;";
		$query = $this->db->query($sql, array($id));
		return $query->result();  
	}

	/**
    *  Updates an War
    */
    public function editWar($basicForm) {

        $sql = "UPDATE war SET name=? WHERE id=?";
        $result = $this->db->query($sql, array($basicForm['name'], $basicForm['id']));

        if($result) {
            return array('area' => 'main', 'type'=>'success', 'message'=>'Save completed');
        } else {
            return array('area' => 'main', 'type'=>'failure', 'message'=>'Database error');     
        }
    }

    /**
    *       Inserts an War
    */
    public function addWar($basicForm) {

        $sql = "INSERT INTO war (name) VALUES(?)";
        $result = $this->db->query($sql, array($basicForm['name']));

        if($result) {
            return array('area' => 'main', 'type'=>'success', 'message'=>'Save completed');
        } else {
            return array('area' => 'main', 'type'=>'failure', 'message'=>'Database error');     
        }
    }

    /**
    *   Deletes a war
    */
    public function deleteWar($id) {
    	$sql = "DELETE FROM war WHERE id = ?;";
        $result = $this->db->query($sql, array($id));
        if($result) {
            return array('area' => 'main', 'type'=>'success', 'message'=>'Delete completed');
        } else {
            return array('area' => 'main', 'type'=>'failure', 'message'=>'Database error');     
        }
    }

}