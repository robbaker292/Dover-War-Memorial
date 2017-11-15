<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Meta extends CI_Controller {

	/**
	*	Handles the AJAX preview for editing some text
	*/
	public function parseMarkdown() {
		$raw = $this->input->post('raw');

		include APPPATH . 'third_party/Parsedown.php';
		include APPPATH . 'third_party/ParsedownExtra.php';
		$Parsedown = new ParsedownExtra();
		echo $Parsedown->text(preprocessMarkdown($raw));
	}

	/**
	*	Displays the home page
	*/
	public function index() {
		//is the user logged in
		$loggedIn = $this->user_model->isLoggedIn($this->session->token);


		$this->load->model('meta_model');
		$meta_data = $this->meta_model->getMeta("home");

		$this->load->model('siteUpdate_model');
		$update_data = $this->siteUpdate_model->getLastUpdate();

		$this->load->model('casualty_model');
		$casualty_data = $this->casualty_model->getCasualtyToday();

		$data = array(
			'meta_data' => $meta_data[0],
			'update_data' => $update_data[0],
			'casualty_data' => $casualty_data,
			'loggedIn' => $loggedIn
		);

		$this->load->view('header', array(
			"title" => "Dover War Memorial Project"));
		$this->load->view('meta_home_view', $data);
		$this->load->view('footer');
	}

	/**
	*	Displays the meta page
	*/
	public function view($id) {

		//is the user logged in
		$loggedIn = $this->user_model->isLoggedIn($this->session->token);

		$this->load->model('meta_model');
		$meta_data = $this->meta_model->getMeta($id);

		//redirect if invalid url
		if(count($meta_data) == 0) {
			redirect(site_url());
		}

		$data = array(
			'meta_data' => $meta_data[0],
			'loggedIn' => $loggedIn
		);

		$this->load->view('header', array(
			"title" => "Dover War Memorial Project"));
		$this->load->view('meta_content_view', $data);
		$this->load->view('footer');

	}

	/**
	*	Displays the entire meta page
	*/
	public function viewFull($id) {
		//is the user logged in
		$loggedIn = $this->user_model->isLoggedIn($this->session->token);

		$this->load->model('meta_model');
		$meta_data = $this->meta_model->getMeta($id);

		//redirect if invalid url
		if(count($meta_data) == 0) {
			redirect(site_url());
		}

		$data = array(
			'meta_data' => $meta_data[0],
			'loggedIn' => $loggedIn
		);

		$this->load->view('header', array(
			"title" => "Dover War Memorial Project"));
		$this->load->view('meta_view', $data);
		$this->load->view('footer');

	}

	/**
	*	Handles the loading of the edit page of a meta page
	*/
	public function edit($id = null) {
		//is the user logged in
		$loggedIn = $this->user_model->isLoggedIn($this->session->token);
		if($loggedIn || $id==null) {

			//is a meta page being created?
			if($id == "-1") {
				$data = array(
					'loggedIn' => $loggedIn,
					'new' => true
				);

				$this->load->view('header', array("title" => "Creating: Meta Page - Dover War Memorial Project"));
				$this->load->view('meta_edit_view', $data);
				$this->load->view('footer');

			//editing rather than creating
			} else {
				$this->load->model('meta_model');		
				$meta = $this->meta_model->getMeta($id);
				if(count($meta) == 0) {
					redirect("/");
				}
				$data = array(
					'meta' => $meta[0],
					'loggedIn' => $loggedIn,
					'new' => false
				);

				$this->load->view('header', array("title" => "Editing: Meta Page - Dover War Memorial Project"));
				$this->load->view('meta_edit_view', $data);
				$this->load->view('footer');

			}


		} else {
			redirect("/");
		}

	}

	/**
	* Handles the updating of a meta page
	*/
	public function doUpdate() {
		//is the user logged in
		$loggedIn = $this->user_model->isLoggedIn($this->session->token);
		if($loggedIn) {

			$basicForm = $this->input->post();

			$this->load->model('meta_model');

			//edit meta page
			$result = $this->meta_model->editMeta($basicForm);

			if($basicForm["changed_details"]!="") {
				$this->load->model('general_model');
				$this->general_model->addToChangeLog(
					array(
							'type' => 4,
							'id' => $result["id"],
							'reason' => $basicForm["changed_details"]
						)
					);
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
			header('HTTP/1.1 401 Unauthorized');
   			header('Content-Type: application/json; charset=UTF-8');
    		die(json_encode(array('area' => 'main', 'type'=>'failure', 'message'=>'User is not logged in')));
		}
	}

	/**
	*	Lists all meta pages
	*/
	public function listAll() {
		//is the user logged in
		$loggedIn = $this->user_model->isLoggedIn($this->session->token);
		if($loggedIn) {

			$this->load->model('meta_model');
			$meta_data = $this->meta_model->listMeta();
			$meta = $this->meta_model->getMeta("metaList");

			$this->load->model('casualty_model');
			$casualty_data = $this->casualty_model->getCasualtyNoMemorial();

			$this->load->model('article_model');
			$article_data = $this->article_model->getArticlesNoCategory();

			$this->load->model('siteUpdate_model');
			$update_data = $this->siteUpdate_model->getFutureUpdates();

			$data = array(
				'meta_data' => $meta_data,
				'meta' => $meta[0],
				'loggedIn' => $loggedIn,
				'casualty_data' => $casualty_data,
				'article_data' => $article_data,
				'update_data' => $update_data
			);

			$this->load->view('header', array(
				"title" => "List Meta Pages - Dover War Memorial Project"));
			$this->load->view('meta_list_view', $data);
			$this->load->view('footer');

		} else {
			redirect(base_url());
		}
	}

	/**
	*	Lists all meta pages
	*/
	public function deleted() {
		//is the user logged in
		$loggedIn = $this->user_model->isLoggedIn($this->session->token);
		if($loggedIn) {

			$this->load->model('casualty_model');
			$casualty_data = $this->casualty_model->getDeleted();

			$this->load->model('article_model');
			$article_data = $this->article_model->getDeleted();

			$this->load->model('siteUpdate_model');
			$update_data = $this->siteUpdate_model->getDeleted();

			$this->load->model('memorial_model');
			$memorial_data = $this->memorial_model->getDeleted();

			$data = array(
				'loggedIn' => $loggedIn,
				'casualty_data' => $casualty_data,
				'article_data' => $article_data,
				'update_data' => $update_data,
				'memorial_data' => $memorial_data
			);

			$this->load->view('header', array(
				"title" => "List of Deleted Items - Dover War Memorial Project"));
			$this->load->view('meta_deleted_view', $data);
			$this->load->view('footer');

		} else {
			redirect(base_url());
		}
	}
}
