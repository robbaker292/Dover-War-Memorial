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

}