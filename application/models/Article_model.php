<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Article_model extends CI_Model {

    public function __construct()
    {
        // Call the CI_Model constructor
        parent::__construct();
    }

    /*
    * Returns a list of categories
    */
    public function getCategories() {
        $sql = "SELECT * FROM article_category ac";
        $query = $this->db->query($sql);
        return $query->result();
    }

    /*
    * Returns a list of articles in all categories
    */
    public function getArticlesFromCategories() {
        $sql = "SELECT a.id, a.title, a.category_id, ac.name FROM article a JOIN article_category ac ON a.category_id = ac.id ORDER BY ac.id, a.title";
        $query = $this->db->query($sql);

        //convert the results into a better layout
        $result = array();
        foreach($query->result() as $line) {
            $result[$line->category_id][] = array('id'=> $line->id, 'title'=>$line->title, 'category_name'=>$line->name );
        }
        ksort($result);
        return $result;
    }

    /**
    *   Gets the details of an article
    */
    public function getArticle($id) {
        $sql = "SELECT * FROM article a WHERE a.id = ?";
        $query = $this->db->query($sql, array($id));
        return $query->result();
    }


    /**
    *  Updates an article
    */
    public function editArticle($basicForm) {

        $sql = "UPDATE article SET title=?, content=?, posted_date=?, category_id=? WHERE id=?";
        $result = $this->db->query($sql, array($basicForm['title'], $basicForm['content'], $basicForm['posted_date'], $basicForm['category_id'], $basicForm['id']));

        if($result) {
            return array('area' => 'main', 'type'=>'success', 'message'=>'Save completed');
        } else {
            return array('area' => 'main', 'type'=>'failure', 'message'=>'Database error');     
        }
    }

    /**
    *       Inserts an article
    */
    public function addArticle($basicForm) {

        $sql = "INSERT INTO article (title, content, posted_date, category_id) VALUES(?,?,?,?)";
        $result = $this->db->query($sql, array($basicForm['title'], $basicForm['content'], $basicForm['posted_date'], $basicForm['category_id']));

        if($result) {
            return array('area' => 'main', 'type'=>'success', 'message'=>'Save completed');
        } else {
            return array('area' => 'main', 'type'=>'failure', 'message'=>'Database error');     
        }
    }

    /**
    *   Deletes a article
    */
    public function deleteArticle($id) {
        $sql = "DELETE FROM article WHERE id = ?;";
        $result = $this->db->query($sql, array($id));
        if($result) {
            return array('area' => 'main', 'type'=>'success', 'message'=>'Delete completed');
        } else {
            return array('area' => 'main', 'type'=>'failure', 'message'=>'Database error');     
        }
    }

    /*
    * Returns a list of articles in no category
    */
    public function getArticlesNoCategory() {
        $sql = "SELECT id, title, posted_date FROM article a WHERE category_id IS NULL";
        $query = $this->db->query($sql);
        return $query->result();
    }

}