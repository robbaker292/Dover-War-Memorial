<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Memorial_model extends CI_Model {

        public function __construct()
        {
                // Call the CI_Model constructor
                parent::__construct();
        }

         /*
        * Returns all the data about the given memorial
        */
        public function getMemorial($id) {
                $sql = "SELECT * FROM commemoration_location WHERE id = ?";
                $query = $this->db->query($sql, array($id));
                return $query->result();
        }

        /**
        *       Lists the casualties from a memorial
        */
        public function getCasualtiesFromMemorial($memorialId) {
                $sql = "SELECT c.id, c.given_name, c.family_name, c.date_of_death, cl.name FROM casualty c
                        LEFT JOIN commemoration_location_casualty clc ON clc.casualty_id = c.id
                        LEFT JOIN commemoration_location cl ON clc.commemoration_location_id = cl.id
                        WHERE cl.id = ? ORDER BY c.family_name, c.given_name ASC
                ";
                $query = $this->db->query($sql, array($memorialId));
                return $query->result();
        }

}