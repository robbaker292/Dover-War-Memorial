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
                $sql = "SELECT c.given_name, c.middle_names, c.family_name, c.narrative, c.civilian, c.gender, c.date_of_birth, c.date_of_death, frp.name AS 'final_resting_place', r.name AS 'rank', w.name AS 'war', sc.name AS 'country', pb.name AS 'place_of_birth', lka.name AS 'last_known_address' FROM casualty c
                        LEFT JOIN commemoration_location frp ON c.final_resting_place = frp.id
                        LEFT JOIN war w ON c.war = w.id
                        LEFT JOIN rank r ON c.rank_at_death = r.id
                        LEFT JOIN service_country sc ON c.service_country = sc.id
                        LEFT JOIN place pb ON c.place_of_birth = pb.id
                        LEFT JOIN place lka ON c.last_known_address = lka.id
                        WHERE c.id = ?
                ";
                $query = $this->db->query($sql, array($id));
                return $query->result();
        }

        /*
        *  Returns the all the places the casualty is commemorated
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
        *  Returns the regiments and services the casualty was in
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
        *  Returns the service numbers the person had
        */
        public function getServiceNumbers($id) {
                $sql = "SELECT sn.service_number FROM casualty c
                        LEFT JOIN service_number sn ON c.id = sn.casualty_id
                        WHERE c.id = ?
                ";
                $query = $this->db->query($sql, array($id));
                return $query->result();
        }

}