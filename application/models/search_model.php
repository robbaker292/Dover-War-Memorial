<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Search_model extends CI_Model {

    public function __construct()
    {
        // Call the CI_Model constructor
        parent::__construct();
    }

    public function testDb() {
        $query = $this->db->query("SELECT * FROM war");
        return $query->result();
    }

    public function getSearchResults($term, $options) {

        $query = array(); //query
        $count = 0; //number of parameters

        if(in_array("casualty", $options)) {
            $query[] = "(
                SELECT \"casualty\" AS type, id, CONCAT(given_name, \" \", middle_names, \" \", family_name) AS title, narrative AS content,
                (MATCH(given_name) AGAINST(?) + MATCH(family_name) AGAINST(?) + MATCH(given_name, middle_names, family_name, narrative) AGAINST(?)) as score
                FROM casualty
                WHERE MATCH(given_name, middle_names, family_name, narrative) AGAINST(?)
                )";
            $count += 4;
        }

        if(in_array("article", $options)) {
            $query[] = "(
                SELECT \"article\" AS type, id, title, content,
                MATCH(title, content) AGAINST(?) as score
                FROM article
                WHERE MATCH(title, content) AGAINST(?)
                )";
            $count += 2;
        }

        if(in_array("site_update", $options)) {
            $query[] = "(
                SELECT \"siteUpdate\" AS type, id, title, content,
                MATCH(title, content) AGAINST(?) as score
                FROM site_update
                WHERE MATCH(title, content) AGAINST(?)
                )";
            $count += 2;
        }

        if(in_array("memorial", $options)) {
            $query[] = "(
                SELECT \"memorial\" AS type, id, name AS title, narrative AS content,
                MATCH(name, narrative) AGAINST(?) as score
                FROM commemoration_location
                WHERE MATCH(name, narrative) AGAINST(?)
                )";
            $count += 2;
        }

        $sql = "";
        if(count($query) > 1) {
            $sql = implode(" UNION ", $query);
        } else {
           // var_dump($query);
            $sql = $query[0];
        }
        $sql .= " ORDER BY score DESC";

        $params = array();
        for ($i = 0; $i < $count; $i++) {
            $params[] = $term;
        }

        $search_query = $this->db->query($sql, $params);
        return $search_query->result();


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

}