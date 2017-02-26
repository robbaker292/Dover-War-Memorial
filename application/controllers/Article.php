<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Article extends CI_Controller {

	/**
	*	Lists the sections of articles
	*/
	public function index() {
		//is the user logged in
		$loggedIn = $this->user_model->isLoggedIn($this->session->token);

		$this->load->model('article_model');
		$articles_data = $this->article_model->getArticlesFromCategories();
		//var_dump($articles_data);

		$data = array(
			'articles_data' => $articles_data,
			"loggedIn" => $loggedIn
		);

		$this->load->view('header', array("title" => "Information Index - Dover War Memorial Project"));
		$this->load->view('article_list_view', $data);
		$this->load->view('footer');
	}

	/**
	*	Displays the details of the given article
	*/
	public function view($id, $name = null) {
		//is the user logged in
		$loggedIn = $this->user_model->isLoggedIn($this->session->token);

		$this->load->model('article_model');
		$article_data = $this->article_model->getArticle($id);

		//redirect if invalid url
		if(count($article_data) == 0) {
			redirect(site_url());
		}

		//rewrite url to be nicer
		if($name == null) {
			$name = urlencode($article_data[0]->title);
			redirect(site_url(uri_string()."/".$name));
		}

		$data = array(
			'article_data' => $article_data[0],
			"loggedIn" => $loggedIn
		);

		$this->load->view('header', array(
			"title" => $article_data[0]->title." - Dover War Memorial Project"));
		$this->load->view('article_view', $data);
		$this->load->view('footer');

	}

	/**
	*	Displays the edit page of the given article
	*/
	public function edit($id = null) {
		//is the user logged in
		$loggedIn = $this->user_model->isLoggedIn($this->session->token);
		if($loggedIn || $id==null) {

			$this->load->model('article_model');
			$categories = $this->article_model->getCategories();

			//is an article being created?
			if($id == "-1") {
				$data = array(
					'loggedIn' => $loggedIn,
					'categories' => $categories,
					'new' => true
				);

				$this->load->view('header', array("title" => "Creating: Article - Dover War Memorial Project"));
				$this->load->view('article_edit_view', $data);
				$this->load->view('footer');

			//editing rather than creating
			} else {		
				$article = $this->article_model->getArticle($id);
				
				if(count($article) == 0) {
					redirect("article");
				}
				$data = array(
					'article' => $article[0],
					'categories' => $categories,
					'loggedIn' => $loggedIn,
					'new' => false
				);

				$this->load->view('header', array("title" => "Editing: ".$article[0]->title." - Dover War Memorial Project"));
				$this->load->view('article_edit_view', $data);
				$this->load->view('footer');

			}

		} else {
			redirect("siteUpdate");
		}

	}


	/**
	* Handles the updating of an article
	*/
	public function doUpdate() {
		//is the user logged in
		$loggedIn = $this->user_model->isLoggedIn($this->session->token);
		if($loggedIn) {

			$basicForm = $this->input->post();

			if($basicForm["category_id"]=="null") {
				$basicForm["category_id"] = null;
			}
			var_dump($basicForm);


			$this->load->model('article_model');

			if($basicForm['id']=="") {
				//add new update
				$result = $this->article_model->addArticle($basicForm);
			} else {
				//edit update
				$result = $this->article_model->editArticle($basicForm);
			}

			//if the update worked
			if($result["type"] == "success") {
				//store the result data
				$this->session->set_flashdata($result);
				echo json_encode($result);
			} else {
				//output the error message :(
				header('HTTP/1.1 500 Internal Server Error');
       			header('Content-Type: application/json; charset=UTF-8');
        		die(json_encode($result));
			}

		} else {
			//return error message :(
			header('HTTP/1.1 500 Internal Server Error');
   			header('Content-Type: application/json; charset=UTF-8');
    		die(json_encode(array('area' => 'main', 'type'=>'failure', 'message'=>'User is not logged in')));
		}
		
		
	}

}
