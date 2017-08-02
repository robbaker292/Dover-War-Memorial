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
            $sql = "SELECT * FROM site_update WHERE YEAR(date) = ? AND date<NOW() ORDER BY date DESC ";
            $query = $this->db->query($sql, array($year));
            return $query->result();
    }

    /**
    *       Counts the number of updates from all years
    */
    public function countUpdatesByYear() {
            $sql = "SELECT YEAR(date) AS 'year', COUNT(*) AS 'count' FROM site_update WHERE date<NOW() GROUP BY year ORDER BY year DESC";
            $query = $this->db->query($sql);
            return $query->result();
    }

    /*
    * Returns a specific update
    */
    public function getUpdate($id) {
            $sql = "SELECT *, YEAR(date) AS 'year' FROM site_update WHERE id = ?";
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

    /*
    * Returns all the changes from a given year
    */
    public function getChangesFromYear($year) {
            $sql = "SELECT cl.id, cl.date, cl.item_id, cl.description, ct.name FROM change_log cl
                JOIN change_type ct ON cl.change_type = ct.id
                WHERE YEAR(date) = ? AND date<NOW() ORDER BY date DESC ";
            $query = $this->db->query($sql, array($year));
            return $query->result();
    }

    /**
    *       Counts the number of changes from all years
    */
    public function countChangesByYear() {
            $sql = "SELECT YEAR(date) AS 'year', COUNT(*) AS 'count' FROM change_log WHERE date<NOW() GROUP BY year ORDER BY year DESC";
            $query = $this->db->query($sql);
            return $query->result();
    }

    /**
    *   Deletes a change log entry
    */
    public function deleteChangeLog($id) {
        $sql = "DELETE FROM change_log WHERE id = ?;";
        $result = $this->db->query($sql, array($id));
        if($result) {
            return array('area' => 'main', 'type'=>'success', 'message'=>'Delete completed');
        } else {
            return array('area' => 'main', 'type'=>'failure', 'message'=>'Database error');     
        }
    }

    /**
    *   Deletes a site update
    */
    public function deleteSiteUpdate($id) {
        $sql = "DELETE FROM site_update WHERE id = ?;";
        $result = $this->db->query($sql, array($id));
        if($result) {
            return array('area' => 'main', 'type'=>'success', 'message'=>'Delete completed');
        } else {
            return array('area' => 'main', 'type'=>'failure', 'message'=>'Database error');     
        }
    }

    /*
    * Returns the most recent update
    */
    public function getLastUpdate() {
        $sql = "SELECT * FROM site_update WHERE date<NOW() ORDER BY date DESC LIMIT 1";
        $query = $this->db->query($sql);
        return $query->result();
    }

    /*
    * Returns the future updates
    */
    public function getFutureUpdates() {
        $sql = "SELECT * FROM site_update WHERE date>NOW() ORDER BY date";
        $query = $this->db->query($sql);
        return $query->result();
    }

}