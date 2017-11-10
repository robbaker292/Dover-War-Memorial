<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Place extends CI_Controller {

	public function listAll() {
		//is the user logged in
		$loggedIn = $this->user_model->isLoggedIn($this->session->token);

		$this->load->model('place_model');
		$place_data = $this->place_model->getAll();

		$data = array(
			'place_data' => $place_data,
			'loggedIn' => $loggedIn
		);

		$this->load->view('header', array(
			"title" => "List: Place - Dover War Memorial Project"));
		$this->load->view('place_list_view', $data);
		$this->load->view('footer');
	}

	/**
	*	Displays the edit page of the given place
	*/
	public function edit($id = null) {
		//is the user logged in
		$loggedIn = $this->user_model->isLoggedIn($this->session->token);
		if($loggedIn || $id==null) {
			$this->load->model('place_model');

			//is an place being created?
			if($id == "-1") {
				$data = array(
					'loggedIn' => $loggedIn,
					'new' => true
				);

				$this->load->view('header', array("title" => "Creating: Place - Dover War Memorial Project"));
				$this->load->view('place_edit_view', $data);
				$this->load->view('footer');

			//editing rather than creating
			} else {		
				$place = $this->place_model->getPlace($id);
				
				if(count($place) == 0) {
					redirect("place/listAll");
				}
				$data = array(
					'place' => $place[0],
					'loggedIn' => $loggedIn,
					'new' => false
				);

				$this->load->view('header', array("title" => "Editing: ".$place[0]->name." - Dover War Memorial Project"));
				$this->load->view('place_edit_view', $data);
				$this->load->view('footer');

			}

		} else {
			redirect("place/listAll");
		}

	}


	/**
	* Handles the updating of an place
	*/
	public function doUpdate() {
		//is the user logged in
		$loggedIn = $this->user_model->isLoggedIn($this->session->token);
		if($loggedIn) {

			$basicForm = $this->input->post();

			//var_dump($basicForm);

			$this->load->model('place_model');

			if($basicForm['id']=="") {
				//add new update
				$result = $this->place_model->addPlace($basicForm);
			} else {
				//edit update
				$result = $this->place_model->editPlace($basicForm);
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
	*	Deletes a place
	*/
	public function delete($id) {
		//is the user logged in
		$loggedIn = $this->user_model->isLoggedIn($this->session->token);
		if($loggedIn) {
			$this->load->model('place_model');
			$result = $this->place_model->deletePlace($id);
			//if the update worked
			if($result["type"] == "success") {
				//var_dump($result);
				redirect("place/listAll");
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
	*	Restores a place
	*/
	public function restore($id) {
		//is the user logged in
		$loggedIn = $this->user_model->isLoggedIn($this->session->token);
		if($loggedIn) {
			$this->load->model('place_model');
			$result = $this->place_model->restorePlace($id);
			redirect("place/listAll");
		} else {
			//return error message :(
			header('HTTP/1.1 500 Internal Server Error');
   			header('Content-Type: application/json; charset=UTF-8');
    		die(json_encode(array('area' => 'main', 'type'=>'failure', 'message'=>'User is not logged in')));
		}
	}

}
