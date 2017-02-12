<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class General_model extends CI_Model {

        public function __construct()
        {
                // Call the CI_Model constructor
                parent::__construct();
        }

        /**
        *       Lists all wars
        */
        public function getWars() {
                $sql = "SELECT * FROM war";
                $query = $this->db->query($sql);
                return $query->result();
        }

         /**
        *       Lists all regiments
        */
        public function getRegiments() {
                $sql = "SELECT * FROM regiment_service";
                $query = $this->db->query($sql);
                return $query->result();
        }

        /**
        *       Lists all commemoration locations
        */
        public function getCommemorationLocations() {
                $sql = "SELECT id, name FROM commemoration_location";
                $query = $this->db->query($sql);
                return $query->result();
        }

        /**
        *       Lists all ranks
        */
        public function getRanks() {
                $sql = "SELECT * FROM rank";
                $query = $this->db->query($sql);
                return $query->result();
        }

        /**
        *       Lists all countries
        */
        public function getCountries() {
                $sql = "SELECT * FROM service_country";
                $query = $this->db->query($sql);
                return $query->result();
        }

        /**
        *       Lists all places
        */
        public function getPlaces() {
                $sql = "SELECT id, name FROM place";
                $query = $this->db->query($sql);
                return $query->result();
        }

}