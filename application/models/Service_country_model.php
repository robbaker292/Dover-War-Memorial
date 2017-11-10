<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Service_Country_model extends CI_Model {

	public function __construct()
	{
		// Call the CI_Model constructor
		parent::__construct();
	}

	/**
	*      List all Service_Countrys
	*/
	public function getAll() {
		$sql = "SELECT * FROM service_country c;";
		$query = $this->db->query($sql);
		return $query->result();  
	}


	/**
	*      List all Service_Countrys
	*/
	public function getService_Country($id) {
		$sql = "SELECT * FROM service_country w WHERE w.id=?;";
		$query = $this->db->query($sql, array($id));
		return $query->result();  
	}

	/**
    *  Updates an Service_Country
    */
    public function editService_Country($basicForm) {

        $sql = "UPDATE service_country SET id=?, name=? WHERE id=?";
        $result = $this->db->query($sql, array($basicForm['new_id'], $basicForm['name'], $basicForm['id']));

        if($result) {
            return array('area' => 'main', 'type'=>'success', 'message'=>'Save completed');
        } else {
            return array('area' => 'main', 'type'=>'failure', 'message'=>'Database error');     
        }
    }

    /**
    *       Inserts an Service_Country
    */
    public function addService_Country($basicForm) {

        $sql = "INSERT INTO service_country (id, name) VALUES(?,?)";
        $result = $this->db->query($sql, array($basicForm['new_id'], $basicForm['name']));

        if($result) {
            return array('area' => 'main', 'type'=>'success', 'message'=>'Save completed');
        } else {
            return array('area' => 'main', 'type'=>'failure', 'message'=>'Database error');     
        }
    }

    /**
    *   Deletes a Service_Country
    */
    public function deleteService_Country($id) {
        $sql = "UPDATE service_country SET deleted=1 WHERE id = ?;";
        $result = $this->db->query($sql, array($id));
        if($result) {
            return array('area' => 'main', 'type'=>'success', 'message'=>'Delete completed');
        } else {
            return array('area' => 'main', 'type'=>'failure', 'message'=>'Database error');     
        }
    }

    /**
    *   Restores a Service_Country
    */
    public function restoreService_Country($id) {
        $sql = "UPDATE service_country SET deleted=0 WHERE id = ?;";
        $result = $this->db->query($sql, array($id));
    }


}