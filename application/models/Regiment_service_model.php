<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Regiment_Service_model extends CI_Model {

	public function __construct()
	{
		// Call the CI_Model constructor
		parent::__construct();
	}

	/**
	*      List all Regiment_Services
	*/
	public function getAll() {
		$sql = "SELECT * FROM regiment_service c;";
		$query = $this->db->query($sql);
		return $query->result();  
	}


	/**
	*      List all Regiment_Services
	*/
	public function getRegiment_Service($id) {
		$sql = "SELECT * FROM regiment_service w WHERE w.id=?;";
		$query = $this->db->query($sql, array($id));
		return $query->result();  
	}

	/**
    *  Updates an Regiment_Service
    */
    public function editRegiment_Service($basicForm) {

        $sql = "UPDATE regiment_service SET name=? WHERE id=?";
        $result = $this->db->query($sql, array($basicForm['name'], $basicForm['id']));

        if($result) {
            return array('area' => 'main', 'type'=>'success', 'message'=>'Save completed');
        } else {
            return array('area' => 'main', 'type'=>'failure', 'message'=>'Database error');     
        }
    }

    /**
    *       Inserts an Regiment_Service
    */
    public function addRegiment_Service($basicForm) {

        $sql = "INSERT INTO regiment_service (name) VALUES(?)";
        $result = $this->db->query($sql, array($basicForm['name']));

        if($result) {
            return array('area' => 'main', 'type'=>'success', 'message'=>'Save completed');
        } else {
            return array('area' => 'main', 'type'=>'failure', 'message'=>'Database error');     
        }
    }

    /**
    *   Deletes a Regiment_Service
    */
    public function deleteRegiment_Service($id) {
        $sql = "DELETE FROM regiment_service WHERE id = ?;";
        $result = $this->db->query($sql, array($id));
        if($result) {
            return array('area' => 'main', 'type'=>'success', 'message'=>'Delete completed');
        } else {
            return array('area' => 'main', 'type'=>'failure', 'message'=>'Database error');     
        }
    }

}