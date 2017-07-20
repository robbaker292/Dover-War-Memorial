<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Place_model extends CI_Model {

	public function __construct()
	{
		// Call the CI_Model constructor
		parent::__construct();
	}

	/**
	*      List all Places
	*/
	public function getAll() {
		$sql = "SELECT * FROM place c;";
		$query = $this->db->query($sql);
		return $query->result();  
	}


	/**
	*      List all Places
	*/
	public function getPlace($id) {
		$sql = "SELECT * FROM place w WHERE w.id=?;";
		$query = $this->db->query($sql, array($id));
		return $query->result();  
	}

	/**
    *  Updates an Place
    */
    public function editPlace($basicForm) {

        $sql = "UPDATE place SET name=?, lat=?, lon=? WHERE id=?";
        $result = $this->db->query($sql, array($basicForm['name'], $basicForm['lat'], $basicForm['lon'], $basicForm['id']));

        if($result) {
            return array('area' => 'main', 'type'=>'success', 'message'=>'Save completed');
        } else {
            return array('area' => 'main', 'type'=>'failure', 'message'=>'Database error');     
        }
    }

    /**
    *       Inserts an Place
    */
    public function addPlace($basicForm) {

        $sql = "INSERT INTO place (name, lat, lon) VALUES(?,?,?)";
        $result = $this->db->query($sql, array($basicForm['name'], $basicForm['lat'], $basicForm['lon']));

        if($result) {
            return array('area' => 'main', 'type'=>'success', 'message'=>'Save completed');
        } else {
            return array('area' => 'main', 'type'=>'failure', 'message'=>'Database error');     
        }
    }

    /**
    *   Deletes a Place
    */
    public function deletePlace($id) {
        $sql = "DELETE FROM place WHERE id = ?;";
        $result = $this->db->query($sql, array($id));
        if($result) {
            return array('area' => 'main', 'type'=>'success', 'message'=>'Delete completed');
        } else {
            return array('area' => 'main', 'type'=>'failure', 'message'=>'Database error');     
        }
    }

}