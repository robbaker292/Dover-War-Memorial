<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Casualty_model extends CI_Model {

    public function __construct()
    {
        // Call the CI_Model constructor
        parent::__construct();
    }

    public function testDb() {
        $query = $this->db->query("SELECT * FROM war");
        return $query->result();
    }

    /*
    * Returns all the data about the given casualty
    */
    public function getCasualty($id) {
        $sql = "SELECT c.id, c.given_name, c.middle_names, c.family_name, c.narrative, c.civilian, c.gender, c.date_of_birth, c.date_of_death, c.recently_uploaded, frp.name AS 'final_resting_place', r.name AS 'rank', w.name AS 'war', sc.name AS 'country', pb.name AS 'place_of_birth', lka.name AS 'last_known_address', last_known_address_year, scf.flag FROM casualty c
            LEFT JOIN commemoration_location frp ON c.final_resting_place = frp.id
            LEFT JOIN war w ON c.war = w.id
            LEFT JOIN rank r ON c.rank_at_death = r.id
            LEFT JOIN service_country sc ON c.service_country = sc.id
            LEFT JOIN service_country_flag scf ON scf.country_id = sc.id
            LEFT JOIN place pb ON c.place_of_birth = pb.id
            LEFT JOIN place lka ON c.last_known_address = lka.id
            WHERE c.id = ?
        ";
        $query = $this->db->query($sql, array($id));
        return $query->result();
    }

    /*
    * Returns basic data about the given casualty
    */
    public function getCasualtyBasic($id) {
        $sql = "SELECT * FROM casualty c WHERE c.id = ?
        ";
        $query = $this->db->query($sql, array($id));
        return $query->result();
    }

    /*
    * Returns the all the places the casualty is commemorated
    */
    public function getCommemorations($id) {
        $sql = "SELECT cl.name FROM casualty c
            LEFT JOIN commemoration_location_casualty clc ON clc.casualty_id = c.id
            LEFT JOIN commemoration_location cl ON clc.commemoration_location_id = cl.id
            WHERE c.id = ?
        ";
        $query = $this->db->query($sql, array($id));
        return $query->result();
    }    

    /*
    * Returns the regiments and services the casualty was in
    */
    public function getRegimentService($id) {
        $sql = "SELECT rs.name FROM casualty c
            LEFT JOIN regiment_service_casualty rsc ON c.id = rsc.casualty_id
            LEFT JOIN regiment_service rs ON rs.id = rsc.regiment_service_id
            WHERE c.id = ?
        ";
        $query = $this->db->query($sql, array($id));
        return $query->result();
    }

    /*
    * Returns the service numbers the person had
    */
    public function getServiceNumbers($id) {
        $sql = "SELECT sn.service_number FROM casualty c
            LEFT JOIN service_number sn ON c.id = sn.casualty_id
            WHERE c.id = ?
        ";
        $query = $this->db->query($sql, array($id));
        return $query->result();
    }

    /**
    *   Updates or adds a casualty's details
    */
    public function updateCasualty($id, $data) {
    
        //list of valid keys
        $validKeys = array("id", "given_name", "middle_names", "family_name", "narrative", "war", "civilian", "gender", "final_resting_place", "date_of_birth", "date_of_death", "commemoration_photo", "rank_at_death", "service_country", "place_of_birth", "last_known_address", "last_known_address_year", "recently_uploaded");


        $keyText = "(";
        $valueArray = array();
        $paramText = "(";
        $updateText = "";
        foreach ($data as $key => $value) {
            if(in_array($key,$validKeys)) {
                $keyText .= $key.", ";
                $paramText .= "?, ";
                $updateText .= $key." = ?, ";

                if($value == "null") {
                    $valueArray[] = null;
                } else {
                    $valueArray[] = $value;
                }
            }
        }
        $keyText = substr($keyText,0,strlen($keyText)-2).")";
        $paramText = substr($paramText,0,strlen($paramText)-2).")";
        $updateText = substr($updateText,0,strlen($updateText)-2);


        $sql = "INSERT INTO casualty ".$keyText." VALUES ".$paramText. " ON DUPLICATE KEY UPDATE ".$updateText;

        $arr = array_merge($valueArray,$valueArray);

        $result = $this->db->query($sql, $arr);
        
        //get the id of the new casualty if needed
        $insert_id = $id;
        if($id == -1) {
            $insert_id = $this->db->insert_id();
        }        
        
        if($result) {
            return array('type'=>'success', 'message'=>'Save completed', 'insert_id' => $insert_id);
        } else {
            return array('type'=>'failure', 'message'=>'Database error');     
        }

    }

}