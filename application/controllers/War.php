<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class War extends CI_Controller {

	public function listAll() {
		//is the user logged in
		$loggedIn = $this->user_model->isLoggedIn($this->session->token);

		$this->load->model('war_model');
		$war_data = $this->war_model->getAll();

		$data = array(
			'war_data' => $war_data,
			'loggedIn' => $loggedIn
		);

		$this->load->view('header', array(
			"title" => "List: War - Dover War Memorial Project"));
		$this->load->view('war_list_view', $data);
		$this->load->view('footer');
	}

	/**
	*	Displays the edit page of the given war
	*/
	public function edit($id = null) {
		//is the user logged in
		$loggedIn = $this->user_model->isLoggedIn($this->session->token);
		if($loggedIn || $id==null) {
			$this->load->model('war_model');

			//is an war being created?
			if($id == "-1") {
				$data = array(
					'loggedIn' => $loggedIn,
					'new' => true
				);

				$this->load->view('header', array("title" => "Creating: War - Dover War Memorial Project"));
				$this->load->view('war_edit_view', $data);
				$this->load->view('footer');

			//editing rather than creating
			} else {		
				$war = $this->war_model->getWar($id);
				
				if(count($war) == 0) {
					redirect("war/listAll");
				}
				$data = array(
					'war' => $war[0],
					'loggedIn' => $loggedIn,
					'new' => false
				);

				$this->load->view('header', array("title" => "Editing: ".$war[0]->name." - Dover War Memorial Project"));
				$this->load->view('war_edit_view', $data);
				$this->load->view('footer');

			}

		} else {
			redirect("war/listAll");
		}

	}


	/**
	* Handles the updating of an war
	*/
	public function doUpdate() {
		//is the user logged in
		$loggedIn = $this->user_model->isLoggedIn($this->session->token);
		if($loggedIn) {

			$basicForm = $this->input->post();

			//var_dump($basicForm);

			$this->load->model('war_model');

			if($basicForm['id']=="") {
				//add new update
				$result = $this->war_model->addWar($basicForm);
			} else {
				//edit update
				$result = $this->war_model->editWar($basicForm);
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
	*	Deletes a war
	*/
	public function delete($id) {
		//is the user logged in
		$loggedIn = $this->user_model->isLoggedIn($this->session->token);
		if($loggedIn) {
			$this->load->model('war_model');
			$result = $this->war_model->deleteWar($id);
			//if the update worked
			if($result["type"] == "success") {
				//var_dump($result);
				redirect("war/listAll");
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
