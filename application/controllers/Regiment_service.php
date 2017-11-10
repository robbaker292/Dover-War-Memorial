<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Regiment_Service extends CI_Controller {

	public function listAll() {
		//is the user logged in
		$loggedIn = $this->user_model->isLoggedIn($this->session->token);

		$this->load->model('regiment_service_model');
		$regiment_service_data = $this->regiment_service_model->getAll();

		$data = array(
			'regiment_service_data' => $regiment_service_data,
			'loggedIn' => $loggedIn
		);

		$this->load->view('header', array(
			"title" => "List: Regiment/Service - Dover War Memorial Project"));
		$this->load->view('regiment_service_list_view', $data);
		$this->load->view('footer');
	}

	/**
	*	Displays the edit page of the given regiment_service
	*/
	public function edit($id = null) {
		//is the user logged in
		$loggedIn = $this->user_model->isLoggedIn($this->session->token);
		if($loggedIn || $id==null) {
			$this->load->model('regiment_service_model');

			//is an regiment_service being created?
			if($id == "-1") {
				$data = array(
					'loggedIn' => $loggedIn,
					'new' => true
				);

				$this->load->view('header', array("title" => "Creating: Regiment/Service - Dover War Memorial Project"));
				$this->load->view('regiment_service_edit_view', $data);
				$this->load->view('footer');

			//editing rather than creating
			} else {		
				$regiment_service = $this->regiment_service_model->getRegiment_Service($id);
				
				if(count($regiment_service) == 0) {
					redirect("regiment_service/listAll");
				}
				$data = array(
					'regiment_service' => $regiment_service[0],
					'loggedIn' => $loggedIn,
					'new' => false
				);

				$this->load->view('header', array("title" => "Editing: ".$regiment_service[0]->name." - Dover War Memorial Project"));
				$this->load->view('regiment_service_edit_view', $data);
				$this->load->view('footer');

			}

		} else {
			redirect("regiment_service/listAll");
		}

	}


	/**
	* Handles the updating of an regiment_service
	*/
	public function doUpdate() {
		//is the user logged in
		$loggedIn = $this->user_model->isLoggedIn($this->session->token);
		if($loggedIn) {

			$basicForm = $this->input->post();

			//var_dump($basicForm);

			$this->load->model('regiment_service_model');

			if($basicForm['id']=="") {
				//add new update
				$result = $this->regiment_service_model->addRegiment_Service($basicForm);
			} else {
				//edit update
				$result = $this->regiment_service_model->editRegiment_Service($basicForm);
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
	*	Deletes a regiment/service
	*/
	public function delete($id) {
		//is the user logged in
		$loggedIn = $this->user_model->isLoggedIn($this->session->token);
		if($loggedIn) {
			$this->load->model('regiment_service_model');
			$result = $this->regiment_service_model->deleteRegiment_Service($id);
			//if the update worked
			if($result["type"] == "success") {
				//var_dump($result);
				redirect("regiment_service/listAll");
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
	*	Restores a regiment/service
	*/
	public function restore($id) {
		//is the user logged in
		$loggedIn = $this->user_model->isLoggedIn($this->session->token);
		if($loggedIn) {
			$this->load->model('regiment_service_model');
			$result = $this->regiment_service_model->restoreRegiment_Service($id);
			redirect("regiment_service/listAll");
		} else {
			//return error message :(
			header('HTTP/1.1 500 Internal Server Error');
   			header('Content-Type: application/json; charset=UTF-8');
    		die(json_encode(array('area' => 'main', 'type'=>'failure', 'message'=>'User is not logged in')));
		}
	}

}
