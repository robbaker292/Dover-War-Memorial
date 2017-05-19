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

        /**
        *       Lists the casualties from a memorial with the given firstletter as their surname
        */
        public function getCasualtiesOfLetterFromMemorialFromWar($memorialId, $warId, $firstLetter) {

                $query;
                if ($warId == 0) {
                    if($firstLetter == "any") {
                        //every war and other letter
                        $sql = "SELECT c.id, c.given_name, c.family_name, c.date_of_death, cl.name FROM casualty c
                            LEFT JOIN commemoration_location_casualty clc ON clc.casualty_id = c.id
                            LEFT JOIN commemoration_location cl ON clc.commemoration_location_id = cl.id
                            WHERE cl.id = ? AND c.family_name REGEXP '^[^A-Za-z]' ORDER BY c.family_name, c.given_name ASC
                        ";
                        $query = $this->db->query($sql, array($memorialId));
                    } else {
                        //every war and given letter
                        $sql = "SELECT c.id, c.given_name, c.family_name, c.date_of_death, cl.name FROM casualty c
                            LEFT JOIN commemoration_location_casualty clc ON clc.casualty_id = c.id
                            LEFT JOIN commemoration_location cl ON clc.commemoration_location_id = cl.id
                            WHERE cl.id = ? AND c.family_name LIKE ? ORDER BY c.family_name, c.given_name ASC
                        ";
                        $query = $this->db->query($sql, array($memorialId, $firstLetter."%"));
                    }
                } else {
                    if($firstLetter == "any") {
                        //given war and other letter
                        $sql = "SELECT c.id, c.given_name, c.family_name, c.date_of_death, cl.name FROM casualty c
                            LEFT JOIN commemoration_location_casualty clc ON clc.casualty_id = c.id
                            LEFT JOIN commemoration_location cl ON clc.commemoration_location_id = cl.id
                            WHERE cl.id = ? AND c.war = ? AND c.family_name REGEXP '^[^A-Za-z]' ORDER BY c.family_name, c.given_name ASC
                        ";
                        $query = $this->db->query($sql, array($memorialId, $warId));

                    } else {
                        //given war and given letter
                        $sql = "SELECT c.id, c.given_name, c.family_name, c.date_of_death, cl.name FROM casualty c
                            LEFT JOIN commemoration_location_casualty clc ON clc.casualty_id = c.id
                            LEFT JOIN commemoration_location cl ON clc.commemoration_location_id = cl.id
                            WHERE cl.id = ? AND c.war = ? AND c.family_name LIKE ? ORDER BY c.family_name, c.given_name ASC
                        ";
                        $query = $this->db->query($sql, array($memorialId, $warId, $firstLetter."%"));
                    }
                }

                
                return $query->result();

                //SELECT * FROM casualty WHERE family_name REGEXP '^[^A-Za-z]'
        }


        /**
        * Gets the list of memorials
        */
        public function getMemorialList($mainSection) {
                $sql = "SELECT cl.id, cl.name, COUNT(c.commemoration_location_id) AS casualties FROM commemoration_location cl
                    LEFT JOIN commemoration_location_casualty c ON c.commemoration_location_id = cl.id
                ";
                if($mainSection) {
                    $sql .= " WHERE mainOrder IS NOT NULL ";
                } else {
                     $sql .= " WHERE mainOrder IS NULL ";
                } 
                $sql .="   GROUP BY c.commemoration_location_id
                    ORDER BY mainOrder
                ";
                $query = $this->db->query($sql);
                return $query->result();  
        }

}