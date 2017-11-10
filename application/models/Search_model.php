<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Search_model extends CI_Model {

    public function __construct()
    {
        // Call the CI_Model constructor
        parent::__construct();
    }

    /**
    *   Displays the text search results
    */
    public function getSearchResults($term, $options) {

        $query = array(); //query
        $count = 0; //number of parameters

        if(in_array("casualty", $options)) {
            $query[] = "(
                SELECT \"casualty\" AS type, id, CONCAT(given_name, \" \", middle_names, \" \", family_name) AS title, narrative AS content,
                (MATCH(given_name) AGAINST(? IN BOOLEAN MODE) + MATCH(family_name) AGAINST(? IN BOOLEAN MODE) + MATCH(given_name, middle_names, family_name, narrative) AGAINST(? IN BOOLEAN MODE)) as score
                FROM casualty
                WHERE MATCH(given_name, middle_names, family_name, narrative) AGAINST(? IN BOOLEAN MODE) AND deleted=0
                )";
            $count += 4;
        }

        if(in_array("article", $options)) {
            $query[] = "(
                SELECT \"article\" AS type, id, title, content,
                MATCH(title, content) AGAINST(? IN BOOLEAN MODE) as score
                FROM article
                WHERE MATCH(title, content) AGAINST(? IN BOOLEAN MODE) AND deleted=0
                )";
            $count += 2;
        }

        if(in_array("site_update", $options)) {
            $query[] = "(
                SELECT \"siteUpdate\" AS type, id, title, content,
                MATCH(title, content) AGAINST(? IN BOOLEAN MODE) as score
                FROM site_update
                WHERE MATCH(title, content) AGAINST(? IN BOOLEAN MODE) AND deleted=0
                )";
            $count += 2;
        }

        if(in_array("memorial", $options)) {
            $query[] = "(
                SELECT \"memorial\" AS type, id, name AS title, narrative AS content,
                MATCH(name, narrative) AGAINST(? IN BOOLEAN MODE) as score
                FROM commemoration_location
                WHERE MATCH(name, narrative) AGAINST(? IN BOOLEAN MODE) AND deleted=0
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

    /**
    *   Performs a data seach on casulaties
    */
    public function performDataSearch($data) {

        //var_dump($data);
    
        //list of valid keys
        $validKeys = array("id", "given_name", "middle_names", "family_name", "narrative", "war", "civilian", "gender", "final_resting_place", "date_of_birth", "date_of_death", "commemoration_photo", "rank_at_death", "service_country", "place_of_birth", "last_known_address", "last_known_address_year", "recently_uploaded", "unsure_details", "commemoration_location.id", "regiment_service.id", "service_number.service_number");

        $query = array();
        $params = array();
        foreach($data as $key => $value) {
            if(in_array($key, $validKeys)) {
                $query[] = " ".$key."=? ";
                $params[] = $value;
                //var_dump($key, $value);
            }
        }

        $sql = "SELECT DISTINCT \"casualty\" AS type, c.id, CONCAT(c.given_name, \" \", c.middle_names, \" \", c.family_name) AS title, c.narrative AS content FROM casualty c ";
        $sql .= " LEFT JOIN commemoration_location_casualty clc ON clc.casualty_id = c.id LEFT JOIN commemoration_location cm ON clc.commemoration_location_id = cm.id AND cm.deleted=0";
        $sql .= " LEFT JOIN regiment_service_casualty rsc ON rsc.casualty_id = c.id LEFT JOIN regiment_service rs ON rsc.regiment_service_id=rs.id AND rs.deleted=0";
        $sql .= " LEFT JOIN service_number ON service_number.casualty_id = c.id ";
        $sql .= " WHERE c.deleted=0 AND";
        if(count($query) > 1) {
            $sql .= implode(" AND ", $query);
        } else {
            $sql .= $query[0];
        }
        

        //var_dump($sql, $params);

        $search_query = $this->db->query($sql, $params);
        return $search_query->result();

    }

}