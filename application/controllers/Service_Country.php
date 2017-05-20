<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Service_Country extends CI_Controller {

	public function listAll() {
		//is the user logged in
		$loggedIn = $this->user_model->isLoggedIn($this->session->token);

		$this->load->model('service_country_model');
		$service_country_data = $this->service_country_model->getAll();

		$data = array(
			'service_country_data' => $service_country_data,
			'loggedIn' => $loggedIn
		);

		$this->load->view('header', array(
			"title" => "List: Service Country - Dover War Memorial Project"));
		$this->load->view('service_country_list_view', $data);
		$this->load->view('footer');
	}

	/**
	*	Displays the edit page of the given service_country
	*/
	public function edit($id = null) {
		//is the user logged in
		$loggedIn = $this->user_model->isLoggedIn($this->session->token);
		if($loggedIn || $id==null) {
			$this->load->model('service_country_model');

			//is an service_country being created?
			if($id == "-1") {
				$data = array(
					'loggedIn' => $loggedIn,
					'new' => true
				);

				$this->load->view('header', array("title" => "Creating: Service Country - Dover War Memorial Project"));
				$this->load->view('service_country_edit_view', $data);
				$this->load->view('footer');

			//editing rather than creating
			} else {		
				$service_country = $this->service_country_model->getService_Country($id);
				
				if(count($service_country) == 0) {
					redirect("service_country/listAll");
				}
				$data = array(
					'service_country' => $service_country[0],
					'loggedIn' => $loggedIn,
					'new' => false
				);

				$this->load->view('header', array("title" => "Editing: ".$service_country[0]->name." - Dover War Memorial Project"));
				$this->load->view('service_country_edit_view', $data);
				$this->load->view('footer');

			}

		} else {
			redirect("service_country/listAll");
		}

	}


	/**
	* Handles the updating of an service_country
	*/
	public function doUpdate() {
		//is the user logged in
		$loggedIn = $this->user_model->isLoggedIn($this->session->token);
		if($loggedIn) {

			$basicForm = $this->input->post();

			//var_dump($basicForm);

			$this->load->model('service_country_model');

			if($basicForm['id']=="") {
				//add new update
				$result = $this->service_country_model->addService_Country($basicForm);
			} else {
				//edit update
				$result = $this->service_country_model->editService_Country($basicForm);
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
