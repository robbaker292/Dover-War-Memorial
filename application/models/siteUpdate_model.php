<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class SiteUpdate_model extends CI_Model {

        public function __construct()
        {
                // Call the CI_Model constructor
                parent::__construct();
        }

        /*
        * Returns all the updates from a given year
        */
        public function getUpdatesFromYear($year) {
                $sql = "SELECT * FROM site_update WHERE YEAR(date) = ?";
                $query = $this->db->query($sql, array($year));
                return $query->result();
        }

        /**
        *       Counts the number of updates from all years
        */
        public function countUpdatesByYear() {
                $sql = "SELECT YEAR(date) AS 'year', COUNT(*) AS 'count' FROM site_update GROUP BY year ORDER BY year DESC";
                $query = $this->db->query($sql);
                return $query->result();
        }

}