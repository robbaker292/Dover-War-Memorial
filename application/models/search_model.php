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
                WHERE MATCH(given_name, middle_names, family_name, narrative) AGAINST(? IN BOOLEAN MODE)
                )";
            $count += 4;
        }

        if(in_array("article", $options)) {
            $query[] = "(
                SELECT \"article\" AS type, id, title, content,
                MATCH(title, content) AGAINST(? IN BOOLEAN MODE) as score
                FROM article
                WHERE MATCH(title, content) AGAINST(? IN BOOLEAN MODE)
                )";
            $count += 2;
        }

        if(in_array("site_update", $options)) {
            $query[] = "(
                SELECT \"siteUpdate\" AS type, id, title, content,
                MATCH(title, content) AGAINST(? IN BOOLEAN MODE) as score
                FROM site_update
                WHERE MATCH(title, content) AGAINST(? IN BOOLEAN MODE)
                )";
            $count += 2;
        }

        if(in_array("memorial", $options)) {
            $query[] = "(
                SELECT \"memorial\" AS type, id, name AS title, narrative AS content,
                MATCH(name, narrative) AGAINST(? IN BOOLEAN MODE) as score
                FROM commemoration_location
                WHERE MATCH(name, narrative) AGAINST(? IN BOOLEAN MODE)
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

}