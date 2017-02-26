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

        /*
        * Returns a specific update
        */
        public function getUpdate($id) {
                $sql = "SELECT * FROM site_update WHERE id = ?";
                $query = $this->db->query($sql, array($id));
                return $query->result();
        }

        /**
        *  Updates a site update
        */
        public function editSiteUpdate($basicForm) {

                $sql = "UPDATE site_update SET title=?, content=?, date=?, family=? WHERE id=?";
                $result = $this->db->query($sql, array($basicForm['title'], $basicForm['content'], $basicForm['date'], $basicForm['family'], $basicForm['id']));

                if($result) {
                    return array('area' => 'main', 'type'=>'success', 'message'=>'Save completed');
                } else {
                    return array('area' => 'main', 'type'=>'failure', 'message'=>'Database error');     
                }
        }

        /**
        *       Inserts a new site update
        */
        public function addSiteUpdate($basicForm) {

                $sql = "INSERT INTO site_update (title, content, date, family) VALUES(?,?,?,?)";
                $result = $this->db->query($sql, array($basicForm['title'], $basicForm['content'], $basicForm['date'], $basicForm['family']));

                if($result) {
                    return array('area' => 'main', 'type'=>'success', 'message'=>'Save completed');
                } else {
                    return array('area' => 'main', 'type'=>'failure', 'message'=>'Database error');     
                }
        }

}