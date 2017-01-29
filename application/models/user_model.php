<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class User_model extends CI_Model {

        public function __construct()
        {
                // Call the CI_Model constructor
                parent::__construct();
        }

        /**
        *       Check if a user is logged in
        */
        public function isLoggedIn($token) {

                if(is_null($token)) {
                        return false;
                }

                $sql = "SELECT * FROM user_token WHERE token = ? AND end > NOW()";
                $query = $this->db->query($sql, array($token));
                if(sizeof($query->result()) > 0) {

                        //update length of token
                        $sql = "UPDATE user_token SET end = NOW() + INTERVAL 6 HOUR WHERE token = ?";
                        $query = $this->db->query($sql, array($token));

                        //delete old tokens
                        $this->deleteOldTokens();

                        return true;
                } else {
                        return false;
                }
        }

        /**
        *       Logs a user out
        */
        public function logout($token) {
                //delete old tokens
                $sql = "DELETE FROM user_token WHERE token = ?";
                $query = $this->db->query($sql, array($token));

                $this->deleteOldTokens();
        }

        /**
        * Deletes old tokens
        */
        private function deleteOldTokens() {
                //delete old tokens
                $sql = "DELETE FROM user_token WHERE end < NOW()";
                $query = $this->db->query($sql);
        }

}