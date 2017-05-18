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
		echo $Parsedown->text(str_replace("%asset_url%", asset_url(), $raw));
	}

	/**
	*	Displays the home page
	*/
	public function index() {
		//is the user logged in
		$loggedIn = $this->user_model->isLoggedIn($this->session->token);


		$this->load->model('meta_model');
		$meta_data = $this->meta_model->getMeta("home");

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

			$data = array(
				'meta_data' => $meta_data,
				'meta' => $meta[0],
				'loggedIn' => $loggedIn
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
	*	Add to change log
	*/
	public function doAddChange() {
		$loggedIn = $this->user_model->isLoggedIn($this->session->token);
		if($loggedIn) {
			$basicForm = $this->input->post();

			if($basicForm["reason"]) !== "") {
				//var_dump($basicForm);

				$this->load->model('meta_model');

				//edit meta page
				$result = $this->meta_model->addToChangeLog($basicForm);

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
			}

		} else {
			//return error message :(
			header('HTTP/1.1 500 Internal Server Error');
   			header('Content-Type: application/json; charset=UTF-8');
    		die(json_encode(array('area' => 'main', 'type'=>'failure', 'message'=>'User is not logged in')));
		}
	}
}
