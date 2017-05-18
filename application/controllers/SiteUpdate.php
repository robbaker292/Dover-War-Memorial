<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class SiteUpdate extends CI_Controller {

	/**
	*	Views site updates from the given year. If no year, then the current one is used
	*/
	public function index($year = null) {
		if($year == null) {
			$year = date("Y");
		}

		$loggedIn = $this->user_model->isLoggedIn($this->session->token);

		$this->load->model('siteUpdate_model');
		
		$updates = $this->siteUpdate_model->getUpdatesFromYear($year);
		$updateFromYear = $this->siteUpdate_model->countUpdatesByYear();

		$data = array(
			'year' => $year,
			'updates' => $updates,
			'updateFromYear' => $updateFromYear,
			'loggedIn' => $loggedIn
		);

		$this->load->view('header', array("title" => $year." Site Updates - Dover War Memorial Project"));
		$this->load->view('updates_view', $data);
		$this->load->view('footer');

	}

	/**
	*	Views a particular site update
	*/
	public function view($id, $name = null) {
		//is the user logged in
		$loggedIn = $this->user_model->isLoggedIn($this->session->token);

		$this->load->model('siteUpdate_model');
		$update_data = $this->siteUpdate_model->getUpdate($id);

		//redirect if invalid url
		if(count($update_data) == 0) {
			redirect(site_url());
		}

		//rewrite url to be nicer
		if($name == null) {
			$name = urlencode($update_data[0]->title);
			redirect(site_url(uri_string()."/".$name));
		}
		//$slug = $casualty_data[0]->given_name."-".$casualty_data[0]->family_name;

		$data = array(
			'update' => $update_data[0],
			"loggedIn" => $loggedIn
		);

		$this->load->view('header', array(
			"title" => $update_data[0]->title." - Dover War Memorial Project"));
		$this->load->view('update_view_one', $data);
		$this->load->view('footer');
	}

	/**
	*	Handles the loading of the edit page of a site update
	*/
	public function edit($id = null) {
		//is the user logged in
		$loggedIn = $this->user_model->isLoggedIn($this->session->token);
		if($loggedIn || $id==null) {

			//is an update being created?
			if($id == "-1") {
				$data = array(
					'loggedIn' => $loggedIn,
					'new' => true
				);

				$this->load->view('header', array("title" => "Editing: Site Update - Dover War Memorial Project"));
				$this->load->view('update_edit_view', $data);
				$this->load->view('footer');

			//editing rather than creating
			} else {
				$this->load->model('siteUpdate_model');		
				$update = $this->siteUpdate_model->getUpdate($id);
				if(count($update) == 0) {
					redirect("siteUpdate");
				}
				$data = array(
					'update' => $update[0],
					'loggedIn' => $loggedIn,
					'new' => false
				);

				$this->load->view('header', array("title" => "Editing: Site Update - Dover War Memorial Project"));
				$this->load->view('update_edit_view', $data);
				$this->load->view('footer');

			}


		} else {
			redirect("siteUpdate");
		}

	}

	/**
	* Handles the updating of a site update
	*/
	public function doUpdate() {
		//is the user logged in
		$loggedIn = $this->user_model->isLoggedIn($this->session->token);
		if($loggedIn) {

			$basicForm = $this->input->post();
			//$basicForm = array("id" => "1", "given_name" => "Frank3", "DANGER" => "DANEGR");
			var_dump($basicForm);


			$this->load->model('siteUpdate_model');

			if($basicForm['id']=="") {
				//add new update
				$result = $this->siteUpdate_model->addSiteUpdate($basicForm);
			} else {
				//edit update
				$result = $this->siteUpdate_model->editSiteUpdate($basicForm);
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

	/**
	*	Views the change log from a given year
	*/
	public function changes($year = null) {
		if($year == null) {
			$year = date("Y");
		}

		$loggedIn = $this->user_model->isLoggedIn($this->session->token);

		$this->load->model('siteUpdate_model');
		
		$updates = $this->siteUpdate_model->getChangesFromYear($year);
		$updateFromYear = $this->siteUpdate_model->countChangesByYear();

		$data = array(
			'year' => $year,
			'updates' => $updates,
			'updateFromYear' => $updateFromYear,
			'loggedIn' => $loggedIn
		);

		$this->load->view('header', array("title" => $year." Change Log - Dover War Memorial Project"));
		$this->load->view('changes_view', $data);
		$this->load->view('footer');
	}

}
